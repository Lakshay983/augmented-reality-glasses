set moduleName xfapplygaussian5x5_1_0_false_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {xfapplygaussian5x5<1, 0, false>}
set C_modelType { int 8 }
set C_modelArgList {
	{ src_buf1_V_read int 8 regular  }
	{ src_buf1_V_read_5 int 8 regular  }
	{ src_buf1_V_read_6 int 8 regular  }
	{ src_buf1_V_read_7 int 8 regular  }
	{ src_buf1_V_read_8 int 8 regular  }
	{ src_buf2_V_read int 8 regular  }
	{ src_buf2_V_read_5 int 8 regular  }
	{ src_buf2_V_read_6 int 8 regular  }
	{ src_buf2_V_read_7 int 8 regular  }
	{ src_buf2_V_read_8 int 8 regular  }
	{ src_buf3_V_read int 8 regular  }
	{ src_buf3_V_read_5 int 8 regular  }
	{ src_buf3_V_read_6 int 8 regular  }
	{ src_buf3_V_read_7 int 8 regular  }
	{ src_buf3_V_read_8 int 8 regular  }
	{ src_buf4_V_read int 8 regular  }
	{ src_buf4_V_read_5 int 8 regular  }
	{ src_buf4_V_read_6 int 8 regular  }
	{ src_buf4_V_read_7 int 8 regular  }
	{ src_buf4_V_read_8 int 8 regular  }
	{ src_buf5_V_read int 8 regular  }
	{ src_buf5_V_read_5 int 8 regular  }
	{ src_buf5_V_read_6 int 8 regular  }
	{ src_buf5_V_read_7 int 8 regular  }
	{ src_buf5_V_read_8 int 8 regular  }
	{ weights_read int 8 regular  }
	{ weights_read_3 int 8 regular  }
	{ weights_read_4 int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_buf1_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf1_V_read_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf1_V_read_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf1_V_read_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf1_V_read_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf2_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf2_V_read_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf2_V_read_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf2_V_read_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf2_V_read_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_V_read_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_V_read_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_V_read_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf3_V_read_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf4_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf4_V_read_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf4_V_read_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf4_V_read_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf4_V_read_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf5_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf5_V_read_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf5_V_read_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf5_V_read_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_buf5_V_read_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weights_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weights_read_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weights_read_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ src_buf1_V_read sc_in sc_lv 8 signal 0 } 
	{ src_buf1_V_read_5 sc_in sc_lv 8 signal 1 } 
	{ src_buf1_V_read_6 sc_in sc_lv 8 signal 2 } 
	{ src_buf1_V_read_7 sc_in sc_lv 8 signal 3 } 
	{ src_buf1_V_read_8 sc_in sc_lv 8 signal 4 } 
	{ src_buf2_V_read sc_in sc_lv 8 signal 5 } 
	{ src_buf2_V_read_5 sc_in sc_lv 8 signal 6 } 
	{ src_buf2_V_read_6 sc_in sc_lv 8 signal 7 } 
	{ src_buf2_V_read_7 sc_in sc_lv 8 signal 8 } 
	{ src_buf2_V_read_8 sc_in sc_lv 8 signal 9 } 
	{ src_buf3_V_read sc_in sc_lv 8 signal 10 } 
	{ src_buf3_V_read_5 sc_in sc_lv 8 signal 11 } 
	{ src_buf3_V_read_6 sc_in sc_lv 8 signal 12 } 
	{ src_buf3_V_read_7 sc_in sc_lv 8 signal 13 } 
	{ src_buf3_V_read_8 sc_in sc_lv 8 signal 14 } 
	{ src_buf4_V_read sc_in sc_lv 8 signal 15 } 
	{ src_buf4_V_read_5 sc_in sc_lv 8 signal 16 } 
	{ src_buf4_V_read_6 sc_in sc_lv 8 signal 17 } 
	{ src_buf4_V_read_7 sc_in sc_lv 8 signal 18 } 
	{ src_buf4_V_read_8 sc_in sc_lv 8 signal 19 } 
	{ src_buf5_V_read sc_in sc_lv 8 signal 20 } 
	{ src_buf5_V_read_5 sc_in sc_lv 8 signal 21 } 
	{ src_buf5_V_read_6 sc_in sc_lv 8 signal 22 } 
	{ src_buf5_V_read_7 sc_in sc_lv 8 signal 23 } 
	{ src_buf5_V_read_8 sc_in sc_lv 8 signal 24 } 
	{ weights_read sc_in sc_lv 8 signal 25 } 
	{ weights_read_3 sc_in sc_lv 8 signal 26 } 
	{ weights_read_4 sc_in sc_lv 8 signal 27 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "src_buf1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_read", "role": "default" }} , 
 	{ "name": "src_buf1_V_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_read_5", "role": "default" }} , 
 	{ "name": "src_buf1_V_read_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_read_6", "role": "default" }} , 
 	{ "name": "src_buf1_V_read_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_read_7", "role": "default" }} , 
 	{ "name": "src_buf1_V_read_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf1_V_read_8", "role": "default" }} , 
 	{ "name": "src_buf2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_read", "role": "default" }} , 
 	{ "name": "src_buf2_V_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_read_5", "role": "default" }} , 
 	{ "name": "src_buf2_V_read_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_read_6", "role": "default" }} , 
 	{ "name": "src_buf2_V_read_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_read_7", "role": "default" }} , 
 	{ "name": "src_buf2_V_read_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf2_V_read_8", "role": "default" }} , 
 	{ "name": "src_buf3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_read", "role": "default" }} , 
 	{ "name": "src_buf3_V_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_read_5", "role": "default" }} , 
 	{ "name": "src_buf3_V_read_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_read_6", "role": "default" }} , 
 	{ "name": "src_buf3_V_read_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_read_7", "role": "default" }} , 
 	{ "name": "src_buf3_V_read_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf3_V_read_8", "role": "default" }} , 
 	{ "name": "src_buf4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_read", "role": "default" }} , 
 	{ "name": "src_buf4_V_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_read_5", "role": "default" }} , 
 	{ "name": "src_buf4_V_read_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_read_6", "role": "default" }} , 
 	{ "name": "src_buf4_V_read_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_read_7", "role": "default" }} , 
 	{ "name": "src_buf4_V_read_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf4_V_read_8", "role": "default" }} , 
 	{ "name": "src_buf5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_read", "role": "default" }} , 
 	{ "name": "src_buf5_V_read_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_read_5", "role": "default" }} , 
 	{ "name": "src_buf5_V_read_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_read_6", "role": "default" }} , 
 	{ "name": "src_buf5_V_read_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_read_7", "role": "default" }} , 
 	{ "name": "src_buf5_V_read_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_buf5_V_read_8", "role": "default" }} , 
 	{ "name": "weights_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_read", "role": "default" }} , 
 	{ "name": "weights_read_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_read_3", "role": "default" }} , 
 	{ "name": "weights_read_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_read_4", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_8ns_16_1_0_U105", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_8ns_8ns_8ns_17_4_0_U106", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_9ns_9ns_8ns_18_4_0_U107", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_9ns_9ns_8ns_18_4_0_U108", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_8ns_8ns_8ns_17ns_18_4_0_U109", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U110", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_8ns_8ns_8ns_17_4_0_U111", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U112", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_8ns_8ns_8ns_17_4_0_U113", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_19ns_17ns_8ns_28_4_0_U114", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_U115", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_18ns_16ns_8ns_28ns_28_4_0_U116", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		weights_read_4 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_buf1_V_read { ap_none {  { src_buf1_V_read in_data 0 8 } } }
	src_buf1_V_read_5 { ap_none {  { src_buf1_V_read_5 in_data 0 8 } } }
	src_buf1_V_read_6 { ap_none {  { src_buf1_V_read_6 in_data 0 8 } } }
	src_buf1_V_read_7 { ap_none {  { src_buf1_V_read_7 in_data 0 8 } } }
	src_buf1_V_read_8 { ap_none {  { src_buf1_V_read_8 in_data 0 8 } } }
	src_buf2_V_read { ap_none {  { src_buf2_V_read in_data 0 8 } } }
	src_buf2_V_read_5 { ap_none {  { src_buf2_V_read_5 in_data 0 8 } } }
	src_buf2_V_read_6 { ap_none {  { src_buf2_V_read_6 in_data 0 8 } } }
	src_buf2_V_read_7 { ap_none {  { src_buf2_V_read_7 in_data 0 8 } } }
	src_buf2_V_read_8 { ap_none {  { src_buf2_V_read_8 in_data 0 8 } } }
	src_buf3_V_read { ap_none {  { src_buf3_V_read in_data 0 8 } } }
	src_buf3_V_read_5 { ap_none {  { src_buf3_V_read_5 in_data 0 8 } } }
	src_buf3_V_read_6 { ap_none {  { src_buf3_V_read_6 in_data 0 8 } } }
	src_buf3_V_read_7 { ap_none {  { src_buf3_V_read_7 in_data 0 8 } } }
	src_buf3_V_read_8 { ap_none {  { src_buf3_V_read_8 in_data 0 8 } } }
	src_buf4_V_read { ap_none {  { src_buf4_V_read in_data 0 8 } } }
	src_buf4_V_read_5 { ap_none {  { src_buf4_V_read_5 in_data 0 8 } } }
	src_buf4_V_read_6 { ap_none {  { src_buf4_V_read_6 in_data 0 8 } } }
	src_buf4_V_read_7 { ap_none {  { src_buf4_V_read_7 in_data 0 8 } } }
	src_buf4_V_read_8 { ap_none {  { src_buf4_V_read_8 in_data 0 8 } } }
	src_buf5_V_read { ap_none {  { src_buf5_V_read in_data 0 8 } } }
	src_buf5_V_read_5 { ap_none {  { src_buf5_V_read_5 in_data 0 8 } } }
	src_buf5_V_read_6 { ap_none {  { src_buf5_V_read_6 in_data 0 8 } } }
	src_buf5_V_read_7 { ap_none {  { src_buf5_V_read_7 in_data 0 8 } } }
	src_buf5_V_read_8 { ap_none {  { src_buf5_V_read_8 in_data 0 8 } } }
	weights_read { ap_none {  { weights_read in_data 0 8 } } }
	weights_read_3 { ap_none {  { weights_read_3 in_data 0 8 } } }
	weights_read_4 { ap_none {  { weights_read_4 in_data 0 8 } } }
}
