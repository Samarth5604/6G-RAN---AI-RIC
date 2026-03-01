; ModuleID = '/home/samarth/Desktop/6g_ai_ran/beamforming/beamforming/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_uint<32>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_uint<32>, 0, 0, 0, '8', false>" = type { %"struct.ap_uint<32>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }

; Function Attrs: noinline willreturn
define void @apatb_beamformer_top_ir(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull "fpga.decayed.dim.hint"="2" %in_stream, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull "fpga.decayed.dim.hint"="2" %out_stream, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %weight_stream) local_unnamed_addr #0 {
entry:
  %in_stream_copy_0.data = alloca i32, align 512
  %in_stream_copy_0.keep = alloca i4, align 512
  %in_stream_copy_0.strb = alloca i4, align 512
  %in_stream_copy_0.last = alloca i1, align 512
  %in_stream_copy_1.data = alloca i32, align 512
  %in_stream_copy_1.keep = alloca i4, align 512
  %in_stream_copy_1.strb = alloca i4, align 512
  %in_stream_copy_1.last = alloca i1, align 512
  %out_stream_copy_0.data = alloca i32, align 512
  %out_stream_copy_0.keep = alloca i4, align 512
  %out_stream_copy_0.strb = alloca i4, align 512
  %out_stream_copy_0.last = alloca i1, align 512
  %out_stream_copy_1.data = alloca i32, align 512
  %out_stream_copy_1.keep = alloca i4, align 512
  %out_stream_copy_1.strb = alloca i4, align 512
  %out_stream_copy_1.last = alloca i1, align 512
  %weight_stream_copy.data = alloca i32, align 512
  %weight_stream_copy.keep = alloca i4, align 512
  %weight_stream_copy.strb = alloca i4, align 512
  %weight_stream_copy.last = alloca i1, align 512
  %0 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %in_stream to [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]*
  %1 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %out_stream to [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]*
  call void @copy_in([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* nonnull %0, i32* nonnull align 512 %in_stream_copy_0.data, i4* nonnull align 512 %in_stream_copy_0.keep, i4* nonnull align 512 %in_stream_copy_0.strb, i1* nonnull align 512 %in_stream_copy_0.last, i32* nonnull align 512 %in_stream_copy_1.data, i4* nonnull align 512 %in_stream_copy_1.keep, i4* nonnull align 512 %in_stream_copy_1.strb, i1* nonnull align 512 %in_stream_copy_1.last, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* nonnull %1, i32* nonnull align 512 %out_stream_copy_0.data, i4* nonnull align 512 %out_stream_copy_0.keep, i4* nonnull align 512 %out_stream_copy_0.strb, i1* nonnull align 512 %out_stream_copy_0.last, i32* nonnull align 512 %out_stream_copy_1.data, i4* nonnull align 512 %out_stream_copy_1.keep, i4* nonnull align 512 %out_stream_copy_1.strb, i1* nonnull align 512 %out_stream_copy_1.last, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %weight_stream, i32* nonnull align 512 %weight_stream_copy.data, i4* nonnull align 512 %weight_stream_copy.keep, i4* nonnull align 512 %weight_stream_copy.strb, i1* nonnull align 512 %weight_stream_copy.last)
  call void @apatb_beamformer_top_hw(i32* %in_stream_copy_0.data, i4* %in_stream_copy_0.keep, i4* %in_stream_copy_0.strb, i1* %in_stream_copy_0.last, i32* %in_stream_copy_1.data, i4* %in_stream_copy_1.keep, i4* %in_stream_copy_1.strb, i1* %in_stream_copy_1.last, i32* %out_stream_copy_0.data, i4* %out_stream_copy_0.keep, i4* %out_stream_copy_0.strb, i1* %out_stream_copy_0.last, i32* %out_stream_copy_1.data, i4* %out_stream_copy_1.keep, i4* %out_stream_copy_1.strb, i1* %out_stream_copy_1.last, i32* %weight_stream_copy.data, i4* %weight_stream_copy.keep, i4* %weight_stream_copy.strb, i1* %weight_stream_copy.last)
  call void @copy_back([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %0, i32* %in_stream_copy_0.data, i4* %in_stream_copy_0.keep, i4* %in_stream_copy_0.strb, i1* %in_stream_copy_0.last, i32* %in_stream_copy_1.data, i4* %in_stream_copy_1.keep, i4* %in_stream_copy_1.strb, i1* %in_stream_copy_1.last, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %1, i32* %out_stream_copy_0.data, i4* %out_stream_copy_0.keep, i4* %out_stream_copy_0.strb, i1* %out_stream_copy_0.last, i32* %out_stream_copy_1.data, i4* %out_stream_copy_1.keep, i4* %out_stream_copy_1.strb, i1* %out_stream_copy_1.last, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %weight_stream, i32* %weight_stream_copy.data, i4* %weight_stream_copy.keep, i4* %weight_stream_copy.strb, i1* %weight_stream_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="0" %dst, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #1 {
entry:
  %0 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, null
  %1 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, i64 0, i64 %for.loop.idx2
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst.addr, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src.addr)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nocapture, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nocapture) unnamed_addr #2 {
entry:
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %2
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.36"(i32* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.4.5"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, null
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst_0, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %3)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst_1, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_in([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_0_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_0_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_0_V_last_V, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %_1_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %_1_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %_1_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01_V_data_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_01_V_keep_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_01_V_strb_V, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_01_V_last_V, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.0" %_12_V_data_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.1" %_12_V_keep_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.2" %_12_V_strb_V, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.3" %_12_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "orig.arg.no"="4", i32* noalias align 512 "orig.arg.no"="5" "unpacked"="19.0" %_V_data_V, i4* noalias align 512 "orig.arg.no"="5" "unpacked"="19.1" %_V_keep_V, i4* noalias align 512 "orig.arg.no"="5" "unpacked"="19.2" %_V_strb_V, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="19.3" %_V_last_V) #5 {
entry:
  call void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.3.6"(i32* align 512 %_0_V_data_V, i4* align 512 %_0_V_keep_V, i4* align 512 %_0_V_strb_V, i1* align 512 %_0_V_last_V, i32* align 512 %_1_V_data_V, i4* align 512 %_1_V_keep_V, i4* align 512 %_1_V_strb_V, i1* align 512 %_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.3.6"(i32* align 512 %_01_V_data_V, i4* align 512 %_01_V_keep_V, i4* align 512 %_01_V_strb_V, i1* align 512 %_01_V_last_V, i32* align 512 %_12_V_data_V, i4* align 512 %_12_V_keep_V, i4* align 512 %_12_V_strb_V, i1* align 512 %_12_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.12.13"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="0" %dst, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* "orig.arg.no"="1" "unpacked"="1.0" %src_0, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* "orig.arg.no"="1" "unpacked"="1.1" %src_1, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src_0, null
  %1 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst.addr, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src_0)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %3)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst.addr, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src_1)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_out([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_0_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_0_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_0_V_last_V, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %_1_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %_1_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %_1_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01_V_data_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_01_V_keep_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_01_V_strb_V, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_01_V_last_V, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.0" %_12_V_data_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.1" %_12_V_keep_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.2" %_12_V_strb_V, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.3" %_12_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "orig.arg.no"="4", i32* noalias align 512 "orig.arg.no"="5" "unpacked"="19.0" %_V_data_V, i4* noalias align 512 "orig.arg.no"="5" "unpacked"="19.1" %_V_keep_V, i4* noalias align 512 "orig.arg.no"="5" "unpacked"="19.2" %_V_strb_V, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="19.3" %_V_last_V) #6 {
entry:
  call void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.11.14"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %0, i32* align 512 %_0_V_data_V, i4* align 512 %_0_V_keep_V, i4* align 512 %_0_V_strb_V, i1* align 512 %_0_V_last_V, i32* align 512 %_1_V_data_V, i4* align 512 %_1_V_keep_V, i4* align 512 %_1_V_strb_V, i1* align 512 %_1_V_last_V)
  call void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.11.14"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %1, i32* align 512 %_01_V_data_V, i4* align 512 %_01_V_keep_V, i4* align 512 %_01_V_strb_V, i1* align 512 %_01_V_last_V, i32* align 512 %_12_V_data_V, i4* align 512 %_12_V_keep_V, i4* align 512 %_12_V_strb_V, i1* align 512 %_12_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.65"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %2, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.12.13.22"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="0" %dst, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* "orig.arg.no"="1" "unpacked"="1.0" %src_0, i32* "orig.arg.no"="1" "unpacked"="1.1.0" %src_1_V_data_V, i4* "orig.arg.no"="1" "unpacked"="1.1.1" %src_1_V_keep_V, i4* "orig.arg.no"="1" "unpacked"="1.1.2" %src_1_V_strb_V, i1* "orig.arg.no"="1" "unpacked"="1.1.3" %src_1_V_last_V, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src_0, null
  %1 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst.addr, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src_0)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %3)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.25"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst.addr, i32* %src_1_V_data_V, i4* %src_1_V_keep_V, i4* %src_1_V_strb_V, i1* %src_1_V_last_V)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.25"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nocapture, i32* nocapture "unpacked"="1.0" %_V_data_V, i4* nocapture "unpacked"="1.1" %_V_keep_V, i4* nocapture "unpacked"="1.2" %_V_strb_V, i1* nocapture "unpacked"="1.3" %_V_last_V) unnamed_addr #2 {
entry:
  %1 = alloca i32
  %2 = alloca i4
  %3 = alloca i4
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %1 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %1
  %11 = bitcast i4* %3 to i8*
  %12 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %11, i8* %12)
  %13 = bitcast i4* %3 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i4
  %16 = bitcast i4* %2 to i8*
  %17 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %2 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = bitcast i1* %4 to i8*
  %22 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %4 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" undef, i32 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i4 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %20, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %5
  %26 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %26, i8* %27)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.4.5.33"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i32* "orig.arg.no"="0" "unpacked"="0.1.0" %dst_1_V_data_V, i4* "orig.arg.no"="0" "unpacked"="0.1.1" %dst_1_V_keep_V, i4* "orig.arg.no"="0" "unpacked"="0.1.2" %dst_1_V_strb_V, i1* "orig.arg.no"="0" "unpacked"="0.1.3" %dst_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, null
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst_0, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %3)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.36"(i32* %dst_1_V_data_V, i4* %dst_1_V_keep_V, i4* %dst_1_V_strb_V, i1* %dst_1_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.36"(i32* nocapture "unpacked"="0.0" %_V_data_V, i4* nocapture "unpacked"="0.1" %_V_keep_V, i4* nocapture "unpacked"="0.2" %_V_strb_V, i1* nocapture "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nocapture) unnamed_addr #2 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_12(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i32 %.fca.0.0.0.0.0.extract, i32* %2
  %11 = bitcast i32* %2 to i8*
  %12 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %11, i8* %12)
  store i4 %.fca.0.1.0.0.0.extract, i4* %4
  %13 = bitcast i4* %4 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %14)
  store i4 %.fca.0.2.0.0.0.extract, i4* %3
  %15 = bitcast i4* %3 to i8*
  %16 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %17 = bitcast i1* %5 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.3.6"(i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0_V_data_V, i4* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_0_V_keep_V, i4* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_0_V_strb_V, i1* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_0_V_last_V, i32* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.0" %dst_1_V_data_V, i4* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.1" %dst_1_V_keep_V, i4* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.2" %dst_1_V_strb_V, i1* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1.3" %dst_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.4.5.33.43"(i32* %dst_0_V_data_V, i4* %dst_0_V_keep_V, i4* %dst_0_V_strb_V, i1* %dst_0_V_last_V, i32* %dst_1_V_data_V, i4* %dst_1_V_keep_V, i4* %dst_1_V_strb_V, i1* %dst_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.4.5.33.43"(i32* "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0_V_data_V, i4* "orig.arg.no"="0" "unpacked"="0.0.1" %dst_0_V_keep_V, i4* "orig.arg.no"="0" "unpacked"="0.0.2" %dst_0_V_strb_V, i1* "orig.arg.no"="0" "unpacked"="0.0.3" %dst_0_V_last_V, i32* "orig.arg.no"="0" "unpacked"="0.1.0" %dst_1_V_data_V, i4* "orig.arg.no"="0" "unpacked"="0.1.1" %dst_1_V_keep_V, i4* "orig.arg.no"="0" "unpacked"="0.1.2" %dst_1_V_strb_V, i1* "orig.arg.no"="0" "unpacked"="0.1.3" %dst_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %src, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.36"(i32* %dst_0_V_data_V, i4* %dst_0_V_keep_V, i4* %dst_0_V_strb_V, i1* %dst_0_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  %1 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %1)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.36"(i32* %dst_1_V_data_V, i4* %dst_1_V_keep_V, i4* %dst_1_V_strb_V, i1* %dst_1_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %src.addr)
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.11.14"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="0" %dst, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_0_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_0_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_0_V_last_V, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %src_1_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %src_1_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %src_1_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %src_1_V_last_V) #3 {
entry:
  %0 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.12.13.22.51"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* nonnull %dst, i32* %src_0_V_data_V, i4* %src_0_V_keep_V, i4* %src_0_V_strb_V, i1* %src_0_V_last_V, i32* %src_1_V_data_V, i4* %src_1_V_keep_V, i4* %src_1_V_strb_V, i1* %src_1_V_last_V, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @"arraycpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.12.13.22.51"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* "orig.arg.no"="0" %dst, i32* "orig.arg.no"="1" "unpacked"="1.0.0" %src_0_V_data_V, i4* "orig.arg.no"="1" "unpacked"="1.0.1" %src_0_V_keep_V, i4* "orig.arg.no"="1" "unpacked"="1.0.2" %src_0_V_strb_V, i1* "orig.arg.no"="1" "unpacked"="1.0.3" %src_0_V_last_V, i32* "orig.arg.no"="1" "unpacked"="1.1.0" %src_1_V_data_V, i4* "orig.arg.no"="1" "unpacked"="1.1.1" %src_1_V_keep_V, i4* "orig.arg.no"="1" "unpacked"="1.1.2" %src_1_V_strb_V, i1* "orig.arg.no"="1" "unpacked"="1.1.3" %src_1_V_last_V, i64 "orig.arg.no"="2" %num) #1 {
entry:
  %0 = icmp eq [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"], [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %dst, i64 0, i64 %for.loop.idx2
  %cond = icmp eq i64 %for.loop.idx2, 0
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.25"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst.addr, i32* %src_0_V_data_V, i4* %src_0_V_keep_V, i4* %src_0_V_strb_V, i1* %src_0_V_last_V)
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %1 = icmp eq i64 %for.loop.idx2, 1
  call void @llvm.assume(i1 %1)
  call void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.25"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst.addr, i32* %src_1_V_data_V, i4* %src_1_V_keep_V, i4* %src_1_V_strb_V, i1* %src_1_V_last_V)
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.65"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.25"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_beamformer_top_hw(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal void @copy_back([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %_0_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %_0_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %_0_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %_0_V_last_V, i32* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.0" %_1_V_data_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.1" %_1_V_keep_V, i4* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.2" %_1_V_strb_V, i1* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1.3" %_1_V_last_V, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* noalias "orig.arg.no"="2", i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_01_V_data_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_01_V_keep_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_01_V_strb_V, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_01_V_last_V, i32* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.0" %_12_V_data_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.1" %_12_V_keep_V, i4* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.2" %_12_V_strb_V, i1* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1.3" %_12_V_last_V, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias "orig.arg.no"="4", i32* noalias align 512 "orig.arg.no"="5" "unpacked"="19.0" %_V_data_V, i4* noalias align 512 "orig.arg.no"="5" "unpacked"="19.1" %_V_keep_V, i4* noalias align 512 "orig.arg.no"="5" "unpacked"="19.2" %_V_strb_V, i1* noalias align 512 "orig.arg.no"="5" "unpacked"="19.3" %_V_last_V) #6 {
entry:
  call void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.11.14"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %0, i32* align 512 %_0_V_data_V, i4* align 512 %_0_V_keep_V, i4* align 512 %_0_V_strb_V, i1* align 512 %_0_V_last_V, i32* align 512 %_1_V_data_V, i4* align 512 %_1_V_keep_V, i4* align 512 %_1_V_strb_V, i1* align 512 %_1_V_last_V)
  call void @"onebyonecpy_hls.p0a2class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.11.14"([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %1, i32* align 512 %_01_V_data_V, i4* align 512 %_01_V_keep_V, i4* align 512 %_01_V_strb_V, i1* align 512 %_01_V_last_V, i32* align 512 %_12_V_data_V, i4* align 512 %_12_V_keep_V, i4* align 512 %_12_V_strb_V, i1* align 512 %_12_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>.65"(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %2, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  ret void
}

define void @beamformer_top_hw_stub_wrapper(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*) #7 {
entry:
  %20 = alloca [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]
  %21 = alloca [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]
  %22 = alloca %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"
  call void @copy_out([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %20, i32* %0, i4* %1, i4* %2, i1* %3, i32* %4, i4* %5, i4* %6, i1* %7, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %21, i32* %8, i4* %9, i4* %10, i1* %11, i32* %12, i4* %13, i4* %14, i1* %15, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %22, i32* %16, i4* %17, i4* %18, i1* %19)
  %23 = bitcast [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %20 to %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"*
  %24 = bitcast [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %21 to %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"*
  call void @beamformer_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %23, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %24, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %22)
  call void @copy_in([2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %20, i32* %0, i4* %1, i4* %2, i1* %3, i32* %4, i4* %5, i4* %6, i1* %7, [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* %21, i32* %8, i4* %9, i4* %10, i1* %11, i32* %12, i4* %13, i4* %14, i1* %15, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* %22, i32* %16, i4* %17, i4* %18, i1* %19)
  ret void
}

declare void @beamformer_top_hw_stub(%"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* noalias nonnull)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { nounwind willreturn }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !13}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12}
!11 = !{!"0.0", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* null}
!12 = !{!"0.1", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* null}
!13 = !{!14, !8, !16}
!14 = !{!15}
!15 = !{!"1", [2 x %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"]* null}
!16 = !{!17, !18}
!17 = !{!"1.0", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* null}
!18 = !{!"1.1", %"class.hls::stream<hls::axis<ap_uint<32>, 0, 0, 0, '8', false>, 0>"* null}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.rotate.disable"}
