
set script_path [file dirname [file normalize [info script]]]

source $script_path/env.tcl

if {[info exists DESIGN_VERSION]} {
    set gateware_design_version "$DESIGN_VERSION"
} else {
    set gateware_design_version "1"
}

if {[info exists SILICON_SIGNATURE]} {
    set gateware_silicon_signature "$SILICON_SIGNATURE"
} else {
    set gateware_silicon_signature "bea913b0"
}

#
# Create project
#

new_project \
    -location $project_dir \
    -name $project_name \
    -project_description {} \
    -block_mode 0 \
    -standalone_peripheral_initialization 0 \
    -instantiate_in_smartdesign 1 \
    -ondemand_build_dh 1 \
    -use_relative_path 0 \
    -linked_files_root_dir_env {} \
    -hdl {VERILOG} \
    -family {PolarFireSoC} \
    -die {MPFS025T} \
    -package {FCVG484} \
    -speed {STD} \
    -die_voltage {1.0} \
    -part_range {EXT} \
    -adv_options {IO_DEFT_STD:LVCMOS 1.8V} \
    -adv_options {RESTRICTPROBEPINS:0} \
    -adv_options {RESTRICTSPIPINS:0} \
    -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
    -adv_options {TARGETDEVICESFORMIGRATION:MPFS095T;MPFS160T;MPFS095TL;MPFS160TL;} \
    -adv_options {TEMPR:EXT} \
    -adv_options {VCCI_1.2_VOLTR:EXT} \
    -adv_options {VCCI_1.5_VOLTR:EXT} \
    -adv_options {VCCI_1.8_VOLTR:EXT} \
    -adv_options {VCCI_2.5_VOLTR:EXT} \
    -adv_options {VCCI_3.3_VOLTR:EXT} \
    -adv_options {VOLTR:EXT}

#
# Download required cores
#

download_core -vlnv {Actel:SgCore:PF_OSC:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_CCC:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CORERESET_PF:*} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SgCore:PF_CLK_DIV:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_NGMUX:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_TX_PLL:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CoreAPB3:4.2.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -location {www.microchip-ip.com/repositories/DirectCore}

#
# Import MSS config
#

if !{[info exists MSS_EXPORT_PATH]} {
    file mkdir $output_path/mss
    exec $pfsoc_mss_path -GENERATE -CONFIGURATION_FILE:$$source_path/mss/mss_linux.cfg -OUTPUT_DIR:$output_path/mss
}

import_mss_component -file "$output_path/mss/PF_SOC_MSS.cxz"

#
# Generate components
#

source $source_path/hdl/hdl.tcl
source $source_path/components/CLOCKS_AND_RESETS/CORERESET.tcl
source $source_path/components/CLOCKS_AND_RESETS/INIT_MONITOR.tcl
source $source_path/components/CLOCKS_AND_RESETS/FPGA_CCC_C0.tcl
source $source_path/components/RISCV_SUBSYSTEM/FIC3_INITIATOR.tcl
source $source_path/components/CLOCKS_AND_RESETS/OSCILLATOR_160MHz.tcl
source $source_path/components/CLOCKS_AND_RESETS/ADC_MCLK_CCC.tcl
source $source_path/components/CLOCKS_AND_RESETS/CLOCKS_AND_RESETS.tcl
source $source_path/components/RISCV_SUBSYSTEM/IHC_APB.tcl
source $source_path/components/RISCV_SUBSYSTEM/IHC_SUBSYSTEM.tcl
source $source_path/components/RISCV_SUBSYSTEM/RISCV_SUBSYSTEM.tcl
source $source_path/components/GATEWARE.tcl

set_root -module ${top_level_name}::work

#
# Import constraints
#

import_files \
    -convert_EDN_to_HDL 0 \
    -io_pdc "${constraint_path}/IO.pdc" \
    -fp_pdc "${constraint_path}/NW_PLL.pdc" \
    -sdc "${constraint_path}/FIC_CLOCKS.sdc" \
    -io_pdc "${source_path}/components/CAPE/constraints/CAPE.pdc" \
    -io_pdc "${source_path}/components/M2/constraints/M2.pdc" \
    -io_pdc "${source_path}/components/SYZYGY/constraints/SYZYGY.pdc" \
    -io_pdc "${source_path}/components/MIPI_CSI/constraints/MIPI_CSI.pdc"

organize_tool_files \
    -tool {SYNTHESIZE} \
    -file "${project_dir}/constraint/FIC_CLOCKS.sdc" \
    -module ${top_level_name}::work \
    -input_type {constraint}

organize_tool_files \
    -tool {PLACEROUTE} \
    -file "${project_dir}/constraint/io/IO.pdc" \
    -file "${project_dir}/constraint/fp/NW_PLL.pdc" \
    -file "${project_dir}/constraint/FIC_CLOCKS.sdc" \
    -file "${project_dir}/constraint/io/CAPE.pdc" \
    -file "${project_dir}/constraint/io/M2.pdc" \
    -file "${project_dir}/constraint/io/SYZYGY.pdc" \
    -file "${project_dir}/constraint/io/MIPI_CSI.pdc" \
    -module ${top_level_name}::work \
    -input_type {constraint}

organize_tool_files \
    -tool {VERIFYTIMING} \
    -file "${project_dir}/constraint/FIC_CLOCKS.sdc" \
    -module ${top_level_name}::work \
    -input_type {constraint}

configure_tool \
         -name {CONFIGURE_PROG_OPTIONS} \
         -params {back_level_version:0} \
         -params design_version:$gateware_design_version \
         -params silicon_signature:$gateware_silicon_signature

build_design_hierarchy
derive_constraints_sdc

save_project
