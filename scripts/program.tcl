
set script_dir [file dirname [file normalize [info script]]]

source $script_dir/kronus.tcl

kronus::parse_args

open_project -file $kronus::project_dir/$kronus::project_name.prjx
open_smartdesign -sd_name {TOP}

run_tool -name {PROGRAMDEVICE}

save_project
