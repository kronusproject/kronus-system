set script_dir [file dirname [file normalize [info script]]]

import_files \
    -convert_EDN_to_HDL 0 \
    -io_pdc "$script_dir/constraints/io/BANK_SETTINGS.pdc" \
    -io_pdc "$script_dir/constraints/io/MISC.pdc" \
    -io_pdc "$script_dir/constraints/io/MAC.pdc" \
    -io_pdc "$script_dir/constraints/io/MBUS.pdc" \
    -io_pdc "$script_dir/constraints/io/RPI.pdc" \
    -io_pdc "$script_dir/constraints/io/UART.pdc"

organize_tool_files \
    -tool {PLACEROUTE} \
    -file "${kronus::project_dir}/constraint/io/BANK_SETTINGS.pdc" \
    -file "${kronus::project_dir}/constraint/io/MISC.pdc" \
    -file "${kronus::project_dir}/constraint/io/MAC.pdc" \
    -file "${kronus::project_dir}/constraint/io/MBUS.pdc" \
    -file "${kronus::project_dir}/constraint/io/UART.pdc" \
    -module {TOP::work} \
    -input_type {constraint}
