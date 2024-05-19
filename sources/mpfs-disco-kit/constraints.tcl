set script_dir [file dirname [file normalize [info script]]]

import_files \
    -convert_EDN_to_HDL 0 \
    -io_pdc "$script_dir/constraints/io/BANK_SETTINGS.pdc" \
    -io_pdc "$script_dir/constraints/io/BOARD_MISC.pdc" \
    -io_pdc "$script_dir/constraints/io/MAC.pdc" \
    -io_pdc "$script_dir/constraints/io/mikroBUS.pdc" \
    -io_pdc "$script_dir/constraints/io/RPi.pdc" \
    -io_pdc "$script_dir/constraints/io/UARTS.pdc" \
    -io_pdc "$script_dir/constraints/io/7_SEG.pdc" \
    -io_pdc "$script_dir/constraints/io/I2C_LOOPBACK.pdc" 

organize_tool_files \
    -tool {PLACEROUTE} \
    -file "${kronus::project_dir}/constraint/io/BANK_SETTINGS.pdc" \
    -file "${kronus::project_dir}/constraint/io/BOARD_MISC.pdc" \
    -file "${kronus::project_dir}/constraint/io/MAC.pdc" \
    -file "${kronus::project_dir}/constraint/io/mikroBUS.pdc" \
    -file "${kronus::project_dir}/constraint/io/RPi.pdc" \
    -file "${kronus::project_dir}/constraint/io/UARTS.pdc" \
    -file "${kronus::project_dir}/constraint/io/7_SEG.pdc" \
    -module {SYSTEM::work} \
    -input_type {constraint}    
