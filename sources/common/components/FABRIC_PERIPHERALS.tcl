# Creating SmartDesign "FABRIC_PERIPHERALS"
set sd_name {FABRIC_PERIPHERALS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB3mmaster_PENABLE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB3mmaster_PSEL} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB3mmaster_PWRITE} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {APB3mmaster_PREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {APB3mmaster_PSLVERR} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_WREADY} -port_direction {OUT}


# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {APB3mmaster_PADDR} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {APB3mmaster_PWDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_ARUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWLOCK} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWREGION} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_AWUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_WUSER} -port_direction {IN} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {PSTRB} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {status} -port_direction {IN} -port_range {[31:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {APB3mmaster_PRDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_BID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_BUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_RID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR_MASTER0_RUSER} -port_direction {OUT} -port_range {[0:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {control} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {interrupt} -port_direction {OUT} -port_range {[31:0]}


# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {APB_INITIATOR} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"PADDR:APB3mmaster_PADDR" \
"PSELx:APB3mmaster_PSEL" \
"PENABLE:APB3mmaster_PENABLE" \
"PWRITE:APB3mmaster_PWRITE" \
"PRDATA:APB3mmaster_PRDATA" \
"PWDATA:APB3mmaster_PWDATA" \
"PREADY:APB3mmaster_PREADY" \
"PSLVERR:APB3mmaster_PSLVERR" }

sd_create_bif_port -sd_name ${sd_name} -port_name {AXI4_INITIATOR} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {mirroredMaster} -port_bif_mapping {\
"AWID:AXI4_INITIATOR_MASTER0_AWID" \
"AWADDR:AXI4_INITIATOR_MASTER0_AWADDR" \
"AWLEN:AXI4_INITIATOR_MASTER0_AWLEN" \
"AWSIZE:AXI4_INITIATOR_MASTER0_AWSIZE" \
"AWBURST:AXI4_INITIATOR_MASTER0_AWBURST" \
"AWLOCK:AXI4_INITIATOR_MASTER0_AWLOCK" \
"AWCACHE:AXI4_INITIATOR_MASTER0_AWCACHE" \
"AWPROT:AXI4_INITIATOR_MASTER0_AWPROT" \
"AWQOS:AXI4_INITIATOR_MASTER0_AWQOS" \
"AWREGION:AXI4_INITIATOR_MASTER0_AWREGION" \
"AWVALID:AXI4_INITIATOR_MASTER0_AWVALID" \
"AWREADY:AXI4_INITIATOR_MASTER0_AWREADY" \
"WDATA:AXI4_INITIATOR_MASTER0_WDATA" \
"WSTRB:AXI4_INITIATOR_MASTER0_WSTRB" \
"WLAST:AXI4_INITIATOR_MASTER0_WLAST" \
"WVALID:AXI4_INITIATOR_MASTER0_WVALID" \
"WREADY:AXI4_INITIATOR_MASTER0_WREADY" \
"BID:AXI4_INITIATOR_MASTER0_BID" \
"BRESP:AXI4_INITIATOR_MASTER0_BRESP" \
"BVALID:AXI4_INITIATOR_MASTER0_BVALID" \
"BREADY:AXI4_INITIATOR_MASTER0_BREADY" \
"ARID:AXI4_INITIATOR_MASTER0_ARID" \
"ARADDR:AXI4_INITIATOR_MASTER0_ARADDR" \
"ARLEN:AXI4_INITIATOR_MASTER0_ARLEN" \
"ARSIZE:AXI4_INITIATOR_MASTER0_ARSIZE" \
"ARBURST:AXI4_INITIATOR_MASTER0_ARBURST" \
"ARLOCK:AXI4_INITIATOR_MASTER0_ARLOCK" \
"ARCACHE:AXI4_INITIATOR_MASTER0_ARCACHE" \
"ARPROT:AXI4_INITIATOR_MASTER0_ARPROT" \
"ARQOS:AXI4_INITIATOR_MASTER0_ARQOS" \
"ARREGION:AXI4_INITIATOR_MASTER0_ARREGION" \
"ARVALID:AXI4_INITIATOR_MASTER0_ARVALID" \
"ARREADY:AXI4_INITIATOR_MASTER0_ARREADY" \
"RID:AXI4_INITIATOR_MASTER0_RID" \
"RDATA:AXI4_INITIATOR_MASTER0_RDATA" \
"RRESP:AXI4_INITIATOR_MASTER0_RRESP" \
"RLAST:AXI4_INITIATOR_MASTER0_RLAST" \
"RVALID:AXI4_INITIATOR_MASTER0_RVALID" \
"RREADY:AXI4_INITIATOR_MASTER0_RREADY" \
"AWUSER:AXI4_INITIATOR_MASTER0_AWUSER" \
"WUSER:AXI4_INITIATOR_MASTER0_WUSER" \
"BUSER:AXI4_INITIATOR_MASTER0_BUSER" \
"ARUSER:AXI4_INITIATOR_MASTER0_ARUSER" \
"RUSER:AXI4_INITIATOR_MASTER0_RUSER" }

sd_create_pin_slices -sd_name ${sd_name} -pin_name {interrupt} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {interrupt} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {interrupt} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {interrupt} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {interrupt} -pin_slices {[4:4]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {interrupt[1:1]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {interrupt[2:2]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {interrupt[3:3]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {interrupt[4:4]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {interrupt} -pin_slices {[5:31]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {interrupt[5:31]} -value {GND}
# Add apb_kronus_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {apb_kronus} -instance_name {apb_kronus_0}



# Add FIC_0_AXI4_INTERCONNECT_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_0_AXI4_INTERCONNECT} -instance_name {FIC_0_AXI4_INTERCONNECT_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_0_AXI4_INTERCONNECT_0:AXI4mslave0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_0_AXI4_INTERCONNECT_0:AXI4mslave1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_0_AXI4_INTERCONNECT_0:AXI4mslave2}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_0_AXI4_INTERCONNECT_0:AXI4mslave3}



# Add FIC_3_APB_INTERCONNECT_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_3_APB_INTERCONNECT} -instance_name {FIC_3_APB_INTERCONNECT_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_3_APB_INTERCONNECT_0:APBmslave1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_3_APB_INTERCONNECT_0:APBmslave2}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_3_APB_INTERCONNECT_0:APBmslave3}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ACLK" "FIC_0_AXI4_INTERCONNECT_0:ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ARESETN" "FIC_0_AXI4_INTERCONNECT_0:ARESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCLK" "apb_kronus_0:pclk" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PRESETN" "apb_kronus_0:presetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb_kronus_0:irq" "interrupt[0:0]" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"PSTRB" "apb_kronus_0:pstrb" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb_kronus_0:control" "control" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"apb_kronus_0:status" "status" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_INITIATOR" "FIC_3_APB_INTERCONNECT_0:APB3mmaster" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI4_INITIATOR" "FIC_0_AXI4_INTERCONNECT_0:AXI4mmaster0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_APB_INTERCONNECT_0:APBmslave0" "apb_kronus_0:apb_target" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "FABRIC_PERIPHERALS"
generate_component -component_name ${sd_name}
