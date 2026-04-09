set moduleName xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop
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
set C_modelName {xfGaussianFilter3x3<0, 460, 640, 1, 0, 4, 2, 2, 12, 160>_Pipeline_Col_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_width int 16 regular  }
	{ img_blur_data49 int 32 regular {fifo 1 volatile }  }
	{ tp_V int 2 regular  }
	{ mid_V int 2 regular  }
	{ bottom_V int 2 regular  }
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
	{ img_gray_data48 int 32 regular {fifo 0 volatile }  }
	{ buf_V_2 int 32 regular {array 160 { 1 0 } 1 1 }  }
	{ buf_V_1 int 32 regular {array 160 { 1 0 } 1 1 }  }
	{ buf_V int 32 regular {array 160 { 1 0 } 1 1 }  }
	{ cmp_i_i241_i int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "img_blur_data49", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tp_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "mid_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "bottom_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "img_gray_data48", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "cmp_i_i241_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_gray_data48_dout sc_in sc_lv 32 signal 7 } 
	{ img_gray_data48_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ img_gray_data48_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ img_gray_data48_empty_n sc_in sc_logic 1 signal 7 } 
	{ img_gray_data48_read sc_out sc_logic 1 signal 7 } 
	{ img_blur_data49_din sc_out sc_lv 32 signal 1 } 
	{ img_blur_data49_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ img_blur_data49_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ img_blur_data49_full_n sc_in sc_logic 1 signal 1 } 
	{ img_blur_data49_write sc_out sc_logic 1 signal 1 } 
	{ img_width sc_in sc_lv 16 signal 0 } 
	{ tp_V sc_in sc_lv 2 signal 2 } 
	{ mid_V sc_in sc_lv 2 signal 3 } 
	{ bottom_V sc_in sc_lv 2 signal 4 } 
	{ p_read sc_in sc_lv 8 signal 5 } 
	{ p_read1 sc_in sc_lv 8 signal 6 } 
	{ buf_V_2_address0 sc_out sc_lv 8 signal 8 } 
	{ buf_V_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf_V_2_q0 sc_in sc_lv 32 signal 8 } 
	{ buf_V_2_address1 sc_out sc_lv 8 signal 8 } 
	{ buf_V_2_ce1 sc_out sc_logic 1 signal 8 } 
	{ buf_V_2_we1 sc_out sc_logic 1 signal 8 } 
	{ buf_V_2_d1 sc_out sc_lv 32 signal 8 } 
	{ buf_V_1_address0 sc_out sc_lv 8 signal 9 } 
	{ buf_V_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf_V_1_q0 sc_in sc_lv 32 signal 9 } 
	{ buf_V_1_address1 sc_out sc_lv 8 signal 9 } 
	{ buf_V_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ buf_V_1_we1 sc_out sc_logic 1 signal 9 } 
	{ buf_V_1_d1 sc_out sc_lv 32 signal 9 } 
	{ buf_V_address0 sc_out sc_lv 8 signal 10 } 
	{ buf_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ buf_V_q0 sc_in sc_lv 32 signal 10 } 
	{ buf_V_address1 sc_out sc_lv 8 signal 10 } 
	{ buf_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ buf_V_we1 sc_out sc_logic 1 signal 10 } 
	{ buf_V_d1 sc_out sc_lv 32 signal 10 } 
	{ cmp_i_i241_i sc_in sc_lv 1 signal 11 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din1 sc_out sc_lv 1 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din2 sc_out sc_lv 1 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din3 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din4 sc_out sc_lv 1 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din5 sc_out sc_lv 1 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din6 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din7 sc_out sc_lv 1 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din8 sc_out sc_lv 1 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din9 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din10 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_din11 sc_out sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_dout0 sc_in sc_lv 8 signal -1 } 
	{ grp_xFapplygaussian3x3_0_s_fu_164_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_gray_data48_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "dout" }} , 
 	{ "name": "img_gray_data48_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "num_data_valid" }} , 
 	{ "name": "img_gray_data48_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "fifo_cap" }} , 
 	{ "name": "img_gray_data48_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "empty_n" }} , 
 	{ "name": "img_gray_data48_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "read" }} , 
 	{ "name": "img_blur_data49_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "din" }} , 
 	{ "name": "img_blur_data49_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "num_data_valid" }} , 
 	{ "name": "img_blur_data49_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "fifo_cap" }} , 
 	{ "name": "img_blur_data49_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "full_n" }} , 
 	{ "name": "img_blur_data49_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "write" }} , 
 	{ "name": "img_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "img_width", "role": "default" }} , 
 	{ "name": "tp_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "tp_V", "role": "default" }} , 
 	{ "name": "mid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mid_V", "role": "default" }} , 
 	{ "name": "bottom_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bottom_V", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "buf_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address0" }} , 
 	{ "name": "buf_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce0" }} , 
 	{ "name": "buf_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_V_2", "role": "q0" }} , 
 	{ "name": "buf_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_2", "role": "address1" }} , 
 	{ "name": "buf_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "ce1" }} , 
 	{ "name": "buf_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_2", "role": "we1" }} , 
 	{ "name": "buf_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_V_2", "role": "d1" }} , 
 	{ "name": "buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address0" }} , 
 	{ "name": "buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce0" }} , 
 	{ "name": "buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_V_1", "role": "q0" }} , 
 	{ "name": "buf_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V_1", "role": "address1" }} , 
 	{ "name": "buf_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "ce1" }} , 
 	{ "name": "buf_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V_1", "role": "we1" }} , 
 	{ "name": "buf_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_V_1", "role": "d1" }} , 
 	{ "name": "buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "address0" }} , 
 	{ "name": "buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce0" }} , 
 	{ "name": "buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_V", "role": "q0" }} , 
 	{ "name": "buf_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_V", "role": "address1" }} , 
 	{ "name": "buf_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "ce1" }} , 
 	{ "name": "buf_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_V", "role": "we1" }} , 
 	{ "name": "buf_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_V", "role": "d1" }} , 
 	{ "name": "cmp_i_i241_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i241_i", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din1", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din2", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din2", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din3", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din4", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din4", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din5", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din5", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din6", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din7", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din7", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din8", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din8", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din9", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din10", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_din11", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_dout0", "role": "default" }} , 
 	{ "name": "grp_xFapplygaussian3x3_0_s_fu_164_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_xFapplygaussian3x3_0_s_fu_164_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "172", "EstimateLatencyMax" : "172",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_blur_data49", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blur_data49_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tp_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_gray_data48", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_gray_data48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp_i_i241_i", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter11", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter11", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U133", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U134", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U135", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop {
		img_width {Type I LastRead 0 FirstWrite -1}
		img_blur_data49 {Type O LastRead -1 FirstWrite 11}
		tp_V {Type I LastRead 0 FirstWrite -1}
		mid_V {Type I LastRead 0 FirstWrite -1}
		bottom_V {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		img_gray_data48 {Type I LastRead 1 FirstWrite -1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		cmp_i_i241_i {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "172", "Max" : "172"}
	, {"Name" : "Interval", "Min" : "172", "Max" : "172"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	img_width { ap_none {  { img_width in_data 0 16 } } }
	img_blur_data49 { ap_fifo {  { img_blur_data49_din fifo_port_we 1 32 }  { img_blur_data49_num_data_valid fifo_status_num_data_valid 0 2 }  { img_blur_data49_fifo_cap fifo_update 0 2 }  { img_blur_data49_full_n fifo_status 0 1 }  { img_blur_data49_write fifo_data 1 1 } } }
	tp_V { ap_none {  { tp_V in_data 0 2 } } }
	mid_V { ap_none {  { mid_V in_data 0 2 } } }
	bottom_V { ap_none {  { bottom_V in_data 0 2 } } }
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	img_gray_data48 { ap_fifo {  { img_gray_data48_dout fifo_port_we 0 32 }  { img_gray_data48_num_data_valid fifo_status_num_data_valid 0 2 }  { img_gray_data48_fifo_cap fifo_update 0 2 }  { img_gray_data48_empty_n fifo_status 0 1 }  { img_gray_data48_read fifo_data 1 1 } } }
	buf_V_2 { ap_memory {  { buf_V_2_address0 mem_address 1 8 }  { buf_V_2_ce0 mem_ce 1 1 }  { buf_V_2_q0 in_data 0 32 }  { buf_V_2_address1 MemPortADDR2 1 8 }  { buf_V_2_ce1 MemPortCE2 1 1 }  { buf_V_2_we1 MemPortWE2 1 1 }  { buf_V_2_d1 MemPortDIN2 1 32 } } }
	buf_V_1 { ap_memory {  { buf_V_1_address0 mem_address 1 8 }  { buf_V_1_ce0 mem_ce 1 1 }  { buf_V_1_q0 in_data 0 32 }  { buf_V_1_address1 MemPortADDR2 1 8 }  { buf_V_1_ce1 MemPortCE2 1 1 }  { buf_V_1_we1 MemPortWE2 1 1 }  { buf_V_1_d1 MemPortDIN2 1 32 } } }
	buf_V { ap_memory {  { buf_V_address0 mem_address 1 8 }  { buf_V_ce0 mem_ce 1 1 }  { buf_V_q0 in_data 0 32 }  { buf_V_address1 MemPortADDR2 1 8 }  { buf_V_ce1 MemPortCE2 1 1 }  { buf_V_we1 MemPortWE2 1 1 }  { buf_V_d1 MemPortDIN2 1 32 } } }
	cmp_i_i241_i { ap_none {  { cmp_i_i241_i in_data 0 1 } } }
}
