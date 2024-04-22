
set script_path [file dirname [file normalize [info script]]]

source $script_path/env.tcl

open_project -file $project_dir/$project_name.prjx
open_smartdesign -sd_name {GATEWARE}

file mkdir $bitstream_path
file mkdir $bitstream_path/fpe

run_tool -name {SYNTHESIZE}
run_tool -name {PLACEROUTE}
run_tool -name {VERIFYTIMING}

if {[info exists HSS_IMAGE_PATH]} {
    set content [file normalize $HSS_IMAGE_PATH]
    create_envm_config "$output_path/mss/ENVM.cfg" $content
    run_tool -name {GENERATEPROGRAMMINGDATA}
    configure_envm -cfg_file "$output_path/mss/ENVM.cfg"
    run_tool -name {GENERATEPROGRAMMINGFILE}
    set components {FABRIC SNVM ENVM}
    export_fpe_job $project_name $fpe_export_path $components
} else {
    run_tool -name {GENERATEPROGRAMMINGDATA}
    puts "No HSS image provided"
}
