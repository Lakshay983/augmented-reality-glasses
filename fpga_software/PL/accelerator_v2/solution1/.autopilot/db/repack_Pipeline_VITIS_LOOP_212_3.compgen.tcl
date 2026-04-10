# This script segment is generated automatically by AutoPilot

set id 174
set name accelerator_v2_mux_21_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 1
set din2_signed 0
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
    id 190 \
    name row_pixels_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_pixels_V \
    op interface \
    ports { row_pixels_V_address0 { O 9 vector } row_pixels_V_ce0 { O 1 bit } row_pixels_V_q0 { I 8 vector } row_pixels_V_address1 { O 9 vector } row_pixels_V_ce1 { O 1 bit } row_pixels_V_q1 { I 8 vector } row_pixels_V_address2 { O 9 vector } row_pixels_V_ce2 { O 1 bit } row_pixels_V_q2 { I 8 vector } row_pixels_V_address3 { O 9 vector } row_pixels_V_ce3 { O 1 bit } row_pixels_V_q3 { I 8 vector } row_pixels_V_address4 { O 9 vector } row_pixels_V_ce4 { O 1 bit } row_pixels_V_q4 { I 8 vector } row_pixels_V_address5 { O 9 vector } row_pixels_V_ce5 { O 1 bit } row_pixels_V_q5 { I 8 vector } row_pixels_V_address6 { O 9 vector } row_pixels_V_ce6 { O 1 bit } row_pixels_V_q6 { I 8 vector } row_pixels_V_address7 { O 9 vector } row_pixels_V_ce7 { O 1 bit } row_pixels_V_q7 { I 8 vector } row_pixels_V_address8 { O 9 vector } row_pixels_V_ce8 { O 1 bit } row_pixels_V_q8 { I 8 vector } row_pixels_V_address9 { O 9 vector } row_pixels_V_ce9 { O 1 bit } row_pixels_V_q9 { I 8 vector } row_pixels_V_address10 { O 9 vector } row_pixels_V_ce10 { O 1 bit } row_pixels_V_q10 { I 8 vector } row_pixels_V_address11 { O 9 vector } row_pixels_V_ce11 { O 1 bit } row_pixels_V_q11 { I 8 vector } row_pixels_V_address12 { O 9 vector } row_pixels_V_ce12 { O 1 bit } row_pixels_V_q12 { I 8 vector } row_pixels_V_address13 { O 9 vector } row_pixels_V_ce13 { O 1 bit } row_pixels_V_q13 { I 8 vector } row_pixels_V_address14 { O 9 vector } row_pixels_V_ce14 { O 1 bit } row_pixels_V_q14 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_pixels_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name row_pixels_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename row_pixels_V_1 \
    op interface \
    ports { row_pixels_V_1_address0 { O 9 vector } row_pixels_V_1_ce0 { O 1 bit } row_pixels_V_1_q0 { I 8 vector } row_pixels_V_1_address1 { O 9 vector } row_pixels_V_1_ce1 { O 1 bit } row_pixels_V_1_q1 { I 8 vector } row_pixels_V_1_address2 { O 9 vector } row_pixels_V_1_ce2 { O 1 bit } row_pixels_V_1_q2 { I 8 vector } row_pixels_V_1_address3 { O 9 vector } row_pixels_V_1_ce3 { O 1 bit } row_pixels_V_1_q3 { I 8 vector } row_pixels_V_1_address4 { O 9 vector } row_pixels_V_1_ce4 { O 1 bit } row_pixels_V_1_q4 { I 8 vector } row_pixels_V_1_address5 { O 9 vector } row_pixels_V_1_ce5 { O 1 bit } row_pixels_V_1_q5 { I 8 vector } row_pixels_V_1_address6 { O 9 vector } row_pixels_V_1_ce6 { O 1 bit } row_pixels_V_1_q6 { I 8 vector } row_pixels_V_1_address7 { O 9 vector } row_pixels_V_1_ce7 { O 1 bit } row_pixels_V_1_q7 { I 8 vector } row_pixels_V_1_address8 { O 9 vector } row_pixels_V_1_ce8 { O 1 bit } row_pixels_V_1_q8 { I 8 vector } row_pixels_V_1_address9 { O 9 vector } row_pixels_V_1_ce9 { O 1 bit } row_pixels_V_1_q9 { I 8 vector } row_pixels_V_1_address10 { O 9 vector } row_pixels_V_1_ce10 { O 1 bit } row_pixels_V_1_q10 { I 8 vector } row_pixels_V_1_address11 { O 9 vector } row_pixels_V_1_ce11 { O 1 bit } row_pixels_V_1_q11 { I 8 vector } row_pixels_V_1_address12 { O 9 vector } row_pixels_V_1_ce12 { O 1 bit } row_pixels_V_1_q12 { I 8 vector } row_pixels_V_1_address13 { O 9 vector } row_pixels_V_1_ce13 { O 1 bit } row_pixels_V_1_q13 { I 8 vector } row_pixels_V_1_address14 { O 9 vector } row_pixels_V_1_ce14 { O 1 bit } row_pixels_V_1_q14 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_pixels_V_1'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 194 \
    name out_stream_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TREADY { I 1 bit } out_stream_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 195 \
    name out_stream_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 196 \
    name out_stream_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 197 \
    name out_stream_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TUSER { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 198 \
    name out_stream_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 199 \
    name out_stream_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TID { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 200 \
    name out_stream_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TVALID { O 1 bit } out_stream_TDEST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name cmp39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp39 \
    op interface \
    ports { cmp39 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name cmp43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp43 \
    op interface \
    ports { cmp43 { I 1 vector } } \
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


