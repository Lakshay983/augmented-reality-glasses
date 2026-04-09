set moduleName axiStrm2xfMat_128_7_460_640_4_1
set isTopModule 0
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
set C_modelName {axiStrm2xfMat<128, 7, 460, 640, 4>.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in_V_data_V int 128 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_keep_V int 16 regular {axi_s 0 volatile  { stream_in Keep } }  }
	{ stream_in_V_strb_V int 16 regular {axi_s 0 volatile  { stream_in Strb } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ img_in_data47 int 128 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_in_data47", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ stream_in_TDATA sc_in sc_lv 128 signal 0 } 
	{ stream_in_TKEEP sc_in sc_lv 16 signal 1 } 
	{ stream_in_TSTRB sc_in sc_lv 16 signal 2 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ p_read sc_in sc_lv 32 signal 4 } 
	{ p_read1 sc_in sc_lv 32 signal 5 } 
	{ img_in_data47_din sc_out sc_lv 128 signal 6 } 
	{ img_in_data47_full_n sc_in sc_logic 1 signal 6 } 
	{ img_in_data47_write sc_out sc_logic 1 signal 6 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 4 } 
	{ p_read1_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stream_in_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "stream_in_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "img_in_data47_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "img_in_data47", "role": "din" }} , 
 	{ "name": "img_in_data47_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "full_n" }} , 
 	{ "name": "img_in_data47_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_data47", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "p_read1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "axiStrm2xfMat_128_7_460_640_4_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "73606",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "axiStrm2xfMat_128_7_460_640_4_Block_entry1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "hlsStrm2xfMat_128_7_460_640_4_73600_U0"}],
		"Port" : [
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0", "Port" : "stream_in_V_data_V"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0", "Port" : "stream_in_V_keep_V"}]},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0", "Port" : "stream_in_V_strb_V"}]},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0", "Port" : "stream_in_V_last_V"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_in_data47", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "hlsStrm2xfMat_128_7_460_640_4_73600_U0", "Port" : "img_in_data47"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axiStrm2xfMat_128_7_460_640_4_Block_entry1_proc_U0", "Parent" : "0",
		"CDFG" : "axiStrm2xfMat_128_7_460_640_4_Block_entry1_proc",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "dstMat_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "10", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "11", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_2_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0", "Parent" : "0", "Child" : ["3", "5"],
		"CDFG" : "axiStrm2hlsStrm_128_460_640_4_4_8_73600_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "73604",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1_fu_68", "Port" : "stream_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1_fu_68", "Port" : "stream_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1_fu_68", "Port" : "stream_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1_fu_68", "Port" : "stream_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "strm", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1_fu_68", "Port" : "strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0.grp_axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1_fu_68", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "73602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "loop_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in",
				"BlockSignal" : [
					{"Name" : "stream_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "stream_in"},
			{"Name" : "strm", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "strm_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_594_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0.grp_axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axiStrm2hlsStrm_128_460_640_4_4_8_73600_U0.mul_32s_32s_32_1_1_U13", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hlsStrm2xfMat_128_7_460_640_4_73600_U0", "Parent" : "0", "Child" : ["7", "9"],
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
			{"Name" : "strm", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88", "Port" : "strm", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dstMat_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "10", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dstMat_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "11", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "dstMat_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_data47", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88", "Port" : "img_in_data47", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "14", "DependentChanDepth" : "3", "DependentChanType" : "1"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hlsStrm2xfMat_128_7_460_640_4_73600_U0.grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88", "Parent" : "6", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.hlsStrm2xfMat_128_7_460_640_4_73600_U0.grp_hlsStrm2xfMat_128_7_460_640_4_73600_Pipeline_L1_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hlsStrm2xfMat_128_7_460_640_4_73600_U0.mul_32s_32s_32_1_1_U30", "Parent" : "6"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dstMat_1_c_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dstMat_2_c_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_loc_channel_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_loc_channel_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dstMat_cols_align_npc_loc_channel_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strm_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axiStrm2xfMat_128_7_460_640_4_1 {
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		img_in_data47 {Type O LastRead -1 FirstWrite 3}}
	axiStrm2xfMat_128_7_460_640_4_Block_entry1_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		dstMat_1_c {Type O LastRead -1 FirstWrite 0}
		dstMat_2_c {Type O LastRead -1 FirstWrite 0}}
	axiStrm2hlsStrm_128_460_640_4_4_8_73600_s {
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		strm {Type O LastRead -1 FirstWrite 1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	axiStrm2hlsStrm_128_460_640_4_4_8_73600_Pipeline_VITIS_LOOP_594_1 {
		loop_count {Type I LastRead 0 FirstWrite -1}
		stream_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		strm {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "7", "Max" : "73606"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "73606"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 128 } } }
	stream_in_V_keep_V { axis {  { stream_in_TKEEP in_data 0 16 } } }
	stream_in_V_strb_V { axis {  { stream_in_TSTRB in_data 0 16 } } }
	stream_in_V_last_V { axis {  { stream_in_TLAST in_data 0 1 }  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 }  { p_read_ap_vld in_vld 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 }  { p_read1_ap_vld in_vld 0 1 } } }
	img_in_data47 { ap_fifo {  { img_in_data47_din fifo_port_we 1 128 }  { img_in_data47_full_n fifo_status 0 1 }  { img_in_data47_write fifo_data 1 1 } } }
}
