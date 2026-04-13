
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $coutputgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TDEST -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TID -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TLAST -into $return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TUSER -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TSTRB -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TKEEP -into $return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/out_stream_TDATA -into $return_group -radix hex
set in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group [add_wave_group in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return(axi_slave) -into $coutputgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/interrupt -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_BRESP -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_BREADY -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_BVALID -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_RRESP -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_RDATA -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_RREADY -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_RVALID -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_ARREADY -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_ARVALID -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_ARADDR -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_WSTRB -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_WDATA -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_WREADY -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_WVALID -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_AWREADY -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_AWVALID -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/s_axi_CTRL_AWADDR -into $in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
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
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_done -into $blocksiggroup
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_idle -into $blocksiggroup
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_ready -into $blocksiggroup
add_wave /apatb_accelerator_v2_top/AESL_inst_accelerator_v2/ap_start -into $blocksiggroup
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
add_wave /apatb_accelerator_v2_top/LENGTH_bgr_fifo_breath -into $tb_portdepth_group -radix hex
add_wave /apatb_accelerator_v2_top/LENGTH_gray_fifo_breath -into $tb_portdepth_group -radix hex
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
add_wave /apatb_accelerator_v2_top/LENGTH_pad_fifo_breath -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcoutputgroup]
add_wave /apatb_accelerator_v2_top/out_stream_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TDEST -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TID -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TLAST -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TUSER -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TSTRB -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TKEEP -into $tb_return_group -radix hex
add_wave /apatb_accelerator_v2_top/out_stream_TDATA -into $tb_return_group -radix hex
set tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group [add_wave_group in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_accelerator_v2_top/CTRL_INTERRUPT -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_BRESP -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_BREADY -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_BVALID -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_RRESP -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_RDATA -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_RREADY -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_RVALID -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_ARREADY -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_ARVALID -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_ARADDR -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_WSTRB -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_WDATA -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_WREADY -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_WVALID -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_AWREADY -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_AWVALID -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -color #ffff00 -radix hex
add_wave /apatb_accelerator_v2_top/CTRL_AWADDR -into $tb_in_breath__out_breath__bgr_fifo_breath__pad_fifo_breath__gray_fifo_breath__return_group -radix hex
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

