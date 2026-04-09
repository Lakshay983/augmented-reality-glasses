set moduleName hlsStrm2axiStrm_32_460_640_4_1_8_73600_Pipeline_VITIS_LOOP_751_1
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
set C_modelName {hlsStrm2axiStrm<32, 460, 640, 4, 1, 8, 73600>_Pipeline_VITIS_LOOP_751_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ loop_count int 28 regular  }
	{ strm int 32 regular {fifo 0 volatile }  }
	{ stream_out_V_data_V int 32 regular {axi_s 1 volatile  { stream_out Data } }  }
	{ stream_out_V_keep_V int 4 regular {axi_s 1 volatile  { stream_out Keep } }  }
	{ stream_out_V_strb_V int 4 regular {axi_s 1 volatile  { stream_out Strb } }  }
	{ stream_out_V_last_V int 1 regular {axi_s 1 volatile  { stream_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "loop_count", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "strm", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_dout sc_in sc_lv 32 signal 1 } 
	{ strm_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ strm_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ strm_empty_n sc_in sc_logic 1 signal 1 } 
	{ strm_read sc_out sc_logic 1 signal 1 } 
	{ stream_out_TREADY sc_in sc_logic 1 outacc 2 } 
	{ loop_count sc_in sc_lv 28 signal 0 } 
	{ stream_out_TDATA sc_out sc_lv 32 signal 2 } 
	{ stream_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ stream_out_TKEEP sc_out sc_lv 4 signal 3 } 
	{ stream_out_TSTRB sc_out sc_lv 4 signal 4 } 
	{ stream_out_TLAST sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm", "role": "dout" }} , 
 	{ "name": "strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "strm", "role": "num_data_valid" }} , 
 	{ "name": "strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "strm", "role": "fifo_cap" }} , 
 	{ "name": "strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm", "role": "empty_n" }} , 
 	{ "name": "strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm", "role": "read" }} , 
 	{ "name": "stream_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "loop_count", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "loop_count", "role": "default" }} , 
 	{ "name": "stream_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "hlsStrm2axiStrm_32_460_640_4_1_8_73600_Pipeline_VITIS_LOOP_751_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "73602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "loop_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "strm_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out",
				"BlockSignal" : [
					{"Name" : "stream_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out"},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out"},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "stream_out"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_751_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hlsStrm2axiStrm_32_460_640_4_1_8_73600_Pipeline_VITIS_LOOP_751_1 {
		loop_count {Type I LastRead 0 FirstWrite -1}
		strm {Type I LastRead 1 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 1}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "73602"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "73602"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loop_count { ap_none {  { loop_count in_data 0 28 } } }
	strm { ap_fifo {  { strm_dout fifo_port_we 0 32 }  { strm_num_data_valid fifo_status_num_data_valid 0 2 }  { strm_fifo_cap fifo_update 0 2 }  { strm_empty_n fifo_status 0 1 }  { strm_read fifo_data 1 1 } } }
	stream_out_V_data_V { axis {  { stream_out_TREADY out_acc 0 1 }  { stream_out_TDATA out_data 1 32 } } }
	stream_out_V_keep_V { axis {  { stream_out_TKEEP out_data 1 4 } } }
	stream_out_V_strb_V { axis {  { stream_out_TSTRB out_data 1 4 } } }
	stream_out_V_last_V { axis {  { stream_out_TVALID out_vld 1 1 }  { stream_out_TLAST out_data 1 1 } } }
}
