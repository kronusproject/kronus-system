set script_dir [file dirname [file normalize [info script]]]

download_core -vlnv {Actel:SgCore:PF_CCC:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CORERESET_PF:*} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SgCore:PF_DRI:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CoreAPB3:4.2.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:COREAXI4DMACONTROLLER:2.0.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:corepwm:4.5.100} -location {www.microchip-ip.com/repositories/DirectCore} 
download_core -vlnv {Actel:DirectCore:COREI2C:7.2.101} -location {www.microchip-ip.com/repositories/DirectCore} 
download_core -vlnv {Actel:DirectCore:CORESPI:5.2.104} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CoreUARTapb:5.7.100} -location {www.microchip-ip.com/repositories/DirectCore} 

smartdesign \
    -memory_map_drc_change_error_to_warning 1 \
    -bus_interface_data_width_drc_change_error_to_warning 1 \
    -bus_interface_id_width_drc_change_error_to_warning 1 

import_files -library work -hdl_source $script_dir/hdl/apb_arbiter.v
import_files -library work -hdl_source $script_dir/hdl/APB_PASS_THROUGH.v
import_files -library work -hdl_source $script_dir/hdl/miv_ihcia.v
import_files -library work -hdl_source $script_dir/hdl/miv_ihcc_mem.v
import_files -library work -hdl_source $script_dir/hdl/miv_ihcc_irqs.v
import_files -library work -hdl_source $script_dir/hdl/miv_ihcc_ctrl.v
import_files -library work -hdl_source $script_dir/hdl/miv_ihcc.v

build_design_hierarchy

source $script_dir/components/cores/APB_ARBITER.tcl 
source $script_dir/components/cores/APB_PASS_THROUGH.tcl 
source $script_dir/components/cores/MIV_IHCIA.tcl
source $script_dir/components/cores/MIV_IHCC.tcl

build_design_hierarchy

source $script_dir/components/cores/CORERESET.tcl 
source $script_dir/components/cores/INIT_MONITOR.tcl 
source $script_dir/components/cores/PF_CCC_C0.tcl 
source $script_dir/components/cores/DMA_CONTROLLER.tcl 
source $script_dir/components/cores/DMA_INITIATOR.tcl 
source $script_dir/components/cores/FIC0_INITIATOR.tcl 
source $script_dir/components/cores/MSS_LSRAM.tcl 
source $script_dir/components/cores/COREI2C_C0.tcl 
source $script_dir/components/cores/CoreUARTapb_C0.tcl 
source $script_dir/components/cores/FIC_3_0x4000_0xxx.tcl 
source $script_dir/components/cores/FIC_3_0x4xxx_xxxx.tcl 
source $script_dir/components/cores/GPIO.tcl 
source $script_dir/components/cores/IHC_APB.tcl 
source $script_dir/components/cores/RECONFIGURATION_INTERFACE.tcl 
source $script_dir/components/cores/SPI_FOR_7_SEG.tcl 
source $script_dir/components/cores/corepwm_C0.tcl

source $script_dir/components/CLOCKS_AND_RESETS.tcl 
source $script_dir/components/CORE_I2C_C0_0_WRAPPER.tcl 
source $script_dir/components/FIC_0_PERIPHERALS.tcl 
source $script_dir/components/FIC_3_ADDRESS_GENERATION.tcl 
source $script_dir/components/IHC_SUBSYSTEM.tcl 
source $script_dir/components/FIC_3_PERIPHERALS.tcl 
source $script_dir/components/MSS_WRAPPER.tcl 
source $script_dir/components/SYSTEM.tcl

build_design_hierarchy
