set moduleName bgr2gray_9_0_484_644_1_3220_3220_s
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
set C_modelName {bgr2gray<9, 0, 484, 644, 1, 3220, 3220>}
set C_modelType { void 0 }
set C_modelArgList {
	{ bgr_mat_data43 int 24 regular {fifo 0 volatile }  }
	{ gray_mat_data44 int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bgr_mat_data43", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "gray_mat_data44", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ bgr_mat_data43_dout sc_in sc_lv 24 signal 0 } 
	{ bgr_mat_data43_num_data_valid sc_in sc_lv 13 signal 0 } 
	{ bgr_mat_data43_fifo_cap sc_in sc_lv 13 signal 0 } 
	{ bgr_mat_data43_empty_n sc_in sc_logic 1 signal 0 } 
	{ bgr_mat_data43_read sc_out sc_logic 1 signal 0 } 
	{ gray_mat_data44_din sc_out sc_lv 8 signal 1 } 
	{ gray_mat_data44_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ gray_mat_data44_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ gray_mat_data44_full_n sc_in sc_logic 1 signal 1 } 
	{ gray_mat_data44_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "bgr_mat_data43_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bgr_mat_data43", "role": "dout" }} , 
 	{ "name": "bgr_mat_data43_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "bgr_mat_data43", "role": "num_data_valid" }} , 
 	{ "name": "bgr_mat_data43_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "bgr_mat_data43", "role": "fifo_cap" }} , 
 	{ "name": "bgr_mat_data43_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgr_mat_data43", "role": "empty_n" }} , 
 	{ "name": "bgr_mat_data43_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgr_mat_data43", "role": "read" }} , 
 	{ "name": "gray_mat_data44_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "din" }} , 
 	{ "name": "gray_mat_data44_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "num_data_valid" }} , 
 	{ "name": "gray_mat_data44_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "fifo_cap" }} , 
 	{ "name": "gray_mat_data44_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "full_n" }} , 
 	{ "name": "gray_mat_data44_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_mat_data44", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "bgr2gray_9_0_484_644_1_3220_3220_s",
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
		"Port" : [
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3220", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop_fu_38", "Port" : "bgr_mat_data43", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3220", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop_fu_38", "Port" : "gray_mat_data44", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "rowloop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop_fu_38", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop_fu_38.mul_mul_8ns_14ns_22_4_1_U82", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop_fu_38.mac_muladd_8ns_12ns_22ns_22_4_1_U83", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop_fu_38.mac_muladd_8ns_15ns_22ns_23_4_1_U84", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	bgr2gray_9_0_484_644_1_3220_3220_s {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}
	bgr2gray_9_0_484_644_1_3220_3220_Pipeline_columnloop {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "316053", "Max" : "316053"}
	, {"Name" : "Interval", "Min" : "316053", "Max" : "316053"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bgr_mat_data43 { ap_fifo {  { bgr_mat_data43_dout fifo_port_we 0 24 }  { bgr_mat_data43_num_data_valid fifo_status_num_data_valid 0 13 }  { bgr_mat_data43_fifo_cap fifo_update 0 13 }  { bgr_mat_data43_empty_n fifo_status 0 1 }  { bgr_mat_data43_read fifo_data 1 1 } } }
	gray_mat_data44 { ap_fifo {  { gray_mat_data44_din fifo_port_we 1 8 }  { gray_mat_data44_num_data_valid fifo_status_num_data_valid 0 13 }  { gray_mat_data44_fifo_cap fifo_update 0 13 }  { gray_mat_data44_full_n fifo_status 0 1 }  { gray_mat_data44_write fifo_data 1 1 } } }
}
