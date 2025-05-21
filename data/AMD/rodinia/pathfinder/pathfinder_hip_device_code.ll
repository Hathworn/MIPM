; ModuleID = 'hip/pathfinder/pathfinder_hip.cu'
source_filename = "hip/pathfinder/pathfinder_hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ14dynproc_kerneliPiS_S_iiiiE4prev = internal unnamed_addr addrspace(3) global [256 x i32] undef, align 16
@_ZZ14dynproc_kerneliPiS_S_iiiiE6result = internal unnamed_addr addrspace(3) global [256 x i32] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z14dynproc_kerneliPiS_S_iiii(i32 %0, i32 addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readonly %2, i32 addrspace(1)* nocapture writeonly %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #0 {
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %11 = mul i32 %0, -2
  %12 = add i32 %11, 256
  %13 = mul nsw i32 %12, %9
  %14 = sub nsw i32 %13, %7
  %15 = add nsw i32 %14, 255
  %16 = add nsw i32 %14, %10
  %17 = icmp slt i32 %14, 0
  %18 = sub nsw i32 0, %14
  %19 = select i1 %17, i32 %18, i32 0
  %20 = icmp slt i32 %15, %4
  %21 = sub i32 %4, %14
  %22 = add i32 %21, -1
  %23 = select i1 %20, i32 255, i32 %22
  %24 = add nsw i32 %10, -1
  %25 = add nuw nsw i32 %10, 1
  %26 = tail call i32 @llvm.smax.i32(i32 %24, i32 %19)
  %27 = tail call i32 @llvm.smin.i32(i32 %25, i32 %23)
  %28 = icmp sgt i32 %19, %10
  %29 = icmp slt i32 %23, %10
  %30 = icmp sgt i32 %16, -1
  %31 = icmp slt i32 %16, %4
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %38

33:                                               ; preds = %8
  %34 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ14dynproc_kerneliPiS_S_iiiiE4prev, i32 0, i32 %10
  %35 = zext i32 %16 to i64
  %36 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %35
  %37 = load i32, i32 addrspace(1)* %36, align 4, !tbaa !6, !amdgpu.noclobber !10
  store i32 %37, i32 addrspace(3)* %34, align 4, !tbaa !6
  br label %38

38:                                               ; preds = %33, %8
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %39 = icmp sgt i32 %0, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %38
  %41 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ14dynproc_kerneliPiS_S_iiiiE4prev, i32 0, i32 %26
  %42 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ14dynproc_kerneliPiS_S_iiiiE4prev, i32 0, i32 %10
  %43 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ14dynproc_kerneliPiS_S_iiiiE4prev, i32 0, i32 %27
  %44 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ14dynproc_kerneliPiS_S_iiiiE6result, i32 0, i32 %10
  %45 = add nsw i32 %0, -1
  br label %46

46:                                               ; preds = %73, %40
  %47 = phi i32 [ 0, %40 ], [ %48, %73 ]
  %48 = add nuw nsw i32 %47, 1
  %49 = icmp uge i32 %47, %10
  %50 = sub nsw i32 254, %47
  %51 = icmp slt i32 %50, %10
  %52 = select i1 %49, i1 true, i1 %51
  %53 = select i1 %52, i1 true, i1 %28
  %54 = select i1 %53, i1 true, i1 %29
  br i1 %54, label %68, label %55

55:                                               ; preds = %46
  %56 = load i32, i32 addrspace(3)* %41, align 4, !tbaa !6
  %57 = load i32, i32 addrspace(3)* %42, align 4, !tbaa !6
  %58 = load i32, i32 addrspace(3)* %43, align 4, !tbaa !6
  %59 = tail call i32 @llvm.smin.i32(i32 %56, i32 %57)
  %60 = tail call i32 @llvm.smin.i32(i32 %59, i32 %58)
  %61 = add nsw i32 %47, %6
  %62 = mul nsw i32 %61, %4
  %63 = add nsw i32 %62, %16
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %64
  %66 = load i32, i32 addrspace(1)* %65, align 4, !tbaa !6, !amdgpu.noclobber !10
  %67 = add nsw i32 %60, %66
  store i32 %67, i32 addrspace(3)* %44, align 4, !tbaa !6
  br label %68

68:                                               ; preds = %46, %55
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %69 = icmp eq i32 %47, %45
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  br i1 %54, label %73, label %71

71:                                               ; preds = %70
  %72 = load i32, i32 addrspace(3)* %44, align 4, !tbaa !6
  store i32 %72, i32 addrspace(3)* %42, align 4, !tbaa !6
  br label %73

73:                                               ; preds = %71, %70
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br label %46, !llvm.loop !11

74:                                               ; preds = %68
  %75 = xor i1 %54, true
  br label %76

76:                                               ; preds = %74, %38
  %77 = phi i1 [ %75, %74 ], [ undef, %38 ]
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = sext i32 %16 to i64
  %80 = getelementptr inbounds i32, i32 addrspace(1)* %3, i64 %79
  %81 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ14dynproc_kerneliPiS_S_iiiiE6result, i32 0, i32 %10
  %82 = load i32, i32 addrspace(3)* %81, align 4, !tbaa !6
  store i32 %82, i32 addrspace(1)* %80, align 4, !tbaa !6
  br label %83

83:                                               ; preds = %78, %76
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
