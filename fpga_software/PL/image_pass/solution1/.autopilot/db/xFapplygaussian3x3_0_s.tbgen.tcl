set moduleName xFapplygaussian3x3_0_s
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
set C_modelName {xFapplygaussian3x3<0>}
set C_modelType { int 8 }
set C_modelArgList {
	{ D1 int 1 regular  }
	{ D2 int 1 regular  }
	{ D3 int 8 regular  }
	{ D4 int 1 regular  }
	{ D5 int 1 regular  }
	{ D6 int 8 regular  }
	{ D7 int 1 regular  }
	{ D8 int 1 regular  }
	{ D9 int 8 regular  }
	{ p_read1 int 8 regular  }
	{ p_read2 int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "D1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "D2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "D3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "D4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "D5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "D6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "D7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "D8", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "D9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ D1 sc_in sc_lv 1 signal 0 } 
	{ D2 sc_in sc_lv 1 signal 1 } 
	{ D3 sc_in sc_lv 8 signal 2 } 
	{ D4 sc_in sc_lv 1 signal 3 } 
	{ D5 sc_in sc_lv 1 signal 4 } 
	{ D6 sc_in sc_lv 8 signal 5 } 
	{ D7 sc_in sc_lv 1 signal 6 } 
	{ D8 sc_in sc_lv 1 signal 7 } 
	{ D9 sc_in sc_lv 8 signal 8 } 
	{ p_read1 sc_in sc_lv 8 signal 9 } 
	{ p_read2 sc_in sc_lv 8 signal 10 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "D1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D1", "role": "default" }} , 
 	{ "name": "D2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D2", "role": "default" }} , 
 	{ "name": "D3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "D3", "role": "default" }} , 
 	{ "name": "D4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D4", "role": "default" }} , 
 	{ "name": "D5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D5", "role": "default" }} , 
 	{ "name": "D6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "D6", "role": "default" }} , 
 	{ "name": "D7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D7", "role": "default" }} , 
 	{ "name": "D8", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "D8", "role": "default" }} , 
 	{ "name": "D9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "D9", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "xFapplygaussian3x3_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "D1", "Type" : "None", "Direction" : "I"},
			{"Name" : "D2", "Type" : "None", "Direction" : "I"},
			{"Name" : "D3", "Type" : "None", "Direction" : "I"},
			{"Name" : "D4", "Type" : "None", "Direction" : "I"},
			{"Name" : "D5", "Type" : "None", "Direction" : "I"},
			{"Name" : "D6", "Type" : "None", "Direction" : "I"},
			{"Name" : "D7", "Type" : "None", "Direction" : "I"},
			{"Name" : "D8", "Type" : "None", "Direction" : "I"},
			{"Name" : "D9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8ns_2ns_10_1_0_U112", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_9ns_8ns_8ns_17_4_0_U113", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.am_addmul_8ns_1ns_8ns_16_4_0_U114", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_U115", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_16ns_8ns_8ns_24ns_24_4_0_U116", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFapplygaussian3x3_0_s {
		D1 {Type I LastRead 0 FirstWrite -1}
		D2 {Type I LastRead 0 FirstWrite -1}
		D3 {Type I LastRead 0 FirstWrite -1}
		D4 {Type I LastRead 0 FirstWrite -1}
		D5 {Type I LastRead 0 FirstWrite -1}
		D6 {Type I LastRead 0 FirstWrite -1}
		D7 {Type I LastRead 0 FirstWrite -1}
		D8 {Type I LastRead 0 FirstWrite -1}
		D9 {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	D1 { ap_none {  { D1 in_data 0 1 } } }
	D2 { ap_none {  { D2 in_data 0 1 } } }
	D3 { ap_none {  { D3 in_data 0 8 } } }
	D4 { ap_none {  { D4 in_data 0 1 } } }
	D5 { ap_none {  { D5 in_data 0 1 } } }
	D6 { ap_none {  { D6 in_data 0 8 } } }
	D7 { ap_none {  { D7 in_data 0 1 } } }
	D8 { ap_none {  { D8 in_data 0 1 } } }
	D9 { ap_none {  { D9 in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
}
