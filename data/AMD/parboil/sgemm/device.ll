; ModuleID = 'sgemm.cpp'
source_filename = "sgemm.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z9mysgemmNTPKfiS0_iPfiiff(float addrspace(1)* nocapture readonly %0, i32 %1, float addrspace(1)* nocapture readonly %2, i32 %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6, float %7, float %8) local_unnamed_addr #0 {
  %10 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %12 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %13 = bitcast i8 addrspace(4)* %12 to i16 addrspace(4)*
  %14 = load i16, i16 addrspace(4)* %13, align 4, !range !4, !invariant.load !5
  %15 = zext i16 %14 to i32
  %16 = mul i32 %10, %15
  %17 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !6
  %18 = add i32 %16, %17
  %19 = tail call i32 @llvm.amdgcn.workgroup.id.y() #2
  %20 = getelementptr i8, i8 addrspace(4)* %11, i64 6
  %21 = bitcast i8 addrspace(4)* %20 to i16 addrspace(4)*
  %22 = load i16, i16 addrspace(4)* %21, align 2, !range !4, !invariant.load !5
  %23 = zext i16 %22 to i32
  %24 = mul i32 %19, %23
  %25 = tail call i32 @llvm.amdgcn.workitem.id.y() #2, !range !6
  %26 = add i32 %24, %25
  %27 = icmp sgt i32 %6, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %38, %9
  %29 = phi float [ 0.000000e+00, %9 ], [ %52, %38 ]
  %30 = mul nsw i32 %26, %5
  %31 = add nsw i32 %30, %18
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float addrspace(1)* %4, i64 %32
  %34 = load float, float addrspace(1)* %33, align 4, !tbaa !7
  %35 = fmul contract float %34, %8
  %36 = fmul contract float %29, %7
  %37 = fadd contract float %36, %35
  store float %37, float addrspace(1)* %33, align 4, !tbaa !7
  ret void

38:                                               ; preds = %9, %38
  %39 = phi float [ %52, %38 ], [ 0.000000e+00, %9 ]
  %40 = phi i32 [ %53, %38 ], [ 0, %9 ]
  %41 = mul nsw i32 %40, %1
  %42 = add nsw i32 %41, %18
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float addrspace(1)* %0, i64 %43
  %45 = load float, float addrspace(1)* %44, align 4, !tbaa !7
  %46 = mul nsw i32 %40, %3
  %47 = add nsw i32 %46, %26
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float addrspace(1)* %2, i64 %48
  %50 = load float, float addrspace(1)* %49, align 4, !tbaa !7
  %51 = fmul contract float %45, %50
  %52 = fadd contract float %39, %51
  %53 = add nuw nsw i32 %40, 1
  %54 = icmp eq i32 %53, %6
  br i1 %54, label %28, label %38, !llvm.loop !11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
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
!6 = !{i32 0, i32 1024}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
