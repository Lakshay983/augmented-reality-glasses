set moduleName xFGaussianFilter5x5_Pipeline_Col_Loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFGaussianFilter5x5_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ tp1_V_cast int 3 regular  }
	{ tp2_V_cast int 3 regular  }
	{ mid_V_cast int 3 regular  }
	{ bottom1_V_cast int 3 regular  }
	{ bottom2_V_cast int 3 regular  }
	{ gray_mat_data44 int 8 regular {fifo 0 volatile }  }
	{ row_ind_V_cast int 3 regular  }
	{ buf_V_4 int 8 regular {array 644 { 1 0 } 1 1 }  }
	{ buf_V_3 int 8 regular {array 644 { 1 0 } 1 1 }  }
	{ buf_V_2 int 8 regular {array 644 { 1 0 } 1 1 }  }
	{ buf_V_1 int 8 regular {array 644 { 1 0 } 1 1 }  }
	{ buf_V int 8 regular {array 644 { 1 0 } 1 1 }  }
	{ cmp_i_i380_i int 1 regular  }
	{ blurred_mat_data45 int 8 regular {fifo 1 volatile }  }
	{ src_buf5_V_2_out int 8 regular {pointer 1}  }
	{ src_buf5_V_1_out int 8 regular {pointer 1}  }
	{ src_buf5_V_out int 8 regular {pointer 1}  }
	{ src_buf5_V_0_out int 8 regular {pointer 1}  }
	{ src_buf4_V_2_out int 8 regular {pointer 1}  }
	{ src_buf4_V_1_out int 8 regular {pointer 1}  }
	{ src_buf4_V_out int 8 regular {pointer 1}  }
	{ src_buf4_V_0_out int 8 regular {pointer 1}  }
	{ src_buf3_V_2_out int 8 regular {pointer 1}  }
	{ src_buf3_V_1_out int 8 regular {pointer 1}  }
	{ src_buf3_V_out int 8 regular {pointer 1}  }
	{ src_buf3_V_0_out int 8 regular {pointer 1}  }
	{ src_buf2_V_2_out int 8 regular {pointer 1}  }
	{ src_buf2_V_1_out int 8 regular {pointer 1}  }
	{ src_buf2_V_out int 8 regular {pointer 1}  }
	{ src_buf2_V_0_out int 8 regular {pointer 1}  }
	{ src_buf1_V_2_out int 8 regular {pointer 1}  }
	{ src_buf1_V_1_out int 8 regular {pointer 1}  }
	{ src_buf1_V_out int 8 regular {pointer 1}  }
	{ src_buf1_V_0_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tp1_V_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tp2_V_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "mid_V_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "bottom1_V_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "bottom2_V_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "gray_mat_data44", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "row_ind_V_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "cmp_i_i380_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "blurred_mat_data45", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf5_V_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf5_V_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf5_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf5_V_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf4_V_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf4_V_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf4_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf4_V_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf3_V_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf3_V_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf3_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf3_V_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf2_V_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf2_V_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf2_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf2_V_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf1_V_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf1_V_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf1_V_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_buf1_V_0_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 125
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gray_mat_data44_dout sc_in sc_lv 8 signal 5 } 
	{ gray_mat_data44_num_data_valid sc_in sc_lv 13 signal 5 } 
	{ gray_mat_data44_fifo_cap sc_in sc_lv 13 signal 5 } 
	{ gray_mat_data44_empty_n sc_in sc_logic 1 signal 5 } 
	{ gray_mat_data44_read sc_out sc_logic 1 signal 5 } 
	{ blurred_mat_data45_din sc_out sc_lv 8 signal 13 } 
	{ blurred_mat_data45_num_data_valid sc_in sc_lv 13 signal 13 } 
	{ blurred_mat_data45_fifo_cap sc_in sc_lv 13 signal 13 } 
	{ blurred_mat_data45_full_n sc_in sc_logic 1 signal 13 } 
	{ blurred_mat_data45_write sc_out sc_logic 1 signal 13 } 
	{ tp1_V_cast sc_in sc_lv 3 signal 0 } 
	{ tp2_V_cast sc_in sc_lv 3 signal 1 } 
	{ mid_V_cast sc_in sc_lv 3 signal 2 } 
	{ bottom1_V_cast sc_in sc_lv 3 signal 3 } 
	{ bottom2_V_cast sc_in sc_lv 3 signal 4 } 
	{ row_ind_V_cast sc_in sc_lv 3 signal 6 } 
	{ buf_V_4_address0 sc_out sc_lv 10 signal 7 } 
	{ buf_V_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf_V_4_q0 sc_in sc_lv 8 signal 7 } 
	{ buf_V_4_address1 sc_out sc_lv 10 signal 7 } 
	{ buf_V_4_ce1 sc_out sc_logic 1 signal 7 } 
	{ buf_V_4_we1 sc_out sc_logic 1 signal 7 } 
	{ buf_V_4_d1 sc_out sc_lv 8 signal 7 } 
	{ buf_V_3_address0 sc_out sc_lv 10 signal 8 } 
	{ buf_V_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf_V_3_q0 sc_in sc_lv 8 signal 8 } 
	{ buf_V_3_address1 sc_out sc_lv 10 signal 8 } 
	{ buf_V_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ buf_V_3_we1 sc_out sc_logic 1 signal 8 } 
	{ buf_V_3_d1 sc_out sc_lv 8 signal 8 } 
	{ buf_V_2_address0 sc_out sc_lv 10 signal 9 } 
	{ buf_V_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf_V_2_q0 sc_in sc_lv 8 signal 9 } 
	{ buf_V_2_address1 sc_out sc_lv 10 signal 9 } 
	{ buf_V_2_ce1 sc_out sc_logic 1 signal 9 } 
	{ buf_V_2_we1 sc_out sc_logic 1 signal 9 } 
	{ buf_V_2_d1 sc_out sc_lv 8 signal 9 } 
	{ buf_V_1_address0 sc_out sc_lv 10 signal 10 } 
	{ buf_V_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ buf_V_1_q0 sc_in sc_lv 8 signal 10 } 
	{ buf_V_1_address1 sc_out sc_lv 10 signal 10 } 
	{ buf_V_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ buf_V_1_we1 sc_out sc_logic 1 signal 10 } 
	{ buf_V_1_d1 sc_out sc_lv 8 signal 10 } 
	{ buf_V_address0 sc_out sc_lv 10 signal 11 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ buf_V_q0 sc_in sc_lv 8 signal 11 } 
	{ buf_V_address1 sc_out sc_lv 10 signal 11 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 11 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 11 } 
	{ buf_V_d1 sc_out sc_lv 8 signal 11 } 
	{ cmp_i_i380_i sc_in sc_lv 1 signal 12 } 
	{ src_buf5_V_2_out sc_out sc_lv 8 signal 14 } 
	{ src_buf5_V_2_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ src_buf5_V_1_out sc_out sc_lv 8 signal 15 } 
	{ src_buf5_V_1_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ src_buf5_V_out sc_out sc_lv 8 signal 16 } 
	{ src_buf5_V_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ src_buf5_V_0_out sc_out sc_lv 8 signal 17 } 
	{ src_buf5_V_0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ src_buf4_V_2_out sc_out sc_lv 8 signal 18 } 
	{ src_buf4_V_2_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ src_buf4_V_1_out sc_out sc_lv 8 signal 19 } 
	{ src_buf4_V_1_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ src_buf4_V_out sc_out sc_lv 8 signal 20 } 
	{ src_buf4_V_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ src_buf4_V_0_out sc_out sc_lv 8 signal 21 } 
	{ src_buf4_V_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ src_buf3_V_2_out sc_out sc_lv 8 signal 22 } 
	{ src_buf3_V_2_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ src_buf3_V_1_out sc_out sc_lv 8 signal 23 } 
	{ src_buf3_V_1_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ src_buf3_V_out sc_out sc_lv 8 signal 24 } 
	{ src_buf3_V_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ src_buf3_V_0_out sc_out sc_lv 8 signal 25 } 
	{ src_buf3_V_0_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ src_buf2_V_2_out sc_out sc_lv 8 signal 26 } 
	{ src_buf2_V_2_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ src_buf2_V_1_out sc_out sc_lv 8 signal 27 } 
	{ src_buf2_V_1_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ src_buf2_V_out sc_out sc_lv 8 signal 28 } 
	{ src_buf2_V_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ src_buf2_V_0_out sc_out sc_lv 8 signal 29 } 
	{ src_buf2_V_0_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ src_buf1_V_2_out sc_out sc_lv 8 signal 30 } 
	{ src_buf1_V_2_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ src_buf1_V_1_out sc_out sc_lv 8 signal 31 } 
	{ src_buf1_V_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ src_buf1_V_out sc_out sc_lv 8 signal 32 } 
	{ src_buf1_V_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ src_buf1_V_0_out sc_out sc_lv 8 signal 33 } 
	{ src_buf1_V_0_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din1 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din2 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din3 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din4 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din5 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din6 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din7 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din8 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din9 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din10 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din11 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din12 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din13 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din14 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din15 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din16 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din17 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din18 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din19 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din20 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din21 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din22 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din23 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din24 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din25 sc_out sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_dout0 sc_in sc_lv 8 signal -1 } 
	{ grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gray_mat_data44_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "dout" }} , 
 	{ "name": "gray_mat_data44_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "num_data_valid" }} , 
 	{ "name": "gray_mat_data44_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "fifo_cap" }} , 
 	{ "name": "gray_mat_data44_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "empty_n" }} , 
 	{ "name": "gray_mat_data44_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "read" }} , 
 	{ "name": "blurred_mat_data45_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "blurred_mat_data45", "role": "din" }} , 
 	{ "name": "blurred_mat_data45_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "blurred_mat_data45", "role": "num_data_valid" }} , 
 	{ "name": "blurred_mat_data45_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "blurred_mat_data45", "role": "fifo_cap" }} , 
 	{ "name": "blurred_mat_data45_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blurred_mat_data45", "role": "full_n" }} , 
 	{ "name": "blurred_mat_data45_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blurred_mat_data45", "role": "write" }} , 
 	{ "name": "tp1_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tp1_V_cast", "role": "default" }} , 
 	{ "name": "tp2_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tp2_V_cast", "role": "default" }} , 
 	{ "name": "mid_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mid_V_cast", "role": "default" }} , 
 	{ "name": "bottom1_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bottom1_V_cast", "role": "default" }} , 
 	{ "name": "bottom2_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bottom2_V_cast", "role": "default" }} , 
 	{ "name": "row_ind_V_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "row_ind_V_cast", "role": "default" }} , 
 	{ "name": "buf_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_4", "role": "address0" }} , 
 	{ "name": "buf_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "ce0" }} , 
 	{ "name": "buf_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_4", "role": "q0" }} , 
 	{ "name": "buf_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_4", "role": "address1" }} , 
 	{ "name": "buf_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "ce1" }} , 
 	{ "name": "buf_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_4", "role": "we1" }} , 
 	{ "name": "buf_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_4", "role": "d1" }} , 
 	{ "name": "buf_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_3", "role": "address0" }} , 
 	{ "name": "buf_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "ce0" }} , 
 	{ "name": "buf_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_3", "role": "q0" }} , 
 	{ "name": "buf_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_3", "role": "address1" }} , 
 	{ "name": "buf_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "ce1" }} , 
 	{ "name": "buf_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_3", "role": "we1" }} , 
 	{ "name": "buf_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_3", "role": "d1" }} , 
 	{ "name": "buf_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address0" }} , 
 	{ "name": "buf_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce0" }} , 
 	{ "name": "buf_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "q0" }} , 
 	{ "name": "buf_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address1" }} , 
 	{ "name": "buf_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce1" }} , 
 	{ "name": "buf_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "we1" }} , 
 	{ "name": "buf_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "d1" }} , 
 	{ "name": "buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address0" }} , 
 	{ "name": "buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce0" }} , 
 	{ "name": "buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "q0" }} , 
 	{ "name": "buf_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address1" }} , 
 	{ "name": "buf_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce1" }} , 
 	{ "name": "buf_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "we1" }} , 
 	{ "name": "buf_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "d1" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "q0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "cmp_i_i380_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i380_i", "role": "default" }} , 
 	{ "name": "src_buf5_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_2_out", "role": "default" }} , 
 	{ "name": "src_buf5_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf5_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf5_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_1_out", "role": "default" }} , 
 	{ "name": "src_buf5_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf5_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf5_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_out", "role": "default" }} , 
 	{ "name": "src_buf5_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf5_V_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf5_V_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_0_out", "role": "default" }} , 
 	{ "name": "src_buf5_V_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf5_V_0_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf4_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_2_out", "role": "default" }} , 
 	{ "name": "src_buf4_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf4_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf4_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_1_out", "role": "default" }} , 
 	{ "name": "src_buf4_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf4_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf4_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_out", "role": "default" }} , 
 	{ "name": "src_buf4_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf4_V_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf4_V_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_0_out", "role": "default" }} , 
 	{ "name": "src_buf4_V_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf4_V_0_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf3_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_2_out", "role": "default" }} , 
 	{ "name": "src_buf3_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf3_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf3_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_1_out", "role": "default" }} , 
 	{ "name": "src_buf3_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf3_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf3_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_out", "role": "default" }} , 
 	{ "name": "src_buf3_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf3_V_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf3_V_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_0_out", "role": "default" }} , 
 	{ "name": "src_buf3_V_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf3_V_0_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf2_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_2_out", "role": "default" }} , 
 	{ "name": "src_buf2_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf2_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf2_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_1_out", "role": "default" }} , 
 	{ "name": "src_buf2_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf2_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf2_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_out", "role": "default" }} , 
 	{ "name": "src_buf2_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf2_V_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf2_V_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_0_out", "role": "default" }} , 
 	{ "name": "src_buf2_V_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf2_V_0_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf1_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_2_out", "role": "default" }} , 
 	{ "name": "src_buf1_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf1_V_2_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf1_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_1_out", "role": "default" }} , 
 	{ "name": "src_buf1_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf1_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf1_V_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_out", "role": "default" }} , 
 	{ "name": "src_buf1_V_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf1_V_out", "role": "ap_vld" }} , 
 	{ "name": "src_buf1_V_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_0_out", "role": "default" }} , 
 	{ "name": "src_buf1_V_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_buf1_V_0_out", "role": "ap_vld" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din1", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din2", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din3", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din4", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din5", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din6", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din7", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din8", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din9", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din10", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din11", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din12", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din13", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din14", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din15", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din16", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din16", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din17", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din17", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din18", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din18", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din19", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din19", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din20", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din20", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din21", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din21", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din22", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din22", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din23", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din23", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din24", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din24", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din25", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_din25", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_dout0", "role": "default" }} , 
 	{ "name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xfapplygaussian5x5_1_0_false_s_fu_217_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "655", "EstimateLatencyMax" : "655",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_117", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_92", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_92", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_116", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_141", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_105", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_105", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_115", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_140", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_96", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_107", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_96", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_139", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_98", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_109", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_98", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_143", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_117", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_92", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_116", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_141", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_105", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_105", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_105", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_105", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_115", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_140", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_107", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_107", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_96", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_107", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_107", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_139", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_109", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_109", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_98", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_109", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_109", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_143", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_139", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_96", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_139", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_107", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_115", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_140", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_115", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_140", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_105", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_105", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_116", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_141", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_92", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_116", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_141", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_117", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_117", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_143", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_98", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_143", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_109", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "tp1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tp2_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom2_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_ind_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp_i_i380_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_buf5_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf5_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf5_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf5_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U118", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U119", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U120", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U121", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_8_1_1_U122", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFGaussianFilter5x5_Pipeline_Col_Loop {
		tp1_V_cast {Type I LastRead 0 FirstWrite -1}
		tp2_V_cast {Type I LastRead 0 FirstWrite -1}
		mid_V_cast {Type I LastRead 0 FirstWrite -1}
		bottom1_V_cast {Type I LastRead 0 FirstWrite -1}
		bottom2_V_cast {Type I LastRead 0 FirstWrite -1}
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		row_ind_V_cast {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type IO LastRead 2 FirstWrite 1}
		buf_V_3 {Type IO LastRead 2 FirstWrite 1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		cmp_i_i380_i {Type I LastRead 0 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 10}
		src_buf5_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf5_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf5_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf5_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_0_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "655", "Max" : "655"}
	, {"Name" : "Interval", "Min" : "655", "Max" : "655"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tp1_V_cast { ap_none {  { tp1_V_cast in_data 0 3 } } }
	tp2_V_cast { ap_none {  { tp2_V_cast in_data 0 3 } } }
	mid_V_cast { ap_none {  { mid_V_cast in_data 0 3 } } }
	bottom1_V_cast { ap_none {  { bottom1_V_cast in_data 0 3 } } }
	bottom2_V_cast { ap_none {  { bottom2_V_cast in_data 0 3 } } }
	gray_mat_data44 { ap_fifo {  { gray_mat_data44_dout fifo_port_we 0 8 }  { gray_mat_data44_num_data_valid fifo_status_num_data_valid 0 13 }  { gray_mat_data44_fifo_cap fifo_update 0 13 }  { gray_mat_data44_empty_n fifo_status 0 1 }  { gray_mat_data44_read fifo_data 1 1 } } }
	row_ind_V_cast { ap_none {  { row_ind_V_cast in_data 0 3 } } }
	buf_V_4 { ap_memory {  { buf_V_4_address0 mem_address 1 10 }  { buf_V_4_ce0 mem_ce 1 1 }  { buf_V_4_q0 in_data 0 8 }  { buf_V_4_address1 MemPortADDR2 1 10 }  { buf_V_4_ce1 MemPortCE2 1 1 }  { buf_V_4_we1 MemPortWE2 1 1 }  { buf_V_4_d1 MemPortDIN2 1 8 } } }
	buf_V_3 { ap_memory {  { buf_V_3_address0 mem_address 1 10 }  { buf_V_3_ce0 mem_ce 1 1 }  { buf_V_3_q0 in_data 0 8 }  { buf_V_3_address1 MemPortADDR2 1 10 }  { buf_V_3_ce1 MemPortCE2 1 1 }  { buf_V_3_we1 MemPortWE2 1 1 }  { buf_V_3_d1 MemPortDIN2 1 8 } } }
	buf_V_2 { ap_memory {  { buf_V_2_address0 mem_address 1 10 }  { buf_V_2_ce0 mem_ce 1 1 }  { buf_V_2_q0 in_data 0 8 }  { buf_V_2_address1 MemPortADDR2 1 10 }  { buf_V_2_ce1 MemPortCE2 1 1 }  { buf_V_2_we1 MemPortWE2 1 1 }  { buf_V_2_d1 MemPortDIN2 1 8 } } }
	buf_V_1 { ap_memory {  { buf_V_1_address0 mem_address 1 10 }  { buf_V_1_ce0 mem_ce 1 1 }  { buf_V_1_q0 in_data 0 8 }  { buf_V_1_address1 MemPortADDR2 1 10 }  { buf_V_1_ce1 MemPortCE2 1 1 }  { buf_V_1_we1 MemPortWE2 1 1 }  { buf_V_1_d1 MemPortDIN2 1 8 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 10 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 8 }  { buf_V_address1 MemPortADDR2 1 10 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 8 } } }
	cmp_i_i380_i { ap_none {  { cmp_i_i380_i in_data 0 1 } } }
	blurred_mat_data45 { ap_fifo {  { blurred_mat_data45_din fifo_port_we 1 8 }  { blurred_mat_data45_num_data_valid fifo_status_num_data_valid 0 13 }  { blurred_mat_data45_fifo_cap fifo_update 0 13 }  { blurred_mat_data45_full_n fifo_status 0 1 }  { blurred_mat_data45_write fifo_data 1 1 } } }
	src_buf5_V_2_out { ap_vld {  { src_buf5_V_2_out out_data 1 8 }  { src_buf5_V_2_out_ap_vld out_vld 1 1 } } }
	src_buf5_V_1_out { ap_vld {  { src_buf5_V_1_out out_data 1 8 }  { src_buf5_V_1_out_ap_vld out_vld 1 1 } } }
	src_buf5_V_out { ap_vld {  { src_buf5_V_out out_data 1 8 }  { src_buf5_V_out_ap_vld out_vld 1 1 } } }
	src_buf5_V_0_out { ap_vld {  { src_buf5_V_0_out out_data 1 8 }  { src_buf5_V_0_out_ap_vld out_vld 1 1 } } }
	src_buf4_V_2_out { ap_vld {  { src_buf4_V_2_out out_data 1 8 }  { src_buf4_V_2_out_ap_vld out_vld 1 1 } } }
	src_buf4_V_1_out { ap_vld {  { src_buf4_V_1_out out_data 1 8 }  { src_buf4_V_1_out_ap_vld out_vld 1 1 } } }
	src_buf4_V_out { ap_vld {  { src_buf4_V_out out_data 1 8 }  { src_buf4_V_out_ap_vld out_vld 1 1 } } }
	src_buf4_V_0_out { ap_vld {  { src_buf4_V_0_out out_data 1 8 }  { src_buf4_V_0_out_ap_vld out_vld 1 1 } } }
	src_buf3_V_2_out { ap_vld {  { src_buf3_V_2_out out_data 1 8 }  { src_buf3_V_2_out_ap_vld out_vld 1 1 } } }
	src_buf3_V_1_out { ap_vld {  { src_buf3_V_1_out out_data 1 8 }  { src_buf3_V_1_out_ap_vld out_vld 1 1 } } }
	src_buf3_V_out { ap_vld {  { src_buf3_V_out out_data 1 8 }  { src_buf3_V_out_ap_vld out_vld 1 1 } } }
	src_buf3_V_0_out { ap_vld {  { src_buf3_V_0_out out_data 1 8 }  { src_buf3_V_0_out_ap_vld out_vld 1 1 } } }
	src_buf2_V_2_out { ap_vld {  { src_buf2_V_2_out out_data 1 8 }  { src_buf2_V_2_out_ap_vld out_vld 1 1 } } }
	src_buf2_V_1_out { ap_vld {  { src_buf2_V_1_out out_data 1 8 }  { src_buf2_V_1_out_ap_vld out_vld 1 1 } } }
	src_buf2_V_out { ap_vld {  { src_buf2_V_out out_data 1 8 }  { src_buf2_V_out_ap_vld out_vld 1 1 } } }
	src_buf2_V_0_out { ap_vld {  { src_buf2_V_0_out out_data 1 8 }  { src_buf2_V_0_out_ap_vld out_vld 1 1 } } }
	src_buf1_V_2_out { ap_vld {  { src_buf1_V_2_out out_data 1 8 }  { src_buf1_V_2_out_ap_vld out_vld 1 1 } } }
	src_buf1_V_1_out { ap_vld {  { src_buf1_V_1_out out_data 1 8 }  { src_buf1_V_1_out_ap_vld out_vld 1 1 } } }
	src_buf1_V_out { ap_vld {  { src_buf1_V_out out_data 1 8 }  { src_buf1_V_out_ap_vld out_vld 1 1 } } }
	src_buf1_V_0_out { ap_vld {  { src_buf1_V_0_out out_data 1 8 }  { src_buf1_V_0_out_ap_vld out_vld 1 1 } } }
}
