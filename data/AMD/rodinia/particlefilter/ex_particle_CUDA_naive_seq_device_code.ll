; ModuleID = 'hip/particlefilter/ex_particle_CUDA_naive_seq.cu'
source_filename = "hip/particlefilter/ex_particle_CUDA_naive_seq.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z6kernelPdS_S_S_S_S_i(double addrspace(1)* nocapture readonly %0, double addrspace(1)* nocapture readonly %1, double addrspace(1)* nocapture readonly %2, double addrspace(1)* nocapture readonly %3, double addrspace(1)* nocapture writeonly %4, double addrspace(1)* nocapture writeonly %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %9 = zext i32 %8 to i64
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !6
  %14 = zext i16 %13 to i64
  %15 = mul nuw nsw i64 %14, %9
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %6
  br i1 %20, label %21, label %49

21:                                               ; preds = %7
  %22 = icmp sgt i32 %6, 0
  %23 = shl i64 %18, 32
  %24 = ashr exact i64 %23, 32
  br i1 %22, label %25, label %37

25:                                               ; preds = %21
  %26 = getelementptr inbounds double, double addrspace(1)* %3, i64 %24
  %27 = load double, double addrspace(1)* %26, align 8, !tbaa !8, !amdgpu.noclobber !6
  br label %28

28:                                               ; preds = %25, %34
  %29 = phi i32 [ 0, %25 ], [ %35, %34 ]
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds double, double addrspace(1)* %2, i64 %30
  %32 = load double, double addrspace(1)* %31, align 8, !tbaa !8, !amdgpu.noclobber !6
  %33 = fcmp contract ult double %32, %27
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp eq i32 %35, %6
  br i1 %36, label %37, label %28, !llvm.loop !12

37:                                               ; preds = %34, %28, %21
  %38 = phi i32 [ -1, %21 ], [ -1, %34 ], [ %29, %28 ]
  %39 = icmp eq i32 %38, -1
  %40 = add nsw i32 %6, -1
  %41 = select i1 %39, i32 %40, i32 %38
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double addrspace(1)* %0, i64 %42
  %44 = load double, double addrspace(1)* %43, align 8, !tbaa !8, !amdgpu.noclobber !6
  %45 = getelementptr inbounds double, double addrspace(1)* %4, i64 %24
  store double %44, double addrspace(1)* %45, align 8, !tbaa !8
  %46 = getelementptr inbounds double, double addrspace(1)* %1, i64 %42
  %47 = load double, double addrspace(1)* %46, align 8, !tbaa !8
  %48 = getelementptr inbounds double, double addrspace(1)* %5, i64 %24
  store double %47, double addrspace(1)* %48, align 8, !tbaa !8
  br label %49

49:                                               ; preds = %37, %7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{i16 1, i16 1025}
!6 = !{}
!7 = !{i32 0, i32 1024}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
