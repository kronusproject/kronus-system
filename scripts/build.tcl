
set script_dir [file dirname [file normalize [info script]]]

source $script_dir/kronus.tcl

kronus::parse_args

open_project -file $kronus::project_dir/$kronus::project_name.prjx
open_smartdesign -sd_name {TOP}

# TODO
# configure_tool -name {CONFIGURE_PROG_OPTIONS} \
#     -params {back_level_version:0} \
#     -params design_version:$kronus::design_version \
#     -params silicon_signature:$kronus::silicon_signature

# Enabling minimum delay repair and multi pass max delay
configure_tool \
    -name {PLACEROUTE} \
    -params {DELAY_ANALYSIS:MAX} \
    -params {EFFORT_LEVEL:true} \
    -params {GB_DEMOTION:true} \
    -params {INCRPLACEANDROUTE:false} \
    -params {IOREG_COMBINING:false} \
    -params {MULTI_PASS_CRITERIA:VIOLATIONS} \
    -params {MULTI_PASS_LAYOUT:true} \
    -params {NUM_MULTI_PASSES:5} \
    -params {PDPR:false} \
    -params {RANDOM_SEED:0} \
    -params {REPAIR_MIN_DELAY:true} \
    -params {REPLICATION:false} \
    -params {SLACK_CRITERIA:WORST_SLACK} \
    -params {SPECIFIC_CLOCK:} \
    -params {START_SEED_INDEX:1} \
    -params {STOP_ON_FIRST_PASS:true} \
    -params {TDPR:true}

run_tool -name {SYNTHESIZE}
run_tool -name {PLACEROUTE}
run_tool -name {VERIFYTIMING}

save_project
