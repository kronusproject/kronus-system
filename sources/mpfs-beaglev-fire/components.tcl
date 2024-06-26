set script_dir [file dirname [file normalize [info script]]]

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

import_files \
    -library work \
    -hdl_source "$script_dir/hdl/apb_arbiter/apb_arbiter.v" \
    -hdl_source "$script_dir/hdl/miv_ihc/miv_ihcc.v" \
    -hdl_source "$script_dir/hdl/miv_ihc/miv_ihcc_ctrl.v" \
    -hdl_source "$script_dir/hdl/miv_ihc/miv_ihcc_irqs.v" \
    -hdl_source "$script_dir/hdl/miv_ihc/miv_ihcc_mem.v" \
    -hdl_source "$script_dir/hdl/miv_ihc/miv_ihcia.v"

build_design_hierarchy

source $script_dir/hdl/apb_arbiter/apb_arbiter.tcl 
source $script_dir/hdl/miv_ihc/miv_ihcc.tcl
source $script_dir/hdl/miv_ihc/miv_ihcia.tcl

build_design_hierarchy

source $script_dir/components/CORERESET.tcl
source $script_dir/components/INIT_MONITOR.tcl
source $script_dir/components/FPGA_CCC_C0.tcl
source $script_dir/components/OSCILLATOR_160MHz.tcl
source $script_dir/components/ADC_MCLK_CCC.tcl
source $script_dir/components/IHC_APB.tcl
source $script_dir/components/FIC3_INITIATOR.tcl
source $script_dir/components/CLOCKS_AND_RESETS.tcl
source $script_dir/components/IHC_SUBSYSTEM.tcl
source $script_dir/components/RISCV_SUBSYSTEM.tcl
source $script_dir/components/TOP.tcl

build_design_hierarchy
