set moduleName accelerator_v2
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {accelerator_v2}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 128 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 16 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 16 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ out_stream_V_data_V int 128 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 16 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 16 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_user_V int 1 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_V_id_V int 1 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_V_dest_V int 1 regular {axi_s 1 volatile  { out_stream Dest } }  }
	{ in_breath int 1 regular {pointer 1 volatile }  }
	{ out_breath int 1 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_breath", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_breath", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ in_stream_TDATA sc_in sc_lv 128 signal 0 } 
	{ in_stream_TKEEP sc_in sc_lv 16 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 16 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 128 signal 7 } 
	{ out_stream_TKEEP sc_out sc_lv 16 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 16 signal 9 } 
	{ out_stream_TUSER sc_out sc_lv 1 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_TID sc_out sc_lv 1 signal 12 } 
	{ out_stream_TDEST sc_out sc_lv 1 signal 13 } 
	{ in_breath sc_out sc_lv 1 signal 14 } 
	{ out_breath sc_out sc_lv 1 signal 15 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_breath", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_breath", "role": "default" }} , 
 	{ "name": "out_breath", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_breath", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "10", "11", "41", "115", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
		"CDFG" : "accelerator_v2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "368644", "EstimateLatencyMax" : "625649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_entry1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "Block_entry14_proc_U0"},
			{"ID" : "115", "Name" : "repack_U0"},
			{"ID" : "146", "Name" : "Block_entry110_proc_U0"}],
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "in_stream_V_data_V"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "in_stream_V_keep_V"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "in_stream_V_strb_V"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "in_stream_V_user_V"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "in_stream_V_last_V"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "in_stream_V_id_V"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "unpack_U0", "Port" : "in_stream_V_dest_V"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "repack_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "repack_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "repack_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "repack_U0", "Port" : "out_stream_V_user_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "repack_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "repack_U0", "Port" : "out_stream_V_id_V"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "repack_U0", "Port" : "out_stream_V_dest_V"}]},
			{"Name" : "in_breath", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_entry14_proc_U0", "Port" : "in_breath"}]},
			{"Name" : "out_breath", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "146", "SubInstance" : "Block_entry110_proc_U0", "Port" : "out_breath"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry1_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "frame_start", "Type" : "None", "Direction" : "O", "DependentProc" : ["2"], "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unpack_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "unpack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "368642", "EstimateLatencyMax" : "368642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
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
			{"Name" : "bgr_stream1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "148", "DependentChanDepth" : "307200", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bgr_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hdr_stream4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["115"], "DependentChan" : "149", "DependentChanDepth" : "61440", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "hdr_stream4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "frame_start_out_in", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "frame_start_c", "Type" : "None", "Direction" : "O", "DependentProc" : ["146"], "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "frame_start_c17", "Type" : "None", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_137_1_VITIS_LOOP_138_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.regslice_both_in_stream_V_data_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.regslice_both_in_stream_V_keep_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.regslice_both_in_stream_V_strb_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.regslice_both_in_stream_V_user_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.regslice_both_in_stream_V_last_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.regslice_both_in_stream_V_id_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.unpack_U0.regslice_both_in_stream_V_dest_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry14_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry14_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "frame_start", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "in_breath", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pad_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "18", "21", "23", "26", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40"],
		"CDFG" : "pad",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "317003", "EstimateLatencyMax" : "625643",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_pad_U0_U",
		"Port" : [
			{"Name" : "bgr_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "148", "DependentChanDepth" : "307200", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2_fu_329", "Port" : "bgr_stream1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "21", "SubInstance" : "grp_pad_Pipeline_VITIS_LOOP_94_6_fu_350", "Port" : "bgr_stream1", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41","42"], "DependentChan" : "152", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_pad_Pipeline_VITIS_LOOP_102_7_fu_359", "Port" : "padded_stream2", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "26", "SubInstance" : "grp_pad_Pipeline_VITIS_LOOP_116_9_fu_371", "Port" : "padded_stream2", "Inst_start_state" : "26", "Inst_end_state" : "27"},
					{"ID" : "18", "SubInstance" : "grp_pad_Pipeline_VITIS_LOOP_79_4_fu_341", "Port" : "padded_stream2", "Inst_start_state" : "8", "Inst_end_state" : "9"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "29", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_88_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "29", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state23"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state24"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_112_8", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "29", "FirstState" : "ap_ST_fsm_state24", "LastState" : ["ap_ST_fsm_state29"], "QuitState" : ["ap_ST_fsm_state24"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.row_buf_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.row_buf_V_1_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.row_buf_V_2_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.row_buf_V_3_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2_fu_329", "Parent" : "11", "Child" : ["17"],
		"CDFG" : "pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1922", "EstimateLatencyMax" : "1922",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_buf_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bgr_stream1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bgr_stream1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_67_1_VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2_fu_329.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_79_4_fu_341", "Parent" : "11", "Child" : ["19", "20"],
		"CDFG" : "pad_Pipeline_VITIS_LOOP_79_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "642", "EstimateLatencyMax" : "642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buf_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_79_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_79_4_fu_341.mux_32_24_1_1_U27", "Parent" : "18"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_79_4_fu_341.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_94_6_fu_350", "Parent" : "11", "Child" : ["22"],
		"CDFG" : "pad_Pipeline_VITIS_LOOP_94_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "642", "EstimateLatencyMax" : "642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_buf_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_buf_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bgr_stream1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bgr_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "trunc_ln88_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_94_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_94_6_fu_350.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_102_7_fu_359", "Parent" : "11", "Child" : ["24", "25"],
		"CDFG" : "pad_Pipeline_VITIS_LOOP_102_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "642", "EstimateLatencyMax" : "642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_buf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buf_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buf_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slot", "Type" : "None", "Direction" : "I"},
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_102_7_fu_359.mux_42_24_1_1_U37", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_102_7_fu_359.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_116_9_fu_371", "Parent" : "11", "Child" : ["27", "28"],
		"CDFG" : "pad_Pipeline_VITIS_LOOP_116_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "642", "EstimateLatencyMax" : "642",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_buf_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_buf_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "r_5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_116_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_116_9_fu_371.mux_21_24_1_1_U45", "Parent" : "26"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.pad_U0.grp_pad_Pipeline_VITIS_LOOP_116_9_fu_371.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_32_24_1_1_U51", "Parent" : "11"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_32_24_1_1_U52", "Parent" : "11"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_32_24_1_1_U53", "Parent" : "11"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_32_24_1_1_U54", "Parent" : "11"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_42_24_1_1_U55", "Parent" : "11"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_42_24_1_1_U56", "Parent" : "11"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_42_24_1_1_U57", "Parent" : "11"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_42_24_1_1_U58", "Parent" : "11"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_21_24_1_1_U59", "Parent" : "11"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_21_24_1_1_U60", "Parent" : "11"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_21_24_1_1_U61", "Parent" : "11"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.pad_U0.mux_21_24_1_1_U62", "Parent" : "11"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0", "Parent" : "0", "Child" : ["42", "44", "50", "107", "109", "110", "111", "112", "113", "114"],
		"CDFG" : "process_pixels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325757", "EstimateLatencyMax" : "325757",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_process_pixels_U0_U",
		"InputProcess" : [
			{"ID" : "42", "Name" : "stream_to_mat_U0"}],
		"OutputProcess" : [
			{"ID" : "107", "Name" : "mat_to_stream_U0"}],
		"Port" : [
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "152", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "stream_to_mat_U0", "Port" : "padded_stream2"}]},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["115"], "DependentChan" : "153", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "mat_to_stream_U0", "Port" : "gray_stream3"}]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.stream_to_mat_U0", "Parent" : "41", "Child" : ["43"],
		"CDFG" : "stream_to_mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "311698", "EstimateLatencyMax" : "311698",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "152", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["44"], "DependentChan" : "109", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bgr_mat_data43_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_30_1_VITIS_LOOP_31_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.stream_to_mat_U0.flow_control_loop_pipe_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_311696_311696_U0", "Parent" : "41", "Child" : ["45"],
		"CDFG" : "bgr2gray_9_0_484_644_1_311696_311696_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "316053", "EstimateLatencyMax" : "316053",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "42",
		"StartFifo" : "start_for_bgr2gray_9_0_484_644_1_311696_311696_U0_U",
		"Port" : [
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "109", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38", "Port" : "bgr_mat_data43", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["50"], "DependentChan" : "110", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38", "Port" : "gray_mat_data44", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "rowloop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38", "Parent" : "44", "Child" : ["46", "47", "48", "49"],
		"CDFG" : "bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "651", "EstimateLatencyMax" : "651",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bgr_mat_data43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "columnloop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.mul_mul_8ns_14ns_22_4_1_U68", "Parent" : "45"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.mac_muladd_8ns_12ns_22ns_22_4_1_U69", "Parent" : "45"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.mac_muladd_8ns_15ns_22ns_23_4_1_U70", "Parent" : "45"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_311696_311696_U0.grp_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0", "Parent" : "41", "Child" : ["51", "52", "56", "61", "104", "105", "106"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_311696_311696_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325757", "EstimateLatencyMax" : "325757",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "44",
		"StartFifo" : "start_for_GaussianBlur_5_1_0_484_644_1_311696_311696_U0_U",
		"Port" : [
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "110", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60", "Port" : "gray_mat_data44", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["107"], "DependentChan" : "111", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60", "Port" : "blurred_mat_data45", "Inst_start_state" : "14", "Inst_end_state" : "15"}]}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.cf_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44", "Parent" : "50", "Child" : ["53", "54", "55"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "cf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sum_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44.sitofp_32s_32_4_no_dsp_1_U80", "Parent" : "52"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44.fexp_32ns_32ns_32_8_full_dsp_1_U81", "Parent" : "52"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1_fu_44.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51", "Parent" : "50", "Child" : ["57", "58", "59", "60"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "120", "EstimateLatencyMax" : "120",
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
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage8", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage8_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.sitofp_32ns_32_4_no_dsp_1_U88", "Parent" : "56"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.fpext_32ns_64_2_no_dsp_1_U89", "Parent" : "56"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.dadd_64ns_64ns_64_5_full_dsp_1_U90", "Parent" : "56"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2_fu_51.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60", "Parent" : "50", "Child" : ["62", "63", "64", "65", "66", "67", "80", "93", "95", "97"],
		"CDFG" : "xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325579", "EstimateLatencyMax" : "325579",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_417", "Port" : "gray_mat_data44", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "93", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_408", "Port" : "gray_mat_data44", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "97", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424", "Port" : "gray_mat_data44", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424", "Port" : "blurred_mat_data45", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "20", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state20"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_1_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_2_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_3_U", "Parent" : "61"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.buf_V_4_U", "Parent" : "61"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243", "Parent" : "61", "Child" : ["68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79"],
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
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.mul_8ns_8ns_16_1_0_U105", "Parent" : "67"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_8ns_8ns_8ns_17_4_0_U106", "Parent" : "67"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_9ns_9ns_8ns_18_4_0_U107", "Parent" : "67"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_9ns_9ns_8ns_18_4_0_U108", "Parent" : "67"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_8ns_8ns_8ns_17ns_18_4_0_U109", "Parent" : "67"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U110", "Parent" : "67"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_8ns_8ns_8ns_17_4_0_U111", "Parent" : "67"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U112", "Parent" : "67"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_8ns_8ns_8ns_17_4_0_U113", "Parent" : "67"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.am_addmul_19ns_17ns_8ns_28_4_0_U114", "Parent" : "67"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_U115", "Parent" : "67"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_243.ama_addmuladd_18ns_16ns_8ns_28ns_28_4_0_U116", "Parent" : "67"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322", "Parent" : "61", "Child" : ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92"],
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
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.mul_8ns_8ns_16_1_0_U105", "Parent" : "80"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_8ns_8ns_8ns_17_4_0_U106", "Parent" : "80"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_9ns_9ns_8ns_18_4_0_U107", "Parent" : "80"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_9ns_9ns_8ns_18_4_0_U108", "Parent" : "80"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_8ns_8ns_8ns_17ns_18_4_0_U109", "Parent" : "80"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U110", "Parent" : "80"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_8ns_8ns_8ns_17_4_0_U111", "Parent" : "80"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0_U112", "Parent" : "80"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_8ns_8ns_8ns_17_4_0_U113", "Parent" : "80"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.am_addmul_19ns_17ns_8ns_28_4_0_U114", "Parent" : "80"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_U115", "Parent" : "80"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xfapplygaussian5x5_1_0_false_s_fu_322.ama_addmuladd_18ns_16ns_8ns_28ns_28_4_0_U116", "Parent" : "80"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_408", "Parent" : "61", "Child" : ["94"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Clear_Row_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "646", "EstimateLatencyMax" : "646",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Clear_Row_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_408.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_417", "Parent" : "61", "Child" : ["96"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Read_Row2_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "646", "EstimateLatencyMax" : "646",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "Read_Row2_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_417.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424", "Parent" : "61", "Child" : ["98", "99", "100", "101", "102", "103"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "657", "EstimateLatencyMax" : "657",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_95", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_106", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_106", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_95", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_95", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_97", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_97", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_108", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_108", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_97", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_97", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_121", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_146", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_99", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_99", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_110", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_99", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_99", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_120", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_145", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_144", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_123", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_95", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_122", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_108", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_108", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_97", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_97", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_108", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_108", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_121", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_146", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_110", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_99", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_99", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_110", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_120", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_145", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_119", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_144", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_123", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_148", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_144", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_119", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_144", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_120", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_145", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_99", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_99", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_120", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_145", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_110", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_121", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_146", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_97", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_97", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_121", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_146", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_108", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_108", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_95", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_95", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_122", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_106", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_106", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_123", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_123", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_148", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "tp1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tp2_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom2_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_mat_data44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_ind_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "cmp_i_i380_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_buf5_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf5_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf5_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf5_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf4_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf3_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf2_V_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_buf1_V_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Col_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U153", "Parent" : "97"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U154", "Parent" : "97"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U155", "Parent" : "97"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U156", "Parent" : "97"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.mux_53_8_1_1_U157", "Parent" : "97"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_fu_60.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_424.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.fdiv_32ns_32ns_32_10_no_dsp_1_U202", "Parent" : "50"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.faddfsub_32ns_32ns_32_5_full_dsp_1_U203", "Parent" : "50"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_311696_311696_U0.fmul_32ns_32ns_32_4_max_dsp_1_U204", "Parent" : "50"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.mat_to_stream_U0", "Parent" : "41", "Child" : ["108"],
		"CDFG" : "mat_to_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "311698", "EstimateLatencyMax" : "311698",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "50",
		"StartFifo" : "start_for_mat_to_stream_U0_U",
		"Port" : [
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["50"], "DependentChan" : "111", "DependentChanDepth" : "311696", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["115"], "DependentChan" : "153", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gray_stream3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_1_VITIS_LOOP_47_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.mat_to_stream_U0.flow_control_loop_pipe_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr_mat_data_U", "Parent" : "41"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.gray_mat_data_U", "Parent" : "41"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.blurred_mat_data_U", "Parent" : "41"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.start_for_bgr2gray_9_0_484_644_1_311696_311696_U0_U", "Parent" : "41"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.start_for_GaussianBlur_5_1_0_484_644_1_311696_311696_U0_U", "Parent" : "41"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.start_for_mat_to_stream_U0_U", "Parent" : "41"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.repack_U0", "Parent" : "0", "Child" : ["116", "117", "118", "120", "137", "139", "140", "141", "142", "143", "144", "145"],
		"CDFG" : "repack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "314602", "EstimateLatencyMax" : "401238",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_repack_U0_U",
		"Port" : [
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41","107"], "DependentChan" : "153", "DependentChanDepth" : "311296", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_205_2_fu_92", "Port" : "gray_stream3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "hdr_stream4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "149", "DependentChanDepth" : "61440", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_238_5_fu_122", "Port" : "hdr_stream4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Port" : "out_stream_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Port" : "out_stream_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Port" : "out_stream_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Port" : "out_stream_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_203_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.row_pixels_V_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.row_pixels_V_1_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_205_2_fu_92", "Parent" : "115", "Child" : ["119"],
		"CDFG" : "repack_Pipeline_VITIS_LOOP_205_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "646", "EstimateLatencyMax" : "646",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_pixels_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "row_pixels_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gray_stream3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_205_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_205_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100", "Parent" : "115", "Child" : ["121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136"],
		"CDFG" : "repack_Pipeline_VITIS_LOOP_211_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45", "EstimateLatencyMax" : "45",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_pixels_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_pixels_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "cmp39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp43", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_211_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U224", "Parent" : "120"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U225", "Parent" : "120"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U226", "Parent" : "120"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U227", "Parent" : "120"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U228", "Parent" : "120"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U229", "Parent" : "120"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U230", "Parent" : "120"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U231", "Parent" : "120"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U232", "Parent" : "120"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U233", "Parent" : "120"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U234", "Parent" : "120"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U235", "Parent" : "120"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U236", "Parent" : "120"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U237", "Parent" : "120"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.mux_21_8_1_1_U238", "Parent" : "120"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_211_3_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "120"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_238_5_fu_122", "Parent" : "115", "Child" : ["138"],
		"CDFG" : "repack_Pipeline_VITIS_LOOP_238_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hdr_stream4", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "hdr_stream4_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_238_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_238_5_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_data_V_U", "Parent" : "115"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_keep_V_U", "Parent" : "115"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_strb_V_U", "Parent" : "115"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_user_V_U", "Parent" : "115"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_last_V_U", "Parent" : "115"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_id_V_U", "Parent" : "115"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_dest_V_U", "Parent" : "115"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry110_proc_U0", "Parent" : "0",
		"CDFG" : "Block_entry110_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "frame_start", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "out_breath", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_start_out_tmp_channel_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bgr_stream_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdr_stream_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_start_c_channel_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_start_c17_channel_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.padded_stream_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gray_stream_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pad_U0_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_repack_U0_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_process_pixels_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_v2 {
		in_stream_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 2 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		in_breath {Type O LastRead -1 FirstWrite 0}
		out_breath {Type O LastRead -1 FirstWrite 0}}
	Block_entry1_proc {
		frame_start {Type O LastRead -1 FirstWrite 0}}
	unpack {
		in_stream_V_data_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 2 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 2 FirstWrite -1}
		bgr_stream1 {Type O LastRead -1 FirstWrite 2}
		hdr_stream4 {Type O LastRead -1 FirstWrite 2}
		frame_start_out_in {Type I LastRead 0 FirstWrite -1}
		frame_start_c {Type O LastRead -1 FirstWrite 2}
		frame_start_c17 {Type O LastRead -1 FirstWrite 2}}
	Block_entry14_proc {
		frame_start {Type I LastRead 0 FirstWrite -1}
		in_breath {Type O LastRead -1 FirstWrite 0}}
	pad {
		bgr_stream1 {Type I LastRead 1 FirstWrite -1}
		padded_stream2 {Type O LastRead -1 FirstWrite 1}}
	pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2 {
		row_buf_V_2 {Type O LastRead -1 FirstWrite 1}
		row_buf_V_1 {Type O LastRead -1 FirstWrite 1}
		row_buf_V {Type O LastRead -1 FirstWrite 1}
		bgr_stream1 {Type I LastRead 1 FirstWrite -1}}
	pad_Pipeline_VITIS_LOOP_79_4 {
		row_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		row_buf_V_2 {Type I LastRead 0 FirstWrite -1}
		r_2 {Type I LastRead 0 FirstWrite -1}
		padded_stream2 {Type O LastRead -1 FirstWrite 1}}
	pad_Pipeline_VITIS_LOOP_94_6 {
		row_buf_V_3 {Type O LastRead -1 FirstWrite 1}
		row_buf_V_2 {Type O LastRead -1 FirstWrite 1}
		bgr_stream1 {Type I LastRead 1 FirstWrite -1}
		trunc_ln88_1 {Type I LastRead 0 FirstWrite -1}}
	pad_Pipeline_VITIS_LOOP_102_7 {
		row_buf_V {Type I LastRead 0 FirstWrite -1}
		row_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		row_buf_V_2 {Type I LastRead 0 FirstWrite -1}
		row_buf_V_3 {Type I LastRead 0 FirstWrite -1}
		slot {Type I LastRead 0 FirstWrite -1}
		padded_stream2 {Type O LastRead -1 FirstWrite 1}}
	pad_Pipeline_VITIS_LOOP_116_9 {
		row_buf_V_2 {Type I LastRead 0 FirstWrite -1}
		row_buf_V_3 {Type I LastRead 0 FirstWrite -1}
		r_5_cast {Type I LastRead 0 FirstWrite -1}
		padded_stream2 {Type O LastRead -1 FirstWrite 1}}
	process_pixels {
		padded_stream2 {Type I LastRead 0 FirstWrite -1}
		gray_stream3 {Type O LastRead -1 FirstWrite 1}}
	stream_to_mat {
		padded_stream2 {Type I LastRead 0 FirstWrite -1}
		bgr_mat_data43 {Type O LastRead -1 FirstWrite 1}}
	bgr2gray_9_0_484_644_1_311696_311696_s {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}
	bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}
	GaussianBlur_5_1_0_484_644_1_311696_311696_s {
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 12}}
	GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1 {
		cf {Type O LastRead -1 FirstWrite 21}
		sum_1_out {Type O LastRead -1 FirstWrite 22}}
	GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2 {
		cf {Type IO LastRead 0 FirstWrite 4}
		sum {Type I LastRead 0 FirstWrite -1}
		weights_2_out {Type O LastRead -1 FirstWrite 8}
		weights_1_out {Type O LastRead -1 FirstWrite 8}
		weights_out {Type O LastRead -1 FirstWrite 8}}
	xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s {
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 12}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}
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
		weights_read_4 {Type I LastRead 0 FirstWrite -1}}
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
		weights_read_4 {Type I LastRead 0 FirstWrite -1}}
	xFGaussianFilter5x5_Pipeline_Clear_Row_Loop {
		buf_V_2 {Type O LastRead -1 FirstWrite 1}
		buf_V_1 {Type O LastRead -1 FirstWrite 0}
		buf_V {Type O LastRead -1 FirstWrite 0}
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}}
	xFGaussianFilter5x5_Pipeline_Read_Row2_Loop {
		buf_V_3 {Type O LastRead -1 FirstWrite 1}
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}}
	xFGaussianFilter5x5_Pipeline_Col_Loop {
		tp1_V_cast {Type I LastRead 0 FirstWrite -1}
		tp2_V_cast {Type I LastRead 0 FirstWrite -1}
		mid_V_cast {Type I LastRead 0 FirstWrite -1}
		bottom1_V_cast {Type I LastRead 0 FirstWrite -1}
		bottom2_V_cast {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		row_ind_V_cast {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type IO LastRead 2 FirstWrite 1}
		buf_V_3 {Type IO LastRead 2 FirstWrite 1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		cmp_i_i380_i {Type I LastRead 0 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 12}
		src_buf5_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf5_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf5_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf5_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf4_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf3_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf2_V_0_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_2_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_1_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_out {Type O LastRead -1 FirstWrite 11}
		src_buf1_V_0_out {Type O LastRead -1 FirstWrite 11}}
	mat_to_stream {
		blurred_mat_data45 {Type I LastRead 1 FirstWrite -1}
		gray_stream3 {Type O LastRead -1 FirstWrite 1}}
	repack {
		gray_stream3 {Type I LastRead 1 FirstWrite -1}
		hdr_stream4 {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	repack_Pipeline_VITIS_LOOP_205_2 {
		row_pixels_V_1 {Type O LastRead -1 FirstWrite 1}
		row_pixels_V {Type O LastRead -1 FirstWrite 1}
		gray_stream3 {Type I LastRead 1 FirstWrite -1}}
	repack_Pipeline_VITIS_LOOP_211_3 {
		row_pixels_V {Type I LastRead 1 FirstWrite -1}
		row_pixels_V_1 {Type I LastRead 1 FirstWrite -1}
		cmp39 {Type I LastRead 0 FirstWrite -1}
		cmp43 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}
	repack_Pipeline_VITIS_LOOP_238_5 {
		hdr_stream4 {Type I LastRead 1 FirstWrite -1}}
	Block_entry110_proc {
		frame_start {Type I LastRead 0 FirstWrite -1}
		out_breath {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "368644", "Max" : "625649"}
	, {"Name" : "Interval", "Min" : "368643", "Max" : "625644"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 128 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 16 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 16 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TDEST in_data 0 1 }  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 128 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 16 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 16 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 1 } } }
	out_stream_V_dest_V { axis {  { out_stream_TDEST out_data 1 1 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
	in_breath { ap_none {  { in_breath out_data 1 1 } } }
	out_breath { ap_none {  { out_breath out_data 1 1 } } }
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
