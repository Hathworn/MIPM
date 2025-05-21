; ModuleID = 'stencil.cpp'
source_filename = "stencil.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z12naive_kernelffPfS_iii(float %0, float %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture writeonly %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %10 = add i32 %9, 1
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.y() #2
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %7
  %14 = add i32 %11, 1
  %15 = add i32 %11, 2
  %16 = mul nsw i32 %15, %5
  %17 = add nsw i32 %16, %10
  %18 = mul nsw i32 %17, %4
  %19 = add nsw i32 %18, %8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float addrspace(1)* %2, i64 %20
  %22 = load float, float addrspace(1)* %21, align 4, !tbaa !5
  %23 = mul nsw i32 %11, %5
  %24 = add nsw i32 %23, %10
  %25 = mul nsw i32 %24, %4
  %26 = add nsw i32 %25, %8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float addrspace(1)* %2, i64 %27
  %29 = load float, float addrspace(1)* %28, align 4, !tbaa !5
  %30 = fadd contract float %22, %29
  %31 = mul nsw i32 %14, %5
  %32 = add i32 %31, %9
  %33 = add i32 %32, 2
  %34 = mul nsw i32 %33, %4
  %35 = add nsw i32 %34, %8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float addrspace(1)* %2, i64 %36
  %38 = load float, float addrspace(1)* %37, align 4, !tbaa !5
  %39 = fadd contract float %30, %38
  %40 = mul nsw i32 %32, %4
  %41 = add nsw i32 %40, %8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float addrspace(1)* %2, i64 %42
  %44 = load float, float addrspace(1)* %43, align 4, !tbaa !5
  %45 = fadd contract float %39, %44
  %46 = add nsw i32 %31, %10
  %47 = mul nsw i32 %46, %4
  %48 = add i32 %47, %8
  %49 = add i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float addrspace(1)* %2, i64 %50
  %52 = load float, float addrspace(1)* %51, align 4, !tbaa !5
  %53 = fadd contract float %45, %52
  %54 = add i32 %48, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float addrspace(1)* %2, i64 %55
  %57 = load float, float addrspace(1)* %56, align 4, !tbaa !5
  %58 = fadd contract float %53, %57
  %59 = fmul contract float %58, %1
  %60 = sext i32 %48 to i64
  %61 = getelementptr inbounds float, float addrspace(1)* %2, i64 %60
  %62 = load float, float addrspace(1)* %61, align 4, !tbaa !5
  %63 = fmul contract float %62, %0
  %64 = fsub contract float %59, %63
  %65 = getelementptr inbounds float, float addrspace(1)* %3, i64 %60
  store float %64, float addrspace(1)* %65, align 4, !tbaa !5
  br label %66

66:                                               ; preds = %13, %7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i32 0, i32 1024}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
