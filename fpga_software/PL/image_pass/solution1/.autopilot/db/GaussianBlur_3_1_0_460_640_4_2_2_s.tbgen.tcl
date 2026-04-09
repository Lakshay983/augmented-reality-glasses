set moduleName GaussianBlur_3_1_0_460_640_4_2_2_s
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
set C_modelName {GaussianBlur<3, 1, 0, 460, 640, 4, 2, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ img_gray_data48 int 32 regular {fifo 0 volatile }  }
	{ img_blur_data49 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_gray_data48", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_blur_data49", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ p_read1 sc_in sc_lv 32 signal 1 } 
	{ img_gray_data48_dout sc_in sc_lv 32 signal 2 } 
	{ img_gray_data48_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ img_gray_data48_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ img_gray_data48_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_gray_data48_read sc_out sc_logic 1 signal 2 } 
	{ img_blur_data49_din sc_out sc_lv 32 signal 3 } 
	{ img_blur_data49_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ img_blur_data49_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ img_blur_data49_full_n sc_in sc_logic 1 signal 3 } 
	{ img_blur_data49_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "img_gray_data48_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "dout" }} , 
 	{ "name": "img_gray_data48_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "num_data_valid" }} , 
 	{ "name": "img_gray_data48_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "fifo_cap" }} , 
 	{ "name": "img_gray_data48_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "empty_n" }} , 
 	{ "name": "img_gray_data48_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "read" }} , 
 	{ "name": "img_blur_data49_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "din" }} , 
 	{ "name": "img_blur_data49_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "num_data_valid" }} , 
 	{ "name": "img_blur_data49_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "fifo_cap" }} , 
 	{ "name": "img_blur_data49_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "full_n" }} , 
 	{ "name": "img_blur_data49_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_blur_data49", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6", "11", "28", "29", "30"],
		"CDFG" : "GaussianBlur_3_1_0_460_640_4_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "84471", "EstimateLatencyMax" : "84471",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "1"},
			{"Name" : "img_gray_data48", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79", "Port" : "img_gray_data48", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "img_blur_data49", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79", "Port" : "img_blur_data49", "Inst_start_state" : "14", "Inst_end_state" : "15"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_48_1_fu_64", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_48_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sum_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_48_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_48_1_fu_64.sitofp_32s_32_4_no_dsp_1_U90", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_48_1_fu_64.fexp_32ns_32ns_32_8_full_dsp_1_U91", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_48_1_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_58_2_fu_71", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_58_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "76", "EstimateLatencyMax" : "76",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_58_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage8", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage8_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_58_2_fu_71.sitofp_32ns_32_4_no_dsp_1_U98", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_58_2_fu_71.fpext_32ns_64_2_no_dsp_1_U99", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_58_2_fu_71.dadd_64ns_64ns_64_5_full_dsp_1_U100", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_58_2_fu_71.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79", "Parent" : "0", "Child" : ["12", "13", "14", "15", "17", "22"],
		"CDFG" : "xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "84346", "EstimateLatencyMax" : "84346",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_gray_data48", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop_fu_146", "Port" : "img_gray_data48", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "15", "SubInstance" : "grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Clear_Row_Loop_fu_137", "Port" : "img_gray_data48", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "img_blur_data49", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_blur_data49_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop_fu_146", "Port" : "img_blur_data49", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.buf_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.buf_V_1_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.buf_V_2_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Clear_Row_Loop_fu_137", "Parent" : "11", "Child" : ["16"],
		"CDFG" : "xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Clear_Row_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "162",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "img_gray_data48", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_gray_data48_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Clear_Row_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Clear_Row_Loop_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop_fu_146", "Parent" : "11", "Child" : ["18", "19", "20", "21"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop_fu_146.mux_32_32_1_1_U133", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop_fu_146.mux_32_32_1_1_U134", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop_fu_146.mux_32_32_1_1_U135", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Col_Loop_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xFapplygaussian3x3_0_s_fu_164", "Parent" : "11", "Child" : ["23", "24", "25", "26", "27"],
		"CDFG" : "xFapplygaussian3x3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D1", "Type" : "None", "Direction" : "I"},
			{"Name" : "D2", "Type" : "None", "Direction" : "I"},
			{"Name" : "D3", "Type" : "None", "Direction" : "I"},
			{"Name" : "D4", "Type" : "None", "Direction" : "I"},
			{"Name" : "D5", "Type" : "None", "Direction" : "I"},
			{"Name" : "D6", "Type" : "None", "Direction" : "I"},
			{"Name" : "D7", "Type" : "None", "Direction" : "I"},
			{"Name" : "D8", "Type" : "None", "Direction" : "I"},
			{"Name" : "D9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xFapplygaussian3x3_0_s_fu_164.mul_8ns_2ns_10_1_0_U112", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xFapplygaussian3x3_0_s_fu_164.am_addmul_9ns_8ns_8ns_17_4_0_U113", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xFapplygaussian3x3_0_s_fu_164.am_addmul_8ns_1ns_8ns_16_4_0_U114", "Parent" : "22"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xFapplygaussian3x3_0_s_fu_164.ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_U115", "Parent" : "22"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s_fu_79.grp_xFapplygaussian3x3_0_s_fu_164.ama_addmuladd_16ns_8ns_8ns_24ns_24_4_0_U116", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fdiv_32ns_32ns_32_10_no_dsp_1_U156", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U157", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U158", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	GaussianBlur_3_1_0_460_640_4_2_2_s {
		p_read {Type I LastRead 13 FirstWrite -1}
		p_read1 {Type I LastRead 13 FirstWrite -1}
		img_gray_data48 {Type I LastRead 1 FirstWrite -1}
		img_blur_data49 {Type O LastRead -1 FirstWrite 11}}
	GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_48_1 {
		cf {Type O LastRead -1 FirstWrite 20}
		sum_1_out {Type O LastRead -1 FirstWrite 21}}
	GaussianBlur_3_1_0_460_640_4_2_2_Pipeline_VITIS_LOOP_58_2 {
		cf {Type IO LastRead 0 FirstWrite 4}
		sum {Type I LastRead 0 FirstWrite -1}
		weights_1_out {Type O LastRead -1 FirstWrite 8}
		weights_out {Type O LastRead -1 FirstWrite 8}}
	xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_s {
		img_gray_data48 {Type I LastRead 1 FirstWrite -1}
		img_blur_data49 {Type O LastRead -1 FirstWrite 11}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfGaussianFilter3x3_0_460_640_1_0_4_2_2_12_160_Pipeline_Clear_Row_Loop {
		img_width {Type I LastRead 0 FirstWrite -1}
		buf_V_1 {Type O LastRead -1 FirstWrite 1}
		buf_V {Type O LastRead -1 FirstWrite 0}
		img_gray_data48 {Type I LastRead 1 FirstWrite -1}}
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
		cmp_i_i241_i {Type I LastRead 0 FirstWrite -1}}
	xFapplygaussian3x3_0_s {
		D1 {Type I LastRead 0 FirstWrite -1}
		D2 {Type I LastRead 0 FirstWrite -1}
		D3 {Type I LastRead 0 FirstWrite -1}
		D4 {Type I LastRead 0 FirstWrite -1}
		D5 {Type I LastRead 0 FirstWrite -1}
		D6 {Type I LastRead 0 FirstWrite -1}
		D7 {Type I LastRead 0 FirstWrite -1}
		D8 {Type I LastRead 0 FirstWrite -1}
		D9 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "84471", "Max" : "84471"}
	, {"Name" : "Interval", "Min" : "84471", "Max" : "84471"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	img_gray_data48 { ap_fifo {  { img_gray_data48_dout fifo_port_we 0 32 }  { img_gray_data48_num_data_valid fifo_status_num_data_valid 0 2 }  { img_gray_data48_fifo_cap fifo_update 0 2 }  { img_gray_data48_empty_n fifo_status 0 1 }  { img_gray_data48_read fifo_data 1 1 } } }
	img_blur_data49 { ap_fifo {  { img_blur_data49_din fifo_port_we 1 32 }  { img_blur_data49_num_data_valid fifo_status_num_data_valid 0 2 }  { img_blur_data49_fifo_cap fifo_update 0 2 }  { img_blur_data49_full_n fifo_status 0 1 }  { img_blur_data49_write fifo_data 1 1 } } }
}
