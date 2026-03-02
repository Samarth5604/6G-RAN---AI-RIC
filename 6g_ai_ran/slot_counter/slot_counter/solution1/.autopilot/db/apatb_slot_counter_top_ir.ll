; ModuleID = '/home/samarth/Desktop/6g_ai_ran/slot_counter/slot_counter/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<7>" = type { %"struct.ap_int_base<7, false>" }
%"struct.ap_int_base<7, false>" = type { %"struct.ssdm_int<7, false>" }
%"struct.ssdm_int<7, false>" = type { i7 }

; Function Attrs: noinline willreturn
define void @apatb_slot_counter_top_ir(%"struct.ap_uint<4>"* noalias nocapture nonnull dereferenceable(1) %symbol_num, %"struct.ap_uint<7>"* noalias nocapture nonnull dereferenceable(1) %slot_num, %"struct.ap_uint<1>"* nocapture readonly %gpio_override, %"struct.ap_uint<4>"* nocapture readonly %gpio_symbol_num, %"struct.ap_uint<7>"* nocapture readonly %gpio_slot_num, %"struct.ap_uint<1>"* nocapture readonly %sync_req, %"struct.ap_uint<4>"* nocapture readonly %sync_symbol, %"struct.ap_uint<7>"* nocapture readonly %sync_slot, %"struct.ap_uint<4>"* noalias nocapture nonnull dereferenceable(1) %symbol_num_out, %"struct.ap_uint<7>"* noalias nocapture nonnull dereferenceable(1) %slot_num_out) local_unnamed_addr #0 {
entry:
  %symbol_num_copy = alloca i4, align 512
  %slot_num_copy = alloca i7, align 512
  %symbol_num_out_copy = alloca i4, align 512
  %slot_num_out_copy = alloca i7, align 512
  call fastcc void @copy_in(%"struct.ap_uint<4>"* nonnull %symbol_num, i4* nonnull align 512 %symbol_num_copy, %"struct.ap_uint<7>"* nonnull %slot_num, i7* nonnull align 512 %slot_num_copy, %"struct.ap_uint<4>"* nonnull %symbol_num_out, i4* nonnull align 512 %symbol_num_out_copy, %"struct.ap_uint<7>"* nonnull %slot_num_out, i7* nonnull align 512 %slot_num_out_copy)
  call void @apatb_slot_counter_top_hw(i4* %symbol_num_copy, i7* %slot_num_copy, %"struct.ap_uint<1>"* %gpio_override, %"struct.ap_uint<4>"* %gpio_symbol_num, %"struct.ap_uint<7>"* %gpio_slot_num, %"struct.ap_uint<1>"* %sync_req, %"struct.ap_uint<4>"* %sync_symbol, %"struct.ap_uint<7>"* %sync_slot, i4* %symbol_num_out_copy, i7* %slot_num_out_copy)
  call void @copy_back(%"struct.ap_uint<4>"* %symbol_num, i4* %symbol_num_copy, %"struct.ap_uint<7>"* %slot_num, i7* %slot_num_copy, %"struct.ap_uint<4>"* %symbol_num_out, i4* %symbol_num_out_copy, %"struct.ap_uint<7>"* %slot_num_out, i7* %slot_num_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_uint<4>"* noalias readonly "unpacked"="0", i4* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_uint<7>"* noalias readonly "unpacked"="2", i7* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_uint<4>"* noalias readonly "unpacked"="4", i4* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_uint<7>"* noalias readonly "unpacked"="6", i7* noalias nocapture align 512 "unpacked"="7.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.16"(i4* align 512 %1, %"struct.ap_uint<4>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>"(i7* align 512 %3, %"struct.ap_uint<7>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.16"(i4* align 512 %5, %"struct.ap_uint<4>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>"(i7* align 512 %7, %"struct.ap_uint<7>"* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_uint<4>"* noalias "unpacked"="0", i4* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<7>"* noalias "unpacked"="2", i7* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<4>"* noalias "unpacked"="4", i4* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<7>"* noalias "unpacked"="6", i7* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* %0, i4* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>.7"(%"struct.ap_uint<7>"* %2, i7* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* %4, i4* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>.7"(%"struct.ap_uint<7>"* %6, i7* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>.7"(%"struct.ap_uint<7>"* noalias "unpacked"="0" %dst, i7* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<7>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<7>", %"struct.ap_uint<7>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i7* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i7
  store i7 %3, i7* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>"(i7* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<7>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<7>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<7>", %"struct.ap_uint<7>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i7* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i7
  store i7 %3, i7* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>.16"(i4* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<4>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<4>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src.0.0.03 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* noalias "unpacked"="0" %dst, i4* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<4>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<4>", %"struct.ap_uint<4>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i4* %src to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i4
  store i4 %3, i4* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_slot_counter_top_hw(i4*, i7*, %"struct.ap_uint<1>"*, %"struct.ap_uint<4>"*, %"struct.ap_uint<7>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<4>"*, %"struct.ap_uint<7>"*, i4*, i7*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_uint<4>"* noalias "unpacked"="0", i4* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_uint<7>"* noalias "unpacked"="2", i7* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_uint<4>"* noalias "unpacked"="4", i4* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_uint<7>"* noalias "unpacked"="6", i7* noalias nocapture readonly align 512 "unpacked"="7.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* %0, i4* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>.7"(%"struct.ap_uint<7>"* %2, i7* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<4>"(%"struct.ap_uint<4>"* %4, i4* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<7>.7"(%"struct.ap_uint<7>"* %6, i7* align 512 %7)
  ret void
}

define void @slot_counter_top_hw_stub_wrapper(i4*, i7*, %"struct.ap_uint<1>"*, %"struct.ap_uint<4>"*, %"struct.ap_uint<7>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<4>"*, %"struct.ap_uint<7>"*, i4*, i7*) #4 {
entry:
  %10 = alloca %"struct.ap_uint<4>"
  %11 = alloca %"struct.ap_uint<7>"
  %12 = alloca %"struct.ap_uint<4>"
  %13 = alloca %"struct.ap_uint<7>"
  call void @copy_out(%"struct.ap_uint<4>"* %10, i4* %0, %"struct.ap_uint<7>"* %11, i7* %1, %"struct.ap_uint<4>"* %12, i4* %8, %"struct.ap_uint<7>"* %13, i7* %9)
  call void @slot_counter_top_hw_stub(%"struct.ap_uint<4>"* %10, %"struct.ap_uint<7>"* %11, %"struct.ap_uint<1>"* %2, %"struct.ap_uint<4>"* %3, %"struct.ap_uint<7>"* %4, %"struct.ap_uint<1>"* %5, %"struct.ap_uint<4>"* %6, %"struct.ap_uint<7>"* %7, %"struct.ap_uint<4>"* %12, %"struct.ap_uint<7>"* %13)
  call void @copy_in(%"struct.ap_uint<4>"* %10, i4* %0, %"struct.ap_uint<7>"* %11, i7* %1, %"struct.ap_uint<4>"* %12, i4* %8, %"struct.ap_uint<7>"* %13, i7* %9)
  ret void
}

declare void @slot_counter_top_hw_stub(%"struct.ap_uint<4>"* noalias nocapture nonnull, %"struct.ap_uint<7>"* noalias nocapture nonnull, %"struct.ap_uint<1>"* nocapture readonly, %"struct.ap_uint<4>"* nocapture readonly, %"struct.ap_uint<7>"* nocapture readonly, %"struct.ap_uint<1>"* nocapture readonly, %"struct.ap_uint<4>"* nocapture readonly, %"struct.ap_uint<7>"* nocapture readonly, %"struct.ap_uint<4>"* noalias nocapture nonnull, %"struct.ap_uint<7>"* noalias nocapture nonnull)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
