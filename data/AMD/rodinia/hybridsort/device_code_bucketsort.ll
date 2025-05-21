; ModuleID = 'bucketsort.hip.cu'
source_filename = "bucketsort.hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ11bucketcountPfS_PiPjiE8s_offset = internal addrspace(3) global [1024 x i32] undef, align 16
@_ZZ10bucketsortPfPiS_iPjS1_E8s_offset = internal addrspace(3) global [1024 x i32] undef, align 16
@_ZZ19histogram1024KernelPjPfffiE6s_Hist = internal addrspace(3) global [3072 x i32] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z11bucketcountPfS_PiPji(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture writeonly %2, i32 addrspace(1)* nocapture writeonly %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !6, !invariant.load !7
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds i8, i8 addrspace(4)* %7, i64 12
  %13 = bitcast i8 addrspace(4)* %12 to i32 addrspace(4)*
  %14 = load i32, i32 addrspace(4)* %13, align 4, !tbaa !8
  %15 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %16 = udiv i32 %14, %11
  %17 = mul i32 %16, %11
  %18 = icmp ugt i32 %14, %17
  %19 = zext i1 %18 to i32
  br label %33

20:                                               ; preds = %33
  %21 = shl i32 %6, 27
  %22 = add i32 %16, %19
  %23 = mul i32 %22, %11
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %24 = mul i32 %15, %11
  %25 = add i32 %24, %6
  %26 = icmp slt i32 %25, %4
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = getelementptr inbounds float, float addrspace(1)* %0, i64 511
  %29 = load float, float addrspace(1)* %28, align 4, !tbaa !17
  %30 = shl nuw nsw i32 %6, 5
  %31 = and i32 %30, 31744
  %32 = getelementptr inbounds [1024 x i32], [1024 x i32] addrspace(3)* @_ZZ11bucketcountPfS_PiPjiE8s_offset, i32 0, i32 %31
  br label %41

33:                                               ; preds = %5, %33
  %34 = phi i32 [ %6, %5 ], [ %37, %33 ]
  %35 = getelementptr inbounds [1024 x i32], [1024 x i32] addrspace(3)* @_ZZ11bucketcountPfS_PiPjiE8s_offset, i32 0, i32 %34
  %36 = addrspacecast i32 addrspace(3)* %35 to i32*
  store volatile i32 0, i32* %36, align 4, !tbaa !21
  %37 = add nuw nsw i32 %34, %11
  %38 = icmp ult i32 %37, 1024
  br i1 %38, label %33, label %20, !llvm.loop !23

39:                                               ; preds = %111, %20
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %40 = shl i32 %15, 10
  br label %118

41:                                               ; preds = %27, %111
  %42 = phi i32 [ %25, %27 ], [ %115, %111 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float addrspace(1)* %1, i64 %43
  %45 = load float, float addrspace(1)* %44, align 4, !tbaa !17, !amdgpu.noclobber !7
  %46 = fcmp contract olt float %45, %29
  %47 = select i1 %46, i32 255, i32 767
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds float, float addrspace(1)* %0, i64 %48
  %50 = load float, float addrspace(1)* %49, align 4, !tbaa !17
  %51 = fcmp contract olt float %45, %50
  %52 = select i1 %51, i32 -128, i32 128
  %53 = add nsw i32 %52, %47
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds float, float addrspace(1)* %0, i64 %54
  %56 = load float, float addrspace(1)* %55, align 4, !tbaa !17
  %57 = fcmp contract olt float %45, %56
  %58 = select i1 %57, i32 -64, i32 64
  %59 = add nsw i32 %58, %53
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds float, float addrspace(1)* %0, i64 %60
  %62 = load float, float addrspace(1)* %61, align 4, !tbaa !17
  %63 = fcmp contract olt float %45, %62
  %64 = select i1 %63, i32 -32, i32 32
  %65 = add nsw i32 %64, %59
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds float, float addrspace(1)* %0, i64 %66
  %68 = load float, float addrspace(1)* %67, align 4, !tbaa !17
  %69 = fcmp contract olt float %45, %68
  %70 = select i1 %69, i32 -16, i32 16
  %71 = add nsw i32 %70, %65
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds float, float addrspace(1)* %0, i64 %72
  %74 = load float, float addrspace(1)* %73, align 4, !tbaa !17
  %75 = fcmp contract olt float %45, %74
  %76 = select i1 %75, i32 -8, i32 8
  %77 = add nsw i32 %76, %71
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds float, float addrspace(1)* %0, i64 %78
  %80 = load float, float addrspace(1)* %79, align 4, !tbaa !17
  %81 = fcmp contract olt float %45, %80
  %82 = select i1 %81, i32 -4, i32 4
  %83 = add nsw i32 %82, %77
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds float, float addrspace(1)* %0, i64 %84
  %86 = load float, float addrspace(1)* %85, align 4, !tbaa !17
  %87 = fcmp contract olt float %45, %86
  %88 = select i1 %87, i32 -2, i32 2
  %89 = add nsw i32 %88, %83
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds float, float addrspace(1)* %0, i64 %90
  %92 = load float, float addrspace(1)* %91, align 4, !tbaa !17
  %93 = fcmp contract olt float %45, %92
  %94 = select i1 %93, i32 -1, i32 1
  %95 = add nsw i32 %94, %89
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds float, float addrspace(1)* %0, i64 %96
  %98 = load float, float addrspace(1)* %97, align 4, !tbaa !17
  %99 = fcmp contract uge float %45, %98
  %100 = zext i1 %99 to i32
  %101 = add nuw nsw i32 %95, %100
  %102 = getelementptr inbounds i32, i32 addrspace(3)* %32, i32 %101
  %103 = addrspacecast i32 addrspace(3)* %102 to i32*
  br label %104

104:                                              ; preds = %104, %41
  %105 = load volatile i32, i32* %103, align 4, !tbaa !21
  %106 = and i32 %105, 134217727
  %107 = add nuw nsw i32 %106, 1
  %108 = or i32 %107, %21
  store volatile i32 %108, i32* %103, align 4, !tbaa !21
  %109 = load volatile i32, i32* %103, align 4, !tbaa !21
  %110 = icmp eq i32 %109, %108
  br i1 %110, label %111, label %104, !llvm.loop !25

111:                                              ; preds = %104
  %112 = shl i32 %105, 10
  %113 = add nsw i32 %112, %101
  %114 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %43
  store i32 %113, i32 addrspace(1)* %114, align 4, !tbaa !21
  %115 = add nsw i32 %42, %23
  %116 = icmp slt i32 %115, %4
  br i1 %116, label %41, label %39, !llvm.loop !26

117:                                              ; preds = %118
  ret void

118:                                              ; preds = %39, %118
  %119 = phi i32 [ %6, %39 ], [ %127, %118 ]
  %120 = getelementptr inbounds [1024 x i32], [1024 x i32] addrspace(3)* @_ZZ11bucketcountPfS_PiPjiE8s_offset, i32 0, i32 %119
  %121 = addrspacecast i32 addrspace(3)* %120 to i32*
  %122 = load volatile i32, i32* %121, align 4, !tbaa !21
  %123 = and i32 %122, 134217727
  %124 = add nsw i32 %119, %40
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32 addrspace(1)* %3, i64 %125
  store i32 %123, i32 addrspace(1)* %126, align 4, !tbaa !21
  %127 = add nuw nsw i32 %119, %11
  %128 = icmp ult i32 %127, 1024
  br i1 %128, label %118, label %117, !llvm.loop !27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z18bucketprefixoffsetPjS_i(i32 addrspace(1)* nocapture %0, i32 addrspace(1)* nocapture writeonly %1, i32 %2) local_unnamed_addr #1 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %5 = zext i32 %4 to i64
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %7 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %8 = bitcast i8 addrspace(4)* %7 to i16 addrspace(4)*
  %9 = load i16, i16 addrspace(4)* %8, align 4, !range !6, !invariant.load !7
  %10 = zext i16 %9 to i64
  %11 = mul nuw nsw i64 %10, %5
  %12 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %11, %13
  %15 = trunc i64 %14 to i32
  %16 = shl nsw i32 %2, 10
  %17 = icmp sgt i32 %16, %15
  br i1 %17, label %23, label %18

18:                                               ; preds = %23, %3
  %19 = phi i32 [ 0, %3 ], [ %29, %23 ]
  %20 = shl i64 %14, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %21
  store i32 %19, i32 addrspace(1)* %22, align 4, !tbaa !21
  ret void

23:                                               ; preds = %3, %23
  %24 = phi i32 [ %29, %23 ], [ 0, %3 ]
  %25 = phi i32 [ %30, %23 ], [ %15, %3 ]
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %26
  %28 = load i32, i32 addrspace(1)* %27, align 4, !tbaa !21
  store i32 %24, i32 addrspace(1)* %27, align 4, !tbaa !21
  %29 = add nsw i32 %28, %24
  %30 = add nsw i32 %25, 1024
  %31 = icmp slt i32 %30, %16
  br i1 %31, label %23, label %18, !llvm.loop !28
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z10bucketsortPfPiS_iPjS1_(float addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture writeonly %2, i32 %3, i32 addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture readonly %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = shl i32 %7, 10
  %9 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i32 %9, 5
  %12 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %13 = getelementptr i8, i8 addrspace(4)* %12, i64 4
  %14 = bitcast i8 addrspace(4)* %13 to i16 addrspace(4)*
  %15 = load i16, i16 addrspace(4)* %14, align 4, !range !6, !invariant.load !7
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds i8, i8 addrspace(4)* %12, i64 12
  %18 = bitcast i8 addrspace(4)* %17 to i32 addrspace(4)*
  %19 = load i32, i32 addrspace(4)* %18, align 4, !tbaa !8
  %20 = zext i16 %15 to i64
  %21 = udiv i32 %19, %16
  %22 = mul i32 %21, %16
  %23 = icmp ugt i32 %19, %22
  %24 = zext i1 %23 to i32
  br label %32

25:                                               ; preds = %32
  %26 = and i32 %11, 31744
  %27 = add i32 %21, %24
  %28 = mul i32 %27, %16
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %29 = mul i32 %7, %16
  %30 = add i32 %29, %9
  %31 = icmp slt i32 %30, %3
  br i1 %31, label %50, label %49

32:                                               ; preds = %6, %32
  %33 = phi i32 [ %9, %6 ], [ %47, %32 ]
  %34 = phi i64 [ %10, %6 ], [ %46, %32 ]
  %35 = and i64 %34, 1023
  %36 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %35
  %37 = load i32, i32 addrspace(1)* %36, align 4, !tbaa !21, !amdgpu.noclobber !7
  %38 = add nsw i32 %33, %8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %39
  %41 = load i32, i32 addrspace(1)* %40, align 4, !tbaa !21, !amdgpu.noclobber !7
  %42 = add i32 %41, %37
  %43 = and i64 %34, 4294967295
  %44 = getelementptr inbounds [1024 x i32], [1024 x i32] addrspace(3)* @_ZZ10bucketsortPfPiS_iPjS1_E8s_offset, i32 0, i32 %33
  %45 = addrspacecast i32 addrspace(3)* %44 to i32*
  store volatile i32 %42, i32* %45, align 4, !tbaa !21
  %46 = add nuw nsw i64 %43, %20
  %47 = trunc i64 %46 to i32
  %48 = icmp slt i32 %47, 1024
  br i1 %48, label %32, label %25, !llvm.loop !29

49:                                               ; preds = %50, %25
  ret void

50:                                               ; preds = %25, %50
  %51 = phi i32 [ %67, %50 ], [ %30, %25 ]
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float addrspace(1)* %0, i64 %52
  %54 = load float, float addrspace(1)* %53, align 4, !tbaa !17
  %55 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %52
  %56 = load i32, i32 addrspace(1)* %55, align 4, !tbaa !21, !amdgpu.noclobber !7
  %57 = and i32 %56, 1023
  %58 = or i32 %57, %26
  %59 = getelementptr inbounds [1024 x i32], [1024 x i32] addrspace(3)* @_ZZ10bucketsortPfPiS_iPjS1_E8s_offset, i32 0, i32 %58
  %60 = addrspacecast i32 addrspace(3)* %59 to i32*
  %61 = load volatile i32, i32* %60, align 4, !tbaa !21
  %62 = ashr i32 %56, 10
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds float, float addrspace(1)* %2, i64 %64
  store float %54, float addrspace(1)* %65, align 4, !tbaa !17
  %66 = load volatile i32, i32* %60, align 4, !tbaa !21
  %67 = add nsw i32 %51, %28
  %68 = icmp slt i32 %67, %3
  br i1 %68, label %50, label %49, !llvm.loop !30
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z19histogram1024KernelPjPfffi(i32 addrspace(1)* nocapture %0, float addrspace(1)* nocapture readonly %1, float %2, float %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !6, !invariant.load !7
  %11 = zext i16 %10 to i32
  %12 = shl i32 %6, 8
  %13 = ashr exact i32 %12, 8
  %14 = mul nsw i32 %13, %11
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = add i32 %14, %15
  br label %32

17:                                               ; preds = %32
  %18 = shl i32 %15, 27
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %19 = icmp slt i32 %16, %4
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds float, float addrspace(1)* %1, i64 %21
  %23 = load float, float addrspace(1)* %22, align 4, !tbaa !17, !amdgpu.noclobber !7
  %24 = fsub contract float %23, %2
  %25 = fsub contract float %3, %2
  %26 = fdiv contract float %24, %25
  %27 = fmul contract float %26, 1.024000e+03
  %28 = fptoui float %27 to i32
  %29 = and i32 %28, 1023
  %30 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %29
  %31 = addrspacecast i32 addrspace(3)* %30 to i32*
  br label %39

32:                                               ; preds = %5, %32
  %33 = phi i32 [ %15, %5 ], [ %36, %32 ]
  %34 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %33
  %35 = addrspacecast i32 addrspace(3)* %34 to i32*
  store volatile i32 0, i32* %35, align 4, !tbaa !21
  %36 = add nuw nsw i32 %33, %11
  %37 = icmp ult i32 %36, 3072
  br i1 %37, label %32, label %17, !llvm.loop !31

38:                                               ; preds = %17
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br label %45

39:                                               ; preds = %39, %20
  %40 = load volatile i32, i32* %31, align 4, !tbaa !21
  %41 = and i32 %40, 134217727
  %42 = add nuw nsw i32 %41, 1
  %43 = or i32 %42, %18
  store volatile i32 %43, i32* %31, align 4, !tbaa !21
  %44 = load volatile i32, i32* %31, align 4, !tbaa !21
  br label %39, !llvm.loop !32

45:                                               ; preds = %38, %45
  %46 = phi i32 [ %15, %38 ], [ %66, %45 ]
  %47 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %46
  %48 = addrspacecast i32 addrspace(3)* %47 to i32*
  %49 = load volatile i32, i32* %48, align 4, !tbaa !21
  %50 = and i32 %49, 134217727
  %51 = add nuw nsw i32 %46, 1024
  %52 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %51
  %53 = addrspacecast i32 addrspace(3)* %52 to i32*
  %54 = load volatile i32, i32* %53, align 4, !tbaa !21
  %55 = and i32 %54, 134217727
  %56 = add nuw nsw i32 %55, %50
  %57 = add nuw nsw i32 %46, 2048
  %58 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %57
  %59 = addrspacecast i32 addrspace(3)* %58 to i32*
  %60 = load volatile i32, i32* %59, align 4, !tbaa !21
  %61 = and i32 %60, 134217727
  %62 = add nuw nsw i32 %61, %56
  %63 = zext i32 %46 to i64
  %64 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %63
  %65 = atomicrmw add i32 addrspace(1)* %64, i32 %62 syncscope("agent-one-as") monotonic, align 4
  %66 = add nuw nsw i32 %46, %11
  %67 = icmp ult i32 %66, 1024
  br i1 %67, label %45, label %68, !llvm.loop !33

68:                                               ; preds = %45
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!8 = !{!9, !13, i64 12}
!9 = !{!"hsa_kernel_dispatch_packet_s", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !14, i64 32, !15, i64 40, !14, i64 48, !16, i64 56}
!10 = !{!"short", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"int", !11, i64 0}
!14 = !{!"long", !11, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"hsa_signal_s", !14, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !19, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !24}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
