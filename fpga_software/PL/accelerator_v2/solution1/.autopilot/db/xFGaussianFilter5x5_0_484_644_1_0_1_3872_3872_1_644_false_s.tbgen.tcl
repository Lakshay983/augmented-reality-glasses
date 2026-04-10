set moduleName xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xFGaussianFilter5x5<0, 484, 644, 1, 0, 1, 3872, 3872, 1, 644, false>}
set C_modelType { void 0 }
set C_modelArgList {
	{ gray_mat_data44 int 8 regular {fifo 0 volatile }  }
	{ blurred_mat_data45 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gray_mat_data44", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "blurred_mat_data45", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gray_mat_data44_dout sc_in sc_lv 8 signal 0 } 
	{ gray_mat_data44_num_data_valid sc_in sc_lv 13 signal 0 } 
	{ gray_mat_data44_fifo_cap sc_in sc_lv 13 signal 0 } 
	{ gray_mat_data44_empty_n sc_in sc_logic 1 signal 0 } 
	{ gray_mat_data44_read sc_out sc_logic 1 signal 0 } 
	{ blurred_mat_data45_din sc_out sc_lv 8 signal 1 } 
	{ blurred_mat_data45_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ blurred_mat_data45_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ blurred_mat_data45_full_n sc_in sc_logic 1 signal 1 } 
	{ blurred_mat_data45_write sc_out sc_logic 1 signal 1 } 
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
 	{ "name": "blurred_mat_data45_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "blurred_mat_data45", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "11", "16", "18", "20"],
		"CDFG" : "xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "323642", "EstimateLatencyMax" : "323642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_370", "Port" : "gray_mat_data44", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "18", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_382", "Port" : "gray_mat_data44", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "20", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389", "Port" : "gray_mat_data44", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389", "Port" : "blurred_mat_data45", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_217", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "xfapplygaussian5x5_1_0_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_buf1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_217.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U84", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_217.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U85", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_217.mac_muladd_8ns_7ns_17s_18_4_0_U86", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_217.mac_muladd_24ns_7ns_30s_32_4_0_U87", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_290", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "xfapplygaussian5x5_1_0_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_buf1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf1_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf2_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf3_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf4_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_buf5_V_read_8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_290.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U84", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_290.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U85", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_290.mac_muladd_8ns_7ns_17s_18_4_0_U86", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfapplygaussian5x5_1_0_false_s_fu_290.mac_muladd_24ns_7ns_30s_32_4_0_U87", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_370", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Clear_Row_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "646", "EstimateLatencyMax" : "646",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Clear_Row_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_370.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_382", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Read_Row2_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "646", "EstimateLatencyMax" : "646",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Read_Row2_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_382.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U116", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U117", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U118", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U119", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U120", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"}]}


set ArgLastReadFirstWriteLatency {
	xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s {
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 10}}
	xfapplygaussian5x5_1_0_false_s {
		src_buf1_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_8 {Type I LastRead 0 FirstWrite -1}}
	xfapplygaussian5x5_1_0_false_s {
		src_buf1_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf1_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf2_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf3_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf4_V_read_8 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_5 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_6 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_7 {Type I LastRead 0 FirstWrite -1}
		src_buf5_V_read_8 {Type I LastRead 0 FirstWrite -1}}
	xFGaussianFilter5x5_Pipeline_Clear_Row_Loop {
		buf_V_2 {Type O LastRead -1 FirstWrite 1}
		buf_V_1 {Type O LastRead -1 FirstWrite 0}
		buf_V {Type O LastRead -1 FirstWrite 0}
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}}
	xFGaussianFilter5x5_Pipeline_Read_Row2_Loop {
		buf_V_3 {Type O LastRead -1 FirstWrite 1}
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "323642", "Max" : "323642"}
	, {"Name" : "Interval", "Min" : "323642", "Max" : "323642"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gray_mat_data44 { ap_fifo {  { gray_mat_data44_dout fifo_port_we 0 8 }  { gray_mat_data44_num_data_valid fifo_status_num_data_valid 0 13 }  { gray_mat_data44_fifo_cap fifo_update 0 13 }  { gray_mat_data44_empty_n fifo_status 0 1 }  { gray_mat_data44_read fifo_data 1 1 } } }
	blurred_mat_data45 { ap_fifo {  { blurred_mat_data45_din fifo_port_we 1 8 }  { blurred_mat_data45_num_data_valid fifo_status_num_data_valid 0 13 }  { blurred_mat_data45_fifo_cap fifo_update 0 13 }  { blurred_mat_data45_full_n fifo_status 0 1 }  { blurred_mat_data45_write fifo_data 1 1 } } }
}
