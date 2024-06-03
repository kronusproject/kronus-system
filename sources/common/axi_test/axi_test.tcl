# Exporting core axi_test to TCL
# Exporting Create HDL core command for module axi_test
create_hdl_core -file {hdl/axi_test.sv} -module {axi_test} -library {work} -package {}
# Exporting BIF information of  HDL core command for module axi_test
hdl_core_add_bif -hdl_core_name {axi_test} -bif_definition {AXI4:AMBA:AMBA4:slave} -bif_name {axi4_target} -signal_map {\
"AWADDR:awaddr" \
"AWPROT:awprot" \
"AWVALID:awvalid" \
"AWREADY:awready" \
"WDATA:wdata" \
"WSTRB:wstrb" \
"WVALID:wvalid" \
"WREADY:wready" \
"BRESP:bresp" \
"BVALID:bvalid" \
"BREADY:bready" \
"ARADDR:araddr" \
"ARPROT:arprot" \
"ARVALID:arvalid" \
"ARREADY:arready" \
"RDATA:rdata" \
"RRESP:rresp" \
"RVALID:rvalid" \
"RREADY:rready" }
hdl_core_delete_parameters -hdl_core_name {axi_test} -parameters {STRB_WIDTH}
hdl_core_delete_parameters -hdl_core_name {axi_test} -parameters {PROT_WIDTH}
hdl_core_delete_parameters -hdl_core_name {axi_test} -parameters {RESP_WIDTH}
