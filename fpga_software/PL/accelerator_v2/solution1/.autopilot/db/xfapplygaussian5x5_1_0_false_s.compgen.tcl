# This script segment is generated automatically by AutoPilot

set id 96
set name accelerator_v2_ama_addmuladd_8ns_8ns_7ns_18s_19_4_0
set corename simcore_ama
set op ama
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 0
set in1_width 8
set in1_signed 0
set in2_width 7
set in2_signed 0
set in3_width 18
set in3_signed 1
set ce_width 1
set ce_signed 0
set out_width 19
set arg_lists {i0 {8 0 +} i1 {8 0 +} s {9 0 +} i2 {7 0 +} m {16 0 +} i3 {18 1 +} p {19 1 +} c_expval {c} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op ama
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    in3_width ${in3_width} \
    in3_signed ${in3_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 98
set name accelerator_v2_mac_muladd_8ns_7ns_17s_18_4_0
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 0
set in1_width 7
set in1_signed 0
set in2_width 17
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {8 0 +} i1 {7 0 +} m {15 0 +} i2 {17 1 +} p {18 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 99
set name accelerator_v2_mac_muladd_24ns_7ns_30s_32_4_0
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 24
set in0_signed 0
set in1_width 7
set in1_signed 0
set in2_width 30
set in2_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set arg_lists {i0 {24 0 +} i1 {7 0 +} m {31 0 +} i2 {30 1 +} p {32 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name src_buf1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_read \
    op interface \
    ports { src_buf1_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name src_buf1_V_read_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_read_5 \
    op interface \
    ports { src_buf1_V_read_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name src_buf1_V_read_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_read_6 \
    op interface \
    ports { src_buf1_V_read_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name src_buf1_V_read_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_read_7 \
    op interface \
    ports { src_buf1_V_read_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name src_buf1_V_read_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf1_V_read_8 \
    op interface \
    ports { src_buf1_V_read_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name src_buf2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_read \
    op interface \
    ports { src_buf2_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name src_buf2_V_read_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_read_5 \
    op interface \
    ports { src_buf2_V_read_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name src_buf2_V_read_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_read_6 \
    op interface \
    ports { src_buf2_V_read_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name src_buf2_V_read_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_read_7 \
    op interface \
    ports { src_buf2_V_read_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name src_buf2_V_read_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf2_V_read_8 \
    op interface \
    ports { src_buf2_V_read_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name src_buf3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_read \
    op interface \
    ports { src_buf3_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name src_buf3_V_read_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_read_5 \
    op interface \
    ports { src_buf3_V_read_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name src_buf3_V_read_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_read_6 \
    op interface \
    ports { src_buf3_V_read_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name src_buf3_V_read_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_read_7 \
    op interface \
    ports { src_buf3_V_read_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name src_buf3_V_read_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf3_V_read_8 \
    op interface \
    ports { src_buf3_V_read_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name src_buf4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_read \
    op interface \
    ports { src_buf4_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name src_buf4_V_read_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_read_5 \
    op interface \
    ports { src_buf4_V_read_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name src_buf4_V_read_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_read_6 \
    op interface \
    ports { src_buf4_V_read_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name src_buf4_V_read_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_read_7 \
    op interface \
    ports { src_buf4_V_read_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name src_buf4_V_read_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf4_V_read_8 \
    op interface \
    ports { src_buf4_V_read_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name src_buf5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_read \
    op interface \
    ports { src_buf5_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name src_buf5_V_read_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_read_5 \
    op interface \
    ports { src_buf5_V_read_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name src_buf5_V_read_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_read_6 \
    op interface \
    ports { src_buf5_V_read_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name src_buf5_V_read_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_read_7 \
    op interface \
    ports { src_buf5_V_read_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name src_buf5_V_read_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_buf5_V_read_8 \
    op interface \
    ports { src_buf5_V_read_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 8 vector } } \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


