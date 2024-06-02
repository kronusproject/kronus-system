set script_dir [file dirname [file normalize [info script]]]

import_files \
    -convert_EDN_to_HDL 0 \
    -io_pdc "$script_dir/constraints/IO.pdc" \
    -fp_pdc "$script_dir/constraints/NW_PLL.pdc" \
    -sdc "$script_dir/constraints/FIC_CLOCKS.sdc" \
    -io_pdc "$script_dir/constraints/CAPE.pdc" \
    -io_pdc "$script_dir/constraints/M2.pdc" \

organize_tool_files \
    -tool {SYNTHESIZE} \
    -file "${kronus::project_dir}/constraint/FIC_CLOCKS.sdc" \
    -module {TOP::work} \
    -input_type {constraint}

organize_tool_files \
    -tool {PLACEROUTE} \
    -file "${kronus::project_dir}/constraint/io/IO.pdc" \
    -file "${kronus::project_dir}/constraint/fp/NW_PLL.pdc" \
    -file "${kronus::project_dir}/constraint/FIC_CLOCKS.sdc" \
    -file "${kronus::project_dir}/constraint/io/CAPE.pdc" \
    -file "${kronus::project_dir}/constraint/io/M2.pdc" \
    -module {TOP::work} \
    -input_type {constraint}

organize_tool_files \
    -tool {VERIFYTIMING} \
    -file "${kronus::project_dir}/constraint/FIC_CLOCKS.sdc" \
    -module {TOP::work} \
    -input_type {constraint}
