namespace eval kronus {
    variable script_dir [file normalize [file dirname [info script]]]
    variable kronus_dir [file normalize [file join [file dirname [info script]] "../"]]
    variable source_dir "$kronus_dir/sources"
    variable mss_component "PF_SOC_MSS.cxz"

    proc parse_args {} {
        variable output_dir
        variable export_dir
        variable project_dir
        variable design_name
        variable design_version
        variable board_name
        variable hss_image_path
        variable export_fpe
        variable export_spi
        variable program_device

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

        if {[info exists DESIGN]} {
            set design_name $DESIGN
        } else {
            set design_name "system"
        }

        if {[info exists DESIGN_VERSION]} {
            set design_version $DESIGN_VERSION
        } else {
            set design_version "0"
        }

        if {[info exists BOARD]} {
            set board_name $BOARD
        } elseif {[info exists ::env(BOARD)]} {
            set board_name $::env(BOARD)
        }

        if {[info exists UPDATE_HSS]} {
            set hss_image_path "$output_dir/hss/build/hss-envm-wrapper.$board_name.hex"
        }

        if {[info exists EXPORT_FPE]} {
            set export_fpe 1
        }

        if {[info exists EXPORT_SPI]} {
            set export_spi 1
        }

        if {[info exists PROGRAM]} {
            set program_device 1
        }

        # TODO
        # if {[info exists SILICON_SIGNATURE]} {
        #     set silicon_signature "$SILICON_SIGNATURE"
        # } else {
        #     set silicon_signature "bea913b0"
        # }

    }

    proc create_project {} {
        variable design_name
        variable board_name
        variable project_dir

        if {[string equal $board_name "mpfs-beaglev-fire"]} {
            set die {MPFS025T}
            set package {FCVG484}
            set speed {STD}
        } elseif {[string equal $board_name "mpfs-disco-kit"]} {
            set die {MPFS095T}
            set package {FCSG325}
            set speed {-1}
        } else {
            error "Invalid board: $board_name"
        }

        new_project \
            -location $project_dir \
            -name $design_name \
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
        variable mss_component
        variable board_name

        import_mss_component -file "$output_dir/mss/$mss_component"

        source "$source_dir/$board_name/components.tcl"

        set_root -module {TOP::work}

        source "$source_dir/$board_name/constraints.tcl"

        build_design_hierarchy
		derive_constraints_sdc

        save_project
        # sd_reset_layout -sd_name {TOP}
        # save_smartdesign sd_name {TOP}
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

    proc export_spi_file {name directory components} {
        export_bitstream_file \
            -file_name $name \
            -export_dir $directory \
            -format {SPI} \
            -for_ihp 0 \
            -limit_SVF_file_size 0 \
            -limit_SVF_file_by_max_filesize_or_vectors {} \
            -svf_max_filesize {} \
            -svf_max_vectors {} \
            -master_file 0 \
            -master_file_components {} \
            -encrypted_uek1_file 0 \
            -encrypted_uek1_file_components {} \
            -encrypted_uek2_file 0 \
            -encrypted_uek2_file_components {} \
            -trusted_facility_file 1 \
            -trusted_facility_file_components $components \
            -zeroization_likenew_action 0 \
            -zeroization_unrecoverable_action 0 \
            -master_backlevel_bypass 0 \
            -uek1_backlevel_bypass 0 \
            -uek2_backlevel_bypass 0 \
            -master_include_plaintext_passkey 0 \
            -uek1_include_plaintext_passkey 0 \
            -uek2_include_plaintext_passkey 0 \
            -sanitize_snvm 0 \
            -sanitize_envm 0 \
            -trusted_facility_keep_fabric_operational 0 \
            -trusted_facility_skip_startup_seq 0 \
            -uek1_keep_fabric_operational 0 \
            -uek1_skip_startup_seq 0 \
            -uek1_high_water_mark {} \
            -uek2_keep_fabric_operational 0 \
            -uek2_skip_startup_seq 0 \
            -uek2_high_water_mark {}
    }
}
