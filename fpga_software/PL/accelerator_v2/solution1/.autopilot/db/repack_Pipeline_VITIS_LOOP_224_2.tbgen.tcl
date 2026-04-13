set moduleName repack_Pipeline_VITIS_LOOP_224_2
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
set C_modelName {repack_Pipeline_VITIS_LOOP_224_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ row_pixels_V_1 int 8 regular {array 322 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ row_pixels_V int 8 regular {array 322 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ gray_stream3 int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "row_pixels_V_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_pixels_V", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gray_stream3", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gray_stream3_dout sc_in sc_lv 8 signal 2 } 
	{ gray_stream3_num_data_valid sc_in sc_lv 13 signal 2 } 
	{ gray_stream3_fifo_cap sc_in sc_lv 13 signal 2 } 
	{ gray_stream3_empty_n sc_in sc_logic 1 signal 2 } 
	{ gray_stream3_read sc_out sc_logic 1 signal 2 } 
	{ row_pixels_V_1_address0 sc_out sc_lv 9 signal 0 } 
	{ row_pixels_V_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ row_pixels_V_1_we0 sc_out sc_logic 1 signal 0 } 
	{ row_pixels_V_1_d0 sc_out sc_lv 8 signal 0 } 
	{ row_pixels_V_address0 sc_out sc_lv 9 signal 1 } 
	{ row_pixels_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ row_pixels_V_we0 sc_out sc_logic 1 signal 1 } 
	{ row_pixels_V_d0 sc_out sc_lv 8 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gray_stream3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gray_stream3", "role": "dout" }} , 
 	{ "name": "gray_stream3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gray_stream3", "role": "num_data_valid" }} , 
 	{ "name": "gray_stream3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "gray_stream3", "role": "fifo_cap" }} , 
 	{ "name": "gray_stream3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_stream3", "role": "empty_n" }} , 
 	{ "name": "gray_stream3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gray_stream3", "role": "read" }} , 
 	{ "name": "row_pixels_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "row_pixels_V_1", "role": "address0" }} , 
 	{ "name": "row_pixels_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_pixels_V_1", "role": "ce0" }} , 
 	{ "name": "row_pixels_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_pixels_V_1", "role": "we0" }} , 
 	{ "name": "row_pixels_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_pixels_V_1", "role": "d0" }} , 
 	{ "name": "row_pixels_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "row_pixels_V", "role": "address0" }} , 
 	{ "name": "row_pixels_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_pixels_V", "role": "ce0" }} , 
 	{ "name": "row_pixels_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_pixels_V", "role": "we0" }} , 
 	{ "name": "row_pixels_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "row_pixels_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "repack_Pipeline_VITIS_LOOP_224_2",
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
			{"Name" : "row_pixels_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_pixels_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_stream3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_224_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	repack_Pipeline_VITIS_LOOP_224_2 {
		row_pixels_V_1 {Type O LastRead -1 FirstWrite 1}
		row_pixels_V {Type O LastRead -1 FirstWrite 1}
		gray_stream3 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "646", "Max" : "646"}
	, {"Name" : "Interval", "Min" : "646", "Max" : "646"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	row_pixels_V_1 { ap_memory {  { row_pixels_V_1_address0 mem_address 1 9 }  { row_pixels_V_1_ce0 mem_ce 1 1 }  { row_pixels_V_1_we0 mem_we 1 1 }  { row_pixels_V_1_d0 mem_din 1 8 } } }
	row_pixels_V { ap_memory {  { row_pixels_V_address0 mem_address 1 9 }  { row_pixels_V_ce0 mem_ce 1 1 }  { row_pixels_V_we0 mem_we 1 1 }  { row_pixels_V_d0 mem_din 1 8 } } }
	gray_stream3 { ap_fifo {  { gray_stream3_dout fifo_port_we 0 8 }  { gray_stream3_num_data_valid fifo_status_num_data_valid 0 13 }  { gray_stream3_fifo_cap fifo_update 0 13 }  { gray_stream3_empty_n fifo_status 0 1 }  { gray_stream3_read fifo_data 1 1 } } }
}
