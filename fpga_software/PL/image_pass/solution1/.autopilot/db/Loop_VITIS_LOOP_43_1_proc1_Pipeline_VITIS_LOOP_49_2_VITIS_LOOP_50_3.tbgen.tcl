set moduleName Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3
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
set C_modelName {Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ sof_seen int 1 regular  }
	{ use_ping int 1 regular  }
	{ in_breath_gpio int 1 regular {pointer 2 volatile }  }
	{ in_stream_V_data_V int 24 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 3 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 3 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ sof_seen_2_out int 1 regular {pointer 1}  }
	{ tile_pong_V int 24 regular {array 20480 { 0 3 } 0 1 } {global 1}  }
	{ tile_ping_V int 24 regular {array 20480 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sof_seen", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "use_ping", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_breath_gpio", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sof_seen_2_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tile_pong_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "tile_ping_V", "interface" : "memory", "bitwidth" : 24, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 3 } 
	{ sof_seen sc_in sc_lv 1 signal 0 } 
	{ use_ping sc_in sc_lv 1 signal 1 } 
	{ in_breath_gpio_i sc_in sc_lv 1 signal 2 } 
	{ in_breath_gpio_o sc_out sc_lv 1 signal 2 } 
	{ in_breath_gpio_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ in_stream_TDATA sc_in sc_lv 24 signal 3 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 9 } 
	{ in_stream_TKEEP sc_in sc_lv 3 signal 4 } 
	{ in_stream_TSTRB sc_in sc_lv 3 signal 5 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 6 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 7 } 
	{ in_stream_TID sc_in sc_lv 1 signal 8 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 9 } 
	{ sof_seen_2_out sc_out sc_lv 1 signal 10 } 
	{ sof_seen_2_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ tile_pong_V_address0 sc_out sc_lv 15 signal 11 } 
	{ tile_pong_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ tile_pong_V_we0 sc_out sc_logic 1 signal 11 } 
	{ tile_pong_V_d0 sc_out sc_lv 24 signal 11 } 
	{ tile_ping_V_address0 sc_out sc_lv 15 signal 12 } 
	{ tile_ping_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ tile_ping_V_we0 sc_out sc_logic 1 signal 12 } 
	{ tile_ping_V_d0 sc_out sc_lv 24 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "sof_seen", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sof_seen", "role": "default" }} , 
 	{ "name": "use_ping", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "use_ping", "role": "default" }} , 
 	{ "name": "in_breath_gpio_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_breath_gpio", "role": "i" }} , 
 	{ "name": "in_breath_gpio_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_breath_gpio", "role": "o" }} , 
 	{ "name": "in_breath_gpio_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_breath_gpio", "role": "o_ap_vld" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "sof_seen_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sof_seen_2_out", "role": "default" }} , 
 	{ "name": "sof_seen_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sof_seen_2_out", "role": "ap_vld" }} , 
 	{ "name": "tile_pong_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "address0" }} , 
 	{ "name": "tile_pong_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "ce0" }} , 
 	{ "name": "tile_pong_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "we0" }} , 
 	{ "name": "tile_pong_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tile_pong_V", "role": "d0" }} , 
 	{ "name": "tile_ping_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "address0" }} , 
 	{ "name": "tile_ping_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "ce0" }} , 
 	{ "name": "tile_ping_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "we0" }} , 
 	{ "name": "tile_ping_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "tile_ping_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3",
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
			{"Name" : "sof_seen", "Type" : "None", "Direction" : "I"},
			{"Name" : "use_ping", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_breath_gpio", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "sof_seen_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "tile_pong_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tile_ping_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_49_2_VITIS_LOOP_50_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3 {
		sof_seen {Type I LastRead 0 FirstWrite -1}
		use_ping {Type I LastRead 0 FirstWrite -1}
		in_breath_gpio {Type IO LastRead 0 FirstWrite 0}
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		sof_seen_2_out {Type O LastRead -1 FirstWrite 0}
		tile_pong_V {Type O LastRead -1 FirstWrite 0}
		tile_ping_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20482", "Max" : "20482"}
	, {"Name" : "Interval", "Min" : "20482", "Max" : "20482"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sof_seen { ap_none {  { sof_seen in_data 0 1 } } }
	use_ping { ap_none {  { use_ping in_data 0 1 } } }
	in_breath_gpio { ap_ovld {  { in_breath_gpio_i in_data 0 1 }  { in_breath_gpio_o out_data 1 1 }  { in_breath_gpio_o_ap_vld out_vld 1 1 } } }
	in_stream_V_data_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TDATA in_data 0 24 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 3 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 3 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
	sof_seen_2_out { ap_vld {  { sof_seen_2_out out_data 1 1 }  { sof_seen_2_out_ap_vld out_vld 1 1 } } }
	tile_pong_V { ap_memory {  { tile_pong_V_address0 mem_address 1 15 }  { tile_pong_V_ce0 mem_ce 1 1 }  { tile_pong_V_we0 mem_we 1 1 }  { tile_pong_V_d0 mem_din 1 24 } } }
	tile_ping_V { ap_memory {  { tile_ping_V_address0 mem_address 1 15 }  { tile_ping_V_ce0 mem_ce 1 1 }  { tile_ping_V_we0 mem_we 1 1 }  { tile_ping_V_d0 mem_din 1 24 } } }
}
