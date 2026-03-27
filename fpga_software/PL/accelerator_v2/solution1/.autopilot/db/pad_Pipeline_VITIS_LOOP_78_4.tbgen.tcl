set moduleName pad_Pipeline_VITIS_LOOP_78_4
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
set C_modelName {pad_Pipeline_VITIS_LOOP_78_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ row_buf_V_1 int 24 regular {array 640 { 1 3 } 1 1 }  }
	{ row_buf_V_2 int 24 regular {array 640 { 1 3 } 1 1 }  }
	{ r_2 int 2 regular  }
	{ padded_stream2 int 24 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row_buf_V_1", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "row_buf_V_2", "interface" : "memory", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "r_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "padded_stream2", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ padded_stream2_din sc_out sc_lv 24 signal 3 } 
	{ padded_stream2_num_data_valid sc_in sc_lv 20 signal 3 } 
	{ padded_stream2_fifo_cap sc_in sc_lv 20 signal 3 } 
	{ padded_stream2_full_n sc_in sc_logic 1 signal 3 } 
	{ padded_stream2_write sc_out sc_logic 1 signal 3 } 
	{ row_buf_V_1_address0 sc_out sc_lv 10 signal 0 } 
	{ row_buf_V_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ row_buf_V_1_q0 sc_in sc_lv 24 signal 0 } 
	{ row_buf_V_2_address0 sc_out sc_lv 10 signal 1 } 
	{ row_buf_V_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ row_buf_V_2_q0 sc_in sc_lv 24 signal 1 } 
	{ r_2 sc_in sc_lv 2 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "padded_stream2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "padded_stream2", "role": "din" }} , 
 	{ "name": "padded_stream2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "padded_stream2", "role": "num_data_valid" }} , 
 	{ "name": "padded_stream2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "padded_stream2", "role": "fifo_cap" }} , 
 	{ "name": "padded_stream2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "padded_stream2", "role": "full_n" }} , 
 	{ "name": "padded_stream2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "padded_stream2", "role": "write" }} , 
 	{ "name": "row_buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "row_buf_V_1", "role": "address0" }} , 
 	{ "name": "row_buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_buf_V_1", "role": "ce0" }} , 
 	{ "name": "row_buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "row_buf_V_1", "role": "q0" }} , 
 	{ "name": "row_buf_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "row_buf_V_2", "role": "address0" }} , 
 	{ "name": "row_buf_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_buf_V_2", "role": "ce0" }} , 
 	{ "name": "row_buf_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "row_buf_V_2", "role": "q0" }} , 
 	{ "name": "r_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "r_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "pad_Pipeline_VITIS_LOOP_78_4",
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
			{"Name" : "row_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buf_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_24_1_1_U41", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pad_Pipeline_VITIS_LOOP_78_4 {
		row_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		row_buf_V_2 {Type I LastRead 0 FirstWrite -1}
		r_2 {Type I LastRead 0 FirstWrite -1}
		padded_stream2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "642", "Max" : "642"}
	, {"Name" : "Interval", "Min" : "642", "Max" : "642"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	row_buf_V_1 { ap_memory {  { row_buf_V_1_address0 mem_address 1 10 }  { row_buf_V_1_ce0 mem_ce 1 1 }  { row_buf_V_1_q0 in_data 0 24 } } }
	row_buf_V_2 { ap_memory {  { row_buf_V_2_address0 mem_address 1 10 }  { row_buf_V_2_ce0 mem_ce 1 1 }  { row_buf_V_2_q0 in_data 0 24 } } }
	r_2 { ap_none {  { r_2 in_data 0 2 } } }
	padded_stream2 { ap_fifo {  { padded_stream2_din fifo_port_we 1 24 }  { padded_stream2_num_data_valid fifo_status_num_data_valid 0 20 }  { padded_stream2_fifo_cap fifo_update 0 20 }  { padded_stream2_full_n fifo_status 0 1 }  { padded_stream2_write fifo_data 1 1 } } }
}
