; ModuleID = 'hip/b+tree/kernel/kernel_gpu_cuda_wrapper.cu'
source_filename = "hip/b+tree/kernel/kernel_gpu_cuda_wrapper.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }
%struct.record = type { i32 }

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @findK(i64 %0, %struct.knode addrspace(1)* nocapture readonly %1, i64 %2, %struct.record addrspace(1)* nocapture readonly %3, i64 addrspace(1)* nocapture %4, i64 addrspace(1)* nocapture %5, i32 addrspace(1)* nocapture readonly %6, %struct.record addrspace(1)* nocapture writeonly %7) local_unnamed_addr #0 {
  %9 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %10 = zext i32 %9 to i64
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %12 = icmp sgt i64 %0, 0
  %13 = sext i32 %11 to i64
  br i1 %12, label %14, label %45

14:                                               ; preds = %8
  %15 = getelementptr inbounds i64, i64 addrspace(1)* %4, i64 %13
  %16 = getelementptr inbounds i32, i32 addrspace(1)* %6, i64 %13
  %17 = add nuw nsw i64 %10, 1
  %18 = getelementptr inbounds i64, i64 addrspace(1)* %5, i64 %13
  %19 = icmp eq i32 %9, 0
  br label %20

20:                                               ; preds = %14, %41
  %21 = phi i32 [ 0, %14 ], [ %42, %41 ]
  %22 = load i64, i64 addrspace(1)* %15, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %22, i32 2, i64 %10
  %24 = load i32, i32 addrspace(1)* %23, align 4, !tbaa !10, !amdgpu.noclobber !12
  %25 = load i32, i32 addrspace(1)* %16, align 4, !tbaa !10, !amdgpu.noclobber !12
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %22, i32 2, i64 %17
  %29 = load i32, i32 addrspace(1)* %28, align 4, !tbaa !10, !amdgpu.noclobber !12
  %30 = icmp sgt i32 %29, %25
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i64, i64 addrspace(1)* %18, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %32, i32 1, i64 %10
  %34 = load i32, i32 addrspace(1)* %33, align 4, !tbaa !10, !amdgpu.noclobber !12
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %35, %2
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i64 %35, i64 addrspace(1)* %18, align 8, !tbaa !6
  br label %38

38:                                               ; preds = %31, %37, %27, %20
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %19, label %39, label %41

39:                                               ; preds = %38
  %40 = load i64, i64 addrspace(1)* %18, align 8, !tbaa !6
  store i64 %40, i64 addrspace(1)* %15, align 8, !tbaa !6
  br label %41

41:                                               ; preds = %39, %38
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %42 = add nuw nsw i32 %21, 1
  %43 = zext i32 %42 to i64
  %44 = icmp slt i64 %43, %0
  br i1 %44, label %20, label %45, !llvm.loop !13

45:                                               ; preds = %41, %8
  %46 = getelementptr inbounds i64, i64 addrspace(1)* %4, i64 %13
  %47 = load i64, i64 addrspace(1)* %46, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %47, i32 2, i64 %10
  %49 = load i32, i32 addrspace(1)* %48, align 4, !tbaa !10, !amdgpu.noclobber !12
  %50 = getelementptr inbounds i32, i32 addrspace(1)* %6, i64 %13
  %51 = load i32, i32 addrspace(1)* %50, align 4, !tbaa !10, !amdgpu.noclobber !12
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %47, i32 1, i64 %10
  %55 = load i32, i32 addrspace(1)* %54, align 4, !tbaa !10, !amdgpu.noclobber !12
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.record, %struct.record addrspace(1)* %3, i64 %56, i32 0
  %58 = load i32, i32 addrspace(1)* %57, align 4, !tbaa !15, !amdgpu.noclobber !12
  %59 = getelementptr inbounds %struct.record, %struct.record addrspace(1)* %7, i64 %13, i32 0
  store i32 %58, i32 addrspace(1)* %59, align 4, !tbaa !15
  br label %60

60:                                               ; preds = %53, %45
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
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
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !11, i64 0}
!16 = !{!"_ZTS6record", !11, i64 0}
