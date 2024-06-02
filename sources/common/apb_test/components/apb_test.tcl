# Exporting core apb_test to TCL
# Exporting Create HDL core command for module apb_test
create_hdl_core -file {hdl/apb_test.sv} -module {apb_test} -library {work} -package {}
# Exporting BIF information of  HDL core command for module apb_test
hdl_core_add_bif -hdl_core_name {apb_test} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {apb_target} -signal_map {\
"PADDR:paddr" \
"PENABLE:penable" \
"PWRITE:pwrite" \
"PRDATA:prdata" \
"PWDATA:pwdata" \
"PREADY:pready" \
"PSLVERR:pslverr" \
"PSELx:psel" }
