set moduleName hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1
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
set C_modelName {hlsStrm2xfMat<128, 7, 460, 640, 4, 73600>_Pipeline_L1}
set C_modelType { void 0 }
set C_modelArgList {
	{ loop_count int 31 regular  }
	{ img_in_data47 int 128 regular {fifo 1 volatile }  }
	{ sext_ln495 int 26 regular  }
	{ sext_ln513 int 31 regular  }
	{ last_N_size int 32 regular  }
	{ PTR_WIDTH_min_last_N int 32 regular  }
	{ PTR_WIDTH_plus_last_N int 32 regular  }
	{ strm int 128 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "loop_count", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data47", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sext_ln495", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln513", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "last_N_size", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "PTR_WIDTH_min_last_N", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "PTR_WIDTH_plus_last_N", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_dout sc_in sc_lv 128 signal 7 } 
	{ strm_num_data_valid sc_in sc_lv 2 signal 7 } 
	{ strm_fifo_cap sc_in sc_lv 2 signal 7 } 
	{ strm_empty_n sc_in sc_logic 1 signal 7 } 
	{ strm_read sc_out sc_logic 1 signal 7 } 
	{ img_in_data47_din sc_out sc_lv 128 signal 1 } 
	{ img_in_data47_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ img_in_data47_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ img_in_data47_full_n sc_in sc_logic 1 signal 1 } 
	{ img_in_data47_write sc_out sc_logic 1 signal 1 } 
	{ loop_count sc_in sc_lv 31 signal 0 } 
	{ sext_ln495 sc_in sc_lv 26 signal 2 } 
	{ sext_ln513 sc_in sc_lv 31 signal 3 } 
	{ last_N_size sc_in sc_lv 32 signal 4 } 
	{ PTR_WIDTH_min_last_N sc_in sc_lv 32 signal 5 } 
	{ PTR_WIDTH_plus_last_N sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "strm", "role": "dout" }} , 
 	{ "name": "strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "strm", "role": "num_data_valid" }} , 
 	{ "name": "strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "strm", "role": "fifo_cap" }} , 
 	{ "name": "strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm", "role": "empty_n" }} , 
 	{ "name": "strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm", "role": "read" }} , 
 	{ "name": "img_in_data47_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "img_in_data47", "role": "din" }} , 
 	{ "name": "img_in_data47_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_in_data47", "role": "num_data_valid" }} , 
 	{ "name": "img_in_data47_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_in_data47", "role": "fifo_cap" }} , 
 	{ "name": "img_in_data47_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "full_n" }} , 
 	{ "name": "img_in_data47_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "write" }} , 
 	{ "name": "loop_count", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "loop_count", "role": "default" }} , 
 	{ "name": "sext_ln495", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "sext_ln495", "role": "default" }} , 
 	{ "name": "sext_ln513", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "sext_ln513", "role": "default" }} , 
 	{ "name": "last_N_size", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "last_N_size", "role": "default" }} , 
 	{ "name": "PTR_WIDTH_min_last_N", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PTR_WIDTH_min_last_N", "role": "default" }} , 
 	{ "name": "PTR_WIDTH_plus_last_N", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "PTR_WIDTH_plus_last_N", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "73603",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "loop_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_in_data47", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_in_data47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln495", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln513", "Type" : "None", "Direction" : "I"},
			{"Name" : "last_N_size", "Type" : "None", "Direction" : "I"},
			{"Name" : "PTR_WIDTH_min_last_N", "Type" : "None", "Direction" : "I"},
			{"Name" : "PTR_WIDTH_plus_last_N", "Type" : "None", "Direction" : "I"},
			{"Name" : "strm", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "L1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1 {
		loop_count {Type I LastRead 0 FirstWrite -1}
		img_in_data47 {Type O LastRead -1 FirstWrite 3}
		sext_ln495 {Type I LastRead 0 FirstWrite -1}
		sext_ln513 {Type I LastRead 0 FirstWrite -1}
		last_N_size {Type I LastRead 0 FirstWrite -1}
		PTR_WIDTH_min_last_N {Type I LastRead 0 FirstWrite -1}
		PTR_WIDTH_plus_last_N {Type I LastRead 0 FirstWrite -1}
		strm {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "73603"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "73603"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	loop_count { ap_none {  { loop_count in_data 0 31 } } }
	img_in_data47 { ap_fifo {  { img_in_data47_din fifo_port_we 1 128 }  { img_in_data47_num_data_valid fifo_status_num_data_valid 0 2 }  { img_in_data47_fifo_cap fifo_update 0 2 }  { img_in_data47_full_n fifo_status 0 1 }  { img_in_data47_write fifo_data 1 1 } } }
	sext_ln495 { ap_none {  { sext_ln495 in_data 0 26 } } }
	sext_ln513 { ap_none {  { sext_ln513 in_data 0 31 } } }
	last_N_size { ap_none {  { last_N_size in_data 0 32 } } }
	PTR_WIDTH_min_last_N { ap_none {  { PTR_WIDTH_min_last_N in_data 0 32 } } }
	PTR_WIDTH_plus_last_N { ap_none {  { PTR_WIDTH_plus_last_N in_data 0 32 } } }
	strm { ap_fifo {  { strm_dout fifo_port_we 0 128 }  { strm_num_data_valid fifo_status_num_data_valid 0 2 }  { strm_fifo_cap fifo_update 0 2 }  { strm_empty_n fifo_status 0 1 }  { strm_read fifo_data 1 1 } } }
}
