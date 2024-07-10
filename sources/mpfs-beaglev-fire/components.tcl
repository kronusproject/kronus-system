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
download_core -vlnv {Actel:DirectCore:COREAXI4DMACONTROLLER:2.1.102} -location {www.microchip-ip.com/repositories/DirectCore}

smartdesign \
    -memory_map_drc_change_error_to_warning 1 \
    -bus_interface_data_width_drc_change_error_to_warning 1 \
    -bus_interface_id_width_drc_change_error_to_warning 1

# HDL sources
import_files \
    -library work \
    -hdl_source ${kronus::source_dir}/common/apb_arbiter/apb_arbiter.v \
    -hdl_source ${kronus::source_dir}/common/miv_ihc//hdl/miv_ihcc.v \
    -hdl_source ${kronus::source_dir}/common/miv_ihc//hdl/miv_ihcc_ctrl.v \
    -hdl_source ${kronus::source_dir}/common/miv_ihc//hdl/miv_ihcc_irqs.v \
    -hdl_source ${kronus::source_dir}/common/miv_ihc//hdl/miv_ihcc_mem.v \
    -hdl_source ${kronus::source_dir}/common/miv_ihc//hdl/miv_ihcia.v \
    -hdl_source ${kronus::source_dir}/common/apb_test/apb_test.sv \
    -hdl_source ${kronus::source_dir}/common/axi_test/axi_test.sv


build_design_hierarchy

# HDL+ components
source ${kronus::source_dir}/common/apb_arbiter/APB_ARBITER.tcl
source ${kronus::source_dir}/common/miv_ihc/components/MIV_IHCC.tcl
source ${kronus::source_dir}/common/miv_ihc/components/MIV_IHCIA.tcl
source ${kronus::source_dir}/common/apb_test/apb_test.tcl
source ${kronus::source_dir}/common/axi_test/axi_test.tcl

build_design_hierarchy

# Core components
source $script_dir/components/CORERESET.tcl
source $script_dir/components/INIT_MONITOR.tcl
source $script_dir/components/FPGA_CCC_C0.tcl
source $script_dir/components/OSCILLATOR_160MHz.tcl
source $script_dir/components/ADC_MCLK_CCC.tcl
source ${kronus::source_dir}/common/components/DMA_CONTROLLER.tcl
source ${kronus::source_dir}/common/components/DMA_INITIATOR.tcl
source ${kronus::source_dir}/common/components/FIC_0_AXI4_INTERCONNECT.tcl
source ${kronus::source_dir}/common/components/FIC_3_APB_INTERCONNECT.tcl
source ${kronus::source_dir}/common/components/IHC_APB.tcl

# Hierarchical components
source $script_dir/components/CLOCKS_AND_RESETS.tcl
source ${kronus::source_dir}/common/components/FABRIC_PERIPHERALS.tcl
source ${kronus::source_dir}/common/components/IHC_SUBSYSTEM.tcl
source $script_dir/components/RISCV_SUBSYSTEM.tcl
source $script_dir/components/TOP.tcl

build_design_hierarchy
