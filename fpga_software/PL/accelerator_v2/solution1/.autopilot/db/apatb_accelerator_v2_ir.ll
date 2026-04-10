; ModuleID = '/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>" = type { %"struct.hls::axis<ap_uint<128>, 1, 1, 1>" }
%"struct.hls::axis<ap_uint<128>, 1, 1, 1>" = type { %"struct.ap_uint<128>", %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_accelerator_v2_ir(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(32) %in_stream, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias nonnull dereferenceable(32) %out_stream, %"struct.ap_uint<1>"* noalias nonnull %in_breath, %"struct.ap_uint<1>"* noalias nonnull %out_breath) local_unnamed_addr #0 {
entry:
  %in_stream_copy.data = alloca i128
  %in_stream_copy.keep = alloca i16
  %in_stream_copy.strb = alloca i16
  %in_stream_copy.user = alloca i1
  %in_stream_copy.last = alloca i1
  %in_stream_copy.id = alloca i1
  %in_stream_copy.dest = alloca i1
  %out_stream_copy.data = alloca i128
  %out_stream_copy.keep = alloca i16
  %out_stream_copy.strb = alloca i16
  %out_stream_copy.user = alloca i1
  %out_stream_copy.last = alloca i1
  %out_stream_copy.id = alloca i1
  %out_stream_copy.dest = alloca i1
  %in_breath_copy = alloca i1, align 512
  %out_breath_copy = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* nonnull %in_stream, i128* %in_stream_copy.data, i16* %in_stream_copy.keep, i16* %in_stream_copy.strb, i1* %in_stream_copy.user, i1* %in_stream_copy.last, i1* %in_stream_copy.id, i1* %in_stream_copy.dest, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* nonnull %out_stream, i128* %out_stream_copy.data, i16* %out_stream_copy.keep, i16* %out_stream_copy.strb, i1* %out_stream_copy.user, i1* %out_stream_copy.last, i1* %out_stream_copy.id, i1* %out_stream_copy.dest, %"struct.ap_uint<1>"* nonnull %in_breath, i1* nonnull align 512 %in_breath_copy, %"struct.ap_uint<1>"* nonnull %out_breath, i1* nonnull align 512 %out_breath_copy)
  call void @apatb_accelerator_v2_hw(i128* %in_stream_copy.data, i16* %in_stream_copy.keep, i16* %in_stream_copy.strb, i1* %in_stream_copy.user, i1* %in_stream_copy.last, i1* %in_stream_copy.id, i1* %in_stream_copy.dest, i128* %out_stream_copy.data, i16* %out_stream_copy.keep, i16* %out_stream_copy.strb, i1* %out_stream_copy.user, i1* %out_stream_copy.last, i1* %out_stream_copy.id, i1* %out_stream_copy.dest, i1* %in_breath_copy, i1* %out_breath_copy)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %in_stream, i128* %in_stream_copy.data, i16* %in_stream_copy.keep, i16* %in_stream_copy.strb, i1* %in_stream_copy.user, i1* %in_stream_copy.last, i1* %in_stream_copy.id, i1* %in_stream_copy.dest, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %out_stream, i128* %out_stream_copy.data, i16* %out_stream_copy.keep, i16* %out_stream_copy.strb, i1* %out_stream_copy.user, i1* %out_stream_copy.last, i1* %out_stream_copy.id, i1* %out_stream_copy.dest, %"struct.ap_uint<1>"* %in_breath, i1* %in_breath_copy, %"struct.ap_uint<1>"* %out_breath, i1* %out_breath_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias "unpacked"="0", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias "unpacked"="2", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7, %"struct.ap_uint<1>"* noalias readonly "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="6", i1* noalias nocapture align 512 "unpacked"="7.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>.264"(i128* %_V_data_V, i16* %_V_keep_V, i16* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>.264"(i128* %_V_data_V1, i16* %_V_keep_V2, i16* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.215.219"(i1* align 512 %3, %"struct.ap_uint<1>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.215.219"(i1* align 512 %5, %"struct.ap_uint<1>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias "unpacked"="0", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias "unpacked"="2", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7, %"struct.ap_uint<1>"* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<1>"* noalias "unpacked"="6", i1* noalias nocapture readonly align 512 "unpacked"="7.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0, i128* %_V_data_V, i16* %_V_keep_V, i16* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i128* %_V_data_V1, i16* %_V_keep_V2, i16* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %4, i1* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* noalias "unpacked"="0", i1* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_uint<1>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i1* %1 to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  store i1 %5, i1* %.01.0.05, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>.215.219"(i1* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_uint<1>"* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_uint<1>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i1* %.0.0.04 to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  store i1 %5, i1* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>.258"(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* nonnull align 512 %0, i128* %_V_data_V, i16* %_V_keep_V, i16* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>.258"(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i128* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"
  %2 = alloca i128
  %3 = alloca i16
  %4 = alloca i16
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %9 = bitcast i128* %_V_data_V to i8*
  %10 = call i1 @fpga_fifo_not_empty_16(i8* %9)
  br i1 %10, label %push, label %ret

push:                                             ; preds = %empty
  %11 = bitcast i128* %2 to i8*
  %12 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_pop_16(i8* %11, i8* %12)
  %13 = load volatile i128, i128* %2
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %15 = bitcast %"struct.ap_uint<128>"* %14 to i128*
  store i128 %13, i128* %15
  %16 = bitcast i16* %4 to i8*
  %17 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_pop_2(i8* %16, i8* %17)
  %18 = load volatile i16, i16* %4
  %19 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %20 = bitcast %"struct.ap_uint<16>"* %19 to i16*
  store i16 %18, i16* %20
  %21 = bitcast i16* %3 to i8*
  %22 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_pop_2(i8* %21, i8* %22)
  %23 = load volatile i16, i16* %3
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %25 = bitcast %"struct.ap_uint<16>"* %24 to i16*
  store i16 %23, i16* %25
  %26 = bitcast i1* %8 to i8*
  %27 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_pop_1(i8* %26, i8* %27)
  %28 = bitcast i1* %8 to i8*
  %29 = load i8, i8* %28
  %30 = trunc i8 %29 to i1
  %31 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %32 = bitcast %"struct.ap_uint<1>"* %31 to i1*
  store i1 %30, i1* %32
  %33 = bitcast i1* %7 to i8*
  %34 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %33, i8* %34)
  %35 = bitcast i1* %7 to i8*
  %36 = load i8, i8* %35
  %37 = trunc i8 %36 to i1
  %38 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %39 = bitcast %"struct.ap_uint<1>"* %38 to i1*
  store i1 %37, i1* %39
  %40 = bitcast i1* %6 to i8*
  %41 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_pop_1(i8* %40, i8* %41)
  %42 = bitcast i1* %6 to i8*
  %43 = load i8, i8* %42
  %44 = trunc i8 %43 to i1
  %45 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %46 = bitcast %"struct.ap_uint<1>"* %45 to i1*
  store i1 %44, i1* %46
  %47 = bitcast i1* %5 to i8*
  %48 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %47, i8* %48)
  %49 = bitcast i1* %5 to i8*
  %50 = load i8, i8* %49
  %51 = trunc i8 %50 to i1
  %52 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %53 = bitcast %"struct.ap_uint<1>"* %52 to i1*
  store i1 %51, i1* %53
  %54 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1 to i8*
  %55 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %54, i8* %55)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>.264"(i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>.267"(i128* %_V_data_V, i16* %_V_keep_V, i16* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>.267"(i128* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_id_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<128>"* %8 to i128*
  %10 = bitcast i128* %9 to i8*
  %11 = bitcast i128* %_V_data_V to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<16>"* %12 to i16*
  %14 = bitcast i16* %13 to i8*
  %15 = bitcast i16* %_V_keep_V to i8*
  call void @fpga_fifo_push_2(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<16>"* %16 to i16*
  %18 = bitcast i16* %17 to i8*
  %19 = bitcast i16* %_V_strb_V to i8*
  call void @fpga_fifo_push_2(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_user_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 5
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  %30 = bitcast i1* %29 to i8*
  %31 = bitcast i1* %_V_id_V to i8*
  call void @fpga_fifo_push_1(i8* %30, i8* %31)
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>", %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i32 0, i32 0, i32 6
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  %34 = bitcast i1* %33 to i8*
  %35 = bitcast i1* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %34, i8* %35)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_accelerator_v2_hw(i128*, i16*, i16*, i1*, i1*, i1*, i1*, i128*, i16*, i16*, i1*, i1*, i1*, i1*, i1*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias "unpacked"="0", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_id_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.6" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* noalias "unpacked"="2", i128* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_user_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_last_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.5" %_V_id_V6, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.6" %_V_dest_V7, %"struct.ap_uint<1>"* noalias "unpacked"="4", i1* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<1>"* noalias "unpacked"="6", i1* noalias nocapture readonly align 512 "unpacked"="7.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %0, i128* %_V_data_V, i16* %_V_keep_V, i16* %_V_strb_V, i1* %_V_user_V, i1* %_V_last_V, i1* %_V_id_V, i1* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %1, i128* %_V_data_V1, i16* %_V_keep_V2, i16* %_V_strb_V3, i1* %_V_user_V4, i1* %_V_last_V5, i1* %_V_id_V6, i1* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %2, i1* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %4, i1* align 512 %5)
  ret void
}

define void @accelerator_v2_hw_stub_wrapper(i128*, i16*, i16*, i1*, i1*, i1*, i1*, i128*, i16*, i16*, i1*, i1*, i1*, i1*, i1*, i1*) #6 {
entry:
  %16 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"
  %17 = alloca %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"
  %18 = alloca %"struct.ap_uint<1>"
  %19 = alloca %"struct.ap_uint<1>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %16, i128* %0, i16* %1, i16* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %17, i128* %7, i16* %8, i16* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"struct.ap_uint<1>"* %18, i1* %14, %"struct.ap_uint<1>"* %19, i1* %15)
  call void @accelerator_v2_hw_stub(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %16, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %17, %"struct.ap_uint<1>"* %18, %"struct.ap_uint<1>"* %19)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %16, i128* %0, i16* %1, i16* %2, i1* %3, i1* %4, i1* %5, i1* %6, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"* %17, i128* %7, i16* %8, i16* %9, i1* %10, i1* %11, i1* %12, i1* %13, %"struct.ap_uint<1>"* %18, i1* %14, %"struct.ap_uint<1>"* %19, i1* %15)
  ret void
}

declare void @accelerator_v2_hw_stub(%"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<128>, 1, 1, 1>, 0>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
