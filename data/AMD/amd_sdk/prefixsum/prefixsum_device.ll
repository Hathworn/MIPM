; ModuleID = 'prefixsum/prefixsum.cpp'
source_filename = "prefixsum/prefixsum.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ15group_prefixSumPfS_jjE5block = internal unnamed_addr addrspace(3) global [64 x float] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z15group_prefixSumPfS_jj(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %8 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !5, !invariant.load !6
  %11 = zext i16 %10 to i32
  %12 = mul i32 %7, %11
  %13 = add nsw i32 %12, %5
  %14 = shl nsw i32 %13, 1
  %15 = or i32 %14, 1
  %16 = mul i32 %15, %3
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, %2
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = shl nuw nsw i32 %5, 1
  %21 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %20
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds float, float addrspace(1)* %1, i64 %22
  %24 = load float, float addrspace(1)* %23, align 4, !tbaa !7
  store float %24, float addrspace(3)* %21, align 8, !tbaa !7
  br label %25

25:                                               ; preds = %19, %4
  %26 = add i32 %17, %3
  %27 = icmp ult i32 %26, %2
  %28 = shl nuw nsw i32 %5, 1
  %29 = or i32 %28, 1
  br i1 %27, label %30, label %35

30:                                               ; preds = %25
  %31 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %29
  %32 = zext i32 %26 to i64
  %33 = getelementptr inbounds float, float addrspace(1)* %1, i64 %32
  %34 = load float, float addrspace(1)* %33, align 4, !tbaa !7
  store float %34, float addrspace(3)* %31, align 4, !tbaa !7
  br label %35

35:                                               ; preds = %25, %30
  %36 = add nuw nsw i32 %28, 2
  %37 = icmp ult i32 %2, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %56, %35
  %39 = phi i32 [ 1, %35 ], [ %57, %56 ]
  %40 = icmp ugt i32 %2, 2
  br i1 %40, label %59, label %85

41:                                               ; preds = %35, %56
  %42 = phi i32 [ %44, %56 ], [ %2, %35 ]
  %43 = phi i32 [ %57, %56 ], [ 1, %35 ]
  %44 = lshr i32 %42, 1
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %45 = icmp ugt i32 %44, %5
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = mul nsw i32 %43, %29
  %48 = add nsw i32 %47, -1
  %49 = mul nsw i32 %43, %36
  %50 = add nsw i32 %49, -1
  %51 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %48
  %52 = load float, float addrspace(3)* %51, align 4, !tbaa !7
  %53 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %50
  %54 = load float, float addrspace(3)* %53, align 4, !tbaa !7
  %55 = fadd contract float %52, %54
  store float %55, float addrspace(3)* %53, align 4, !tbaa !7
  br label %56

56:                                               ; preds = %46, %41
  %57 = shl i32 %43, 1
  %58 = icmp ult i32 %42, 4
  br i1 %58, label %38, label %41, !llvm.loop !11

59:                                               ; preds = %38
  %60 = icmp ult i32 %39, %2
  %61 = zext i1 %60 to i32
  %62 = shl i32 %39, %61
  %63 = ashr i32 %62, 1
  %64 = add nuw nsw i32 %5, 1
  %65 = icmp sgt i32 %62, 1
  br i1 %65, label %66, label %85

66:                                               ; preds = %59, %82
  %67 = phi i32 [ %70, %82 ], [ %62, %59 ]
  %68 = phi i32 [ %83, %82 ], [ 0, %59 ]
  %69 = or i32 %68, 1
  %70 = ashr i32 %67, 1
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %71 = icmp sgt i32 %69, %5
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = mul nsw i32 %70, %64
  %74 = add nsw i32 %73, -1
  %75 = ashr i32 %67, 2
  %76 = add nsw i32 %74, %75
  %77 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %74
  %78 = load float, float addrspace(3)* %77, align 4, !tbaa !7
  %79 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %76
  %80 = load float, float addrspace(3)* %79, align 4, !tbaa !7
  %81 = fadd contract float %78, %80
  store float %81, float addrspace(3)* %79, align 4, !tbaa !7
  br label %82

82:                                               ; preds = %66, %72
  %83 = shl i32 %69, 1
  %84 = icmp slt i32 %83, %63
  br i1 %84, label %66, label %85, !llvm.loop !13

85:                                               ; preds = %82, %59, %38
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %18, label %86, label %91

86:                                               ; preds = %85
  %87 = sext i32 %17 to i64
  %88 = getelementptr inbounds float, float addrspace(1)* %0, i64 %87
  %89 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %28
  %90 = load float, float addrspace(3)* %89, align 8, !tbaa !7
  store float %90, float addrspace(1)* %88, align 4, !tbaa !7
  br label %91

91:                                               ; preds = %86, %85
  br i1 %27, label %92, label %97

92:                                               ; preds = %91
  %93 = zext i32 %26 to i64
  %94 = getelementptr inbounds float, float addrspace(1)* %0, i64 %93
  %95 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ15group_prefixSumPfS_jjE5block, i32 0, i32 %29
  %96 = load float, float addrspace(3)* %95, align 4, !tbaa !7
  store float %96, float addrspace(1)* %94, align 4, !tbaa !7
  br label %97

97:                                               ; preds = %92, %91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z16global_prefixSumPfjj(float addrspace(1)* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #1 {
  %4 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = getelementptr i8, i8 addrspace(4)* %4, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !5, !invariant.load !6
  %9 = zext i16 %8 to i32
  %10 = udiv i32 %1, %9
  %11 = shl i32 %1, 1
  %12 = sub i32 %11, %10
  %13 = udiv i32 %5, %12
  %14 = add i32 %13, 1
  %15 = mul i32 %14, %10
  %16 = add i32 %15, %5
  %17 = mul nsw i32 %16, %9
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %19 = add i32 %17, %18
  %20 = add nsw i32 %19, 1
  %21 = urem i32 %20, %1
  %22 = icmp ne i32 %21, 0
  %23 = icmp ult i32 %19, %2
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = urem i32 %19, %1
  %27 = xor i32 %26, -1
  %28 = add i32 %19, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds float, float addrspace(1)* %0, i64 %29
  %31 = load float, float addrspace(1)* %30, align 4, !tbaa !7
  %32 = sext i32 %19 to i64
  %33 = getelementptr inbounds float, float addrspace(1)* %0, i64 %32
  %34 = load float, float addrspace(1)* %33, align 4, !tbaa !7
  %35 = fadd contract float %31, %34
  store float %35, float addrspace(1)* %33, align 4, !tbaa !7
  br label %36

36:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i32 0, i32 1024}
!5 = !{i16 1, i16 1025}
!6 = !{}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
