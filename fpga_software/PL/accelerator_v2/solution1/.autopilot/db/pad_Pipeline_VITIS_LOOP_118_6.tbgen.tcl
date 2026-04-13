set moduleName pad_Pipeline_VITIS_LOOP_118_6
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
set C_modelName {pad_Pipeline_VITIS_LOOP_118_6}
set C_modelType { void 0 }
set C_modelArgList {
	{ row_buf_V_3 int 24 regular {array 640 { 3 0 } 0 1 }  }
	{ row_buf_V_2 int 24 regular {array 640 { 3 0 } 0 1 }  }
	{ bgr_stream1 int 24 regular {fifo 0 volatile }  }
	{ trunc_ln112_1 int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row_buf_V_3", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_buf_V_2", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bgr_stream1", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln112_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bgr_stream1_dout sc_in sc_lv 24 signal 2 } 
	{ bgr_stream1_num_data_valid sc_in sc_lv 14 signal 2 } 
	{ bgr_stream1_fifo_cap sc_in sc_lv 14 signal 2 } 
	{ bgr_stream1_empty_n sc_in sc_logic 1 signal 2 } 
	{ bgr_stream1_read sc_out sc_logic 1 signal 2 } 
	{ row_buf_V_3_address1 sc_out sc_lv 10 signal 0 } 
	{ row_buf_V_3_ce1 sc_out sc_logic 1 signal 0 } 
	{ row_buf_V_3_we1 sc_out sc_logic 1 signal 0 } 
	{ row_buf_V_3_d1 sc_out sc_lv 24 signal 0 } 
	{ row_buf_V_2_address1 sc_out sc_lv 10 signal 1 } 
	{ row_buf_V_2_ce1 sc_out sc_logic 1 signal 1 } 
	{ row_buf_V_2_we1 sc_out sc_logic 1 signal 1 } 
	{ row_buf_V_2_d1 sc_out sc_lv 24 signal 1 } 
	{ trunc_ln112_1 sc_in sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bgr_stream1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "bgr_stream1", "role": "dout" }} , 
 	{ "name": "bgr_stream1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bgr_stream1", "role": "num_data_valid" }} , 
 	{ "name": "bgr_stream1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "bgr_stream1", "role": "fifo_cap" }} , 
 	{ "name": "bgr_stream1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgr_stream1", "role": "empty_n" }} , 
 	{ "name": "bgr_stream1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bgr_stream1", "role": "read" }} , 
 	{ "name": "row_buf_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "row_buf_V_3", "role": "address1" }} , 
 	{ "name": "row_buf_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_buf_V_3", "role": "ce1" }} , 
 	{ "name": "row_buf_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_buf_V_3", "role": "we1" }} , 
 	{ "name": "row_buf_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "row_buf_V_3", "role": "d1" }} , 
 	{ "name": "row_buf_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "row_buf_V_2", "role": "address1" }} , 
 	{ "name": "row_buf_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_buf_V_2", "role": "ce1" }} , 
 	{ "name": "row_buf_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_buf_V_2", "role": "we1" }} , 
 	{ "name": "row_buf_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "row_buf_V_2", "role": "d1" }} , 
 	{ "name": "trunc_ln112_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln112_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pad_Pipeline_VITIS_LOOP_118_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "642", "EstimateLatencyMax" : "642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_buf_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_buf_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bgr_stream1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bgr_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "trunc_ln112_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pad_Pipeline_VITIS_LOOP_118_6 {
		row_buf_V_3 {Type O LastRead -1 FirstWrite 1}
		row_buf_V_2 {Type O LastRead -1 FirstWrite 1}
		bgr_stream1 {Type I LastRead 1 FirstWrite -1}
		trunc_ln112_1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "642", "Max" : "642"}
	, {"Name" : "Interval", "Min" : "642", "Max" : "642"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	row_buf_V_3 { ap_memory {  { row_buf_V_3_address1 MemPortADDR2 1 10 }  { row_buf_V_3_ce1 MemPortCE2 1 1 }  { row_buf_V_3_we1 MemPortWE2 1 1 }  { row_buf_V_3_d1 MemPortDIN2 1 24 } } }
	row_buf_V_2 { ap_memory {  { row_buf_V_2_address1 MemPortADDR2 1 10 }  { row_buf_V_2_ce1 MemPortCE2 1 1 }  { row_buf_V_2_we1 MemPortWE2 1 1 }  { row_buf_V_2_d1 MemPortDIN2 1 24 } } }
	bgr_stream1 { ap_fifo {  { bgr_stream1_dout fifo_port_we 0 24 }  { bgr_stream1_num_data_valid fifo_status_num_data_valid 0 14 }  { bgr_stream1_fifo_cap fifo_update 0 14 }  { bgr_stream1_empty_n fifo_status 0 1 }  { bgr_stream1_read fifo_data 1 1 } } }
	trunc_ln112_1 { ap_none {  { trunc_ln112_1 in_data 0 1 } } }
}
