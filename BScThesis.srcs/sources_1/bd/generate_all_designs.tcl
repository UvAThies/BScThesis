#!/usr/bin/env tclsh

################################################################
# This script generates block designs for all supported algorithms
# and operations (encrypt/decrypt).
################################################################

# List of supported algorithms and operations
set SUPPORTED_ALGORITHMS [list "SDES" "DES" "TDES" "DESX" "DESXL" "DESL"]
set SUPPORTED_OPERATIONS [list "encrypt" "decrypt"]

# Function to generate a single design
proc generate_design {algorithm operation} {
    # Set the target algorithm and operation
    set ::TARGET_ALGORITHM $algorithm
    set ::TARGET_OPERATION $operation
    
    # Source the original design creation script
    source [file join [file dirname [info script]] "create_generic_design.tcl"]
    
    # Return success/failure
    return $::nRet
}

# Main execution
puts "Starting generation of all block designs..."
puts "=========================================="

set total_designs [expr [llength $SUPPORTED_ALGORITHMS] * [llength $SUPPORTED_OPERATIONS]]
set current_design 0
set successful_designs 0
set failed_designs 0

foreach algorithm $SUPPORTED_ALGORITHMS {
    foreach operation $SUPPORTED_OPERATIONS {
        incr current_design
        puts "\nGenerating design $current_design of $total_designs:"
        puts "Algorithm: $algorithm"
        puts "Operation: $operation"
        
        if {[catch {generate_design $algorithm $operation} result]} {
            puts "ERROR: Failed to generate design for $algorithm $operation"
            puts "Error details: $result"
            incr failed_designs
        } else {
            if {$result == 0} {
                puts "SUCCESS: Generated design for $algorithm $operation"
                incr successful_designs
            } else {
                puts "ERROR: Failed to generate design for $algorithm $operation (return code: $result)"
                incr failed_designs
            }
        }
    }
}

puts "\n=========================================="
puts "Generation complete!"
puts "Total designs attempted: $total_designs"
puts "Successful designs: $successful_designs"
puts "Failed designs: $failed_designs"
puts "=========================================="

if {$failed_designs > 0} {
    puts "\nWARNING: Some designs failed to generate. Please check the error messages above."
    exit 1
} else {
    puts "\nAll designs generated successfully!"
    exit 0
} 