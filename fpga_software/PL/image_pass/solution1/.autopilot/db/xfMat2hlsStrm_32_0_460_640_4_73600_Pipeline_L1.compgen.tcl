# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name loop_count \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_loop_count \
    op interface \
    ports { loop_count { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name strm \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_strm \
    op interface \
    ports { strm_din { O 32 vector } strm_num_data_valid { I 2 vector } strm_fifo_cap { I 2 vector } strm_full_n { I 1 bit } strm_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name sext_ln654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln654 \
    op interface \
    ports { sext_ln654 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name last_N_size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_last_N_size \
    op interface \
    ports { last_N_size { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name PTR_WIDTH_min_last_N \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_PTR_WIDTH_min_last_N \
    op interface \
    ports { PTR_WIDTH_min_last_N { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name PTR_WIDTH_plus_last_N \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_PTR_WIDTH_plus_last_N \
    op interface \
    ports { PTR_WIDTH_plus_last_N { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name img_blur_data49 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_blur_data49 \
    op interface \
    ports { img_blur_data49_dout { I 32 vector } img_blur_data49_num_data_valid { I 2 vector } img_blur_data49_fifo_cap { I 2 vector } img_blur_data49_empty_n { I 1 bit } img_blur_data49_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name bits_to_add_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bits_to_add_out \
    op interface \
    ports { bits_to_add_out { O 32 vector } bits_to_add_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name r_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_V_5_out \
    op interface \
    ports { r_V_5_out { O 32 vector } r_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName image_passthrough_flow_control_loop_pipe_sequential_init_U
set CompName image_passthrough_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix image_passthrough_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


