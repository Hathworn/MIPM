; ModuleID = 'gaussian.cu'
source_filename = "gaussian.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z4Fan1PfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %6 = zext i32 %5 to i64
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = zext i32 %7 to i64
  %9 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %10 = getelementptr i8, i8 addrspace(4)* %9, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !6, !invariant.load !7
  %13 = zext i16 %12 to i64
  %14 = mul nuw nsw i64 %13, %8
  %15 = add nuw nsw i64 %14, %6
  %16 = xor i32 %3, -1
  %17 = add i32 %16, %2
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = sext i32 %2 to i64
  %22 = sext i32 %3 to i64
  %23 = add nsw i64 %22, 1
  %24 = add nsw i64 %23, %15
  %25 = mul i64 %24, %21
  %26 = getelementptr inbounds float, float addrspace(1)* %1, i64 %25
  %27 = getelementptr inbounds float, float addrspace(1)* %26, i64 %22
  %28 = load float, float addrspace(1)* %27, align 4, !tbaa !8, !amdgpu.noclobber !7
  %29 = mul nsw i32 %3, %2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float addrspace(1)* %1, i64 %30
  %32 = getelementptr inbounds float, float addrspace(1)* %31, i64 %22
  %33 = load float, float addrspace(1)* %32, align 4, !tbaa !8, !amdgpu.noclobber !7
  %34 = fdiv contract float %28, %33
  %35 = getelementptr inbounds float, float addrspace(1)* %0, i64 %25
  %36 = getelementptr inbounds float, float addrspace(1)* %35, i64 %22
  store float %34, float addrspace(1)* %36, align 4, !tbaa !8
  br label %37

37:                                               ; preds = %4, %20
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z4Fan2PfS_S_iii(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture %1, float addrspace(1)* nocapture %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %8 = zext i32 %7 to i64
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = zext i32 %9 to i64
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %12 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %13 = bitcast i8 addrspace(4)* %12 to i16 addrspace(4)*
  %14 = load i16, i16 addrspace(4)* %13, align 4, !range !6, !invariant.load !7
  %15 = zext i16 %14 to i64
  %16 = mul nuw nsw i64 %15, %10
  %17 = add nuw nsw i64 %16, %8
  %18 = xor i32 %5, -1
  %19 = add i32 %18, %3
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %6
  %23 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !5
  %24 = zext i32 %23 to i64
  %25 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %26 = zext i32 %25 to i64
  %27 = getelementptr i8, i8 addrspace(4)* %11, i64 6
  %28 = bitcast i8 addrspace(4)* %27 to i16 addrspace(4)*
  %29 = load i16, i16 addrspace(4)* %28, align 2, !range !6, !invariant.load !7
  %30 = zext i16 %29 to i64
  %31 = mul nuw nsw i64 %30, %26
  %32 = add nuw nsw i64 %31, %24
  %33 = sub nsw i32 %3, %5
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %22
  %37 = trunc i64 %17 to i32
  %38 = trunc i64 %32 to i32
  %39 = add i32 %5, 1
  %40 = add i32 %39, %37
  %41 = mul nsw i32 %40, %3
  %42 = add nsw i32 %41, %5
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float addrspace(1)* %0, i64 %43
  %45 = load float, float addrspace(1)* %44, align 4, !tbaa !8, !amdgpu.noclobber !7
  %46 = mul nsw i32 %5, %3
  %47 = add nsw i32 %38, %5
  %48 = add nsw i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float addrspace(1)* %1, i64 %49
  %51 = load float, float addrspace(1)* %50, align 4, !tbaa !8, !amdgpu.noclobber !7
  %52 = fmul contract float %45, %51
  %53 = add nsw i32 %47, %41
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float addrspace(1)* %1, i64 %54
  %56 = load float, float addrspace(1)* %55, align 4, !tbaa !8, !amdgpu.noclobber !7
  %57 = fsub contract float %56, %52
  store float %57, float addrspace(1)* %55, align 4, !tbaa !8
  %58 = icmp eq i32 %38, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %36
  %60 = getelementptr inbounds float, float addrspace(1)* %0, i64 %54
  %61 = load float, float addrspace(1)* %60, align 4, !tbaa !8
  %62 = sext i32 %5 to i64
  %63 = getelementptr inbounds float, float addrspace(1)* %2, i64 %62
  %64 = load float, float addrspace(1)* %63, align 4, !tbaa !8
  %65 = fmul contract float %61, %64
  %66 = sext i32 %40 to i64
  %67 = getelementptr inbounds float, float addrspace(1)* %2, i64 %66
  %68 = load float, float addrspace(1)* %67, align 4, !tbaa !8
  %69 = fsub contract float %68, %65
  store float %69, float addrspace(1)* %67, align 4, !tbaa !8
  br label %70

70:                                               ; preds = %36, %59, %22, %6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{i32 0, i32 1024}
!6 = !{i16 1, i16 1025}
!7 = !{}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
