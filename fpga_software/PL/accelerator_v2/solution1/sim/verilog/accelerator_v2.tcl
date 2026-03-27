
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $coutputgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_breath -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_breath -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TDEST -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TID -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TLAST -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TUSER -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TSTRB -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TKEEP -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TDATA -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $cinputgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TDEST -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TID -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TLAST -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TUSER -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TSTRB -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TKEEP -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/in_stream_TDATA -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_start -into $blocksiggroup
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_done -into $blocksiggroup
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_ready -into $blocksiggroup
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_accelerator_v2_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_accelerator_v2_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_accelerator_v2_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_breath -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_stream_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_stream_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_stream_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_stream_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_stream_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_stream_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_in_stream_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_breath -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_stream_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_stream_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_stream_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_stream_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_stream_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_stream_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_out_stream_V_user_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcoutputgroup]
add_wave /apatb_accelerator_v2_top/out_stream_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/out_breath -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/in_breath -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TDEST -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TID -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TLAST -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TUSER -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TSTRB -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TKEEP -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TDATA -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcinputgroup]
add_wave /apatb_accelerator_v2_top/in_stream_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TDEST -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TID -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TLAST -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TUSER -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TSTRB -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TKEEP -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/in_stream_TDATA -into $tb_return_group -radix hex
save_wave_config accelerator_v2.wcfg
run all
quit

