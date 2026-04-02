set moduleName process_pixels
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {process_pixels}
set C_modelType { void 0 }
set C_modelArgList {
	{ padded_stream2 int 24 regular {fifo 0 volatile }  }
	{ gray_stream3 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "padded_stream2", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "gray_stream3", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ padded_stream2_dout sc_in sc_lv 24 signal 0 } 
	{ padded_stream2_empty_n sc_in sc_logic 1 signal 0 } 
	{ padded_stream2_read sc_out sc_logic 1 signal 0 } 
	{ gray_stream3_din sc_out sc_lv 8 signal 1 } 
	{ gray_stream3_full_n sc_in sc_logic 1 signal 1 } 
	{ gray_stream3_write sc_out sc_logic 1 signal 1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "padded_stream2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "padded_stream2", "role": "dout" }} , 
 	{ "name": "padded_stream2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "padded_stream2", "role": "empty_n" }} , 
 	{ "name": "padded_stream2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "padded_stream2", "role": "read" }} , 
 	{ "name": "gray_stream3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_stream3", "role": "din" }} , 
 	{ "name": "gray_stream3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_stream3", "role": "full_n" }} , 
 	{ "name": "gray_stream3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_stream3", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "9", "66", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "process_pixels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325690", "EstimateLatencyMax" : "325690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "stream_to_mat_U0"}],
		"OutputProcess" : [
			{"ID" : "66", "Name" : "mat_to_stream_U0"}],
		"Port" : [
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "stream_to_mat_U0", "Port" : "padded_stream2"}]},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "mat_to_stream_U0", "Port" : "gray_stream3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stream_to_mat_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "stream_to_mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "311698", "EstimateLatencyMax" : "311698",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["3"], "DependentChan" : "68", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bgr_mat_data43_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_30_1_VITIS_LOOP_31_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.stream_to_mat_U0.flow_control_loop_pipe_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bgr2gray_9_0_484_644_1_311696_311696_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "bgr2gray_9_0_484_644_1_311696_311696_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "316053", "EstimateLatencyMax" : "316053",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_bgr2gray_9_0_484_644_1_311696_311696_U0_U",
		"Port" : [
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "68", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38", "Port" : "bgr_mat_data43", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "69", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38", "Port" : "gray_mat_data44", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "rowloop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38", "Parent" : "3", "Child" : ["5", "6", "7", "8"],
		"CDFG" : "bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "651", "EstimateLatencyMax" : "651",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bgr_mat_data43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "columnloop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.mul_mul_8ns_14ns_22_4_1_U68", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.mac_muladd_8ns_12ns_22ns_22_4_1_U69", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.mac_muladd_8ns_15ns_22ns_23_4_1_U70", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0", "Parent" : "0", "Child" : ["10", "11", "15", "20", "63", "64", "65"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_311696_311696_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325690", "EstimateLatencyMax" : "325690",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_GaussianBlur_5_1_0_484_644_1_311696_311696_U0_U",
		"Port" : [
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "69", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60", "Port" : "gray_mat_data44", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "70", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60", "Port" : "blurred_mat_data45", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.cf_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44", "Parent" : "9", "Child" : ["12", "13", "14"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
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
			{"Name" : "VITIS_LOOP_85_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44.sitofp_32s_32_2_no_dsp_1_U80", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44.fexp_32ns_32ns_32_5_full_dsp_1_U81", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51", "Parent" : "9", "Child" : ["16", "17", "18", "19"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
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
			{"Name" : "weights_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.sitofp_32ns_32_2_no_dsp_1_U88", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.fpext_32ns_64_1_no_dsp_1_U89", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.dadd_64ns_64ns_64_4_full_dsp_1_U90", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60", "Parent" : "9", "Child" : ["21", "22", "23", "24", "25", "26", "39", "52", "54", "56"],
		"CDFG" : "xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325579", "EstimateLatencyMax" : "325579",
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
					{"ID" : "56", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424", "Port" : "gray_mat_data44", "Inst_start_state" : "8", "Inst_end_state" : "9"},
					{"ID" : "52", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_408", "Port" : "gray_mat_data44", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "54", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_417", "Port" : "gray_mat_data44", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424", "Port" : "blurred_mat_data45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_1_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_2_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_3_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_4_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243", "Parent" : "20", "Child" : ["27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "xfapplygaussian5x5_1_0_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
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
			{"Name" : "src_buf5_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_read_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_read_4", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.mul_8ns_8ns_16_1_0_U105", "Parent" : "26"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_8ns_8ns_8ns_17_4_0_U106", "Parent" : "26"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_9ns_9ns_8ns_18_4_0_U107", "Parent" : "26"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_9ns_9ns_8ns_18_4_0_U108", "Parent" : "26"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_8ns_8ns_8ns_17ns_18_4_0_U109", "Parent" : "26"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U110", "Parent" : "26"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_8ns_8ns_8ns_17_4_0_U111", "Parent" : "26"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U112", "Parent" : "26"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_8ns_8ns_8ns_17_4_0_U113", "Parent" : "26"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_19ns_17ns_8ns_28_4_0_U114", "Parent" : "26"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_U115", "Parent" : "26"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_18ns_16ns_8ns_28ns_28_4_0_U116", "Parent" : "26"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322", "Parent" : "20", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "xfapplygaussian5x5_1_0_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
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
			{"Name" : "src_buf5_V_read_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_read_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_read_4", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.mul_8ns_8ns_16_1_0_U105", "Parent" : "39"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_8ns_8ns_8ns_17_4_0_U106", "Parent" : "39"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_9ns_9ns_8ns_18_4_0_U107", "Parent" : "39"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_9ns_9ns_8ns_18_4_0_U108", "Parent" : "39"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_8ns_8ns_8ns_17ns_18_4_0_U109", "Parent" : "39"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U110", "Parent" : "39"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_8ns_8ns_8ns_17_4_0_U111", "Parent" : "39"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U112", "Parent" : "39"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_8ns_8ns_8ns_17_4_0_U113", "Parent" : "39"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_19ns_17ns_8ns_28_4_0_U114", "Parent" : "39"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_U115", "Parent" : "39"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_18ns_16ns_8ns_28ns_28_4_0_U116", "Parent" : "39"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_408", "Parent" : "20", "Child" : ["53"],
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
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_408.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_417", "Parent" : "20", "Child" : ["55"],
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
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_417.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424", "Parent" : "20", "Child" : ["57", "58", "59", "60", "61", "62"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "657", "EstimateLatencyMax" : "657",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_95", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_106", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_106", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_95", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_97", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_97", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_108", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_108", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_97", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_97", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_121", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_146", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_99", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_99", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_110", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_99", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_99", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_120", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_145", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_144", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_123", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_95", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_108", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_108", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_97", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_97", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_108", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_108", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_121", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_146", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_110", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_99", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_99", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_110", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_120", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_145", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_144", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_123", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_144", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_144", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_120", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_145", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_99", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_99", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_120", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_145", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_110", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_121", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_146", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_97", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_97", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_121", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_146", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_108", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_108", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_95", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_106", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_106", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_123", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_123", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "tp1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tp2_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom2_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U153", "Parent" : "56"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U154", "Parent" : "56"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U155", "Parent" : "56"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U156", "Parent" : "56"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U157", "Parent" : "56"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.fdiv_32ns_32ns_32_7_no_dsp_1_U202", "Parent" : "9"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.faddfsub_32ns_32ns_32_3_full_dsp_1_U203", "Parent" : "9"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.fmul_32ns_32ns_32_2_max_dsp_1_U204", "Parent" : "9"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_to_stream_U0", "Parent" : "0", "Child" : ["67"],
		"CDFG" : "mat_to_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "311698", "EstimateLatencyMax" : "311698",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_mat_to_stream_U0_U",
		"Port" : [
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "70", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gray_stream3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_1_VITIS_LOOP_47_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.mat_to_stream_U0.flow_control_loop_pipe_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bgr_mat_data_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gray_mat_data_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.blurred_mat_data_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_bgr2gray_9_0_484_644_1_311696_311696_U0_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_GaussianBlur_5_1_0_484_644_1_311696_311696_U0_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_mat_to_stream_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_pixels {
		padded_stream2 {Type I LastRead 0 FirstWrite -1}
		gray_stream3 {Type O LastRead -1 FirstWrite 1}}
	stream_to_mat {
		padded_stream2 {Type I LastRead 0 FirstWrite -1}
		bgr_mat_data43 {Type O LastRead -1 FirstWrite 1}}
	bgr2gray_9_0_484_644_1_311696_311696_s {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}
	bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}
	GaussianBlur_5_1_0_484_644_1_311696_311696_s {
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 12}}
	GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1 {
		cf {Type O LastRead -1 FirstWrite 10}
		sum_1_out {Type O LastRead -1 FirstWrite 11}}
	GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2 {
		cf {Type IO LastRead 0 FirstWrite 2}
		sum {Type I LastRead 0 FirstWrite -1}
		weights_2_out {Type O LastRead -1 FirstWrite 5}
		weights_1_out {Type O LastRead -1 FirstWrite 5}
		weights_out {Type O LastRead -1 FirstWrite 5}}
	xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s {
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 12}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}
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
		src_buf5_V_read_8 {Type I LastRead 0 FirstWrite -1}
		weights_read {Type I LastRead 0 FirstWrite -1}
		weights_read_3 {Type I LastRead 0 FirstWrite -1}
		weights_read_4 {Type I LastRead 0 FirstWrite -1}}
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
		src_buf5_V_read_8 {Type I LastRead 0 FirstWrite -1}
		weights_read {Type I LastRead 0 FirstWrite -1}
		weights_read_3 {Type I LastRead 0 FirstWrite -1}
		weights_read_4 {Type I LastRead 0 FirstWrite -1}}
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
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		row_ind_V_cast {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type IO LastRead 2 FirstWrite 1}
		buf_V_3 {Type IO LastRead 2 FirstWrite 1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		cmp_i_i380_i {Type I LastRead 0 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 12}
		src_buf5_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf5_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf5_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf5_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_0_out {Type O LastRead -1 FirstWrite 11}}
	mat_to_stream {
		blurred_mat_data45 {Type I LastRead 1 FirstWrite -1}
		gray_stream3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "325690", "Max" : "325690"}
	, {"Name" : "Interval", "Min" : "325691", "Max" : "325691"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	padded_stream2 { ap_fifo {  { padded_stream2_dout fifo_port_we 0 24 }  { padded_stream2_empty_n fifo_status 0 1 }  { padded_stream2_read fifo_data 1 1 } } }
	gray_stream3 { ap_fifo {  { gray_stream3_din fifo_port_we 1 8 }  { gray_stream3_full_n fifo_status 0 1 }  { gray_stream3_write fifo_data 1 1 } } }
}
