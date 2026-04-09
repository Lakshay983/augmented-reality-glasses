set moduleName hlsStrm2xfMat_128_7_460_640_4_73600_s
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
set C_modelName {hlsStrm2xfMat<128, 7, 460, 640, 4, 73600>}
set C_modelType { void 0 }
set C_modelArgList {
	{ strm int 128 regular {fifo 0 volatile }  }
	{ dstMat_1 int 32 regular {fifo 0}  }
	{ dstMat_2 int 27 regular {fifo 0}  }
	{ img_in_data47 int 128 regular {fifo 1 volatile }  }
	{ p_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "strm", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "dstMat_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dstMat_2", "interface" : "fifo", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data47", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_dout sc_in sc_lv 128 signal 0 } 
	{ strm_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ strm_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ strm_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_read sc_out sc_logic 1 signal 0 } 
	{ dstMat_1_dout sc_in sc_lv 32 signal 1 } 
	{ dstMat_1_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ dstMat_1_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ dstMat_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ dstMat_1_read sc_out sc_logic 1 signal 1 } 
	{ dstMat_2_dout sc_in sc_lv 27 signal 2 } 
	{ dstMat_2_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ dstMat_2_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ dstMat_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ dstMat_2_read sc_out sc_logic 1 signal 2 } 
	{ img_in_data47_din sc_out sc_lv 128 signal 3 } 
	{ img_in_data47_num_data_valid sc_in sc_lv 2 signal 3 } 
	{ img_in_data47_fifo_cap sc_in sc_lv 2 signal 3 } 
	{ img_in_data47_full_n sc_in sc_logic 1 signal 3 } 
	{ img_in_data47_write sc_out sc_logic 1 signal 3 } 
	{ p_read sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "strm", "role": "dout" }} , 
 	{ "name": "strm_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "strm", "role": "num_data_valid" }} , 
 	{ "name": "strm_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "strm", "role": "fifo_cap" }} , 
 	{ "name": "strm_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm", "role": "empty_n" }} , 
 	{ "name": "strm_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm", "role": "read" }} , 
 	{ "name": "dstMat_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dstMat_1", "role": "dout" }} , 
 	{ "name": "dstMat_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dstMat_1", "role": "num_data_valid" }} , 
 	{ "name": "dstMat_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dstMat_1", "role": "fifo_cap" }} , 
 	{ "name": "dstMat_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dstMat_1", "role": "empty_n" }} , 
 	{ "name": "dstMat_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dstMat_1", "role": "read" }} , 
 	{ "name": "dstMat_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "dstMat_2", "role": "dout" }} , 
 	{ "name": "dstMat_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dstMat_2", "role": "num_data_valid" }} , 
 	{ "name": "dstMat_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dstMat_2", "role": "fifo_cap" }} , 
 	{ "name": "dstMat_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dstMat_2", "role": "empty_n" }} , 
 	{ "name": "dstMat_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dstMat_2", "role": "read" }} , 
 	{ "name": "img_in_data47_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "img_in_data47", "role": "din" }} , 
 	{ "name": "img_in_data47_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_in_data47", "role": "num_data_valid" }} , 
 	{ "name": "img_in_data47_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_in_data47", "role": "fifo_cap" }} , 
 	{ "name": "img_in_data47_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "full_n" }} , 
 	{ "name": "img_in_data47_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "hlsStrm2xfMat_128_7_460_640_4_73600_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "73605",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88", "Port" : "strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dstMat_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_data47", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88", "Port" : "img_in_data47", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "1"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hlsStrm2xfMat_128_7_460_640_4_73600_s {
		strm {Type I LastRead 2 FirstWrite -1}
		dstMat_1 {Type I LastRead 0 FirstWrite -1}
		dstMat_2 {Type I LastRead 0 FirstWrite -1}
		img_in_data47 {Type O LastRead -1 FirstWrite 3}
		p_read {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "6", "Max" : "73605"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "73605"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	strm { ap_fifo {  { strm_dout fifo_port_we 0 128 }  { strm_num_data_valid fifo_status_num_data_valid 0 2 }  { strm_fifo_cap fifo_update 0 2 }  { strm_empty_n fifo_status 0 1 }  { strm_read fifo_data 1 1 } } }
	dstMat_1 { ap_fifo {  { dstMat_1_dout fifo_port_we 0 32 }  { dstMat_1_num_data_valid fifo_status_num_data_valid 0 3 }  { dstMat_1_fifo_cap fifo_update 0 3 }  { dstMat_1_empty_n fifo_status 0 1 }  { dstMat_1_read fifo_data 1 1 } } }
	dstMat_2 { ap_fifo {  { dstMat_2_dout fifo_port_we 0 27 }  { dstMat_2_num_data_valid fifo_status_num_data_valid 0 3 }  { dstMat_2_fifo_cap fifo_update 0 3 }  { dstMat_2_empty_n fifo_status 0 1 }  { dstMat_2_read fifo_data 1 1 } } }
	img_in_data47 { ap_fifo {  { img_in_data47_din fifo_port_we 1 128 }  { img_in_data47_num_data_valid fifo_status_num_data_valid 0 2 }  { img_in_data47_fifo_cap fifo_update 0 2 }  { img_in_data47_full_n fifo_status 0 1 }  { img_in_data47_write fifo_data 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
}
