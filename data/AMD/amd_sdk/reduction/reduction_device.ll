; ModuleID = 'reduction/reduction.cpp'
source_filename = "reduction/reduction.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nounwind
define protected amdgpu_kernel void @_Z23atomic_reduction_kernelPiS_i(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %5 = zext i32 %4 to i64
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %7 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %8 = bitcast i8 addrspace(4)* %7 to i16 addrspace(4)*
  %9 = load i16, i16 addrspace(4)* %8, align 4, !range !4, !invariant.load !5
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds i8, i8 addrspace(4)* %6, i64 12
  %12 = bitcast i8 addrspace(4)* %11 to i32 addrspace(4)*
  %13 = load i32, i32 addrspace(4)* %12, align 4, !tbaa !6
  %14 = zext i16 %9 to i64
  %15 = mul nuw nsw i64 %14, %5
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !15
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %2
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = udiv i32 %13, %10
  %23 = mul i32 %22, %10
  %24 = icmp ugt i32 %13, %23
  %25 = zext i1 %24 to i32
  %26 = add i32 %22, %25
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, %14
  br label %32

29:                                               ; preds = %32, %3
  %30 = phi i32 [ 0, %3 ], [ %39, %32 ]
  %31 = atomicrmw add i32 addrspace(1)* %1, i32 %30 syncscope("agent-one-as") monotonic, align 4
  ret void

32:                                               ; preds = %21, %32
  %33 = phi i64 [ %18, %21 ], [ %40, %32 ]
  %34 = phi i32 [ 0, %21 ], [ %39, %32 ]
  %35 = shl i64 %33, 32
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %36
  %38 = load i32, i32 addrspace(1)* %37, align 4, !tbaa !16
  %39 = add nsw i32 %38, %34
  %40 = add nsw i64 %28, %36
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %41, %2
  br i1 %42, label %32, label %29, !llvm.loop !20
}

; Function Attrs: mustprogress nofree norecurse nounwind
define protected amdgpu_kernel void @_Z24atomic_reduction_kernel2PiS_i(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %5 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !4, !invariant.load !5
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds i8, i8 addrspace(4)* %5, i64 12
  %11 = bitcast i8 addrspace(4)* %10 to i32 addrspace(4)*
  %12 = load i32, i32 addrspace(4)* %11, align 4, !tbaa !6
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !15
  %14 = mul i32 %4, %9
  %15 = add i32 %14, %13
  %16 = shl nsw i32 %15, 4
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = shl nuw nsw i16 %8, 4
  %20 = zext i16 %19 to i32
  %21 = udiv i32 %12, %9
  %22 = mul i32 %21, %9
  %23 = icmp ugt i32 %12, %22
  %24 = zext i1 %23 to i32
  %25 = add i32 %21, %24
  %26 = mul i32 %25, %20
  br label %30

27:                                               ; preds = %30, %3
  %28 = phi i32 [ 0, %3 ], [ %111, %30 ]
  %29 = atomicrmw add i32 addrspace(1)* %1, i32 %28 syncscope("agent-one-as") monotonic, align 4
  ret void

30:                                               ; preds = %18, %30
  %31 = phi i32 [ %16, %18 ], [ %112, %30 ]
  %32 = phi i32 [ 0, %18 ], [ %111, %30 ]
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %33
  %35 = load i32, i32 addrspace(1)* %34, align 4, !tbaa !16
  %36 = or i32 %31, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %37
  %39 = load i32, i32 addrspace(1)* %38, align 4, !tbaa !16
  %40 = or i32 %31, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %41
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !16
  %44 = or i32 %31, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %45
  %47 = load i32, i32 addrspace(1)* %46, align 4, !tbaa !16
  %48 = or i32 %31, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %49
  %51 = load i32, i32 addrspace(1)* %50, align 4, !tbaa !16
  %52 = or i32 %31, 5
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %53
  %55 = load i32, i32 addrspace(1)* %54, align 4, !tbaa !16
  %56 = or i32 %31, 6
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %57
  %59 = load i32, i32 addrspace(1)* %58, align 4, !tbaa !16
  %60 = or i32 %31, 7
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %61
  %63 = load i32, i32 addrspace(1)* %62, align 4, !tbaa !16
  %64 = or i32 %31, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %65
  %67 = load i32, i32 addrspace(1)* %66, align 4, !tbaa !16
  %68 = or i32 %31, 9
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %69
  %71 = load i32, i32 addrspace(1)* %70, align 4, !tbaa !16
  %72 = or i32 %31, 10
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %73
  %75 = load i32, i32 addrspace(1)* %74, align 4, !tbaa !16
  %76 = or i32 %31, 11
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %77
  %79 = load i32, i32 addrspace(1)* %78, align 4, !tbaa !16
  %80 = or i32 %31, 12
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %81
  %83 = load i32, i32 addrspace(1)* %82, align 4, !tbaa !16
  %84 = or i32 %31, 13
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %85
  %87 = load i32, i32 addrspace(1)* %86, align 4, !tbaa !16
  %88 = or i32 %31, 14
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %89
  %91 = load i32, i32 addrspace(1)* %90, align 4, !tbaa !16
  %92 = or i32 %31, 15
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %93
  %95 = load i32, i32 addrspace(1)* %94, align 4, !tbaa !16
  %96 = add i32 %35, %32
  %97 = add i32 %96, %39
  %98 = add i32 %97, %43
  %99 = add i32 %98, %47
  %100 = add i32 %99, %51
  %101 = add i32 %100, %55
  %102 = add i32 %101, %59
  %103 = add i32 %102, %63
  %104 = add i32 %103, %67
  %105 = add i32 %104, %71
  %106 = add i32 %105, %75
  %107 = add i32 %106, %79
  %108 = add i32 %107, %83
  %109 = add i32 %108, %87
  %110 = add i32 %109, %91
  %111 = add i32 %110, %95
  %112 = add i32 %26, %31
  %113 = icmp slt i32 %112, %2
  br i1 %113, label %30, label %27, !llvm.loop !22
}

; Function Attrs: mustprogress nofree norecurse nounwind
define protected amdgpu_kernel void @_Z24atomic_reduction_kernel3PiS_i(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %5 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !4, !invariant.load !5
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds i8, i8 addrspace(4)* %5, i64 12
  %11 = bitcast i8 addrspace(4)* %10 to i32 addrspace(4)*
  %12 = load i32, i32 addrspace(4)* %11, align 4, !tbaa !6
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !15
  %14 = mul i32 %4, %9
  %15 = add i32 %14, %13
  %16 = shl nsw i32 %15, 2
  %17 = icmp slt i32 %16, %2
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = shl nuw nsw i16 %8, 2
  %20 = zext i16 %19 to i32
  %21 = udiv i32 %12, %9
  %22 = mul i32 %21, %9
  %23 = icmp ugt i32 %12, %22
  %24 = zext i1 %23 to i32
  %25 = add i32 %21, %24
  %26 = mul i32 %25, %20
  br label %30

27:                                               ; preds = %30, %3
  %28 = phi i32 [ 0, %3 ], [ %51, %30 ]
  %29 = atomicrmw add i32 addrspace(1)* %1, i32 %28 syncscope("agent-one-as") monotonic, align 4
  ret void

30:                                               ; preds = %18, %30
  %31 = phi i32 [ %16, %18 ], [ %52, %30 ]
  %32 = phi i32 [ 0, %18 ], [ %51, %30 ]
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %33
  %35 = load i32, i32 addrspace(1)* %34, align 4, !tbaa !16
  %36 = or i32 %31, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %37
  %39 = load i32, i32 addrspace(1)* %38, align 4, !tbaa !16
  %40 = or i32 %31, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %41
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !16
  %44 = or i32 %31, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %45
  %47 = load i32, i32 addrspace(1)* %46, align 4, !tbaa !16
  %48 = add i32 %35, %32
  %49 = add i32 %48, %39
  %50 = add i32 %49, %43
  %51 = add i32 %50, %47
  %52 = add i32 %26, %31
  %53 = icmp slt i32 %52, %2
  br i1 %53, label %30, label %27, !llvm.loop !23
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

attributes #0 = { mustprogress nofree norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i16 1, i16 1025}
!5 = !{}
!6 = !{!7, !11, i64 12}
!7 = !{!"hsa_kernel_dispatch_packet_s", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !13, i64 40, !12, i64 48, !14, i64 56}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"hsa_signal_s", !12, i64 0}
!15 = !{i32 0, i32 1024}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C++ TBAA"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
