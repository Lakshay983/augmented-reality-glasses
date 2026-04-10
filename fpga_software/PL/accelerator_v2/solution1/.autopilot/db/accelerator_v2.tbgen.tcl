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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "10", "11", "41", "86", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127"],
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
			{"ID" : "86", "Name" : "repack_U0"},
			{"ID" : "117", "Name" : "Block_entry110_proc_U0"}],
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
					{"ID" : "86", "SubInstance" : "repack_U0", "Port" : "out_stream_V_data_V"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "repack_U0", "Port" : "out_stream_V_keep_V"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "repack_U0", "Port" : "out_stream_V_strb_V"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "repack_U0", "Port" : "out_stream_V_user_V"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "repack_U0", "Port" : "out_stream_V_last_V"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "repack_U0", "Port" : "out_stream_V_id_V"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "repack_U0", "Port" : "out_stream_V_dest_V"}]},
			{"Name" : "in_breath", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Block_entry14_proc_U0", "Port" : "in_breath"}]},
			{"Name" : "out_breath", "Type" : "None", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "117", "SubInstance" : "Block_entry110_proc_U0", "Port" : "out_breath"}]}]},
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
			{"Name" : "frame_start", "Type" : "None", "Direction" : "O", "DependentProc" : ["2"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
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
			{"Name" : "bgr_stream1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "119", "DependentChanDepth" : "1288", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bgr_stream1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hdr_stream4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["86"], "DependentChan" : "120", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "hdr_stream4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "frame_start_out_in", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "frame_start_c", "Type" : "None", "Direction" : "O", "DependentProc" : ["117"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "frame_start_c17", "Type" : "None", "Direction" : "O", "DependentProc" : ["10"], "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "1"}],
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
			{"Name" : "frame_start", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "1"},
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
			{"Name" : "bgr_stream1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "119", "DependentChanDepth" : "1288", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2_fu_329", "Port" : "bgr_stream1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "21", "SubInstance" : "grp_pad_Pipeline_VITIS_LOOP_94_6_fu_350", "Port" : "bgr_stream1", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["41","42"], "DependentChan" : "123", "DependentChanDepth" : "1932", "DependentChanType" : "0",
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
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0", "Parent" : "0", "Child" : ["42", "44", "50", "78", "80", "81", "82", "83", "84", "85"],
		"CDFG" : "process_pixels",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "323650", "EstimateLatencyMax" : "323650",
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
			{"ID" : "78", "Name" : "mat_to_stream_U0"}],
		"Port" : [
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "123", "DependentChanDepth" : "1932", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "stream_to_mat_U0", "Port" : "padded_stream2"}]},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["86"], "DependentChan" : "124", "DependentChanDepth" : "3220", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "mat_to_stream_U0", "Port" : "gray_stream3"}]}]},
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
			{"Name" : "padded_stream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["11"], "DependentChan" : "123", "DependentChanDepth" : "1932", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "padded_stream2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["44"], "DependentChan" : "80", "DependentChanDepth" : "3872", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bgr_mat_data43_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_30_1_VITIS_LOOP_31_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.stream_to_mat_U0.flow_control_loop_pipe_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0", "Parent" : "41", "Child" : ["45"],
		"CDFG" : "bgr2gray_9_0_484_644_1_3872_3872_s",
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
		"StartFifo" : "start_for_bgr2gray_9_0_484_644_1_3872_3872_U0_U",
		"Port" : [
			{"Name" : "bgr_mat_data43", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["42"], "DependentChan" : "80", "DependentChanDepth" : "3872", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop_fu_38", "Port" : "bgr_mat_data43", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["50"], "DependentChan" : "81", "DependentChanDepth" : "3872", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop_fu_38", "Port" : "gray_mat_data44", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "rowloop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.grp_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop_fu_38", "Parent" : "44", "Child" : ["46", "47", "48", "49"],
		"CDFG" : "bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop",
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
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.grp_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop_fu_38.mul_mul_8ns_14ns_22_4_1_U68", "Parent" : "45"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.grp_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop_fu_38.mac_muladd_8ns_12ns_22ns_22_4_1_U69", "Parent" : "45"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.grp_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop_fu_38.mac_muladd_8ns_15ns_22ns_23_4_1_U70", "Parent" : "45"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.grp_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop_fu_38.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0", "Parent" : "41", "Child" : ["51"],
		"CDFG" : "GaussianBlur_5_1_0_484_644_1_3872_3872_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "323643", "EstimateLatencyMax" : "323643",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "44",
		"StartFifo" : "start_for_GaussianBlur_5_1_0_484_644_1_3872_3872_U0_U",
		"Port" : [
			{"Name" : "gray_mat_data44", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["44"], "DependentChan" : "81", "DependentChanDepth" : "3872", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16", "Port" : "gray_mat_data44", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["78"], "DependentChan" : "82", "DependentChanDepth" : "3872", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16", "Port" : "blurred_mat_data45", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16", "Parent" : "50", "Child" : ["52", "53", "54", "55", "56", "57", "62", "67", "69", "71"],
		"CDFG" : "xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "323642", "EstimateLatencyMax" : "323642",
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
					{"ID" : "67", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_370", "Port" : "gray_mat_data44", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "71", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389", "Port" : "gray_mat_data44", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "69", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_382", "Port" : "gray_mat_data44", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389", "Port" : "blurred_mat_data45", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}],
		"Loop" : [
			{"Name" : "Row_Loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state17"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.buf_V_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.buf_V_1_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.buf_V_2_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.buf_V_3_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.buf_V_4_U", "Parent" : "51"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_217", "Parent" : "51", "Child" : ["58", "59", "60", "61"],
		"CDFG" : "xfapplygaussian5x5_1_0_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
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
			{"Name" : "src_buf5_V_read_8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_217.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U84", "Parent" : "57"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_217.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U85", "Parent" : "57"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_217.mac_muladd_8ns_7ns_17s_18_4_0_U86", "Parent" : "57"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_217.mac_muladd_24ns_7ns_30s_32_4_0_U87", "Parent" : "57"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_290", "Parent" : "51", "Child" : ["63", "64", "65", "66"],
		"CDFG" : "xfapplygaussian5x5_1_0_false_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
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
			{"Name" : "src_buf5_V_read_8", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_290.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U84", "Parent" : "62"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_290.ama_addmuladd_8ns_8ns_7ns_18s_19_4_0_U85", "Parent" : "62"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_290.mac_muladd_8ns_7ns_17s_18_4_0_U86", "Parent" : "62"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xfapplygaussian5x5_1_0_false_s_fu_290.mac_muladd_24ns_7ns_30s_32_4_0_U87", "Parent" : "62"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_370", "Parent" : "51", "Child" : ["68"],
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
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop_fu_370.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_382", "Parent" : "51", "Child" : ["70"],
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
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop_fu_382.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389", "Parent" : "51", "Child" : ["72", "73", "74", "75", "76", "77"],
		"CDFG" : "xFGaussianFilter5x5_Pipeline_Col_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "655", "EstimateLatencyMax" : "655",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_90", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_117", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_92", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_92", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_116", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_141", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_105", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_105", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_115", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_140", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_96", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_107", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_96", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_96", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_139", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_98", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_109", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_98", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_143", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "1", "FromAddress" : "buf_V_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_117", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "3", "ToAddress" : "buf_V_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_92", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "1", "FromAddress" : "buf_V_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_116", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_141", "ToFinalSV" : "3", "ToAddress" : "buf_V_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_105", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_105", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_105", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_105", "FromFinalSV" : "1", "FromAddress" : "buf_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_115", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_140", "ToFinalSV" : "3", "ToAddress" : "buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_107", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_107", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_96", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_107", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_107", "FromFinalSV" : "1", "FromAddress" : "buf_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_139", "ToFinalSV" : "3", "ToAddress" : "buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_109", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_109", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_98", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_109", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_109", "FromFinalSV" : "1", "FromAddress" : "buf_V_4_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_143", "ToFinalSV" : "3", "ToAddress" : "buf_V_4_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_139", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_96", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_96", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_139", "FromFinalSV" : "3", "FromAddress" : "buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_107", "ToFinalSV" : "1", "ToAddress" : "buf_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_115", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_140", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_115", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_140", "FromFinalSV" : "3", "FromAddress" : "buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_105", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_105", "ToFinalSV" : "1", "ToAddress" : "buf_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_116", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_141", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_92", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_116", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_141", "FromFinalSV" : "3", "FromAddress" : "buf_V_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "1", "ToAddress" : "buf_V_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_117", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_117", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "3", "FromAddress" : "buf_V_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "1", "ToAddress" : "buf_V_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_143", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_98", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_143", "FromFinalSV" : "3", "FromAddress" : "buf_V_4_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_109", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "1", "ToAddress" : "buf_V_4_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "1", "Pragma" : "(/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include/imgproc/xf_gaussian_filter.hpp:624:22)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "tp1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "tp2_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "mid_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom1_V_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "bottom2_V_cast", "Type" : "None", "Direction" : "I"},
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U116", "Parent" : "71"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U117", "Parent" : "71"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U118", "Parent" : "71"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U119", "Parent" : "71"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.mux_53_8_1_1_U120", "Parent" : "71"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.grp_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_fu_16.grp_xFGaussianFilter5x5_Pipeline_Col_Loop_fu_389.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.mat_to_stream_U0", "Parent" : "41", "Child" : ["79"],
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
			{"Name" : "blurred_mat_data45", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["50"], "DependentChan" : "82", "DependentChanDepth" : "3872", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "blurred_mat_data45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["86"], "DependentChan" : "124", "DependentChanDepth" : "3220", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "gray_stream3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_46_1_VITIS_LOOP_47_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.mat_to_stream_U0.flow_control_loop_pipe_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.bgr_mat_data_U", "Parent" : "41"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.gray_mat_data_U", "Parent" : "41"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.blurred_mat_data_U", "Parent" : "41"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.start_for_bgr2gray_9_0_484_644_1_3872_3872_U0_U", "Parent" : "41"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.start_for_GaussianBlur_5_1_0_484_644_1_3872_3872_U0_U", "Parent" : "41"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.process_pixels_U0.start_for_mat_to_stream_U0_U", "Parent" : "41"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.repack_U0", "Parent" : "0", "Child" : ["87", "88", "89", "91", "108", "110", "111", "112", "113", "114", "115", "116"],
		"CDFG" : "repack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "315086", "EstimateLatencyMax" : "401238",
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
			{"Name" : "gray_stream3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["41","78"], "DependentChan" : "124", "DependentChanDepth" : "3220", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_206_2_fu_92", "Port" : "gray_stream3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "hdr_stream4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "120", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "108", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_239_5_fu_122", "Port" : "hdr_stream4", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Port" : "out_stream_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Port" : "out_stream_V_user_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Port" : "out_stream_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Port" : "out_stream_V_id_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_204_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state10"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.row_pixels_V_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.row_pixels_V_1_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_206_2_fu_92", "Parent" : "86", "Child" : ["90"],
		"CDFG" : "repack_Pipeline_VITIS_LOOP_206_2",
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
			{"Name" : "VITIS_LOOP_206_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_206_2_fu_92.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100", "Parent" : "86", "Child" : ["92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107"],
		"CDFG" : "repack_Pipeline_VITIS_LOOP_212_3",
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
			{"Name" : "VITIS_LOOP_212_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U174", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U175", "Parent" : "91"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U176", "Parent" : "91"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U177", "Parent" : "91"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U178", "Parent" : "91"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U179", "Parent" : "91"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U180", "Parent" : "91"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U181", "Parent" : "91"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U182", "Parent" : "91"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U183", "Parent" : "91"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U184", "Parent" : "91"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U185", "Parent" : "91"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U186", "Parent" : "91"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U187", "Parent" : "91"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.mux_21_8_1_1_U188", "Parent" : "91"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_239_5_fu_122", "Parent" : "86", "Child" : ["109"],
		"CDFG" : "repack_Pipeline_VITIS_LOOP_239_5",
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
			{"Name" : "VITIS_LOOP_239_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.repack_U0.grp_repack_Pipeline_VITIS_LOOP_239_5_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_data_V_U", "Parent" : "86"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_keep_V_U", "Parent" : "86"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_strb_V_U", "Parent" : "86"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_user_V_U", "Parent" : "86"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_last_V_U", "Parent" : "86"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_id_V_U", "Parent" : "86"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.repack_U0.regslice_both_out_stream_V_dest_V_U", "Parent" : "86"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_entry110_proc_U0", "Parent" : "0",
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
			{"Name" : "frame_start", "Type" : "None", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "out_breath", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_start_out_tmp_channel_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bgr_stream_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdr_stream_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_start_c_channel_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.frame_start_c17_channel_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.padded_stream_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gray_stream_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_pad_U0_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_repack_U0_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_process_pixels_U0_U", "Parent" : "0"}]}


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
	bgr2gray_9_0_484_644_1_3872_3872_s {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}
	bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop {
		bgr_mat_data43 {Type I LastRead 1 FirstWrite -1}
		gray_mat_data44 {Type O LastRead -1 FirstWrite 6}}
	GaussianBlur_5_1_0_484_644_1_3872_3872_s {
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 10}}
	xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s {
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 10}}
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
		src_buf5_V_read_8 {Type I LastRead 0 FirstWrite -1}}
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
		src_buf5_V_read_8 {Type I LastRead 0 FirstWrite -1}}
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
		gray_mat_data44 {Type I LastRead 1 FirstWrite -1}
		row_ind_V_cast {Type I LastRead 0 FirstWrite -1}
		buf_V_4 {Type IO LastRead 2 FirstWrite 1}
		buf_V_3 {Type IO LastRead 2 FirstWrite 1}
		buf_V_2 {Type IO LastRead 2 FirstWrite 1}
		buf_V_1 {Type IO LastRead 2 FirstWrite 1}
		buf_V {Type IO LastRead 2 FirstWrite 1}
		cmp_i_i380_i {Type I LastRead 0 FirstWrite -1}
		blurred_mat_data45 {Type O LastRead -1 FirstWrite 10}
		src_buf5_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf5_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf5_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf5_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf4_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf3_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf2_V_0_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_2_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_1_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_out {Type O LastRead -1 FirstWrite 9}
		src_buf1_V_0_out {Type O LastRead -1 FirstWrite 9}}
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
	repack_Pipeline_VITIS_LOOP_206_2 {
		row_pixels_V_1 {Type O LastRead -1 FirstWrite 1}
		row_pixels_V {Type O LastRead -1 FirstWrite 1}
		gray_stream3 {Type I LastRead 1 FirstWrite -1}}
	repack_Pipeline_VITIS_LOOP_212_3 {
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
	repack_Pipeline_VITIS_LOOP_239_5 {
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
