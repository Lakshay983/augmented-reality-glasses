
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [14:0] inst_idle_sigs;
wire [10:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~unpack_U0.in_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.out_stream_TDATA_blk_n;

assign inst_idle_sigs[0] = Block_entry1_proc_U0.ap_idle;
assign inst_block_sigs[0] = (Block_entry1_proc_U0.ap_done & ~Block_entry1_proc_U0.ap_continue);
assign inst_idle_sigs[1] = unpack_U0.ap_idle;
assign inst_block_sigs[1] = (unpack_U0.ap_done & ~unpack_U0.ap_continue) | ~unpack_U0.bgr_stream1_blk_n | ~unpack_U0.hdr_stream4_blk_n;
assign inst_idle_sigs[2] = Block_entry14_proc_U0.ap_idle;
assign inst_block_sigs[2] = (Block_entry14_proc_U0.ap_done & ~Block_entry14_proc_U0.ap_continue);
assign inst_idle_sigs[3] = pad_U0.ap_idle;
assign inst_block_sigs[3] = (pad_U0.ap_done & ~pad_U0.ap_continue) | ~pad_U0.grp_pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2_fu_329.bgr_stream1_blk_n | ~pad_U0.grp_pad_Pipeline_VITIS_LOOP_94_6_fu_350.bgr_stream1_blk_n | ~pad_U0.padded_stream2_blk_n | ~pad_U0.grp_pad_Pipeline_VITIS_LOOP_116_9_fu_371.padded_stream2_blk_n | ~pad_U0.grp_pad_Pipeline_VITIS_LOOP_79_4_fu_341.padded_stream2_blk_n | ~pad_U0.grp_pad_Pipeline_VITIS_LOOP_102_7_fu_359.padded_stream2_blk_n;
assign inst_idle_sigs[4] = process_pixels_U0.ap_idle;
assign inst_block_sigs[4] = (process_pixels_U0.ap_done & ~process_pixels_U0.ap_continue) | ~process_pixels_U0.stream_to_mat_U0.padded_stream2_blk_n | ~process_pixels_U0.mat_to_stream_U0.gray_stream3_blk_n;
assign inst_idle_sigs[5] = repack_U0.ap_idle;
assign inst_block_sigs[5] = (repack_U0.ap_done & ~repack_U0.ap_continue) | ~repack_U0.grp_repack_Pipeline_VITIS_LOOP_206_2_fu_92.gray_stream3_blk_n | ~repack_U0.grp_repack_Pipeline_VITIS_LOOP_239_5_fu_122.hdr_stream4_blk_n;
assign inst_idle_sigs[6] = Block_entry110_proc_U0.ap_idle;
assign inst_block_sigs[6] = (Block_entry110_proc_U0.ap_done & ~Block_entry110_proc_U0.ap_continue);
assign inst_idle_sigs[7] = process_pixels_U0.stream_to_mat_U0.ap_idle;
assign inst_block_sigs[7] = (process_pixels_U0.stream_to_mat_U0.ap_done & ~process_pixels_U0.stream_to_mat_U0.ap_continue);
assign inst_idle_sigs[8] = process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.ap_idle;
assign inst_block_sigs[8] = (process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.ap_done & ~process_pixels_U0.bgr2gray_9_0_484_644_1_3872_3872_U0.ap_continue);
assign inst_idle_sigs[9] = process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.ap_idle;
assign inst_block_sigs[9] = (process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.ap_done & ~process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3872_3872_U0.ap_continue);
assign inst_idle_sigs[10] = process_pixels_U0.mat_to_stream_U0.ap_idle;
assign inst_block_sigs[10] = (process_pixels_U0.mat_to_stream_U0.ap_done & ~process_pixels_U0.mat_to_stream_U0.ap_continue);

assign inst_idle_sigs[11] = 1'b0;
assign inst_idle_sigs[12] = unpack_U0.ap_idle;
assign inst_idle_sigs[13] = repack_U0.ap_idle;
assign inst_idle_sigs[14] = repack_U0.grp_repack_Pipeline_VITIS_LOOP_212_3_fu_100.ap_idle;

accelerator_v2_hls_deadlock_idx0_monitor accelerator_v2_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
