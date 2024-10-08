
set script_dir [file dirname [file normalize [info script]]]

source $script_dir/kronus.tcl

kronus::parse_args

open_project -file $kronus::project_dir/$kronus::design_name.prjx
open_smartdesign -sd_name $kronus::design_name

set components {FABRIC SNVM}

if {[info exists kronus::hss_image_path]} {
    set components "$components ENVM"
    set content [file normalize $kronus::hss_image_path]
    kronus::create_envm_config "$kronus::output_dir/mss/ENVM.cfg" $content
    run_tool -name {GENERATEPROGRAMMINGDATA}
    configure_envm -cfg_file "$kronus::output_dir/mss/ENVM.cfg"
} else {
    run_tool -name {GENERATEPROGRAMMINGDATA}
    puts "No HSS image provided"
}

run_tool -name {GENERATEPROGRAMMINGFILE}

if {[info exists kronus::export_fpe]} {
    file mkdir $kronus::export_dir
    kronus::export_fpe_job $kronus::design_name $kronus::export_dir $components
}

if {[info exists kronus::export_spi]} {
    file mkdir $kronus::export_dir
    kronus::export_spi_file $kronus::design_name $kronus::export_dir $components
}

if {[info exists kronus::program_device]} {
    run_tool -name {PROGRAMDEVICE}
}

save_project
