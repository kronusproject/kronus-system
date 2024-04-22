
if { $::argc > 0 } {
    set i 1
    foreach arg $::argv {
        if {[string match "*:*" $arg]} {
            set var [string range $arg 0 [string first ":" $arg]-1]
            set val [string range $arg [string first ":" $arg]+1 end]
            puts "Setting $var to $val"
            set $var "$val"
        } else {
            set $arg 1
            puts "Setting $arg to 1"
        }
        incr i
    }
}

set script_path [file dirname [file normalize [info script]]]

set libero_release [split [get_libero_version] .]
set install_dir [defvar_get -name ACTEL_SW_DIR]
set pfsoc_mss_path "$install_dir/bin64/pfsoc_mss"
set local_dir [pwd]

set root_path [file normalize "$script_path/.."]
set source_path "$root_path/sources"
set constraint_path "$source_path/constraints"
set top_level_name GATEWARE

if {[info exists OUTPUT_PATH]} {
    set output_path $OUTPUT_PATH
} else {
    set output_path $local_dir/build
}

set bitstream_path $output_path/bitstream
set fpe_export_path $bitstream_path/fpe

set project_name "gateware"
set project_dir "$output_path/$project_name"

source $script_path/util.tcl
