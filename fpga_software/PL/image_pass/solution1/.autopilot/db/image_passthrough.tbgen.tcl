set moduleName image_passthrough
set isTopModule 1
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
set C_modelName {image_passthrough}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 8 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 1 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 1 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ out_stream_V_data_V int 8 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 1 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 1 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_user_V int 1 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_V_id_V int 1 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_V_dest_V int 1 regular {axi_s 1 volatile  { out_stream Dest } }  }
	{ in_breath int 1 regular {axi_slave 2 volatile }  }
	{ out_breath int 1 regular {axi_slave 2 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_breath", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":16, "out":24}, "offset_end" : {"in":23, "out":31}} , 
 	{ "Name" : "out_breath", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":32, "out":40}, "offset_end" : {"in":39, "out":47}} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TDATA sc_in sc_lv 8 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 1 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 1 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 8 signal 7 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ out_stream_TKEEP sc_out sc_lv 1 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 1 signal 9 } 
	{ out_stream_TUSER sc_out sc_lv 1 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_TID sc_out sc_lv 1 signal 12 } 
	{ out_stream_TDEST sc_out sc_lv 1 signal 13 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"image_passthrough","role":"start","value":"0","valid_bit":"0"},{"name":"image_passthrough","role":"continue","value":"0","valid_bit":"4"},{"name":"image_passthrough","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_breath","role":"data","value":"16"},{"name":"out_breath","role":"data","value":"32"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"image_passthrough","role":"start","value":"0","valid_bit":"0"},{"name":"image_passthrough","role":"done","value":"0","valid_bit":"1"},{"name":"image_passthrough","role":"idle","value":"0","valid_bit":"2"},{"name":"image_passthrough","role":"ready","value":"0","valid_bit":"3"},{"name":"image_passthrough","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_breath","role":"data","value":"24"}, {"name":"in_breath","role":"valid","value":"28","valid_bit":"0"},{"name":"out_breath","role":"data","value":"40"}, {"name":"out_breath","role":"valid","value":"44","valid_bit":"0"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "image_passthrough",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "in_breath", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "out_breath", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_21_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	image_passthrough {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		in_breath {Type IO LastRead 2 FirstWrite 2}
		out_breath {Type IO LastRead 3 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 8 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 1 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 1 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 8 }  { out_stream_TREADY out_acc 0 1 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 1 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 1 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 1 } } }
	out_stream_V_dest_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TDEST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
