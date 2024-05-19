namespace eval kronus {
    variable script_dir [file dirname [file normalize [info script]]]
    variable root_dir [file normalize "$script_dir/.."]
    variable source_dir "$root_dir/sources"
    variable project_name "kronus"
    variable design_version "0"

    proc parse_args {} {
        variable output_dir
        variable export_dir
        variable project_dir
        variable design_version
        variable board
        variable hss_image_path

        if { $::argc > 0 } {
            foreach arg $::argv {
                if {[string match "*:*" $arg]} {
                    set var [string range $arg 0 [string first ":" $arg]-1]
                    set val [string range $arg [string first ":" $arg]+1 end]
                    set $var "$val"
                } else {
                    set $arg 1
                }
            }
        }

        set local_dir [pwd]

        if {[info exists OUTPUT_DIR]} {
            set output_dir $OUTPUT_DIR
        } else {
            set output_dir "$local_dir/build"
        }

        set export_dir "$output_dir/export"
        set project_dir "$output_dir/project"

        if {[info exists BOARD]} {
            set board $BOARD
        } elseif {[info exists ::env(BOARD)]} {
            set board $::env(BOARD)
        }

        if {[info exists HSS_IMAGE_PATH]} {
            set hss_image_path $HSS_IMAGE_PATH
        }

        # TODO
        # if {[info exists DESIGN_VERSION]} {
        #     set design_version $DESIGN_VERSION
        # }

        # TODO
        # if {[info exists SILICON_SIGNATURE]} {
        #     set silicon_signature "$SILICON_SIGNATURE"
        # } else {
        #     set silicon_signature "bea913b0"
        # }

    }

    proc create_project {} {
        variable project_name
        variable project_dir
        variable board

        if {[string equal $board "mpfs-beaglev-fire"]} {
            set die {MPFS025T}
            set package {FCVG484}
            set speed {STD}
        } elseif {[string equal $board "mpfs-disco-kit"]} {
            set die {MPFS095T}
            set package {FCSG325}
            set speed {-1}
        } else {
            error "Invalid board: $board"
        }

        new_project \
            -location $project_dir \
            -name $project_name \
            -project_description {} \
            -block_mode 0 \
            -standalone_peripheral_initialization 0 \
            -instantiate_in_smartdesign 1 \
            -ondemand_build_dh 1 \
            -use_relative_path 0 \
            -linked_files_root_dir_env {} \
            -hdl {VERILOG} \
            -family {PolarFireSoC} \
            -die $die \
            -package $package \
            -speed $speed \
            -die_voltage {1.0} \
            -part_range {EXT} \
            -adv_options {IO_DEFT_STD:LVCMOS 1.8V} \
            -adv_options {RESTRICTPROBEPINS:0} \
            -adv_options {RESTRICTSPIPINS:0} \
            -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
            -adv_options {TEMPR:EXT} \
            -adv_options {VCCI_1.2_VOLTR:EXT} \
            -adv_options {VCCI_1.5_VOLTR:EXT} \
            -adv_options {VCCI_1.8_VOLTR:EXT} \
            -adv_options {VCCI_2.5_VOLTR:EXT} \
            -adv_options {VCCI_3.3_VOLTR:EXT} \
            -adv_options {VOLTR:EXT}
    }

    proc create_design {} {
        variable source_dir
        variable output_dir
        variable board

        import_mss_component -file "$output_dir/mss/MPFS_MSS.cxz"

        source "$source_dir/$board/components.tcl"

        set_root -module {SYSTEM::work} 

        source "$source_dir/$board/constraints.tcl"

        build_design_hierarchy
		derive_constraints_sdc

        save_project
        # sd_reset_layout -sd_name {SYSTEM}
        # save_smartdesign sd_name {SYSTEM}
    }

    proc create_envm_config {config content} {
        set envm_config [open $config w]

        puts $envm_config "set_plain_text_client \\"
        puts $envm_config "-client_name {BOOT_MODE_1_ENVM_CLIENT} \\"
        puts $envm_config "-number_of_bytes 117248 \\"
        puts $envm_config "-content_type {MEMORY_FILE} \\"
        puts $envm_config "-content_file_format {Intel-Hex} \\"
        puts $envm_config "-content_file {$content} \\"
        puts $envm_config "-mem_file_base_address {0x20220000} \\"
        puts $envm_config "-start_page 0 \\"
        puts $envm_config "-use_for_simulation 0 \\"
        puts $envm_config "-reprogram 1 \\"
        puts $envm_config "-use_as_rom 0 \\"
        puts $envm_config "-fabric_access_read 1 \\"
        puts $envm_config "-fabric_access_write 0 \\"
        puts $envm_config "-mss_access_read 1 \\"
        puts $envm_config "-mss_access_write 0"

        close $envm_config
    }

    proc export_fpe_job {name directory components} {
        export_prog_job \
            -job_file_name $name \
            -export_dir $directory \
            -bitstream_file_type {TRUSTED_FACILITY} \
            -bitstream_file_components $components \
            -zeroization_likenew_action 0 \
            -zeroization_unrecoverable_action 0 \
            -program_design 1 \
            -program_spi_flash 0 \
            -include_plaintext_passkey 0 \
            -design_bitstream_format {PPD} \
            -prog_optional_procedures {} \
            -skip_recommended_procedures {} \
            -sanitize_snvm 0 \
            -sanitize_envm 0
    }
}
