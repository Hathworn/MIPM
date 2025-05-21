; ModuleID = 'hip/bfs/bfs.hip.cu'
source_filename = "hip/bfs/bfs.hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.Node = type { i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z6KernelP4NodePiPbS2_S2_S1_i(%struct.Node addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, i8 addrspace(1)* nocapture %2, i8 addrspace(1)* nocapture writeonly %3, i8 addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 9
  %11 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %10, %12
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, %6
  br i1 %15, label %16, label %54

16:                                               ; preds = %7
  %17 = shl i64 %13, 32
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds i8, i8 addrspace(1)* %2, i64 %18
  %20 = load i8, i8 addrspace(1)* %19, align 1, !tbaa !6, !range !10, !amdgpu.noclobber !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %16
  store i8 0, i8 addrspace(1)* %19, align 1, !tbaa !6
  %23 = getelementptr inbounds %struct.Node, %struct.Node addrspace(1)* %0, i64 %18, i32 0
  %24 = getelementptr inbounds %struct.Node, %struct.Node addrspace(1)* %0, i64 %18, i32 1
  %25 = load i32, i32 addrspace(1)* %24, align 4, !tbaa !12
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load i32, i32 addrspace(1)* %23, align 4, !tbaa !15
  %29 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %18
  br label %30

30:                                               ; preds = %27, %48
  %31 = phi i32 [ %28, %27 ], [ %49, %48 ]
  %32 = phi i32 [ %25, %27 ], [ %50, %48 ]
  %33 = phi i32 [ %28, %27 ], [ %51, %48 ]
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %34
  %36 = load i32, i32 addrspace(1)* %35, align 4, !tbaa !16
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8 addrspace(1)* %4, i64 %37
  %39 = load i8, i8 addrspace(1)* %38, align 1, !tbaa !6, !range !10
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = getelementptr inbounds i8, i8 addrspace(1)* %3, i64 %37
  %43 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %37
  %44 = load i32, i32 addrspace(1)* %29, align 4, !tbaa !16
  %45 = add nsw i32 %44, 1
  store i32 %45, i32 addrspace(1)* %43, align 4, !tbaa !16
  store i8 1, i8 addrspace(1)* %42, align 1, !tbaa !6
  %46 = load i32, i32 addrspace(1)* %24, align 4, !tbaa !12
  %47 = load i32, i32 addrspace(1)* %23, align 4, !tbaa !15
  br label %48

48:                                               ; preds = %41, %30
  %49 = phi i32 [ %47, %41 ], [ %31, %30 ]
  %50 = phi i32 [ %46, %41 ], [ %32, %30 ]
  %51 = add nsw i32 %33, 1
  %52 = add nsw i32 %49, %50
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %30, label %54, !llvm.loop !17

54:                                               ; preds = %48, %22, %16, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z7Kernel2PbS_S_S_i(i8 addrspace(1)* nocapture writeonly %0, i8 addrspace(1)* nocapture %1, i8 addrspace(1)* nocapture writeonly %2, i8 addrspace(1)* nocapture writeonly %3, i32 %4) local_unnamed_addr #1 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 9
  %9 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %8, %10
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, %4
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = shl i64 %11, 32
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds i8, i8 addrspace(1)* %1, i64 %16
  %18 = load i8, i8 addrspace(1)* %17, align 1, !tbaa !6, !range !10, !amdgpu.noclobber !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, i8 addrspace(1)* %2, i64 %16
  %22 = getelementptr inbounds i8, i8 addrspace(1)* %0, i64 %16
  store i8 1, i8 addrspace(1)* %22, align 1, !tbaa !6
  store i8 1, i8 addrspace(1)* %21, align 1, !tbaa !6
  store i8 1, i8 addrspace(1)* %3, align 1, !tbaa !6
  store i8 0, i8 addrspace(1)* %17, align 1, !tbaa !6
  br label %23

23:                                               ; preds = %20, %14, %5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
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
