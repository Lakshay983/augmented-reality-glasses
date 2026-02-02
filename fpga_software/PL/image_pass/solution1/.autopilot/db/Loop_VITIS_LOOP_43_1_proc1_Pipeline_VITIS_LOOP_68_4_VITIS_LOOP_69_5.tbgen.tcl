set moduleName Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5
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
set C_modelName {Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ use_ping int 1 regular  }
	{ tile_pong_V int 24 regular {array 20480 { 0 1 } 1 1 } {global 2}  }
	{ tile_ping_V int 24 regular {array 20480 { 0 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "use_ping", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tile_pong_V", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "tile_ping_V", "interface" : "memory", "bitwidth" : 24, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ use_ping sc_in sc_lv 1 signal 0 } 
	{ tile_pong_V_address0 sc_out sc_lv 15 signal 1 } 
	{ tile_pong_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ tile_pong_V_we0 sc_out sc_logic 1 signal 1 } 
	{ tile_pong_V_d0 sc_out sc_lv 24 signal 1 } 
	{ tile_pong_V_address1 sc_out sc_lv 15 signal 1 } 
	{ tile_pong_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ tile_pong_V_q1 sc_in sc_lv 24 signal 1 } 
	{ tile_ping_V_address0 sc_out sc_lv 15 signal 2 } 
	{ tile_ping_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ tile_ping_V_we0 sc_out sc_logic 1 signal 2 } 
	{ tile_ping_V_d0 sc_out sc_lv 24 signal 2 } 
	{ tile_ping_V_address1 sc_out sc_lv 15 signal 2 } 
	{ tile_ping_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ tile_ping_V_q1 sc_in sc_lv 24 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "use_ping", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "use_ping", "role": "default" }} , 
 	{ "name": "tile_pong_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "address0" }} , 
 	{ "name": "tile_pong_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "ce0" }} , 
 	{ "name": "tile_pong_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "we0" }} , 
 	{ "name": "tile_pong_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "d0" }} , 
 	{ "name": "tile_pong_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "address1" }} , 
 	{ "name": "tile_pong_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "ce1" }} , 
 	{ "name": "tile_pong_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "q1" }} , 
 	{ "name": "tile_ping_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "address0" }} , 
 	{ "name": "tile_ping_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "ce0" }} , 
 	{ "name": "tile_ping_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "we0" }} , 
 	{ "name": "tile_ping_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "d0" }} , 
 	{ "name": "tile_ping_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "address1" }} , 
 	{ "name": "tile_ping_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "ce1" }} , 
 	{ "name": "tile_ping_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20482", "EstimateLatencyMax" : "20482",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "use_ping", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_pong_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "tile_ping_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_4_VITIS_LOOP_69_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5 {
		use_ping {Type I LastRead 0 FirstWrite -1}
		tile_pong_V {Type IO LastRead 0 FirstWrite 1}
		tile_ping_V {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20482", "Max" : "20482"}
	, {"Name" : "Interval", "Min" : "20482", "Max" : "20482"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	use_ping { ap_none {  { use_ping in_data 0 1 } } }
	tile_pong_V { ap_memory {  { tile_pong_V_address0 mem_address 1 15 }  { tile_pong_V_ce0 mem_ce 1 1 }  { tile_pong_V_we0 mem_we 1 1 }  { tile_pong_V_d0 mem_din 1 24 }  { tile_pong_V_address1 MemPortADDR2 1 15 }  { tile_pong_V_ce1 MemPortCE2 1 1 }  { tile_pong_V_q1 in_data 0 24 } } }
	tile_ping_V { ap_memory {  { tile_ping_V_address0 mem_address 1 15 }  { tile_ping_V_ce0 mem_ce 1 1 }  { tile_ping_V_we0 mem_we 1 1 }  { tile_ping_V_d0 mem_din 1 24 }  { tile_ping_V_address1 MemPortADDR2 1 15 }  { tile_ping_V_ce1 MemPortCE2 1 1 }  { tile_ping_V_q1 in_data 0 24 } } }
}
