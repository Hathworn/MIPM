; ModuleID = 'histogram.cpp'
source_filename = "histogram.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i32> }

@_ZZ18histogram256KernelPjS_jE6s_Hist = internal addrspace(3) global [1536 x i32] undef, align 16
@_ZZ23mergeHistogram256KernelPjS_jE4data = internal unnamed_addr addrspace(3) global [256 x i32] undef, align 16
@_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist = internal unnamed_addr addrspace(3) global [4096 x i8] undef, align 16
@_ZZ22mergeHistogram64KernelPjS_jE4data = internal unnamed_addr addrspace(3) global [256 x i32] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z18histogram256KernelPjS_j(i32 addrspace(1)* nocapture writeonly %0, i32 addrspace(1)* nocapture readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %5 = getelementptr i8, i8 addrspace(4)* %4, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !4, !invariant.load !5
  %8 = getelementptr inbounds i8, i8 addrspace(4)* %4, i64 12
  %9 = bitcast i8 addrspace(4)* %8 to i32 addrspace(4)*
  %10 = load i32, i32 addrspace(4)* %9, align 4, !tbaa !6
  %11 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !15
  %12 = shl nuw nsw i32 %11, 3
  %13 = and i32 %12, 7936
  %14 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %11
  store i32 0, i32 addrspace(3)* %14, align 4, !tbaa !16
  %15 = add nuw nsw i32 %11, 192
  %16 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %15
  store i32 0, i32 addrspace(3)* %16, align 4, !tbaa !16
  %17 = add nuw nsw i32 %11, 384
  %18 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %17
  store i32 0, i32 addrspace(3)* %18, align 4, !tbaa !16
  %19 = add nuw nsw i32 %11, 576
  %20 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %19
  store i32 0, i32 addrspace(3)* %20, align 4, !tbaa !16
  %21 = add nuw nsw i32 %11, 768
  %22 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %21
  store i32 0, i32 addrspace(3)* %22, align 4, !tbaa !16
  %23 = add nuw nsw i32 %11, 960
  %24 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %23
  store i32 0, i32 addrspace(3)* %24, align 4, !tbaa !16
  %25 = add nuw nsw i32 %11, 1152
  %26 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %25
  store i32 0, i32 addrspace(3)* %26, align 4, !tbaa !16
  %27 = add nuw nsw i32 %11, 1344
  %28 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %27
  store i32 0, i32 addrspace(3)* %28, align 4, !tbaa !16
  %29 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %30 = zext i16 %7 to i32
  %31 = mul i32 %29, %30
  %32 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %13
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %33 = add i32 %31, %11
  %34 = icmp ult i32 %33, %2
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = udiv i32 %10, %30
  %37 = mul i32 %36, %30
  %38 = icmp ugt i32 %10, %37
  %39 = zext i1 %38 to i32
  %40 = add i32 %36, %39
  %41 = mul i32 %40, %30
  br label %45

42:                                               ; preds = %45, %3
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %43 = shl i32 %29, 8
  %44 = icmp ult i32 %11, 256
  br i1 %44, label %66, label %95

45:                                               ; preds = %35, %45
  %46 = phi i32 [ %33, %35 ], [ %64, %45 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %47
  %49 = load i32, i32 addrspace(1)* %48, align 4, !tbaa !16
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds i32, i32 addrspace(3)* %32, i32 %50
  %52 = atomicrmw add i32 addrspace(3)* %51, i32 1 syncscope("agent-one-as") monotonic, align 4
  %53 = lshr i32 %49, 8
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds i32, i32 addrspace(3)* %32, i32 %54
  %56 = atomicrmw add i32 addrspace(3)* %55, i32 1 syncscope("agent-one-as") monotonic, align 4
  %57 = lshr i32 %49, 16
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds i32, i32 addrspace(3)* %32, i32 %58
  %60 = atomicrmw add i32 addrspace(3)* %59, i32 1 syncscope("agent-one-as") monotonic, align 4
  %61 = lshr i32 %49, 24
  %62 = getelementptr inbounds i32, i32 addrspace(3)* %32, i32 %61
  %63 = atomicrmw add i32 addrspace(3)* %62, i32 1 syncscope("agent-one-as") monotonic, align 4
  %64 = add i32 %41, %46
  %65 = icmp ult i32 %64, %2
  br i1 %65, label %45, label %42, !llvm.loop !20

66:                                               ; preds = %42, %66
  %67 = phi i32 [ %93, %66 ], [ %11, %42 ]
  %68 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %67
  %69 = load i32, i32 addrspace(3)* %68, align 4, !tbaa !16
  %70 = add nuw nsw i32 %67, 256
  %71 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %70
  %72 = load i32, i32 addrspace(3)* %71, align 4, !tbaa !16
  %73 = add i32 %72, %69
  %74 = add nuw nsw i32 %67, 512
  %75 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %74
  %76 = load i32, i32 addrspace(3)* %75, align 4, !tbaa !16
  %77 = add i32 %76, %73
  %78 = add nuw nsw i32 %67, 768
  %79 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %78
  %80 = load i32, i32 addrspace(3)* %79, align 4, !tbaa !16
  %81 = add i32 %80, %77
  %82 = add nuw nsw i32 %67, 1024
  %83 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %82
  %84 = load i32, i32 addrspace(3)* %83, align 4, !tbaa !16
  %85 = add i32 %84, %81
  %86 = add nuw nsw i32 %67, 1280
  %87 = getelementptr inbounds [1536 x i32], [1536 x i32] addrspace(3)* @_ZZ18histogram256KernelPjS_jE6s_Hist, i32 0, i32 %86
  %88 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !16
  %89 = add i32 %88, %85
  %90 = add i32 %67, %43
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %91
  store i32 %89, i32 addrspace(1)* %92, align 4, !tbaa !16
  %93 = add nuw nsw i32 %67, 192
  %94 = icmp ult i32 %67, 64
  br i1 %94, label %66, label %95, !llvm.loop !22

95:                                               ; preds = %66, %42
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z23mergeHistogram256KernelPjS_j(i32 addrspace(1)* nocapture writeonly %0, i32 addrspace(1)* nocapture readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %5 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !15
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %11, label %7

7:                                                ; preds = %11, %3
  %8 = phi i32 [ 0, %3 ], [ %19, %11 ]
  %9 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %5
  store i32 %8, i32 addrspace(3)* %9, align 4, !tbaa !16
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %10 = icmp ult i32 %5, 128
  br i1 %10, label %22, label %28

11:                                               ; preds = %3, %11
  %12 = phi i32 [ %20, %11 ], [ %5, %3 ]
  %13 = phi i32 [ %19, %11 ], [ 0, %3 ]
  %14 = shl i32 %12, 8
  %15 = add i32 %14, %4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %16
  %18 = load i32, i32 addrspace(1)* %17, align 4, !tbaa !16
  %19 = add i32 %18, %13
  %20 = add i32 %12, 256
  %21 = icmp ult i32 %20, %2
  br i1 %21, label %11, label %7, !llvm.loop !23

22:                                               ; preds = %7
  %23 = add nuw nsw i32 %5, 128
  %24 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %23
  %25 = load i32, i32 addrspace(3)* %24, align 4, !tbaa !16
  %26 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %27 = add i32 %26, %25
  store i32 %27, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %28

28:                                               ; preds = %7, %22
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %29 = icmp ult i32 %5, 64
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = add nuw nsw i32 %5, 64
  %32 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %31
  %33 = load i32, i32 addrspace(3)* %32, align 4, !tbaa !16
  %34 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %35 = add i32 %34, %33
  store i32 %35, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %36

36:                                               ; preds = %30, %28
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %37 = icmp ult i32 %5, 32
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = add nuw nsw i32 %5, 32
  %40 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %39
  %41 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !16
  %42 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %43 = add i32 %42, %41
  store i32 %43, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %44

44:                                               ; preds = %38, %36
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %45 = icmp ult i32 %5, 16
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = add nuw nsw i32 %5, 16
  %48 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %47
  %49 = load i32, i32 addrspace(3)* %48, align 4, !tbaa !16
  %50 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %51 = add i32 %50, %49
  store i32 %51, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %52

52:                                               ; preds = %46, %44
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %53 = icmp ult i32 %5, 8
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = add nuw nsw i32 %5, 8
  %56 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %55
  %57 = load i32, i32 addrspace(3)* %56, align 4, !tbaa !16
  %58 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %59 = add i32 %58, %57
  store i32 %59, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %60

60:                                               ; preds = %54, %52
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %61 = icmp ult i32 %5, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  %63 = add nuw nsw i32 %5, 4
  %64 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %63
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !16
  %66 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %67 = add i32 %66, %65
  store i32 %67, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %68

68:                                               ; preds = %62, %60
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %69 = icmp ult i32 %5, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = add nuw nsw i32 %5, 2
  %72 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %71
  %73 = load i32, i32 addrspace(3)* %72, align 4, !tbaa !16
  %74 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %75 = add i32 %74, %73
  store i32 %75, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %76

76:                                               ; preds = %70, %68
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %77 = icmp eq i32 %5, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %76
  %79 = add nuw nsw i32 %5, 1
  %80 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 %79
  %81 = load i32, i32 addrspace(3)* %80, align 4, !tbaa !16
  %82 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %83 = add i32 %82, %81
  store i32 %83, i32 addrspace(3)* %9, align 4, !tbaa !16
  %84 = zext i32 %4 to i64
  %85 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %84
  %86 = load i32, i32 addrspace(3)* getelementptr inbounds ([256 x i32], [256 x i32] addrspace(3)* @_ZZ23mergeHistogram256KernelPjS_jE4data, i32 0, i32 0), align 16, !tbaa !16
  store i32 %86, i32 addrspace(1)* %85, align 4, !tbaa !16
  br label %87

87:                                               ; preds = %76, %78
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z17histogram64KernelPjP15HIP_vector_typeIjLj4EEj(i32 addrspace(1)* nocapture writeonly %0, %struct.HIP_vector_type addrspace(1)* nocapture readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %5 = getelementptr i8, i8 addrspace(4)* %4, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !4, !invariant.load !5
  %8 = getelementptr inbounds i8, i8 addrspace(4)* %4, i64 12
  %9 = bitcast i8 addrspace(4)* %8 to i32 addrspace(4)*
  %10 = load i32, i32 addrspace(4)* %9, align 4, !tbaa !6
  %11 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !15
  %12 = and i32 %11, 960
  %13 = shl nuw nsw i32 %11, 2
  %14 = and i32 %13, 60
  %15 = or i32 %14, %12
  %16 = lshr i32 %11, 4
  %17 = and i32 %16, 3
  %18 = or i32 %15, %17
  %19 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %11
  store i32 0, i32 addrspace(3)* %19, align 4, !tbaa !16
  %20 = add nuw nsw i32 %11, 64
  %21 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %20
  store i32 0, i32 addrspace(3)* %21, align 4, !tbaa !16
  %22 = add nuw nsw i32 %11, 128
  %23 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %22
  store i32 0, i32 addrspace(3)* %23, align 4, !tbaa !16
  %24 = add nuw nsw i32 %11, 192
  %25 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %24
  store i32 0, i32 addrspace(3)* %25, align 4, !tbaa !16
  %26 = add nuw nsw i32 %11, 256
  %27 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %26
  store i32 0, i32 addrspace(3)* %27, align 4, !tbaa !16
  %28 = add nuw nsw i32 %11, 320
  %29 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %28
  store i32 0, i32 addrspace(3)* %29, align 4, !tbaa !16
  %30 = add nuw nsw i32 %11, 384
  %31 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %30
  store i32 0, i32 addrspace(3)* %31, align 4, !tbaa !16
  %32 = add nuw nsw i32 %11, 448
  %33 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %32
  store i32 0, i32 addrspace(3)* %33, align 4, !tbaa !16
  %34 = add nuw nsw i32 %11, 512
  %35 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %34
  store i32 0, i32 addrspace(3)* %35, align 4, !tbaa !16
  %36 = add nuw nsw i32 %11, 576
  %37 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %36
  store i32 0, i32 addrspace(3)* %37, align 4, !tbaa !16
  %38 = add nuw nsw i32 %11, 640
  %39 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %38
  store i32 0, i32 addrspace(3)* %39, align 4, !tbaa !16
  %40 = add nuw nsw i32 %11, 704
  %41 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %40
  store i32 0, i32 addrspace(3)* %41, align 4, !tbaa !16
  %42 = add nuw nsw i32 %11, 768
  %43 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %42
  store i32 0, i32 addrspace(3)* %43, align 4, !tbaa !16
  %44 = add nuw nsw i32 %11, 832
  %45 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %44
  store i32 0, i32 addrspace(3)* %45, align 4, !tbaa !16
  %46 = add nuw nsw i32 %11, 896
  %47 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %46
  store i32 0, i32 addrspace(3)* %47, align 4, !tbaa !16
  %48 = add nuw nsw i32 %11, 960
  %49 = getelementptr inbounds i32, i32 addrspace(3)* bitcast ([4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist to i32 addrspace(3)*), i32 %48
  store i32 0, i32 addrspace(3)* %49, align 4, !tbaa !16
  %50 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %51 = zext i16 %7 to i32
  %52 = mul i32 %50, %51
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist, i32 0, i32 %18
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %54 = add i32 %52, %11
  %55 = icmp ult i32 %54, %2
  br i1 %55, label %56, label %63

56:                                               ; preds = %3
  %57 = udiv i32 %10, %51
  %58 = mul i32 %57, %51
  %59 = icmp ugt i32 %10, %58
  %60 = zext i1 %59 to i32
  %61 = add i32 %57, %60
  %62 = mul i32 %61, %51
  br label %65

63:                                               ; preds = %65, %3
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %64 = icmp ult i32 %11, 64
  br i1 %64, label %158, label %498

65:                                               ; preds = %56, %65
  %66 = phi i32 [ %54, %56 ], [ %156, %65 ]
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %67, i32 0, i32 0, i32 0, i64 0
  %69 = load i32, i32 addrspace(1)* %68, align 16
  %70 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %67, i32 0, i32 0, i32 0, i64 1
  %71 = load i32, i32 addrspace(1)* %70, align 4
  %72 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %67, i32 0, i32 0, i32 0, i64 2
  %73 = load i32, i32 addrspace(1)* %72, align 8
  %74 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %67, i32 0, i32 0, i32 0, i64 3
  %75 = load i32, i32 addrspace(1)* %74, align 4
  %76 = shl i32 %69, 4
  %77 = and i32 %76, 4032
  %78 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %77
  %79 = load i8, i8 addrspace(3)* %78, align 1, !tbaa !24
  %80 = add i8 %79, 1
  store i8 %80, i8 addrspace(3)* %78, align 1, !tbaa !24
  %81 = lshr i32 %69, 4
  %82 = and i32 %81, 4032
  %83 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %82
  %84 = load i8, i8 addrspace(3)* %83, align 1, !tbaa !24
  %85 = add i8 %84, 1
  store i8 %85, i8 addrspace(3)* %83, align 1, !tbaa !24
  %86 = lshr i32 %69, 12
  %87 = and i32 %86, 4032
  %88 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %87
  %89 = load i8, i8 addrspace(3)* %88, align 1, !tbaa !24
  %90 = add i8 %89, 1
  store i8 %90, i8 addrspace(3)* %88, align 1, !tbaa !24
  %91 = lshr i32 %69, 20
  %92 = and i32 %91, 4032
  %93 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %92
  %94 = load i8, i8 addrspace(3)* %93, align 1, !tbaa !24
  %95 = add i8 %94, 1
  store i8 %95, i8 addrspace(3)* %93, align 1, !tbaa !24
  %96 = shl i32 %71, 4
  %97 = and i32 %96, 4032
  %98 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %97
  %99 = load i8, i8 addrspace(3)* %98, align 1, !tbaa !24
  %100 = add i8 %99, 1
  store i8 %100, i8 addrspace(3)* %98, align 1, !tbaa !24
  %101 = lshr i32 %71, 4
  %102 = and i32 %101, 4032
  %103 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %102
  %104 = load i8, i8 addrspace(3)* %103, align 1, !tbaa !24
  %105 = add i8 %104, 1
  store i8 %105, i8 addrspace(3)* %103, align 1, !tbaa !24
  %106 = lshr i32 %71, 12
  %107 = and i32 %106, 4032
  %108 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %107
  %109 = load i8, i8 addrspace(3)* %108, align 1, !tbaa !24
  %110 = add i8 %109, 1
  store i8 %110, i8 addrspace(3)* %108, align 1, !tbaa !24
  %111 = lshr i32 %71, 20
  %112 = and i32 %111, 4032
  %113 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %112
  %114 = load i8, i8 addrspace(3)* %113, align 1, !tbaa !24
  %115 = add i8 %114, 1
  store i8 %115, i8 addrspace(3)* %113, align 1, !tbaa !24
  %116 = shl i32 %73, 4
  %117 = and i32 %116, 4032
  %118 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %117
  %119 = load i8, i8 addrspace(3)* %118, align 1, !tbaa !24
  %120 = add i8 %119, 1
  store i8 %120, i8 addrspace(3)* %118, align 1, !tbaa !24
  %121 = lshr i32 %73, 4
  %122 = and i32 %121, 4032
  %123 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %122
  %124 = load i8, i8 addrspace(3)* %123, align 1, !tbaa !24
  %125 = add i8 %124, 1
  store i8 %125, i8 addrspace(3)* %123, align 1, !tbaa !24
  %126 = lshr i32 %73, 12
  %127 = and i32 %126, 4032
  %128 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %127
  %129 = load i8, i8 addrspace(3)* %128, align 1, !tbaa !24
  %130 = add i8 %129, 1
  store i8 %130, i8 addrspace(3)* %128, align 1, !tbaa !24
  %131 = lshr i32 %73, 20
  %132 = and i32 %131, 4032
  %133 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %132
  %134 = load i8, i8 addrspace(3)* %133, align 1, !tbaa !24
  %135 = add i8 %134, 1
  store i8 %135, i8 addrspace(3)* %133, align 1, !tbaa !24
  %136 = shl i32 %75, 4
  %137 = and i32 %136, 4032
  %138 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %137
  %139 = load i8, i8 addrspace(3)* %138, align 1, !tbaa !24
  %140 = add i8 %139, 1
  store i8 %140, i8 addrspace(3)* %138, align 1, !tbaa !24
  %141 = lshr i32 %75, 4
  %142 = and i32 %141, 4032
  %143 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %142
  %144 = load i8, i8 addrspace(3)* %143, align 1, !tbaa !24
  %145 = add i8 %144, 1
  store i8 %145, i8 addrspace(3)* %143, align 1, !tbaa !24
  %146 = lshr i32 %75, 12
  %147 = and i32 %146, 4032
  %148 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %147
  %149 = load i8, i8 addrspace(3)* %148, align 1, !tbaa !24
  %150 = add i8 %149, 1
  store i8 %150, i8 addrspace(3)* %148, align 1, !tbaa !24
  %151 = lshr i32 %75, 20
  %152 = and i32 %151, 4032
  %153 = getelementptr inbounds i8, i8 addrspace(3)* %53, i32 %152
  %154 = load i8, i8 addrspace(3)* %153, align 1, !tbaa !24
  %155 = add i8 %154, 1
  store i8 %155, i8 addrspace(3)* %153, align 1, !tbaa !24
  %156 = add i32 %62, %66
  %157 = icmp ult i32 %156, %2
  br i1 %157, label %65, label %63, !llvm.loop !25

158:                                              ; preds = %63
  %159 = shl nuw nsw i32 %11, 6
  %160 = getelementptr inbounds [4096 x i8], [4096 x i8] addrspace(3)* @_ZZ17histogram64KernelPjP15HIP_vector_typeIjLj4EEjE6s_Hist, i32 0, i32 %159
  %161 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %14
  %162 = load i8, i8 addrspace(3)* %161, align 4, !tbaa !24
  %163 = zext i8 %162 to i32
  %164 = or i32 %14, 1
  %165 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %164
  %166 = load i8, i8 addrspace(3)* %165, align 1, !tbaa !24
  %167 = zext i8 %166 to i32
  %168 = or i32 %14, 2
  %169 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %168
  %170 = load i8, i8 addrspace(3)* %169, align 2, !tbaa !24
  %171 = zext i8 %170 to i32
  %172 = or i32 %14, 3
  %173 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %172
  %174 = load i8, i8 addrspace(3)* %173, align 1, !tbaa !24
  %175 = zext i8 %174 to i32
  %176 = add nuw nsw i32 %163, %167
  %177 = add nuw nsw i32 %176, %171
  %178 = add nuw nsw i32 %177, %175
  %179 = add nuw nsw i32 %13, 4
  %180 = and i32 %179, 60
  %181 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %180
  %182 = load i8, i8 addrspace(3)* %181, align 4, !tbaa !24
  %183 = zext i8 %182 to i32
  %184 = or i32 %180, 1
  %185 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %184
  %186 = load i8, i8 addrspace(3)* %185, align 1, !tbaa !24
  %187 = zext i8 %186 to i32
  %188 = or i32 %180, 2
  %189 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %188
  %190 = load i8, i8 addrspace(3)* %189, align 2, !tbaa !24
  %191 = zext i8 %190 to i32
  %192 = or i32 %180, 3
  %193 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %192
  %194 = load i8, i8 addrspace(3)* %193, align 1, !tbaa !24
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %178, %183
  %197 = add nuw nsw i32 %196, %187
  %198 = add nuw nsw i32 %197, %191
  %199 = add nuw nsw i32 %198, %195
  %200 = add nuw nsw i32 %13, 8
  %201 = and i32 %200, 60
  %202 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %201
  %203 = load i8, i8 addrspace(3)* %202, align 4, !tbaa !24
  %204 = zext i8 %203 to i32
  %205 = or i32 %201, 1
  %206 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %205
  %207 = load i8, i8 addrspace(3)* %206, align 1, !tbaa !24
  %208 = zext i8 %207 to i32
  %209 = or i32 %201, 2
  %210 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %209
  %211 = load i8, i8 addrspace(3)* %210, align 2, !tbaa !24
  %212 = zext i8 %211 to i32
  %213 = or i32 %201, 3
  %214 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %213
  %215 = load i8, i8 addrspace(3)* %214, align 1, !tbaa !24
  %216 = zext i8 %215 to i32
  %217 = add nuw nsw i32 %199, %204
  %218 = add nuw nsw i32 %217, %208
  %219 = add nuw nsw i32 %218, %212
  %220 = add nuw nsw i32 %219, %216
  %221 = add nuw nsw i32 %13, 12
  %222 = and i32 %221, 60
  %223 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %222
  %224 = load i8, i8 addrspace(3)* %223, align 4, !tbaa !24
  %225 = zext i8 %224 to i32
  %226 = or i32 %222, 1
  %227 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %226
  %228 = load i8, i8 addrspace(3)* %227, align 1, !tbaa !24
  %229 = zext i8 %228 to i32
  %230 = or i32 %222, 2
  %231 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %230
  %232 = load i8, i8 addrspace(3)* %231, align 2, !tbaa !24
  %233 = zext i8 %232 to i32
  %234 = or i32 %222, 3
  %235 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %234
  %236 = load i8, i8 addrspace(3)* %235, align 1, !tbaa !24
  %237 = zext i8 %236 to i32
  %238 = add nuw nsw i32 %220, %225
  %239 = add nuw nsw i32 %238, %229
  %240 = add nuw nsw i32 %239, %233
  %241 = add nuw nsw i32 %240, %237
  %242 = add nuw nsw i32 %13, 16
  %243 = and i32 %242, 60
  %244 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %243
  %245 = load i8, i8 addrspace(3)* %244, align 4, !tbaa !24
  %246 = zext i8 %245 to i32
  %247 = or i32 %243, 1
  %248 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %247
  %249 = load i8, i8 addrspace(3)* %248, align 1, !tbaa !24
  %250 = zext i8 %249 to i32
  %251 = or i32 %243, 2
  %252 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %251
  %253 = load i8, i8 addrspace(3)* %252, align 2, !tbaa !24
  %254 = zext i8 %253 to i32
  %255 = or i32 %243, 3
  %256 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %255
  %257 = load i8, i8 addrspace(3)* %256, align 1, !tbaa !24
  %258 = zext i8 %257 to i32
  %259 = add nuw nsw i32 %241, %246
  %260 = add nuw nsw i32 %259, %250
  %261 = add nuw nsw i32 %260, %254
  %262 = add nuw nsw i32 %261, %258
  %263 = add nuw nsw i32 %13, 20
  %264 = and i32 %263, 60
  %265 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %264
  %266 = load i8, i8 addrspace(3)* %265, align 4, !tbaa !24
  %267 = zext i8 %266 to i32
  %268 = or i32 %264, 1
  %269 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %268
  %270 = load i8, i8 addrspace(3)* %269, align 1, !tbaa !24
  %271 = zext i8 %270 to i32
  %272 = or i32 %264, 2
  %273 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %272
  %274 = load i8, i8 addrspace(3)* %273, align 2, !tbaa !24
  %275 = zext i8 %274 to i32
  %276 = or i32 %264, 3
  %277 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %276
  %278 = load i8, i8 addrspace(3)* %277, align 1, !tbaa !24
  %279 = zext i8 %278 to i32
  %280 = add nuw nsw i32 %262, %267
  %281 = add nuw nsw i32 %280, %271
  %282 = add nuw nsw i32 %281, %275
  %283 = add nuw nsw i32 %282, %279
  %284 = add nuw nsw i32 %13, 24
  %285 = and i32 %284, 60
  %286 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %285
  %287 = load i8, i8 addrspace(3)* %286, align 4, !tbaa !24
  %288 = zext i8 %287 to i32
  %289 = or i32 %285, 1
  %290 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %289
  %291 = load i8, i8 addrspace(3)* %290, align 1, !tbaa !24
  %292 = zext i8 %291 to i32
  %293 = or i32 %285, 2
  %294 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %293
  %295 = load i8, i8 addrspace(3)* %294, align 2, !tbaa !24
  %296 = zext i8 %295 to i32
  %297 = or i32 %285, 3
  %298 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %297
  %299 = load i8, i8 addrspace(3)* %298, align 1, !tbaa !24
  %300 = zext i8 %299 to i32
  %301 = add nuw nsw i32 %283, %288
  %302 = add nuw nsw i32 %301, %292
  %303 = add nuw nsw i32 %302, %296
  %304 = add nuw nsw i32 %303, %300
  %305 = add nuw nsw i32 %13, 28
  %306 = and i32 %305, 60
  %307 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %306
  %308 = load i8, i8 addrspace(3)* %307, align 4, !tbaa !24
  %309 = zext i8 %308 to i32
  %310 = or i32 %306, 1
  %311 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %310
  %312 = load i8, i8 addrspace(3)* %311, align 1, !tbaa !24
  %313 = zext i8 %312 to i32
  %314 = or i32 %306, 2
  %315 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %314
  %316 = load i8, i8 addrspace(3)* %315, align 2, !tbaa !24
  %317 = zext i8 %316 to i32
  %318 = or i32 %306, 3
  %319 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %318
  %320 = load i8, i8 addrspace(3)* %319, align 1, !tbaa !24
  %321 = zext i8 %320 to i32
  %322 = add nuw nsw i32 %304, %309
  %323 = add nuw nsw i32 %322, %313
  %324 = add nuw nsw i32 %323, %317
  %325 = add nuw nsw i32 %324, %321
  %326 = add nuw nsw i32 %13, 32
  %327 = and i32 %326, 60
  %328 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %327
  %329 = load i8, i8 addrspace(3)* %328, align 4, !tbaa !24
  %330 = zext i8 %329 to i32
  %331 = or i32 %327, 1
  %332 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %331
  %333 = load i8, i8 addrspace(3)* %332, align 1, !tbaa !24
  %334 = zext i8 %333 to i32
  %335 = or i32 %327, 2
  %336 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %335
  %337 = load i8, i8 addrspace(3)* %336, align 2, !tbaa !24
  %338 = zext i8 %337 to i32
  %339 = or i32 %327, 3
  %340 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %339
  %341 = load i8, i8 addrspace(3)* %340, align 1, !tbaa !24
  %342 = zext i8 %341 to i32
  %343 = add nuw nsw i32 %325, %330
  %344 = add nuw nsw i32 %343, %334
  %345 = add nuw nsw i32 %344, %338
  %346 = add nuw nsw i32 %345, %342
  %347 = add nuw nsw i32 %13, 36
  %348 = and i32 %347, 60
  %349 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %348
  %350 = load i8, i8 addrspace(3)* %349, align 4, !tbaa !24
  %351 = zext i8 %350 to i32
  %352 = or i32 %348, 1
  %353 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %352
  %354 = load i8, i8 addrspace(3)* %353, align 1, !tbaa !24
  %355 = zext i8 %354 to i32
  %356 = or i32 %348, 2
  %357 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %356
  %358 = load i8, i8 addrspace(3)* %357, align 2, !tbaa !24
  %359 = zext i8 %358 to i32
  %360 = or i32 %348, 3
  %361 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %360
  %362 = load i8, i8 addrspace(3)* %361, align 1, !tbaa !24
  %363 = zext i8 %362 to i32
  %364 = add nuw nsw i32 %346, %351
  %365 = add nuw nsw i32 %364, %355
  %366 = add nuw nsw i32 %365, %359
  %367 = add nuw nsw i32 %366, %363
  %368 = add nuw nsw i32 %13, 40
  %369 = and i32 %368, 60
  %370 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %369
  %371 = load i8, i8 addrspace(3)* %370, align 4, !tbaa !24
  %372 = zext i8 %371 to i32
  %373 = or i32 %369, 1
  %374 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %373
  %375 = load i8, i8 addrspace(3)* %374, align 1, !tbaa !24
  %376 = zext i8 %375 to i32
  %377 = or i32 %369, 2
  %378 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %377
  %379 = load i8, i8 addrspace(3)* %378, align 2, !tbaa !24
  %380 = zext i8 %379 to i32
  %381 = or i32 %369, 3
  %382 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %381
  %383 = load i8, i8 addrspace(3)* %382, align 1, !tbaa !24
  %384 = zext i8 %383 to i32
  %385 = add nuw nsw i32 %367, %372
  %386 = add nuw nsw i32 %385, %376
  %387 = add nuw nsw i32 %386, %380
  %388 = add nuw nsw i32 %387, %384
  %389 = add nuw nsw i32 %13, 44
  %390 = and i32 %389, 60
  %391 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %390
  %392 = load i8, i8 addrspace(3)* %391, align 4, !tbaa !24
  %393 = zext i8 %392 to i32
  %394 = or i32 %390, 1
  %395 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %394
  %396 = load i8, i8 addrspace(3)* %395, align 1, !tbaa !24
  %397 = zext i8 %396 to i32
  %398 = or i32 %390, 2
  %399 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %398
  %400 = load i8, i8 addrspace(3)* %399, align 2, !tbaa !24
  %401 = zext i8 %400 to i32
  %402 = or i32 %390, 3
  %403 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %402
  %404 = load i8, i8 addrspace(3)* %403, align 1, !tbaa !24
  %405 = zext i8 %404 to i32
  %406 = add nuw nsw i32 %388, %393
  %407 = add nuw nsw i32 %406, %397
  %408 = add nuw nsw i32 %407, %401
  %409 = add nuw nsw i32 %408, %405
  %410 = add nuw nsw i32 %13, 48
  %411 = and i32 %410, 60
  %412 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %411
  %413 = load i8, i8 addrspace(3)* %412, align 4, !tbaa !24
  %414 = zext i8 %413 to i32
  %415 = or i32 %411, 1
  %416 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %415
  %417 = load i8, i8 addrspace(3)* %416, align 1, !tbaa !24
  %418 = zext i8 %417 to i32
  %419 = or i32 %411, 2
  %420 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %419
  %421 = load i8, i8 addrspace(3)* %420, align 2, !tbaa !24
  %422 = zext i8 %421 to i32
  %423 = or i32 %411, 3
  %424 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %423
  %425 = load i8, i8 addrspace(3)* %424, align 1, !tbaa !24
  %426 = zext i8 %425 to i32
  %427 = add nuw nsw i32 %409, %414
  %428 = add nuw nsw i32 %427, %418
  %429 = add nuw nsw i32 %428, %422
  %430 = add nuw nsw i32 %429, %426
  %431 = add nuw nsw i32 %13, 52
  %432 = and i32 %431, 60
  %433 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %432
  %434 = load i8, i8 addrspace(3)* %433, align 4, !tbaa !24
  %435 = zext i8 %434 to i32
  %436 = or i32 %432, 1
  %437 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %436
  %438 = load i8, i8 addrspace(3)* %437, align 1, !tbaa !24
  %439 = zext i8 %438 to i32
  %440 = or i32 %432, 2
  %441 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %440
  %442 = load i8, i8 addrspace(3)* %441, align 2, !tbaa !24
  %443 = zext i8 %442 to i32
  %444 = or i32 %432, 3
  %445 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %444
  %446 = load i8, i8 addrspace(3)* %445, align 1, !tbaa !24
  %447 = zext i8 %446 to i32
  %448 = add nuw nsw i32 %430, %435
  %449 = add nuw nsw i32 %448, %439
  %450 = add nuw nsw i32 %449, %443
  %451 = add nuw nsw i32 %450, %447
  %452 = add nuw nsw i32 %13, 56
  %453 = and i32 %452, 60
  %454 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %453
  %455 = load i8, i8 addrspace(3)* %454, align 4, !tbaa !24
  %456 = zext i8 %455 to i32
  %457 = or i32 %453, 1
  %458 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %457
  %459 = load i8, i8 addrspace(3)* %458, align 1, !tbaa !24
  %460 = zext i8 %459 to i32
  %461 = or i32 %453, 2
  %462 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %461
  %463 = load i8, i8 addrspace(3)* %462, align 2, !tbaa !24
  %464 = zext i8 %463 to i32
  %465 = or i32 %453, 3
  %466 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %465
  %467 = load i8, i8 addrspace(3)* %466, align 1, !tbaa !24
  %468 = zext i8 %467 to i32
  %469 = add nuw nsw i32 %451, %456
  %470 = add nuw nsw i32 %469, %460
  %471 = add nuw nsw i32 %470, %464
  %472 = add nuw nsw i32 %471, %468
  %473 = add nuw nsw i32 %13, 60
  %474 = and i32 %473, 60
  %475 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %474
  %476 = load i8, i8 addrspace(3)* %475, align 4, !tbaa !24
  %477 = zext i8 %476 to i32
  %478 = or i32 %474, 1
  %479 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %478
  %480 = load i8, i8 addrspace(3)* %479, align 1, !tbaa !24
  %481 = zext i8 %480 to i32
  %482 = or i32 %474, 2
  %483 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %482
  %484 = load i8, i8 addrspace(3)* %483, align 2, !tbaa !24
  %485 = zext i8 %484 to i32
  %486 = or i32 %474, 3
  %487 = getelementptr inbounds i8, i8 addrspace(3)* %160, i32 %486
  %488 = load i8, i8 addrspace(3)* %487, align 1, !tbaa !24
  %489 = zext i8 %488 to i32
  %490 = add nuw nsw i32 %472, %477
  %491 = add nuw nsw i32 %490, %481
  %492 = add nuw nsw i32 %491, %485
  %493 = add nuw nsw i32 %492, %489
  %494 = shl i32 %50, 6
  %495 = add nuw i32 %494, %11
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %496
  store i32 %493, i32 addrspace(1)* %497, align 4, !tbaa !16
  br label %498

498:                                              ; preds = %158, %63
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z22mergeHistogram64KernelPjS_j(i32 addrspace(1)* nocapture writeonly %0, i32 addrspace(1)* nocapture readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %5 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !15
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %11, label %7

7:                                                ; preds = %11, %3
  %8 = phi i32 [ 0, %3 ], [ %19, %11 ]
  %9 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %5
  store i32 %8, i32 addrspace(3)* %9, align 4, !tbaa !16
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %10 = icmp ult i32 %5, 128
  br i1 %10, label %22, label %28

11:                                               ; preds = %3, %11
  %12 = phi i32 [ %20, %11 ], [ %5, %3 ]
  %13 = phi i32 [ %19, %11 ], [ 0, %3 ]
  %14 = shl i32 %12, 6
  %15 = add i32 %14, %4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %16
  %18 = load i32, i32 addrspace(1)* %17, align 4, !tbaa !16
  %19 = add i32 %18, %13
  %20 = add i32 %12, 256
  %21 = icmp ult i32 %20, %2
  br i1 %21, label %11, label %7, !llvm.loop !26

22:                                               ; preds = %7
  %23 = add nuw nsw i32 %5, 128
  %24 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %23
  %25 = load i32, i32 addrspace(3)* %24, align 4, !tbaa !16
  %26 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %27 = add i32 %26, %25
  store i32 %27, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %28

28:                                               ; preds = %7, %22
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %29 = icmp ult i32 %5, 64
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = add nuw nsw i32 %5, 64
  %32 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %31
  %33 = load i32, i32 addrspace(3)* %32, align 4, !tbaa !16
  %34 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %35 = add i32 %34, %33
  store i32 %35, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %36

36:                                               ; preds = %30, %28
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %37 = icmp ult i32 %5, 32
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = add nuw nsw i32 %5, 32
  %40 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %39
  %41 = load i32, i32 addrspace(3)* %40, align 4, !tbaa !16
  %42 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %43 = add i32 %42, %41
  store i32 %43, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %44

44:                                               ; preds = %38, %36
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %45 = icmp ult i32 %5, 16
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = add nuw nsw i32 %5, 16
  %48 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %47
  %49 = load i32, i32 addrspace(3)* %48, align 4, !tbaa !16
  %50 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %51 = add i32 %50, %49
  store i32 %51, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %52

52:                                               ; preds = %46, %44
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %53 = icmp ult i32 %5, 8
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = add nuw nsw i32 %5, 8
  %56 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %55
  %57 = load i32, i32 addrspace(3)* %56, align 4, !tbaa !16
  %58 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %59 = add i32 %58, %57
  store i32 %59, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %60

60:                                               ; preds = %54, %52
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %61 = icmp ult i32 %5, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  %63 = add nuw nsw i32 %5, 4
  %64 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %63
  %65 = load i32, i32 addrspace(3)* %64, align 4, !tbaa !16
  %66 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %67 = add i32 %66, %65
  store i32 %67, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %68

68:                                               ; preds = %62, %60
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %69 = icmp ult i32 %5, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = add nuw nsw i32 %5, 2
  %72 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %71
  %73 = load i32, i32 addrspace(3)* %72, align 4, !tbaa !16
  %74 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %75 = add i32 %74, %73
  store i32 %75, i32 addrspace(3)* %9, align 4, !tbaa !16
  br label %76

76:                                               ; preds = %70, %68
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %77 = icmp eq i32 %5, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %76
  %79 = add nuw nsw i32 %5, 1
  %80 = getelementptr inbounds [256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 %79
  %81 = load i32, i32 addrspace(3)* %80, align 4, !tbaa !16
  %82 = load i32, i32 addrspace(3)* %9, align 4, !tbaa !16
  %83 = add i32 %82, %81
  store i32 %83, i32 addrspace(3)* %9, align 4, !tbaa !16
  %84 = zext i32 %4 to i64
  %85 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %84
  %86 = load i32, i32 addrspace(3)* getelementptr inbounds ([256 x i32], [256 x i32] addrspace(3)* @_ZZ22mergeHistogram64KernelPjS_jE4data, i32 0, i32 0), align 16, !tbaa !16
  store i32 %86, i32 addrspace(1)* %85, align 4, !tbaa !16
  br label %87

87:                                               ; preds = %76, %78
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i16 1, i16 1025}
!5 = !{}
!6 = !{!7, !11, i64 12}
!7 = !{!"hsa_kernel_dispatch_packet_s", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !13, i64 40, !12, i64 48, !14, i64 56}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"hsa_signal_s", !12, i64 0}
!15 = !{i32 0, i32 1024}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C++ TBAA"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = distinct !{!23, !21}
!24 = !{!18, !18, i64 0}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !21}
