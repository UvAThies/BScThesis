################################################################
# This script compiles all generated block designs to bitstreams,
# extracts statistics, and saves outputs.
################################################################

# List of supported algorithms and operations (mirroring generate_all_designs.tcl)
# set SUPPORTED_ALGORITHMS [list "SDES" "DES" "TDES" "DESX" "DESXL" "DESL"]
set SUPPORTED_OPERATIONS [list "encrypt" "decrypt"]

# set SUPPORTED_ALGORITHMS [list "DES"]

set SUPPORTED_ALGORITHMS [list "DESX"]

# --- Configuration ---
# Path to the script that creates/configures a single design
set CREATE_GENERIC_DESIGN_SCRIPT_NAME "create_generic_design.tcl"

# open project
open_project ../../../BScThesis.xpr

# --- Helper Procedures ---

proc parse_report_value {report_file pattern {default_val "N/A"}} {
    set fh [open $report_file r]
    set value $default_val
    while {[gets $fh line] >= 0} {
        if {[regexp -- $pattern $line match value]} {
            break
        }
    }
    close $fh
    return $value
}

# Procedure to set up, compile, and report for a single design
proc setup_and_compile_design {algorithm operation RESULTS_DIR_ABS_PATH stats_file_handle create_script_full_path} {
    puts "INFO: Processing design: Algorithm=$algorithm, Operation=$operation"

    # --- 1. Design Setup Phase ---
    puts "INFO: Setting up design using $create_script_full_path..."
    set ::TARGET_ALGORITHM $algorithm
    set ::TARGET_OPERATION $operation

    if {[catch {source $create_script_full_path} result]} {
        puts "ERROR: Failed to source $CREATE_GENERIC_DESIGN_SCRIPT_NAME for $algorithm $operation: $result"
        puts $stats_file_handle "$algorithm,$operation,FAIL (setup),,,,,,"
        return 1 ;# Indicate failure
    }

    set proj_name [get_property NAME [current_project]]
    puts "INFO: Project '$proj_name' is active for $algorithm $operation."

    # Mark the generated wrapper as a top module.
    set algorithm_lower [string tolower $algorithm]
    set operation_lower [string tolower $operation]
    set_property top ${algorithm_lower}_${operation_lower}_bd_wrapper [current_fileset]
    update_compile_order -fileset sources_1

    # Create algorithm-specific run names
    set synth_run_name "synth_${algorithm_lower}"
    set impl_run_name "impl_${algorithm_lower}"

    # --- 2. Compilation Phase ---
    
    # Create and reset runs to ensure a clean state 
    if {[get_runs $synth_run_name] == ""} {
        create_run $synth_run_name -flow {Vivado Synthesis 2023}
    }
    if {[get_runs $impl_run_name] == ""} {
        create_run $impl_run_name -flow {Vivado Implementation 2023} -parent_run $synth_run_name
    }

    reset_runs $synth_run_name
    reset_runs $impl_run_name

    puts "INFO: Starting Synthesis for $proj_name..."
    if {[catch {launch_runs $synth_run_name -jobs 8} synth_msg]} {
        puts "ERROR: Synthesis launch failed for $proj_name: $synth_msg"
        puts $stats_file_handle "$algorithm,$operation,FAIL (synth launch),,,,,,"
        return 1
    }
    wait_on_run $synth_run_name
    
    if {[get_property PROGRESS [get_runs $synth_run_name]] != "100%"} {
        puts "ERROR: Synthesis failed for $proj_name. Status: [get_property STATUS [get_runs $synth_run_name]]"
        puts $stats_file_handle "$algorithm,$operation,FAIL (synthesis),,,,,,"
        return 1
    }
    puts "INFO: Synthesis completed for $proj_name."

    puts "INFO: Starting Implementation and Bitstream Generation for $proj_name..."
    if {[catch {launch_runs $impl_run_name -to_step write_bitstream -jobs 8} impl_msg]} {
        puts "ERROR: Implementation launch failed for $proj_name: $impl_msg"
        puts $stats_file_handle "$algorithm,$operation,FAIL (impl launch),,,,,,"
        return 1
    }
    wait_on_run $impl_run_name

    if {[get_property PROGRESS [get_runs $impl_run_name]] != "100%" || [string is true [get_property NEEDS_REFRESH [get_runs $impl_run_name]]]} {
        puts "ERROR: Implementation/Bitstream failed for $proj_name. Status: [get_property STATUS [get_runs $impl_run_name]]"
        puts $stats_file_handle "$algorithm,$operation,FAIL (implementation),,,,,,"
        return 1
    }
    puts "INFO: Implementation and Bitstream Generation completed for $proj_name."

    # --- 3. Statistics Extraction Phase ---
    open_run $impl_run_name ;# Ensure post-implementation design is open for reporting
    
    set unique_design_name "${algorithm}_${operation}"
    set utilization_report_file [file join $RESULTS_DIR_ABS_PATH "${unique_design_name}_utilization.rpt"]
    set timing_report_file [file join $RESULTS_DIR_ABS_PATH "${unique_design_name}_timing.rpt"]

    puts "INFO: Generating reports for $unique_design_name..."
    if {[catch {report_utilization -file $utilization_report_file -quiet} util_rpt_err]} {
         puts "WARNING: Failed to generate utilization report: $util_rpt_err"
    }
    if {[catch {report_timing_summary -file $timing_report_file -quiet} time_rpt_err]} {
         puts "WARNING: Failed to generate timing summary report: $time_rpt_err"
    }
    
    # Parse reports for statistics
    # Regex for parsing "Used" column from tables like: | Resource Name | Available | Used | Utilization (%) |
    set luts    [parse_report_value $utilization_report_file {^\|\s*Slice LUTs\s*\|\s*[\d\.]+\s*\|\s*(\d+)\s*\|}]
    set ffs     [parse_report_value $utilization_report_file {^\|\s*Slice Registers\s*\|\s*[\d\.]+\s*\|\s*(\d+)\s*\|}] ;# Note: "Slice Registers" is more common than "Total Registers" in some report versions
    if {$ffs == "N/A"} { set ffs [parse_report_value $utilization_report_file {^\|\s*Total Registers\s*\|\s*[\d\.]+\s*\|\s*(\d+)\s*\|}] }
    set bram_tile [parse_report_value $utilization_report_file {^\|\s*Block RAM Tile\s*\|\s*[\d\.]+\s*\|\s*(\d+)\s*\|}]
    set dsps    [parse_report_value $utilization_report_file {^\|\s*DSP Blocks\s*\|\s*[\d\.]+\s*\|\s*(\d+)\s*\|}]
    if {$dsps == "N/A"} { set dsps [parse_report_value $utilization_report_file {^\|\s*DSPs\s*\|\s*[\d\.]+\s*\|\s*(\d+)\s*\|}] }


    # # Regex for WNS/TNS (e.g., "WNS (ns) : -0.123" or "WNS : N/A")
    set wns [parse_report_value $timing_report_file {^\s*Worst Negative Slack \(WNS\)\s*\(ns\)?\s*:\s*([-\d\.]+|N\/A|[iI]nfinity)}]
    set tns [parse_report_value $timing_report_file {^\s*Total Negative Slack \(TNS\)\s*\(ns\)?\s*:\s*([-\d\.]+|N\/A|[0\.000]+)}]
    if {$wns == "N/A"} {set wns [parse_report_value $timing_report_file {^\s*WNS\s*:\s*([-\d\.]+|N\/A|[iI]nfinity)}] }
    if {$tns == "N/A"} {set tns [parse_report_value $timing_report_file {^\s*TNS\s*:\s*([-\d\.]+|N\/A|[0\.000]+)}] }


    puts $stats_file_handle "$algorithm,$operation,$luts,$ffs,$bram_tile,$dsps,$wns,$tns"
    puts "SUCCESS, $algorithm, $operation, $luts, $ffs, $bram_tile, $dsps, $wns, $tns"
    puts "INFO: Statistics recorded for $unique_design_name."

    # --- 4. Output Management Phase ---
    set bit_files [get_property BITSTREAM.FILES [get_runs impl_1]]
    if {[llength $bit_files] > 0} {
        set bit_file_source_path [lindex $bit_files 0]
        set bit_file_dest_path [file join $RESULTS_DIR_ABS_PATH "${unique_design_name}.bit"]
        if {[catch {file copy -force $bit_file_source_path $bit_file_dest_path} copy_msg]} {
            puts "ERROR: Failed to copy bitstream for $unique_design_name: $copy_msg"
            # Continue, as stats might still be valuable
        } else {
            puts "INFO: Bitstream for $unique_design_name copied to $bit_file_dest_path"
        }
    } else {
        puts "WARNING: No bitstream file found for $unique_design_name."
    }
    
    return 0 ;# Indicate success
}


# --- Main Execution ---
puts "Starting compilation of all designs..."
puts "=========================================="

# Determine absolute path for results directory (BScThesis.results at workspace root)
# Assuming this script is in BScThesis.srcs/sources_1/bd/
set SCRIPT_DIR [file dirname [info script]]
set WORKSPACE_ROOT [file normalize [file join $SCRIPT_DIR .. .. ..]] 
set RESULTS_DIR_NAME "results"
set RESULTS_DIR_ABS_PATH [file join $WORKSPACE_ROOT $RESULTS_DIR_NAME]

puts "Exporting results to: $RESULTS_DIR_ABS_PATH"

# Path to the create_generic_design.tcl script
set create_script_full_path [file join $SCRIPT_DIR $CREATE_GENERIC_DESIGN_SCRIPT_NAME]
if {![file exists $create_script_full_path]} {
    puts "ERROR: Crucial script '$CREATE_GENERIC_DESIGN_SCRIPT_NAME' not found at: $create_script_full_path"
    return 1
}

# Open statistics file
set stats_file_path [file join $RESULTS_DIR_ABS_PATH "compilation_stats.txt"]
if {[catch {set stats_file_handle [open $stats_file_path "w"]} stats_open_err]} {
    puts "ERROR: Could not open statistics file for writing at $stats_file_path: $stats_open_err"
    return 1
}

# Write header to stats file
puts $stats_file_handle "Algorithm,Operation,LUTs,FFs,BRAM_Tiles,DSPs,WNS,TNS,Status_Details"
# Status_Details column added for any specific failure messages if stats are N/A

set total_designs_to_compile [expr [llength $SUPPORTED_ALGORITHMS] * [llength $SUPPORTED_OPERATIONS]]
set current_design_count 0
set successful_compilations 0
set failed_compilations 0

foreach algorithm $SUPPORTED_ALGORITHMS {
    foreach operation $SUPPORTED_OPERATIONS {
        incr current_design_count
        puts "\nProcessing design $current_design_count of $total_designs_to_compile: $algorithm - $operation"
        
        if {[setup_and_compile_design $algorithm $operation $RESULTS_DIR_ABS_PATH $stats_file_handle $create_script_full_path] == 0} {
            incr successful_compilations
            puts "SUCCESS: Successfully compiled and processed $algorithm $operation"
        } else {
            incr failed_compilations
            # Error details are already printed by the procedure and written to stats file
            puts "FAILURE: Failed to compile/process $algorithm $operation"
        }
    }
}

# Close statistics file
close $stats_file_handle

puts "\n=========================================="
puts "All Design Compilations Complete!"
puts "Total designs attempted: $total_designs_to_compile"
puts "Successful compilations: $successful_compilations"
puts "Failed compilations: $failed_compilations"
puts "Results, reports, and bitstreams are in: $RESULTS_DIR_ABS_PATH"
puts "Detailed statistics are in: $stats_file_path"
puts "=========================================="

if {$failed_compilations > 0} {
    puts "\nWARNING: Some designs failed to compile. Please check the log and $stats_file_path for details."
    # Vivado usually returns non-zero on script error automatically.
    # If an explicit error return is needed for automation: exit 1
} else {
    puts "\nAll designs compiled and processed successfully!"
}

# End of script
puts "compile_all_designs_to_bitstream.tcl finished." 