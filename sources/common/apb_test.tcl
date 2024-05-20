create_hdl_core -file {hdl/apb_test.sv} -module {APB_TEST} -library {work} -package {}

hdl_core_add_bif -hdl_core_name {APB_TEST} -bif_definition {APB:AMBA:AMBA2:slave} -bif_name {APB_TARGET} -signal_map {\
    "PADDR:paddr" \
    "PENABLE:penable" \
    "PWRITE:pwrite" \
    "PRDATA:prdata" \
    "PWDATA:pwdata" \
    "PREADY:pready" \
    "PSLVERR:pslverr" \
    "PSELx:psel" \
}