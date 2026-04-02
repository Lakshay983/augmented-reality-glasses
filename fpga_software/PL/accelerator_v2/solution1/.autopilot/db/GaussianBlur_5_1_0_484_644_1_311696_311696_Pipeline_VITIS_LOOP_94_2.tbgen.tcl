set moduleName GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2
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
set C_modelName {GaussianBlur<5, 1, 0, 484, 644, 1, 311696, 311696>_Pipeline_VITIS_LOOP_94_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ cf float 32 regular {array 5 { 2 3 } 1 1 }  }
	{ sum float 32 regular  }
	{ weights_2_out int 8 regular {pointer 1}  }
	{ weights_1_out int 8 regular {pointer 1}  }
	{ weights_out int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "cf", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "sum", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cf_address0 sc_out sc_lv 3 signal 0 } 
	{ cf_ce0 sc_out sc_logic 1 signal 0 } 
	{ cf_we0 sc_out sc_logic 1 signal 0 } 
	{ cf_d0 sc_out sc_lv 32 signal 0 } 
	{ cf_q0 sc_in sc_lv 32 signal 0 } 
	{ sum sc_in sc_lv 32 signal 1 } 
	{ weights_2_out sc_out sc_lv 8 signal 2 } 
	{ weights_2_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ weights_1_out sc_out sc_lv 8 signal 3 } 
	{ weights_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ weights_out sc_out sc_lv 8 signal 4 } 
	{ weights_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ grp_fu_134_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_134_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_134_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_134_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_134_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_138_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_138_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_138_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_138_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cf", "role": "address0" }} , 
 	{ "name": "cf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cf", "role": "ce0" }} , 
 	{ "name": "cf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cf", "role": "we0" }} , 
 	{ "name": "cf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cf", "role": "d0" }} , 
 	{ "name": "cf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cf", "role": "q0" }} , 
 	{ "name": "sum", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum", "role": "default" }} , 
 	{ "name": "weights_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_2_out", "role": "default" }} , 
 	{ "name": "weights_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "weights_2_out", "role": "ap_vld" }} , 
 	{ "name": "weights_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_1_out", "role": "default" }} , 
 	{ "name": "weights_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "weights_1_out", "role": "ap_vld" }} , 
 	{ "name": "weights_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights_out", "role": "default" }} , 
 	{ "name": "weights_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "weights_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_134_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_134_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_134_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_134_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_134_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_134_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_134_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_134_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_134_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_134_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_138_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_138_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_138_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_138_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_138_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_138_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_138_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_138_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitofp_32ns_32_2_no_dsp_1_U88", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U89", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_4_full_dsp_1_U90", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2 {
		cf {Type IO LastRead 0 FirstWrite 2}
		sum {Type I LastRead 0 FirstWrite -1}
		weights_2_out {Type O LastRead -1 FirstWrite 5}
		weights_1_out {Type O LastRead -1 FirstWrite 5}
		weights_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "72", "Max" : "72"}
	, {"Name" : "Interval", "Min" : "72", "Max" : "72"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	cf { ap_memory {  { cf_address0 mem_address 1 3 }  { cf_ce0 mem_ce 1 1 }  { cf_we0 mem_we 1 1 }  { cf_d0 mem_din 1 32 }  { cf_q0 in_data 0 32 } } }
	sum { ap_none {  { sum in_data 0 32 } } }
	weights_2_out { ap_vld {  { weights_2_out out_data 1 8 }  { weights_2_out_ap_vld out_vld 1 1 } } }
	weights_1_out { ap_vld {  { weights_1_out out_data 1 8 }  { weights_1_out_ap_vld out_vld 1 1 } } }
	weights_out { ap_vld {  { weights_out out_data 1 8 }  { weights_out_ap_vld out_vld 1 1 } } }
}
