# Exporting core apb_kronus to TCL
# Exporting Create HDL core command for module apb_kronus
create_hdl_core -file {hdl/apb_kronus.sv} -module {apb_kronus} -library {work} -package {}
# Exporting BIF information of  HDL core command for module apb_kronus
hdl_core_add_bif -hdl_core_name {apb_kronus} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {apb_target} -signal_map {\
"PADDR:paddr" \
"PENABLE:penable" \
"PWRITE:pwrite" \
"PRDATA:prdata" \
"PWDATA:pwdata" \
"PREADY:pready" \
"PSLVERR:pslverr" \
"PSELx:psel" }
