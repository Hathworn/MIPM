; ModuleID = 'transpose.cpp'
source_filename = "transpose.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ13copySharedMemPfS_iiE4tile = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ18transposeCoalescedPfS_iiE4tile = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ24transposeNoBankConflictsPfS_iiE4tile = internal unnamed_addr addrspace(3) global [16 x [17 x float]] undef, align 16
@_ZZ17transposeDiagonalPfS_iiE4tile = internal unnamed_addr addrspace(3) global [16 x [17 x float]] undef, align 16
@_ZZ20transposeFineGrainedPfS_iiE5block = internal unnamed_addr addrspace(3) global [16 x [17 x float]] undef, align 16
@_ZZ22transposeCoarseGrainedPfS_iiE5block = internal unnamed_addr addrspace(3) global [16 x [17 x float]] undef, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z4copyPfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = shl i32 %5, 4
  %7 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %9 = shl i32 %8, 4
  %10 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %11 = add i32 %9, %10
  %12 = add i32 %6, %7
  %13 = mul i32 %11, %2
  %14 = add i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float addrspace(1)* %1, i64 %15
  %17 = load float, float addrspace(1)* %16, align 4, !tbaa !5
  %18 = getelementptr inbounds float, float addrspace(1)* %0, i64 %15
  store float %17, float addrspace(1)* %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z13copySharedMemPfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #1 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %7 = shl i32 %5, 4
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %9 = add i32 %7, %8
  %10 = shl i32 %6, 4
  %11 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %12 = add i32 %10, %11
  %13 = mul nsw i32 %12, %2
  %14 = add nsw i32 %13, %9
  %15 = icmp slt i32 %9, %2
  %16 = icmp slt i32 %12, %3
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %22, label %18

18:                                               ; preds = %22, %4
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %19 = icmp slt i32 %9, %3
  %20 = icmp slt i32 %12, %2
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %28, label %27

22:                                               ; preds = %4
  %23 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13copySharedMemPfS_iiE4tile, i32 0, i32 %11, i32 %8
  %24 = sext i32 %14 to i64
  %25 = getelementptr inbounds float, float addrspace(1)* %1, i64 %24
  %26 = load float, float addrspace(1)* %25, align 4, !tbaa !5
  store float %26, float addrspace(3)* %23, align 4, !tbaa !5
  br label %18

27:                                               ; preds = %28, %18
  ret void

28:                                               ; preds = %18
  %29 = sext i32 %14 to i64
  %30 = getelementptr inbounds float, float addrspace(1)* %0, i64 %29
  %31 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13copySharedMemPfS_iiE4tile, i32 0, i32 %11, i32 %8
  %32 = load float, float addrspace(3)* %31, align 4, !tbaa !5
  store float %32, float addrspace(1)* %30, align 4, !tbaa !5
  br label %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z14transposeNaivePfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = shl i32 %5, 4
  %7 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %8 = add i32 %6, %7
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %10 = shl i32 %9, 4
  %11 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %12 = add i32 %10, %11
  %13 = mul nsw i32 %8, %3
  %14 = add nsw i32 %13, %12
  %15 = mul i32 %12, %2
  %16 = add i32 %15, %8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float addrspace(1)* %1, i64 %17
  %19 = load float, float addrspace(1)* %18, align 4, !tbaa !5
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds float, float addrspace(1)* %0, i64 %20
  store float %19, float addrspace(1)* %21, align 4, !tbaa !5
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z18transposeCoalescedPfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #1 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %7 = shl i32 %5, 4
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %9 = shl i32 %6, 4
  %10 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %11 = add i32 %9, %10
  %12 = add i32 %7, %10
  %13 = add i32 %7, %8
  %14 = mul i32 %11, %2
  %15 = add i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float addrspace(1)* %1, i64 %16
  %18 = load float, float addrspace(1)* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ18transposeCoalescedPfS_iiE4tile, i32 0, i32 %10, i32 %8
  store float %18, float addrspace(3)* %19, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %20 = add i32 %9, %8
  %21 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ18transposeCoalescedPfS_iiE4tile, i32 0, i32 %8, i32 %10
  %22 = load float, float addrspace(3)* %21, align 4, !tbaa !5
  %23 = mul i32 %12, %3
  %24 = add i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float addrspace(1)* %0, i64 %25
  store float %22, float addrspace(1)* %26, align 4, !tbaa !5
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z24transposeNoBankConflictsPfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #1 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %7 = shl i32 %5, 4
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %9 = shl i32 %6, 4
  %10 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %11 = add i32 %9, %10
  %12 = add i32 %7, %10
  %13 = add i32 %7, %8
  %14 = mul i32 %11, %2
  %15 = add i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float addrspace(1)* %1, i64 %16
  %18 = load float, float addrspace(1)* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]] addrspace(3)* @_ZZ24transposeNoBankConflictsPfS_iiE4tile, i32 0, i32 %10, i32 %8
  store float %18, float addrspace(3)* %19, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %20 = add i32 %9, %8
  %21 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]] addrspace(3)* @_ZZ24transposeNoBankConflictsPfS_iiE4tile, i32 0, i32 %8, i32 %10
  %22 = load float, float addrspace(3)* %21, align 4, !tbaa !5
  %23 = mul i32 %12, %3
  %24 = add i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float addrspace(1)* %0, i64 %25
  store float %22, float addrspace(1)* %26, align 4, !tbaa !5
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z17transposeDiagonalPfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #1 {
  %5 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %7 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %8 = bitcast i8 addrspace(4)* %7 to i16 addrspace(4)*
  %9 = load i16, i16 addrspace(4)* %8, align 4, !range !9, !invariant.load !10
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds i8, i8 addrspace(4)* %5, i64 12
  %12 = bitcast i8 addrspace(4)* %11 to i32 addrspace(4)*
  %13 = load i32, i32 addrspace(4)* %12, align 4, !tbaa !11
  %14 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %15 = getelementptr i8, i8 addrspace(4)* %5, i64 6
  %16 = bitcast i8 addrspace(4)* %15 to i16 addrspace(4)*
  %17 = load i16, i16 addrspace(4)* %16, align 2, !range !9, !invariant.load !10
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds i8, i8 addrspace(4)* %5, i64 16
  %20 = bitcast i8 addrspace(4)* %19 to i32 addrspace(4)*
  %21 = load i32, i32 addrspace(4)* %20, align 8, !tbaa !20
  %22 = icmp eq i32 %2, %3
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = add i32 %6, %14
  %25 = udiv i32 %13, %10
  %26 = mul i32 %25, %10
  %27 = icmp ugt i32 %13, %26
  %28 = zext i1 %27 to i32
  %29 = add i32 %25, %28
  %30 = urem i32 %24, %29
  br label %51

31:                                               ; preds = %4
  %32 = udiv i32 %13, %10
  %33 = mul i32 %32, %10
  %34 = icmp ugt i32 %13, %33
  %35 = zext i1 %34 to i32
  %36 = add i32 %32, %35
  %37 = mul i32 %36, %14
  %38 = add i32 %37, %6
  %39 = udiv i32 %21, %18
  %40 = mul i32 %39, %18
  %41 = icmp ugt i32 %21, %40
  %42 = zext i1 %41 to i32
  %43 = add i32 %39, %42
  %44 = freeze i32 %38
  %45 = freeze i32 %43
  %46 = udiv i32 %44, %45
  %47 = mul i32 %46, %45
  %48 = sub i32 %44, %47
  %49 = add i32 %46, %48
  %50 = urem i32 %49, %36
  br label %51

51:                                               ; preds = %31, %23
  %52 = phi i32 [ %6, %23 ], [ %48, %31 ]
  %53 = phi i32 [ %30, %23 ], [ %50, %31 ]
  %54 = shl nsw i32 %53, 4
  %55 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %56 = shl nsw i32 %52, 4
  %57 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %58 = add i32 %56, %57
  %59 = add i32 %54, %57
  %60 = add i32 %54, %55
  %61 = mul i32 %58, %2
  %62 = add i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float addrspace(1)* %1, i64 %63
  %65 = load float, float addrspace(1)* %64, align 4, !tbaa !5
  %66 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]] addrspace(3)* @_ZZ17transposeDiagonalPfS_iiE4tile, i32 0, i32 %57, i32 %55
  store float %65, float addrspace(3)* %66, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %67 = add i32 %56, %55
  %68 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]] addrspace(3)* @_ZZ17transposeDiagonalPfS_iiE4tile, i32 0, i32 %55, i32 %57
  %69 = load float, float addrspace(3)* %68, align 4, !tbaa !5
  %70 = mul i32 %59, %3
  %71 = add i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float addrspace(1)* %0, i64 %72
  store float %69, float addrspace(1)* %73, align 4, !tbaa !5
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z20transposeFineGrainedPfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #1 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %7 = shl i32 %5, 4
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %9 = add i32 %7, %8
  %10 = shl i32 %6, 4
  %11 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %12 = add i32 %10, %11
  %13 = mul nsw i32 %12, %2
  %14 = add nsw i32 %9, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float addrspace(1)* %1, i64 %15
  %17 = load float, float addrspace(1)* %16, align 4, !tbaa !5
  %18 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]] addrspace(3)* @_ZZ20transposeFineGrainedPfS_iiE5block, i32 0, i32 %11, i32 %8
  store float %17, float addrspace(3)* %18, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %19 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]] addrspace(3)* @_ZZ20transposeFineGrainedPfS_iiE5block, i32 0, i32 %8, i32 %11
  %20 = load float, float addrspace(3)* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds float, float addrspace(1)* %0, i64 %15
  store float %20, float addrspace(1)* %21, align 4, !tbaa !5
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z22transposeCoarseGrainedPfS_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #1 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %7 = shl i32 %5, 4
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %9 = shl i32 %6, 4
  %10 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !4
  %11 = add i32 %9, %10
  %12 = add i32 %7, %10
  %13 = add i32 %7, %8
  %14 = mul i32 %11, %2
  %15 = add i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float addrspace(1)* %1, i64 %16
  %18 = load float, float addrspace(1)* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]] addrspace(3)* @_ZZ22transposeCoarseGrainedPfS_iiE5block, i32 0, i32 %10, i32 %8
  store float %18, float addrspace(3)* %19, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %20 = add i32 %9, %8
  %21 = load float, float addrspace(3)* %19, align 4, !tbaa !5
  %22 = mul i32 %12, %3
  %23 = add i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float addrspace(1)* %0, i64 %24
  store float %21, float addrspace(1)* %25, align 4, !tbaa !5
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{i16 1, i16 1025}
!10 = !{}
!11 = !{!12, !16, i64 12}
!12 = !{!"hsa_kernel_dispatch_packet_s", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !17, i64 32, !18, i64 40, !17, i64 48, !19, i64 56}
!13 = !{!"short", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"int", !14, i64 0}
!17 = !{!"long", !14, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"hsa_signal_s", !17, i64 0}
!20 = !{!12, !16, i64 16}
