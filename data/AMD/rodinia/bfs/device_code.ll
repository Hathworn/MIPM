; ModuleID = 'bfs.cu'
source_filename = "bfs.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.Node = type { i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z6KernelP4NodePiPbS2_S2_S1_i(%struct.Node addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, i8 addrspace(1)* nocapture %2, i8 addrspace(1)* nocapture writeonly %3, i8 addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %9 = shl i32 %8, 9
  %10 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %11 = add i32 %9, %10
  %12 = icmp slt i32 %11, %6
  br i1 %12, label %13, label %50

13:                                               ; preds = %7
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i8, i8 addrspace(1)* %2, i64 %14
  %16 = load i8, i8 addrspace(1)* %15, align 1, !tbaa !6, !range !10, !amdgpu.noclobber !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %13
  store i8 0, i8 addrspace(1)* %15, align 1, !tbaa !6
  %19 = getelementptr inbounds %struct.Node, %struct.Node addrspace(1)* %0, i64 %14, i32 0
  %20 = getelementptr inbounds %struct.Node, %struct.Node addrspace(1)* %0, i64 %14, i32 1
  %21 = load i32, i32 addrspace(1)* %20, align 4, !tbaa !12
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32, i32 addrspace(1)* %19, align 4, !tbaa !15
  %25 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %14
  br label %26

26:                                               ; preds = %23, %44
  %27 = phi i32 [ %24, %23 ], [ %45, %44 ]
  %28 = phi i32 [ %21, %23 ], [ %46, %44 ]
  %29 = phi i32 [ %24, %23 ], [ %47, %44 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %30
  %32 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !16
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8 addrspace(1)* %4, i64 %33
  %35 = load i8, i8 addrspace(1)* %34, align 1, !tbaa !6, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = getelementptr inbounds i8, i8 addrspace(1)* %3, i64 %33
  %39 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %33
  %40 = load i32, i32 addrspace(1)* %25, align 4, !tbaa !16
  %41 = add nsw i32 %40, 1
  store i32 %41, i32 addrspace(1)* %39, align 4, !tbaa !16
  store i8 1, i8 addrspace(1)* %38, align 1, !tbaa !6
  %42 = load i32, i32 addrspace(1)* %20, align 4, !tbaa !12
  %43 = load i32, i32 addrspace(1)* %19, align 4, !tbaa !15
  br label %44

44:                                               ; preds = %37, %26
  %45 = phi i32 [ %43, %37 ], [ %27, %26 ]
  %46 = phi i32 [ %42, %37 ], [ %28, %26 ]
  %47 = add nsw i32 %29, 1
  %48 = add nsw i32 %45, %46
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %26, label %50, !llvm.loop !17

50:                                               ; preds = %44, %18, %13, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z7Kernel2PbS_S_S_i(i8 addrspace(1)* nocapture writeonly %0, i8 addrspace(1)* nocapture %1, i8 addrspace(1)* nocapture writeonly %2, i8 addrspace(1)* nocapture writeonly %3, i32 %4) local_unnamed_addr #1 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = shl i32 %6, 9
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %9 = add i32 %7, %8
  %10 = icmp slt i32 %9, %4
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i8, i8 addrspace(1)* %1, i64 %12
  %14 = load i8, i8 addrspace(1)* %13, align 1, !tbaa !6, !range !10, !amdgpu.noclobber !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8 addrspace(1)* %2, i64 %12
  %18 = getelementptr inbounds i8, i8 addrspace(1)* %0, i64 %12
  store i8 1, i8 addrspace(1)* %18, align 1, !tbaa !6
  store i8 1, i8 addrspace(1)* %17, align 1, !tbaa !6
  store i8 1, i8 addrspace(1)* %3, align 1, !tbaa !6
  store i8 0, i8 addrspace(1)* %13, align 1, !tbaa !6
  br label %19

19:                                               ; preds = %16, %11, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{i32 0, i32 1024}
!6 = !{!7, !7, i64 0}
!7 = !{!"bool", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!13, !14, i64 4}
!13 = !{!"_ZTS4Node", !14, i64 0, !14, i64 4}
!14 = !{!"int", !8, i64 0}
!15 = !{!13, !14, i64 0}
!16 = !{!14, !14, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
