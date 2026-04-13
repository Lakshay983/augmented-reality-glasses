# This script segment is generated automatically by AutoPilot

set id 128
set name accelerator_v2_mux_53_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 8
set din4_signed 0
set din5_width 3
set din5_signed 0
set dout_width 8
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name buf_V_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_4 \
    op interface \
    ports { buf_V_4_address0 { O 10 vector } buf_V_4_ce0 { O 1 bit } buf_V_4_q0 { I 8 vector } buf_V_4_address1 { O 10 vector } buf_V_4_ce1 { O 1 bit } buf_V_4_we1 { O 1 bit } buf_V_4_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name buf_V_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_3 \
    op interface \
    ports { buf_V_3_address0 { O 10 vector } buf_V_3_ce0 { O 1 bit } buf_V_3_q0 { I 8 vector } buf_V_3_address1 { O 10 vector } buf_V_3_ce1 { O 1 bit } buf_V_3_we1 { O 1 bit } buf_V_3_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name buf_V_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_2 \
    op interface \
    ports { buf_V_2_address0 { O 10 vector } buf_V_2_ce0 { O 1 bit } buf_V_2_q0 { I 8 vector } buf_V_2_address1 { O 10 vector } buf_V_2_ce1 { O 1 bit } buf_V_2_we1 { O 1 bit } buf_V_2_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name buf_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V_1 \
    op interface \
    ports { buf_V_1_address0 { O 10 vector } buf_V_1_ce0 { O 1 bit } buf_V_1_q0 { I 8 vector } buf_V_1_address1 { O 10 vector } buf_V_1_ce1 { O 1 bit } buf_V_1_we1 { O 1 bit } buf_V_1_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name buf_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buf_V \
    op interface \
    ports { buf_V_address0 { O 10 vector } buf_V_ce0 { O 1 bit } buf_V_q0 { I 8 vector } buf_V_address1 { O 10 vector } buf_V_ce1 { O 1 bit } buf_V_we1 { O 1 bit } buf_V_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buf_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name tp1_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tp1_V_cast \
    op interface \
    ports { tp1_V_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name tp2_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tp2_V_cast \
    op interface \
    ports { tp2_V_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name mid_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mid_V_cast \
    op interface \
    ports { mid_V_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name bottom1_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bottom1_V_cast \
    op interface \
    ports { bottom1_V_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name bottom2_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bottom2_V_cast \
    op interface \
    ports { bottom2_V_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name gray_mat_data2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gray_mat_data2 \
    op interface \
    ports { gray_mat_data2_dout { I 8 vector } gray_mat_data2_num_data_valid { I 13 vector } gray_mat_data2_fifo_cap { I 13 vector } gray_mat_data2_empty_n { I 1 bit } gray_mat_data2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name row_ind_V_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_ind_V_cast \
    op interface \
    ports { row_ind_V_cast { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name cmp_i_i380_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i380_i \
    op interface \
    ports { cmp_i_i380_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name blurred_mat_data3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_blurred_mat_data3 \
    op interface \
    ports { blurred_mat_data3_din { O 8 vector } blurred_mat_data3_num_data_valid { I 13 vector } blurred_mat_data3_fifo_cap { I 13 vector } blurred_mat_data3_full_n { I 1 bit } blurred_mat_data3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name src_buf5_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_2_out \
    op interface \
    ports { src_buf5_V_2_out { O 8 vector } src_buf5_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name src_buf5_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_1_out \
    op interface \
    ports { src_buf5_V_1_out { O 8 vector } src_buf5_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name src_buf5_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_out \
    op interface \
    ports { src_buf5_V_out { O 8 vector } src_buf5_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name src_buf5_V_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_0_out \
    op interface \
    ports { src_buf5_V_0_out { O 8 vector } src_buf5_V_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name src_buf4_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_2_out \
    op interface \
    ports { src_buf4_V_2_out { O 8 vector } src_buf4_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name src_buf4_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_1_out \
    op interface \
    ports { src_buf4_V_1_out { O 8 vector } src_buf4_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name src_buf4_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_out \
    op interface \
    ports { src_buf4_V_out { O 8 vector } src_buf4_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name src_buf4_V_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_0_out \
    op interface \
    ports { src_buf4_V_0_out { O 8 vector } src_buf4_V_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name src_buf3_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_2_out \
    op interface \
    ports { src_buf3_V_2_out { O 8 vector } src_buf3_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name src_buf3_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_1_out \
    op interface \
    ports { src_buf3_V_1_out { O 8 vector } src_buf3_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name src_buf3_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_out \
    op interface \
    ports { src_buf3_V_out { O 8 vector } src_buf3_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name src_buf3_V_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_0_out \
    op interface \
    ports { src_buf3_V_0_out { O 8 vector } src_buf3_V_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name src_buf2_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_2_out \
    op interface \
    ports { src_buf2_V_2_out { O 8 vector } src_buf2_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name src_buf2_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_1_out \
    op interface \
    ports { src_buf2_V_1_out { O 8 vector } src_buf2_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name src_buf2_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_out \
    op interface \
    ports { src_buf2_V_out { O 8 vector } src_buf2_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name src_buf2_V_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_0_out \
    op interface \
    ports { src_buf2_V_0_out { O 8 vector } src_buf2_V_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name src_buf1_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_2_out \
    op interface \
    ports { src_buf1_V_2_out { O 8 vector } src_buf1_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name src_buf1_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_1_out \
    op interface \
    ports { src_buf1_V_1_out { O 8 vector } src_buf1_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name src_buf1_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_out \
    op interface \
    ports { src_buf1_V_out { O 8 vector } src_buf1_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name src_buf1_V_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_0_out \
    op interface \
    ports { src_buf1_V_0_out { O 8 vector } src_buf1_V_0_out_ap_vld { O 1 bit } } \
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
set InstName accelerator_v2_flow_control_loop_pipe_sequential_init_U
set CompName accelerator_v2_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix accelerator_v2_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


