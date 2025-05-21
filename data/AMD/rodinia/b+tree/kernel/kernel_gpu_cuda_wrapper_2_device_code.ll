; ModuleID = 'hip/b+tree/kernel/kernel_gpu_cuda_wrapper_2.cu'
source_filename = "hip/b+tree/kernel/kernel_gpu_cuda_wrapper_2.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.knode = type { i32, [257 x i32], [257 x i32], i8, i32 }

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @findRangeK(i64 %0, %struct.knode addrspace(1)* nocapture readonly %1, i64 %2, i64 addrspace(1)* nocapture %3, i64 addrspace(1)* nocapture %4, i64 addrspace(1)* nocapture %5, i64 addrspace(1)* nocapture %6, i32 addrspace(1)* nocapture readonly %7, i32 addrspace(1)* nocapture readonly %8, i32 addrspace(1)* nocapture %9, i32 addrspace(1)* nocapture writeonly %10) local_unnamed_addr #0 {
  %12 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %13 = zext i32 %12 to i64
  %14 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %15 = icmp sgt i64 %0, 0
  %16 = sext i32 %14 to i64
  br i1 %15, label %17, label %67

17:                                               ; preds = %11
  %18 = getelementptr inbounds i64, i64 addrspace(1)* %3, i64 %16
  %19 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %16
  %20 = add nuw nsw i64 %13, 1
  %21 = getelementptr inbounds i64, i64 addrspace(1)* %4, i64 %16
  %22 = getelementptr inbounds i64, i64 addrspace(1)* %5, i64 %16
  %23 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %16
  %24 = getelementptr inbounds i64, i64 addrspace(1)* %6, i64 %16
  %25 = icmp eq i32 %12, 0
  br label %26

26:                                               ; preds = %17, %63
  %27 = phi i32 [ 0, %17 ], [ %64, %63 ]
  %28 = load i64, i64 addrspace(1)* %18, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %28, i32 2, i64 %13
  %30 = load i32, i32 addrspace(1)* %29, align 4, !tbaa !10, !amdgpu.noclobber !12
  %31 = load i32, i32 addrspace(1)* %19, align 4, !tbaa !10, !amdgpu.noclobber !12
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %28, i32 2, i64 %20
  %35 = load i32, i32 addrspace(1)* %34, align 4, !tbaa !10, !amdgpu.noclobber !12
  %36 = icmp sgt i32 %35, %31
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %28, i32 1, i64 %13
  %39 = load i32, i32 addrspace(1)* %38, align 4, !tbaa !10, !amdgpu.noclobber !12
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %40, %2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i64 %40, i64 addrspace(1)* %21, align 8, !tbaa !6
  br label %43

43:                                               ; preds = %37, %42, %33, %26
  %44 = load i64, i64 addrspace(1)* %22, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %44, i32 2, i64 %13
  %46 = load i32, i32 addrspace(1)* %45, align 4, !tbaa !10, !amdgpu.noclobber !12
  %47 = load i32, i32 addrspace(1)* %23, align 4, !tbaa !10, !amdgpu.noclobber !12
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %44, i32 2, i64 %20
  %51 = load i32, i32 addrspace(1)* %50, align 4, !tbaa !10, !amdgpu.noclobber !12
  %52 = icmp sgt i32 %51, %47
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %44, i32 1, i64 %13
  %55 = load i32, i32 addrspace(1)* %54, align 4, !tbaa !10, !amdgpu.noclobber !12
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %56, %2
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i64 %56, i64 addrspace(1)* %24, align 8, !tbaa !6
  br label %59

59:                                               ; preds = %53, %58, %49, %43
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %25, label %60, label %63

60:                                               ; preds = %59
  %61 = load i64, i64 addrspace(1)* %21, align 8, !tbaa !6
  store i64 %61, i64 addrspace(1)* %18, align 8, !tbaa !6
  %62 = load i64, i64 addrspace(1)* %24, align 8, !tbaa !6
  store i64 %62, i64 addrspace(1)* %22, align 8, !tbaa !6
  br label %63

63:                                               ; preds = %60, %59
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %64 = add nuw nsw i32 %27, 1
  %65 = zext i32 %64 to i64
  %66 = icmp slt i64 %65, %0
  br i1 %66, label %26, label %67, !llvm.loop !13

67:                                               ; preds = %63, %11
  %68 = getelementptr inbounds i64, i64 addrspace(1)* %3, i64 %16
  %69 = load i64, i64 addrspace(1)* %68, align 8, !tbaa !6
  %70 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %69, i32 2, i64 %13
  %71 = load i32, i32 addrspace(1)* %70, align 4, !tbaa !10, !amdgpu.noclobber !12
  %72 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %16
  %73 = load i32, i32 addrspace(1)* %72, align 4, !tbaa !10, !amdgpu.noclobber !12
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = getelementptr inbounds i32, i32 addrspace(1)* %9, i64 %16
  %77 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %69, i32 1, i64 %13
  %78 = load i32, i32 addrspace(1)* %77, align 4, !tbaa !10, !amdgpu.noclobber !12
  store i32 %78, i32 addrspace(1)* %76, align 4, !tbaa !10
  br label %79

79:                                               ; preds = %75, %67
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %80 = getelementptr inbounds i64, i64 addrspace(1)* %5, i64 %16
  %81 = load i64, i64 addrspace(1)* %80, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %81, i32 2, i64 %13
  %83 = load i32, i32 addrspace(1)* %82, align 4, !tbaa !10
  %84 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %16
  %85 = load i32, i32 addrspace(1)* %84, align 4, !tbaa !10
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.knode, %struct.knode addrspace(1)* %1, i64 %81, i32 1, i64 %13
  %89 = load i32, i32 addrspace(1)* %88, align 4, !tbaa !10
  %90 = getelementptr inbounds i32, i32 addrspace(1)* %9, i64 %16
  %91 = load i32, i32 addrspace(1)* %90, align 4, !tbaa !10
  %92 = add i32 %89, 1
  %93 = sub i32 %92, %91
  %94 = getelementptr inbounds i32, i32 addrspace(1)* %10, i64 %16
  store i32 %93, i32 addrspace(1)* %94, align 4, !tbaa !10
  br label %95

95:                                               ; preds = %87, %79
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
