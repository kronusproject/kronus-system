
set script_dir [file dirname [file normalize [info script]]]

source $script_dir/kronus.tcl

kronus::parse_args
kronus::create_project
kronus::create_design
