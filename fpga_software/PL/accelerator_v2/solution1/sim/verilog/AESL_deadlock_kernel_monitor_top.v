`timescale 1 ns / 1 ps

module AESL_deadlock_kernel_monitor_top ( 
    input wire kernel_monitor_clock,
    input wire kernel_monitor_reset
);
wire [3:0] axis_block_sigs;
wire [12:0] inst_idle_sigs;
wire [7:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~AESL_inst_accelerator_v2.unpack_U0.in_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~AESL_inst_accelerator_v2.unpack_U0.grp_unpack_Pipeline_VITIS_LOOP_53_2_fu_92.in_stream_TDATA_blk_n;
assign axis_block_sigs[2] = ~AESL_inst_accelerator_v2.repack_U0.out_stream_TDATA_blk_n;
assign axis_block_sigs[3] = ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_247_3_fu_142.out_stream_TDATA_blk_n;

assign inst_idle_sigs[0] = AESL_inst_accelerator_v2.unpack_U0.ap_idle;
assign inst_block_sigs[0] = (AESL_inst_accelerator_v2.unpack_U0.ap_done & ~AESL_inst_accelerator_v2.unpack_U0.ap_continue) | ~AESL_inst_accelerator_v2.unpack_U0.grp_unpack_Pipeline_VITIS_LOOP_53_2_fu_92.bgr_stream1_blk_n;
assign inst_idle_sigs[1] = AESL_inst_accelerator_v2.pad_U0.ap_idle;
assign inst_block_sigs[1] = (AESL_inst_accelerator_v2.pad_U0.ap_done & ~AESL_inst_accelerator_v2.pad_U0.ap_continue) | ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_92_1_VITIS_LOOP_93_2_fu_329.bgr_stream1_blk_n | ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_118_6_fu_350.bgr_stream1_blk_n | ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n | ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_125_7_fu_359.padded_stream2_blk_n | ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_138_9_fu_371.padded_stream2_blk_n | ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_103_4_fu_341.padded_stream2_blk_n;
assign inst_idle_sigs[2] = AESL_inst_accelerator_v2.process_pixels_U0.ap_idle;
assign inst_block_sigs[2] = (AESL_inst_accelerator_v2.process_pixels_U0.ap_done & ~AESL_inst_accelerator_v2.process_pixels_U0.ap_continue) | ~AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.padded_stream2_blk_n | ~AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.gray_stream3_blk_n;
assign inst_idle_sigs[3] = AESL_inst_accelerator_v2.repack_U0.ap_idle;
assign inst_block_sigs[3] = (AESL_inst_accelerator_v2.repack_U0.ap_done & ~AESL_inst_accelerator_v2.repack_U0.ap_continue) | ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n;
assign inst_idle_sigs[4] = AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.ap_idle;
assign inst_block_sigs[4] = (AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.ap_done & ~AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.ap_continue);
assign inst_idle_sigs[5] = AESL_inst_accelerator_v2.process_pixels_U0.bgr2gray_9_0_484_644_1_3220_3220_U0.ap_idle;
assign inst_block_sigs[5] = (AESL_inst_accelerator_v2.process_pixels_U0.bgr2gray_9_0_484_644_1_3220_3220_U0.ap_done & ~AESL_inst_accelerator_v2.process_pixels_U0.bgr2gray_9_0_484_644_1_3220_3220_U0.ap_continue);
assign inst_idle_sigs[6] = AESL_inst_accelerator_v2.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3220_3220_U0.ap_idle;
assign inst_block_sigs[6] = (AESL_inst_accelerator_v2.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3220_3220_U0.ap_done & ~AESL_inst_accelerator_v2.process_pixels_U0.GaussianBlur_5_1_0_484_644_1_3220_3220_U0.ap_continue);
assign inst_idle_sigs[7] = AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.ap_idle;
assign inst_block_sigs[7] = (AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.ap_done & ~AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.ap_continue);

assign inst_idle_sigs[8] = 1'b0;
assign inst_idle_sigs[9] = AESL_inst_accelerator_v2.unpack_U0.ap_idle;
assign inst_idle_sigs[10] = AESL_inst_accelerator_v2.unpack_U0.grp_unpack_Pipeline_VITIS_LOOP_53_2_fu_92.ap_idle;
assign inst_idle_sigs[11] = AESL_inst_accelerator_v2.repack_U0.ap_idle;
assign inst_idle_sigs[12] = AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_247_3_fu_142.ap_idle;

AESL_deadlock_idx0_monitor AESL_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

// synthesis translate_off
// logic for axis port block diagnosis
initial begin : axis_deadlock_report
integer axis_port_scan_flag;
integer fp;
integer cnt;
integer path_cnt;
    cnt = 0;
    path_cnt = 1;
    fp = $fopen("kernel_deadlock_diagnosis.rpt","a");
    $fdisplay(fp,"//// start to dump deadlock path for kernel '%m' ////");
    wait(kernel_monitor_reset == 1'b1);
        axis_port_scan_flag = 0;
    while(!kernel_block || cnt != 2)
    begin
        @(posedge kernel_monitor_clock);
        if (kernel_block)
            cnt = cnt + 1;
    end

    $display("\n//////////////////////////////////////////////////////////////////////////////");
    $fdisplay(fp,"\n//////////////////////////////////////////////////////////////////////////////");
    // find all axis ports which have no outer block
    while (axis_port_scan_flag < 4) begin
        case(axis_port_scan_flag)
            0,1:
            begin
                if (axis_block_sigs[0] == 1'b0 || axis_block_sigs[1] == 1'b0) begin
                    $display("//****************************************************************************");
                    $display("// Block PATH %d",path_cnt);
                    $display("//****************************************************************************");
                    $display("// Following axis port can not access by process 'accelerator_v2.unpack_U0' :");
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Block PATH %d",path_cnt);
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Following axis port can not access by process 'accelerator_v2.unpack_U0' :");
                    if (axis_block_sigs[0] == 1'b0) begin
                        $display("//    Port 'in_stream' can not be read");
                        $fdisplay(fp,"//    Port 'in_stream' can not be read");
                    end
                    else if (axis_block_sigs[1] == 1'b0) begin
                        $display("//    Port 'in_stream' can not be read");
                        $fdisplay(fp,"//    Port 'in_stream' can not be read");
                    end
                    report_block_path_in_unpack_U0(fp);
                    $display("//****************************************************************************");
                    $fdisplay(fp,"//****************************************************************************");
                    path_cnt = path_cnt + 1;
                end
            end
            2,3:
            begin
                if (axis_block_sigs[2] == 1'b0 || axis_block_sigs[1] == 1'b0) begin
                    $display("//****************************************************************************");
                    $display("// Block PATH %d",path_cnt);
                    $display("//****************************************************************************");
                    $display("// Following axis port can not access by process 'accelerator_v2.repack_U0' :");
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Block PATH %d",path_cnt);
                    $fdisplay(fp,"//****************************************************************************");
                    $fdisplay(fp,"// Following axis port can not access by process 'accelerator_v2.repack_U0' :");
                    if (axis_block_sigs[2] == 1'b0) begin
                        $display("//    Port 'out_stream' can not be written");
                        $fdisplay(fp,"//    Port 'out_stream' can not be written");
                    end
                    else if (axis_block_sigs[3] == 1'b0) begin
                        $display("//    Port 'out_stream' can not be written");
                        $fdisplay(fp,"//    Port 'out_stream' can not be written");
                    end
                    report_block_path_in_repack_U0(fp);
                    $display("//****************************************************************************");
                    $fdisplay(fp,"//****************************************************************************");
                    path_cnt = path_cnt + 1;
                end
            end
        endcase
        axis_port_scan_flag = axis_port_scan_flag + 1;
    end
    $display("//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//////////////////////////////////////////////////////////////////////////////\n");
    $fdisplay(fp,"//// finish dumping deadlock path for kernel '%m' ////\n");
    $fclose(fp);
end

task report_block_path_in_unpack_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (axis_block_sigs[0] == 1'b1 || axis_block_sigs[1] == 1'b0) begin
        $display("//");
        $display("//    Process 'accelerator_v2.unpack_U0' is blocked by following axis port :");
        $fdisplay(fp,"//");
        $fdisplay(fp,"//    Process 'accelerator_v2.unpack_U0' is blocked by following axis port :");
        if (axis_block_sigs[0] == 1'b1) begin
            $display("//        Port 'in_stream' does not have valid input data");
            $fdisplay(fp,"//        Port 'in_stream' does not have valid input data");
        end
        else if (axis_block_sigs[1] == 1'b1) begin
            $display("//        Port 'in_stream' does not have valid input data");
            $fdisplay(fp,"//        Port 'in_stream' does not have valid input data");
        end
    end
    else begin 
        out_proc_hit = 2'h0;
// check block with process 'accelerator_v2.pad_U0'
        if (AESL_inst_accelerator_v2.bgr_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.unpack_U0.grp_unpack_Pipeline_VITIS_LOOP_53_2_fu_92.bgr_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.bgr_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.unpack_U0.grp_unpack_Pipeline_VITIS_LOOP_53_2_fu_92.bgr_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_accelerator_v2.start_for_pad_U0_U.if_full_n == 1'b0 && AESL_inst_accelerator_v2.unpack_U0.real_start == 1'b0 && AESL_inst_accelerator_v2.unpack_U0.ap_start == 1'b1 && AESL_inst_accelerator_v2.unpack_U0.start_once_reg == 1'b0) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.pad_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.unpack_U0' is blocked by following channel which connected with process 'accelerator_v2.pad_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.unpack_U0' is blocked by following channel which connected with process 'accelerator_v2.pad_U0' :");

            if (AESL_inst_accelerator_v2.bgr_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.unpack_U0.grp_unpack_Pipeline_VITIS_LOOP_53_2_fu_92.bgr_stream1_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.bgr_stream_U' written by process 'accelerator_v2.pad_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.bgr_stream_U' written by process 'accelerator_v2.pad_U0'");
            end
            else if (AESL_inst_accelerator_v2.bgr_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.unpack_U0.grp_unpack_Pipeline_VITIS_LOOP_53_2_fu_92.bgr_stream1_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.bgr_stream_U' read by process 'accelerator_v2.pad_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.bgr_stream_U' read by process 'accelerator_v2.pad_U0'");
            end
            if (AESL_inst_accelerator_v2.start_for_pad_U0_U.if_full_n == 1'b0 && AESL_inst_accelerator_v2.unpack_U0.real_start == 1'b0 && AESL_inst_accelerator_v2.unpack_U0.ap_start == 1'b1 && AESL_inst_accelerator_v2.unpack_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'accelerator_v2.start_for_pad_U0_U' read by process 'accelerator_v2.pad_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'accelerator_v2.start_for_pad_U0_U' read by process 'accelerator_v2.pad_U0'");
            end
            report_block_path_in_pad_U0(fp);
        end

// check block with process 'accelerator_v2.repack_U0'
//  report path when block is found for process 'accelerator_v2.repack_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.unpack_U0' is blocked by following channel which connected with process 'accelerator_v2.repack_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.unpack_U0' is blocked by following channel which connected with process 'accelerator_v2.repack_U0' :");
            report_block_path_in_repack_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'accelerator_v2.unpack_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.unpack_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_pad_U0(input integer fp);
reg [3-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 3'h0;
// check block with process 'accelerator_v2.unpack_U0'
        if (AESL_inst_accelerator_v2.bgr_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_92_1_VITIS_LOOP_93_2_fu_329.bgr_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.bgr_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_92_1_VITIS_LOOP_93_2_fu_329.bgr_stream1_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_accelerator_v2.start_for_pad_U0_U.if_empty_n == 1'b0 && AESL_inst_accelerator_v2.pad_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.unpack_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.pad_U0' is blocked by following channel which connected with process 'accelerator_v2.unpack_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.pad_U0' is blocked by following channel which connected with process 'accelerator_v2.unpack_U0' :");

            if (AESL_inst_accelerator_v2.bgr_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_92_1_VITIS_LOOP_93_2_fu_329.bgr_stream1_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.bgr_stream_U' written by process 'accelerator_v2.unpack_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.bgr_stream_U' written by process 'accelerator_v2.unpack_U0'");
            end
            else if (AESL_inst_accelerator_v2.bgr_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.grp_pad_Pipeline_VITIS_LOOP_92_1_VITIS_LOOP_93_2_fu_329.bgr_stream1_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.bgr_stream_U' read by process 'accelerator_v2.unpack_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.bgr_stream_U' read by process 'accelerator_v2.unpack_U0'");
            end
            if (AESL_inst_accelerator_v2.start_for_pad_U0_U.if_empty_n == 1'b0 && AESL_inst_accelerator_v2.pad_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'accelerator_v2.start_for_pad_U0_U' written by process 'accelerator_v2.unpack_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'accelerator_v2.start_for_pad_U0_U' written by process 'accelerator_v2.unpack_U0'");
            end
            report_block_path_in_unpack_U0(fp);
        end

// check block with process 'accelerator_v2.process_pixels_U0'
        if (AESL_inst_accelerator_v2.padded_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.padded_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.process_pixels_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.pad_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.pad_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0' :");

            if (AESL_inst_accelerator_v2.padded_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.padded_stream_U' written by process 'accelerator_v2.process_pixels_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.padded_stream_U' written by process 'accelerator_v2.process_pixels_U0'");
            end
            else if (AESL_inst_accelerator_v2.padded_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.padded_stream_U' read by process 'accelerator_v2.process_pixels_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.padded_stream_U' read by process 'accelerator_v2.process_pixels_U0'");
            end
            report_block_path_in_process_pixels_U0(fp);
        end

// check block with process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0'
        if (AESL_inst_accelerator_v2.padded_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
            out_proc_hit[2] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.padded_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
            out_proc_hit[2] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0'
        if (out_proc_hit[2] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.pad_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.pad_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0' :");

            if (AESL_inst_accelerator_v2.padded_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.padded_stream_U' written by process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.padded_stream_U' written by process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0'");
            end
            else if (AESL_inst_accelerator_v2.padded_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.pad_U0.padded_stream2_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.padded_stream_U' read by process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.padded_stream_U' read by process 'accelerator_v2.process_pixels_U0.stream_to_mat_U0'");
            end
            report_block_path_in_process_pixels_U0(fp);
        end

        if (out_proc_hit == 3'h0) begin
            $display("//");
            $display("//    Process 'accelerator_v2.pad_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.pad_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_process_pixels_U0(input integer fp);
reg [2-1:0] out_proc_hit;
begin
    if (1) begin
        out_proc_hit = 2'h0;
// check block with process 'accelerator_v2.pad_U0'
        if (AESL_inst_accelerator_v2.padded_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.padded_stream2_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.padded_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.padded_stream2_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_accelerator_v2.start_for_process_pixels_U0_U.if_empty_n == 1'b0 && AESL_inst_accelerator_v2.process_pixels_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.pad_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.process_pixels_U0' is blocked by following channel which connected with process 'accelerator_v2.pad_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.process_pixels_U0' is blocked by following channel which connected with process 'accelerator_v2.pad_U0' :");

            if (AESL_inst_accelerator_v2.padded_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.padded_stream2_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.padded_stream_U' written by process 'accelerator_v2.pad_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.padded_stream_U' written by process 'accelerator_v2.pad_U0'");
            end
            else if (AESL_inst_accelerator_v2.padded_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.stream_to_mat_U0.padded_stream2_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.padded_stream_U' read by process 'accelerator_v2.pad_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.padded_stream_U' read by process 'accelerator_v2.pad_U0'");
            end
            if (AESL_inst_accelerator_v2.start_for_process_pixels_U0_U.if_empty_n == 1'b0 && AESL_inst_accelerator_v2.process_pixels_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'accelerator_v2.start_for_process_pixels_U0_U' written by process 'accelerator_v2.pad_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'accelerator_v2.start_for_process_pixels_U0_U' written by process 'accelerator_v2.pad_U0'");
            end
            report_block_path_in_pad_U0(fp);
        end

// check block with process 'accelerator_v2.repack_U0'
        if (AESL_inst_accelerator_v2.gray_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.gray_stream3_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.gray_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.gray_stream3_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        if (AESL_inst_accelerator_v2.start_for_repack_U0_U.if_full_n == 1'b0 && AESL_inst_accelerator_v2.process_pixels_U0.real_start == 1'b0 && AESL_inst_accelerator_v2.process_pixels_U0.ap_start == 1'b1 && AESL_inst_accelerator_v2.process_pixels_U0.start_once_reg == 1'b0) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.repack_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.process_pixels_U0' is blocked by following channel which connected with process 'accelerator_v2.repack_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.process_pixels_U0' is blocked by following channel which connected with process 'accelerator_v2.repack_U0' :");

            if (AESL_inst_accelerator_v2.gray_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.gray_stream3_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.gray_stream_U' written by process 'accelerator_v2.repack_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.gray_stream_U' written by process 'accelerator_v2.repack_U0'");
            end
            else if (AESL_inst_accelerator_v2.gray_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.process_pixels_U0.mat_to_stream_U0.gray_stream3_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.gray_stream_U' read by process 'accelerator_v2.repack_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.gray_stream_U' read by process 'accelerator_v2.repack_U0'");
            end
            if (AESL_inst_accelerator_v2.start_for_repack_U0_U.if_full_n == 1'b0 && AESL_inst_accelerator_v2.process_pixels_U0.real_start == 1'b0 && AESL_inst_accelerator_v2.process_pixels_U0.ap_start == 1'b1 && AESL_inst_accelerator_v2.process_pixels_U0.start_once_reg == 1'b0) begin
                $display("//        full output start propagation FIFO 'accelerator_v2.start_for_repack_U0_U' read by process 'accelerator_v2.repack_U0'");
                $fdisplay(fp,"//        full output start propagation FIFO 'accelerator_v2.start_for_repack_U0_U' read by process 'accelerator_v2.repack_U0'");
            end
            report_block_path_in_repack_U0(fp);
        end

        if (out_proc_hit == 2'h0) begin
            $display("//");
            $display("//    Process 'accelerator_v2.process_pixels_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.process_pixels_U0' is in idle status");
        end
    end

end
endtask

task report_block_path_in_repack_U0(input integer fp);
reg [3-1:0] out_proc_hit;
begin
    if (axis_block_sigs[2] == 1'b1 || axis_block_sigs[1] == 1'b0) begin
        $display("//");
        $display("//    Process 'accelerator_v2.repack_U0' is blocked by following axis port :");
        $fdisplay(fp,"//");
        $fdisplay(fp,"//    Process 'accelerator_v2.repack_U0' is blocked by following axis port :");
        if (axis_block_sigs[2] == 1'b1) begin
            $display("//        Port 'out_stream' is not ready");
            $fdisplay(fp,"//        Port 'out_stream' is not ready");
        end
        else if (axis_block_sigs[3] == 1'b1) begin
            $display("//        Port 'out_stream' is not ready");
            $fdisplay(fp,"//        Port 'out_stream' is not ready");
        end
    end
    else begin 
        out_proc_hit = 3'h0;
// check block with process 'accelerator_v2.process_pixels_U0'
        if (AESL_inst_accelerator_v2.gray_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.gray_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
        if (AESL_inst_accelerator_v2.start_for_repack_U0_U.if_empty_n == 1'b0 && AESL_inst_accelerator_v2.repack_U0.ap_idle == 1'b1) begin
            out_proc_hit[0] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.process_pixels_U0'
        if (out_proc_hit[0] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.repack_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.repack_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0' :");

            if (AESL_inst_accelerator_v2.gray_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.gray_stream_U' written by process 'accelerator_v2.process_pixels_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.gray_stream_U' written by process 'accelerator_v2.process_pixels_U0'");
            end
            else if (AESL_inst_accelerator_v2.gray_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.gray_stream_U' read by process 'accelerator_v2.process_pixels_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.gray_stream_U' read by process 'accelerator_v2.process_pixels_U0'");
            end
            if (AESL_inst_accelerator_v2.start_for_repack_U0_U.if_empty_n == 1'b0 && AESL_inst_accelerator_v2.repack_U0.ap_idle == 1'b1) begin
                $display("//        missing 'ap_start' from start propagation FIFO 'accelerator_v2.start_for_repack_U0_U' written by process 'accelerator_v2.process_pixels_U0'");
                $fdisplay(fp,"//        missing 'ap_start' from start propagation FIFO 'accelerator_v2.start_for_repack_U0_U' written by process 'accelerator_v2.process_pixels_U0'");
            end
            report_block_path_in_process_pixels_U0(fp);
        end

// check block with process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0'
        if (AESL_inst_accelerator_v2.gray_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
        else if (AESL_inst_accelerator_v2.gray_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
            out_proc_hit[1] = 1'b1;
        end
//  report path when block is found for process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0'
        if (out_proc_hit[1] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.repack_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.repack_U0' is blocked by following channel which connected with process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0' :");

            if (AESL_inst_accelerator_v2.gray_stream_U.if_empty_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
                $display("//        empty input FIFO 'accelerator_v2.gray_stream_U' written by process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0'");
                $fdisplay(fp,"//        empty input FIFO 'accelerator_v2.gray_stream_U' written by process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0'");
            end
            else if (AESL_inst_accelerator_v2.gray_stream_U.if_full_n == 1'b0 && ~AESL_inst_accelerator_v2.repack_U0.grp_repack_Pipeline_VITIS_LOOP_224_2_fu_134.gray_stream3_blk_n == 1'b1) begin
                $display("//        full output FIFO 'accelerator_v2.gray_stream_U' read by process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0'");
                $fdisplay(fp,"//        full output FIFO 'accelerator_v2.gray_stream_U' read by process 'accelerator_v2.process_pixels_U0.mat_to_stream_U0'");
            end
            report_block_path_in_process_pixels_U0(fp);
        end

// check block with process 'accelerator_v2.unpack_U0'
//  report path when block is found for process 'accelerator_v2.unpack_U0'
        if (out_proc_hit[2] == 1'b1) begin
            $display("//");
            $display("//    Process 'accelerator_v2.repack_U0' is blocked by following channel which connected with process 'accelerator_v2.unpack_U0' :");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.repack_U0' is blocked by following channel which connected with process 'accelerator_v2.unpack_U0' :");
            report_block_path_in_unpack_U0(fp);
        end

        if (out_proc_hit == 3'h0) begin
            $display("//");
            $display("//    Process 'accelerator_v2.repack_U0' is in idle status");
            $fdisplay(fp,"//");
            $fdisplay(fp,"//    Process 'accelerator_v2.repack_U0' is in idle status");
        end
    end

end
endtask

// synthesis translate_on

initial begin : trigger_axis_deadlock
reg block_delay;
    block_delay = 0;
    while(1) begin
        @(posedge kernel_monitor_clock);
    if (kernel_block == 1'b1 && block_delay == 1'b0)
    $display("find kernel block.");
    block_delay = kernel_block;
    end
end

endmodule
