################################################################
# This script compiles all generated block designs to bitstreams,
# extracts statistics, and saves outputs.
################################################################

# List of supported algorithms and operations (mirroring generate_all_designs.tcl)
# set SUPPORTED_ALGORITHMS [list "SDES" "DES" "TDES" "DESX" "DESXL" "DESL"]
set SUPPORTED_OPERATIONS [list "encrypt" "decrypt"]

# set SUPPORTED_ALGORITHMS [list "DES"]

set SUPPORTED_ALGORITHMS [list "TDES"]

# --- Configuration ---
# Path to the script that creates/configures a single design
set CREATE_GENERIC_DESIGN_SCRIPT_NAME "create_generic_design.tcl"

# open project
open_project ../../../BScThesis.xpr

# --- Helper Procedures ---

# Procedure to set up, compile, and report for a single design
proc setup_and_compile_design {algorithm operation RESULTS_DIR_ABS_PATH create_script_full_path} {
    puts "INFO: Processing design: Algorithm=$algorithm, Operation=$operation"

    # --- 1. Design Setup Phase ---
    puts "INFO: Setting up design using $create_script_full_path..."
    set ::TARGET_ALGORITHM $algorithm
    set ::TARGET_OPERATION $operation

    if {[catch {source $create_script_full_path} result]} {
        puts "ERROR: Failed to source $CREATE_GENERIC_DESIGN_SCRIPT_NAME for $algorithm $operation: $result"
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
    set synth_run_name "synth_${algorithm_lower}_${operation_lower}"
    set impl_run_name "impl_${algorithm_lower}_${operation_lower}"
    set unique_design_name "${algorithm_lower}_${operation_lower}"

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
    if {[catch {launch_runs $synth_run_name -jobs 12} synth_msg]} {
        puts "ERROR: Synthesis launch failed for $proj_name: $synth_msg"
        return 1
    }
    wait_on_run $synth_run_name
    
    if {[get_property PROGRESS [get_runs $synth_run_name]] != "100%"} {
        puts "ERROR: Synthesis failed for $proj_name. Status: [get_property STATUS [get_runs $synth_run_name]]"
        return 1
    }
    puts "INFO: Synthesis completed for $proj_name."

    puts "INFO: Starting Implementation and Bitstream Generation for $proj_name..."
    if {[catch {launch_runs $impl_run_name -to_step write_bitstream -jobs 12} impl_msg]} {
        puts "ERROR: Implementation launch failed for $proj_name: $impl_msg"
        return 1
    }
    wait_on_run $impl_run_name

    if {[get_property PROGRESS [get_runs $impl_run_name]] != "100%" || [string is true [get_property NEEDS_REFRESH [get_runs $impl_run_name]]]} {
        puts "ERROR: Implementation/Bitstream failed for $proj_name. Status: [get_property STATUS [get_runs $impl_run_name]]"
        return 1
    }
    puts "INFO: Implementation and Bitstream Generation completed for $proj_name."

    # --- 3. Statistics Extraction Phase ---
    open_run $impl_run_name ;# Ensure post-implementation design is open for reporting
    
    set utilization_report_file [file join $RESULTS_DIR_ABS_PATH "${unique_design_name}_utilization.rpt"]
    set timing_report_file [file join $RESULTS_DIR_ABS_PATH "${unique_design_name}_timing.rpt"]

    puts "INFO: Generating reports for $unique_design_name..."
    if {[catch {report_utilization -file $utilization_report_file -quiet} util_rpt_err]} {
         puts "WARNING: Failed to generate utilization report: $util_rpt_err"
    }
    if {[catch {report_timing_summary -file $timing_report_file -quiet} time_rpt_err]} {
         puts "WARNING: Failed to generate timing summary report: $time_rpt_err"
    }
    
    puts "INFO: Statistics recorded for $unique_design_name."

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


set total_designs_to_compile [expr [llength $SUPPORTED_ALGORITHMS] * [llength $SUPPORTED_OPERATIONS]]
set current_design_count 0
set successful_compilations 0
set failed_compilations 0

foreach algorithm $SUPPORTED_ALGORITHMS {
    foreach operation $SUPPORTED_OPERATIONS {
        incr current_design_count
        puts "\nProcessing design $current_design_count of $total_designs_to_compile: $algorithm - $operation"
        
        if {[setup_and_compile_design $algorithm $operation $RESULTS_DIR_ABS_PATH $create_script_full_path] == 0} {
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
puts "Manually copy the bitstreams and hwh files to the results directory."
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