set moduleName Loop_VITIS_LOOP_43_1_proc1
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
set C_modelName {Loop_VITIS_LOOP_43_1_proc1}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_stream_V_data_V int 24 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 3 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 3 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_user_V int 1 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_V_id_V int 1 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_V_dest_V int 1 regular {axi_s 1 volatile  { out_stream Dest } }  }
	{ in_breath_gpio int 1 regular {pointer 2 volatile }  }
	{ in_stream_V_data_V int 24 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 3 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 3 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_breath_gpio", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
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
	{ out_stream_TDATA sc_out sc_lv 24 signal 0 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 6 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 6 } 
	{ out_stream_TKEEP sc_out sc_lv 3 signal 1 } 
	{ out_stream_TSTRB sc_out sc_lv 3 signal 2 } 
	{ out_stream_TUSER sc_out sc_lv 1 signal 3 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 4 } 
	{ out_stream_TID sc_out sc_lv 1 signal 5 } 
	{ out_stream_TDEST sc_out sc_lv 1 signal 6 } 
	{ in_breath_gpio_i sc_in sc_lv 1 signal 7 } 
	{ in_breath_gpio_o sc_out sc_lv 1 signal 7 } 
	{ in_breath_gpio_o_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ in_stream_TDATA sc_in sc_lv 24 signal 8 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 14 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 14 } 
	{ in_stream_TKEEP sc_in sc_lv 3 signal 9 } 
	{ in_stream_TSTRB sc_in sc_lv 3 signal 10 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 11 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 12 } 
	{ in_stream_TID sc_in sc_lv 1 signal 13 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 14 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_breath_gpio_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_breath_gpio", "role": "i" }} , 
 	{ "name": "in_breath_gpio_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_breath_gpio", "role": "o" }} , 
 	{ "name": "in_breath_gpio_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_breath_gpio", "role": "o_ap_vld" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "7", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "Loop_VITIS_LOOP_43_1_proc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "921782", "EstimateLatencyMax" : "921782",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "out_stream_V_data_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "out_stream_V_user_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "out_stream_V_last_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "out_stream_V_id_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "in_breath_gpio", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_breath_gpio", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_stream_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_stream_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "in_stream_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "tile_pong_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "tile_pong_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5_fu_165", "Port" : "tile_pong_V", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "tile_pong_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "tile_ping_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Port" : "tile_ping_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "5", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5_fu_165", "Port" : "tile_ping_V", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "7", "SubInstance" : "grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Port" : "tile_ping_V", "Inst_start_state" : "6", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tile_pong_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tile_ping_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_49_2_VITIS_LOOP_50_3_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5_fu_165", "Parent" : "0", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5_fu_165.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7",
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
			{"Name" : "first_out_pixel", "Type" : "None", "Direction" : "I"},
			{"Name" : "use_ping", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "tile_pong_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tile_ping_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_6_VITIS_LOOP_77_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7_fu_175.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_VITIS_LOOP_43_1_proc1 {
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		in_breath_gpio {Type IO LastRead 0 FirstWrite 0}
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		tile_pong_V {Type IO LastRead -1 FirstWrite -1}
		tile_ping_V {Type IO LastRead -1 FirstWrite -1}}
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
		tile_ping_V {Type O LastRead -1 FirstWrite 0}}
	Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_68_4_VITIS_LOOP_69_5 {
		use_ping {Type I LastRead 0 FirstWrite -1}
		tile_pong_V {Type IO LastRead 0 FirstWrite 1}
		tile_ping_V {Type IO LastRead 0 FirstWrite 1}}
	Loop_VITIS_LOOP_43_1_proc1_Pipeline_VITIS_LOOP_76_6_VITIS_LOOP_77_7 {
		first_out_pixel {Type I LastRead 0 FirstWrite -1}
		use_ping {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		tile_pong_V {Type I LastRead 0 FirstWrite -1}
		tile_ping_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "921782", "Max" : "921782"}
	, {"Name" : "Interval", "Min" : "921782", "Max" : "921782"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 24 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 3 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 3 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 1 } } }
	out_stream_V_dest_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDEST out_data 1 1 } } }
	in_breath_gpio { ap_ovld {  { in_breath_gpio_i in_data 0 1 }  { in_breath_gpio_o out_data 1 1 }  { in_breath_gpio_o_ap_vld out_vld 1 1 } } }
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 24 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 3 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 3 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
}
