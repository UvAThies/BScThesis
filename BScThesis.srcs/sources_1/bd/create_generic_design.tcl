################################################################
# This is a generated script based on design: DES_axi
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

# Use global variables for algorithm and operation
if {![info exists ::TARGET_ALGORITHM]} {
    set ::TARGET_ALGORITHM "DES"     ;# Default if not set
}
if {![info exists ::TARGET_OPERATION]} {
    set ::TARGET_OPERATION "encrypt" ;# Default if not set
}

# Declare global variables for DMA widths
global DMA_M_AXIS_MM2S_TDATA_WIDTH
global DMA_S_AXIS_S2MM_TDATA_WIDTH
global GLOBAL_REF_MODULE_NAME
global GLOBAL_MODULE_INSTANCE_NAME

puts "Target Algorithm: $::TARGET_ALGORITHM"
puts "Target Operation: $::TARGET_OPERATION"

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Helper Procedures and Global Configuration
################################################################

# Procedure to get module interface widths based on algorithm
# Returns a list: {module_s_axis_width module_m_axis_width}
proc get_module_interface_widths {algorithm_name} {
    switch -exact -- [string toupper $algorithm_name] {
        "SDES"  { return [list 32 32] }
        "DES"   { return [list 128 64] }
        "TDES"  { return [list 256 64] }
        "DESX"  { return [list 256 64] }
        "DESXL" { return [list 256 64] }
        "DESL"  { return [list 128 64] }
        default {
            catch {common::send_gid_msg -ssname BD::TCL -id 9001 -severity "ERROR" "Unsupported algorithm specified: $algorithm_name"}
            return -code error "Unsupported algorithm: $algorithm_name. Supported: SDES, DES, TDES, DESX, DESXL, DESL"
        }
    }
}

# Procedure to determine a compatible AXI DMA TDATA width for a given actual module port width
# AXI DMA TDATA widths must be one of {8, 16, 32, 64, 128, 256, 512, 1024}
proc get_dma_tdata_width {actual_width} {
    # For standard width values, no adjustment needed
    if {$actual_width in {8 16 32 64 128 256 512 1024}} {
        return $actual_width
    }
    
    # For non-standard widths (though we don't have any now with SDES fixed to 32)
    # Find the next largest valid width
    foreach width {8 16 32 64 128 256 512 1024} {
        if {$width >= $actual_width} {
            return $width
        }
    }
    
    # Fallback for very large widths
    return 1024
}

# Validate TARGET_OPERATION
if { $::TARGET_OPERATION ne "encrypt" && $::TARGET_OPERATION ne "decrypt" } {
    catch {common::send_gid_msg -ssname BD::TCL -id 9003 -severity "ERROR" "Invalid TARGET_OPERATION: $::TARGET_OPERATION. Must be 'encrypt' or 'decrypt'."}
    return 1
}

# Derive configurations
set module_widths [get_module_interface_widths $::TARGET_ALGORITHM]
if {[llength $module_widths] == 0} { return 1 } ;# Error already printed by get_module_interface_widths

set MODULE_S_AXIS_TDATA_WIDTH [lindex $module_widths 0]
set MODULE_M_AXIS_TDATA_WIDTH [lindex $module_widths 1]

set DMA_M_AXIS_MM2S_TDATA_WIDTH [get_dma_tdata_width $MODULE_S_AXIS_TDATA_WIDTH]
set DMA_S_AXIS_S2MM_TDATA_WIDTH [get_dma_tdata_width $MODULE_M_AXIS_TDATA_WIDTH]

set TARGET_ALGORITHM_LOWER [string tolower $::TARGET_ALGORITHM]
set TARGET_OPERATION_LOWER [string tolower $::TARGET_OPERATION]

# Design and Module Naming
variable design_name
set design_name "${TARGET_ALGORITHM_LOWER}_${TARGET_OPERATION_LOWER}_bd"
set GLOBAL_REF_MODULE_NAME "axi_interface_${TARGET_ALGORITHM_LOWER}_${TARGET_OPERATION_LOWER}"
set GLOBAL_MODULE_INSTANCE_NAME "${TARGET_ALGORITHM_LOWER}_${TARGET_OPERATION_LOWER}_0"

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source <this_script_name>.tcl

# The design that will be created by this Tcl script contains a
# module reference derived from TARGET_ALGORITHM and TARGET_OPERATION.
# Example: axi_interface_des_encrypt

# Please add the sources of the required module before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART www.digilentinc.com:pynq-z1:part0:1.0 [current_project]
}

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set (should not happen with new logic)
   set errMsg "Internal Error: <design_name> is empty."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
      # Update related names if design_name is forced to cur_design
      set TARGET_ALGORITHM_LOWER [lindex [split $design_name "_"] 0]
      set TARGET_OPERATION_LOWER [lindex [split $design_name "_"] 1]
      set GLOBAL_REF_MODULE_NAME "axi_interface_${TARGET_ALGORITHM_LOWER}_${TARGET_OPERATION_LOWER}"
      set GLOBAL_MODULE_INSTANCE_NAME "${TARGET_ALGORITHM_LOWER}_${TARGET_OPERATION_LOWER}_0"
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Design <$design_name> already exists. Deleting it..."
   remove_files [get_files ${design_name}.bd]
   create_bd_design $design_name
   current_bd_design $design_name

} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Design <$design_name> exists in project. Deleting it..."
   remove_files [get_files ${design_name}.bd]
   create_bd_design $design_name
   current_bd_design $design_name

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name
}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."
common::send_gid_msg -ssname BD::TCL -id 9004 -severity "INFO" "Targeting Algorithm: $::TARGET_ALGORITHM, Operation: $::TARGET_OPERATION"
common::send_gid_msg -ssname BD::TCL -id 9005 -severity "INFO" "AXI Wrapper Module: $GLOBAL_REF_MODULE_NAME, Instance: $GLOBAL_MODULE_INSTANCE_NAME"
common::send_gid_msg -ssname BD::TCL -id 9006 -severity "INFO" "DMA MM2S Stream Width (to wrapper input): $DMA_M_AXIS_MM2S_TDATA_WIDTH (Module Port: $MODULE_S_AXIS_TDATA_WIDTH)"
common::send_gid_msg -ssname BD::TCL -id 9007 -severity "INFO" "DMA S2MM Stream Width (from wrapper output): $DMA_S_AXIS_S2MM_TDATA_WIDTH (Module Port: $MODULE_M_AXIS_TDATA_WIDTH)"

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_dma:7.1\
xilinx.com:ip:smartconnect:1.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:processing_system7:5.5\
xilinx.com:ip:axi_interconnect:2.1\
"
# Added axi_interconnect to the list as it's used.

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods [list $GLOBAL_REF_MODULE_NAME]

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above. These are typically generated by 'generate_axi_wrapper.py'."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name
  # Make global configuration accessible
  variable GLOBAL_REF_MODULE_NAME
  variable GLOBAL_MODULE_INSTANCE_NAME
  variable DMA_M_AXIS_MM2S_TDATA_WIDTH
  variable DMA_S_AXIS_S2MM_TDATA_WIDTH

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR_0 ]

  set FIXED_IO_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO_0 ]

  # Create ports

  # Create instance: axi_dma_0, and set properties
  set axi_dma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0 ]
  set_property -dict [list \
    CONFIG.c_addr_width {64} \
    CONFIG.c_include_sg {0} \
    CONFIG.c_m_axi_mm2s_data_width $DMA_M_AXIS_MM2S_TDATA_WIDTH \
    CONFIG.c_m_axi_s2mm_data_width $DMA_S_AXIS_S2MM_TDATA_WIDTH \
    CONFIG.c_m_axis_mm2s_tdata_width $DMA_M_AXIS_MM2S_TDATA_WIDTH \
    CONFIG.c_s_axis_s2mm_tdata_width $DMA_S_AXIS_S2MM_TDATA_WIDTH \
    CONFIG.c_sg_length_width {26} \
  ] $axi_dma_0


  # Create instance: axi_smc, and set properties
  set axi_smc [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc ]
  set_property CONFIG.NUM_SI {1} $axi_smc


  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property CONFIG.NUM_MI {1} $axi_mem_intercon


  # Create instance: axi_mem_intercon_1, and set properties
  set axi_mem_intercon_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon_1 ]
  set_property CONFIG.NUM_MI {1} $axi_mem_intercon_1


  # Create instance: zynqcore, and set properties
  set zynqcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 zynqcore ]
  set_property -dict [list \
    CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_USE_S_AXI_HP2 {1} \
  ] $zynqcore


  # Create instance: custom AXI wrapper module
  if { [catch {set axi_wrapper_inst [create_bd_cell -type module -reference $GLOBAL_REF_MODULE_NAME $GLOBAL_MODULE_INSTANCE_NAME]} errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$GLOBAL_REF_MODULE_NAME>. Please add the files for ${GLOBAL_REF_MODULE_NAME}'s definition into the project. $errmsg"}
     return 1
   } elseif { $axi_wrapper_inst eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to create instance of referenced block <$GLOBAL_REF_MODULE_NAME>. Please ensure its definition is in the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net axi_dma_0_M_AXIS_MM2S [get_bd_intf_pins $GLOBAL_MODULE_INSTANCE_NAME/s_axis] [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_MM2S [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net axi_dma_0_M_AXI_S2MM [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon_1/S00_AXI]
  connect_bd_intf_net -intf_net custom_module_m_axis [get_bd_intf_pins $GLOBAL_MODULE_INSTANCE_NAME/m_axis] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net axi_mem_intercon_1_M00_AXI [get_bd_intf_pins axi_mem_intercon_1/M00_AXI] [get_bd_intf_pins zynqcore/S_AXI_HP2]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins zynqcore/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_smc_M00_AXI [get_bd_intf_pins axi_smc/M00_AXI] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR_0] [get_bd_intf_pins zynqcore/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO_0] [get_bd_intf_pins zynqcore/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins zynqcore/M_AXI_GP0] [get_bd_intf_pins axi_smc/S00_AXI]

  # Create port connections
  connect_bd_net -net processing_system7_0_FCLK_CLK0  [get_bd_pins zynqcore/FCLK_CLK0] \
  [get_bd_pins axi_dma_0/s_axi_lite_aclk] \
  [get_bd_pins axi_dma_0/m_axi_mm2s_aclk] \
  [get_bd_pins axi_dma_0/m_axi_s2mm_aclk] \
  [get_bd_pins axi_smc/aclk] \
  [get_bd_pins rst_ps7_0_50M/slowest_sync_clk] \
  [get_bd_pins axi_mem_intercon/ACLK] \
  [get_bd_pins axi_mem_intercon/S00_ACLK] \
  [get_bd_pins axi_mem_intercon/M00_ACLK] \
  [get_bd_pins axi_mem_intercon_1/ACLK] \
  [get_bd_pins axi_mem_intercon_1/S00_ACLK] \
  [get_bd_pins axi_mem_intercon_1/M00_ACLK] \
  [get_bd_pins zynqcore/M_AXI_GP0_ACLK] \
  [get_bd_pins zynqcore/S_AXI_HP0_ACLK] \
  [get_bd_pins zynqcore/S_AXI_HP2_ACLK] \
  [get_bd_pins $GLOBAL_MODULE_INSTANCE_NAME/aclk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N  [get_bd_pins zynqcore/FCLK_RESET0_N] \
  [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn  [get_bd_pins rst_ps7_0_50M/peripheral_aresetn] \
  [get_bd_pins axi_dma_0/axi_resetn] \
  [get_bd_pins axi_smc/aresetn] \
  [get_bd_pins axi_mem_intercon/S00_ARESETN] \
  [get_bd_pins axi_mem_intercon/M00_ARESETN] \
  [get_bd_pins axi_mem_intercon/ARESETN] \
  [get_bd_pins axi_mem_intercon_1/S00_ARESETN] \
  [get_bd_pins axi_mem_intercon_1/M00_ARESETN] \
  [get_bd_pins axi_mem_intercon_1/ARESETN] \
  [get_bd_pins $GLOBAL_MODULE_INSTANCE_NAME/aresetn]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x20000000 -with_name SEG_processing_system7_0_HP0_DDR_LOWOCM -target_address_space [get_bd_addr_spaces axi_dma_0/Data_MM2S] [get_bd_addr_segs zynqcore/S_AXI_HP0/HP0_DDR_LOWOCM] -force
  assign_bd_address -offset 0x00000000 -range 0x20000000 -with_name SEG_processing_system7_0_HP2_DDR_LOWOCM -target_address_space [get_bd_addr_spaces axi_dma_0/Data_S2MM] [get_bd_addr_segs zynqcore/S_AXI_HP2/HP2_DDR_LOWOCM] -force
  assign_bd_address -offset 0x40400000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynqcore/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""

# Validate the design
set nRet 0

# Validate that all required IPs are available
set bCheckIPsPassed 1
if { $bCheckIPsPassed != 1 } {
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> without the required IPs."
   return 1
}

# Validate the design
set rc [catch {validate_bd_design} errmsg]
if { $rc != 0 } {
   common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "Design validation failed: $errmsg"
   return 1
}

# Save the design one final time
save_bd_design

# Create HDL wrapper for the design, so we can compile it to bitstream
make_wrapper -files [get_files ${design_name}.bd] -top
add_files -norecurse ../../../BScThesis.gen/sources_1/bd/${design_name}/hdl/${design_name}_wrapper.v

return 0