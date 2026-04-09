set moduleName xfrgb2gray_7_0_460_640_4_2_2_26_12_18400_Pipeline_columnloop
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
set C_modelName {xfrgb2gray<7, 0, 460, 640, 4, 2, 2, 26, 12, 18400>_Pipeline_columnloop}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln int 14 regular  }
	{ img_in_data47 int 128 regular {fifo 0 volatile }  }
	{ img_gray_data48 int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data47", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "img_gray_data48", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ img_in_data47_dout sc_in sc_lv 128 signal 1 } 
	{ img_in_data47_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ img_in_data47_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ img_in_data47_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_in_data47_read sc_out sc_logic 1 signal 1 } 
	{ img_gray_data48_din sc_out sc_lv 32 signal 2 } 
	{ img_gray_data48_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ img_gray_data48_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ img_gray_data48_full_n sc_in sc_logic 1 signal 2 } 
	{ img_gray_data48_write sc_out sc_logic 1 signal 2 } 
	{ trunc_ln sc_in sc_lv 14 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "img_in_data47_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "img_in_data47", "role": "dout" }} , 
 	{ "name": "img_in_data47_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_in_data47", "role": "num_data_valid" }} , 
 	{ "name": "img_in_data47_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_in_data47", "role": "fifo_cap" }} , 
 	{ "name": "img_in_data47_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "empty_n" }} , 
 	{ "name": "img_in_data47_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "read" }} , 
 	{ "name": "img_gray_data48_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "din" }} , 
 	{ "name": "img_gray_data48_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "num_data_valid" }} , 
 	{ "name": "img_gray_data48_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "fifo_cap" }} , 
 	{ "name": "img_gray_data48_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "full_n" }} , 
 	{ "name": "img_gray_data48_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_gray_data48", "role": "write" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "xfrgb2gray_7_0_460_640_4_2_2_26_12_18400_Pipeline_columnloop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "647", "EstimateLatencyMax" : "647",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_in_data47", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_in_data47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_gray_data48", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_gray_data48_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "columnloop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_14ns_22_4_1_U62", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_14ns_22_4_1_U63", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_14ns_22_4_1_U64", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_8ns_14ns_22_4_1_U65", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_12ns_22ns_22_4_1_U66", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_12ns_22ns_22_4_1_U67", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_12ns_22ns_22_4_1_U68", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_12ns_22ns_22_4_1_U69", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_15ns_22ns_23_4_1_U70", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_15ns_22ns_23_4_1_U71", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_15ns_22ns_23_4_1_U72", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_15ns_22ns_23_4_1_U73", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xfrgb2gray_7_0_460_640_4_2_2_26_12_18400_Pipeline_columnloop {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		img_in_data47 {Type I LastRead 1 FirstWrite -1}
		img_gray_data48 {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "647", "Max" : "647"}
	, {"Name" : "Interval", "Min" : "647", "Max" : "647"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln { ap_none {  { trunc_ln in_data 0 14 } } }
	img_in_data47 { ap_fifo {  { img_in_data47_dout fifo_port_we 0 128 }  { img_in_data47_num_data_valid fifo_status_num_data_valid 0 2 }  { img_in_data47_fifo_cap fifo_update 0 2 }  { img_in_data47_empty_n fifo_status 0 1 }  { img_in_data47_read fifo_data 1 1 } } }
	img_gray_data48 { ap_fifo {  { img_gray_data48_din fifo_port_we 1 32 }  { img_gray_data48_num_data_valid fifo_status_num_data_valid 0 2 }  { img_gray_data48_fifo_cap fifo_update 0 2 }  { img_gray_data48_full_n fifo_status 0 1 }  { img_gray_data48_write fifo_data 1 1 } } }
}
