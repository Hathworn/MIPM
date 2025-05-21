; ModuleID = 'matrixMul.cpp'
source_filename = "matrixMul.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

$_Z12MatrixMulHIPILi16EEvPfS0_S0_ii = comdat any

$_Z12MatrixMulHIPILi32EEvPfS0_S0_ii = comdat any

$_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As = comdat any

$_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs = comdat any

$_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As = comdat any

$_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs = comdat any

@_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As = linkonce_odr hidden local_unnamed_addr addrspace(3) global [16 x [16 x float]] undef, comdat, align 16
@_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs = linkonce_odr hidden local_unnamed_addr addrspace(3) global [16 x [16 x float]] undef, comdat, align 16
@_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As = linkonce_odr hidden local_unnamed_addr addrspace(3) global [32 x [32 x float]] undef, comdat, align 16
@_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs = linkonce_odr hidden local_unnamed_addr addrspace(3) global [32 x [32 x float]] undef, comdat, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z12MatrixMulHIPILi16EEvPfS0_S0_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %9 = tail call i32 @llvm.amdgcn.workitem.id.y() #3, !range !4
  %10 = shl nsw i32 %3, 4
  %11 = mul nsw i32 %10, %7
  %12 = add nsw i32 %11, %3
  %13 = shl nsw i32 %6, 4
  %14 = shl nsw i32 %4, 4
  %15 = mul nsw i32 %9, %3
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 %8
  %18 = mul nsw i32 %9, %4
  %19 = add i32 %18, %8
  %20 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 %9, i32 %8
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %5
  %23 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 0
  %24 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 0, i32 %8
  %25 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 1
  %26 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 1, i32 %8
  %27 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 2
  %28 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 2, i32 %8
  %29 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 3
  %30 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 3, i32 %8
  %31 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 4
  %32 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 4, i32 %8
  %33 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 5
  %34 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 5, i32 %8
  %35 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 6
  %36 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 6, i32 %8
  %37 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 7
  %38 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 7, i32 %8
  %39 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 8
  %40 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 8, i32 %8
  %41 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 9
  %42 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 9, i32 %8
  %43 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 10
  %44 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 10, i32 %8
  %45 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 11
  %46 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 11, i32 %8
  %47 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 12
  %48 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 12, i32 %8
  %49 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 13
  %50 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 13, i32 %8
  %51 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 14
  %52 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 14, i32 %8
  %53 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 15
  %54 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi16EEvPfS0_S0_iiE2Bs, i32 0, i32 15, i32 %8
  br label %63

55:                                               ; preds = %63, %5
  %56 = phi float [ 0.000000e+00, %5 ], [ %138, %63 ]
  %57 = mul nsw i32 %14, %7
  %58 = add i32 %13, %8
  %59 = add i32 %58, %18
  %60 = add i32 %59, %57
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float addrspace(1)* %0, i64 %61
  store float %56, float addrspace(1)* %62, align 4, !tbaa !5
  ret void

63:                                               ; preds = %22, %63
  %64 = phi float [ %138, %63 ], [ 0.000000e+00, %22 ]
  %65 = phi i32 [ %140, %63 ], [ %13, %22 ]
  %66 = phi i32 [ %139, %63 ], [ %11, %22 ]
  %67 = add i32 %16, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float addrspace(1)* %1, i64 %68
  %70 = load float, float addrspace(1)* %69, align 4, !tbaa !5
  store float %70, float addrspace(3)* %17, align 4, !tbaa !5
  %71 = add i32 %19, %65
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float addrspace(1)* %2, i64 %72
  %74 = load float, float addrspace(1)* %73, align 4, !tbaa !5
  store float %74, float addrspace(3)* %20, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %75 = load float, float addrspace(3)* %23, align 16, !tbaa !5
  %76 = load float, float addrspace(3)* %24, align 4, !tbaa !5
  %77 = fmul contract float %75, %76
  %78 = fadd contract float %64, %77
  %79 = load float, float addrspace(3)* %25, align 4, !tbaa !5
  %80 = load float, float addrspace(3)* %26, align 4, !tbaa !5
  %81 = fmul contract float %79, %80
  %82 = fadd contract float %78, %81
  %83 = load float, float addrspace(3)* %27, align 8, !tbaa !5
  %84 = load float, float addrspace(3)* %28, align 4, !tbaa !5
  %85 = fmul contract float %83, %84
  %86 = fadd contract float %82, %85
  %87 = load float, float addrspace(3)* %29, align 4, !tbaa !5
  %88 = load float, float addrspace(3)* %30, align 4, !tbaa !5
  %89 = fmul contract float %87, %88
  %90 = fadd contract float %86, %89
  %91 = load float, float addrspace(3)* %31, align 16, !tbaa !5
  %92 = load float, float addrspace(3)* %32, align 4, !tbaa !5
  %93 = fmul contract float %91, %92
  %94 = fadd contract float %90, %93
  %95 = load float, float addrspace(3)* %33, align 4, !tbaa !5
  %96 = load float, float addrspace(3)* %34, align 4, !tbaa !5
  %97 = fmul contract float %95, %96
  %98 = fadd contract float %94, %97
  %99 = load float, float addrspace(3)* %35, align 8, !tbaa !5
  %100 = load float, float addrspace(3)* %36, align 4, !tbaa !5
  %101 = fmul contract float %99, %100
  %102 = fadd contract float %98, %101
  %103 = load float, float addrspace(3)* %37, align 4, !tbaa !5
  %104 = load float, float addrspace(3)* %38, align 4, !tbaa !5
  %105 = fmul contract float %103, %104
  %106 = fadd contract float %102, %105
  %107 = load float, float addrspace(3)* %39, align 16, !tbaa !5
  %108 = load float, float addrspace(3)* %40, align 4, !tbaa !5
  %109 = fmul contract float %107, %108
  %110 = fadd contract float %106, %109
  %111 = load float, float addrspace(3)* %41, align 4, !tbaa !5
  %112 = load float, float addrspace(3)* %42, align 4, !tbaa !5
  %113 = fmul contract float %111, %112
  %114 = fadd contract float %110, %113
  %115 = load float, float addrspace(3)* %43, align 8, !tbaa !5
  %116 = load float, float addrspace(3)* %44, align 4, !tbaa !5
  %117 = fmul contract float %115, %116
  %118 = fadd contract float %114, %117
  %119 = load float, float addrspace(3)* %45, align 4, !tbaa !5
  %120 = load float, float addrspace(3)* %46, align 4, !tbaa !5
  %121 = fmul contract float %119, %120
  %122 = fadd contract float %118, %121
  %123 = load float, float addrspace(3)* %47, align 16, !tbaa !5
  %124 = load float, float addrspace(3)* %48, align 4, !tbaa !5
  %125 = fmul contract float %123, %124
  %126 = fadd contract float %122, %125
  %127 = load float, float addrspace(3)* %49, align 4, !tbaa !5
  %128 = load float, float addrspace(3)* %50, align 4, !tbaa !5
  %129 = fmul contract float %127, %128
  %130 = fadd contract float %126, %129
  %131 = load float, float addrspace(3)* %51, align 8, !tbaa !5
  %132 = load float, float addrspace(3)* %52, align 4, !tbaa !5
  %133 = fmul contract float %131, %132
  %134 = fadd contract float %130, %133
  %135 = load float, float addrspace(3)* %53, align 4, !tbaa !5
  %136 = load float, float addrspace(3)* %54, align 4, !tbaa !5
  %137 = fmul contract float %135, %136
  %138 = fadd contract float %134, %137
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %139 = add nsw i32 %66, 16
  %140 = add nsw i32 %65, %14
  %141 = icmp slt i32 %139, %12
  br i1 %141, label %63, label %55, !llvm.loop !9
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z12MatrixMulHIPILi32EEvPfS0_S0_ii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %9 = tail call i32 @llvm.amdgcn.workitem.id.y() #3, !range !4
  %10 = shl nsw i32 %3, 5
  %11 = mul nsw i32 %10, %7
  %12 = add nsw i32 %11, %3
  %13 = shl nsw i32 %6, 5
  %14 = shl nsw i32 %4, 5
  %15 = mul nsw i32 %9, %3
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 %8
  %18 = mul nsw i32 %9, %4
  %19 = add i32 %18, %8
  %20 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 %9, i32 %8
  %21 = icmp sgt i32 %3, 0
  br i1 %21, label %22, label %87

22:                                               ; preds = %5
  %23 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 0
  %24 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 0, i32 %8
  %25 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 1
  %26 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 1, i32 %8
  %27 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 2
  %28 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 2, i32 %8
  %29 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 3
  %30 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 3, i32 %8
  %31 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 4
  %32 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 4, i32 %8
  %33 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 5
  %34 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 5, i32 %8
  %35 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 6
  %36 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 6, i32 %8
  %37 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 7
  %38 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 7, i32 %8
  %39 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 8
  %40 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 8, i32 %8
  %41 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 9
  %42 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 9, i32 %8
  %43 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 10
  %44 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 10, i32 %8
  %45 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 11
  %46 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 11, i32 %8
  %47 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 12
  %48 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 12, i32 %8
  %49 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 13
  %50 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 13, i32 %8
  %51 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 14
  %52 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 14, i32 %8
  %53 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 15
  %54 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 15, i32 %8
  %55 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 16
  %56 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 16, i32 %8
  %57 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 17
  %58 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 17, i32 %8
  %59 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 18
  %60 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 18, i32 %8
  %61 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 19
  %62 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 19, i32 %8
  %63 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 20
  %64 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 20, i32 %8
  %65 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 21
  %66 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 21, i32 %8
  %67 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 22
  %68 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 22, i32 %8
  %69 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 23
  %70 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 23, i32 %8
  %71 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 24
  %72 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 24, i32 %8
  %73 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 25
  %74 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 25, i32 %8
  %75 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 26
  %76 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 26, i32 %8
  %77 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 27
  %78 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 27, i32 %8
  %79 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 28
  %80 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 28, i32 %8
  %81 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 29
  %82 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 29, i32 %8
  %83 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 30
  %84 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 30, i32 %8
  %85 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2As, i32 0, i32 %9, i32 31
  %86 = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]] addrspace(3)* @_ZZ12MatrixMulHIPILi32EEvPfS0_S0_iiE2Bs, i32 0, i32 31, i32 %8
  br label %95

87:                                               ; preds = %95, %5
  %88 = phi float [ 0.000000e+00, %5 ], [ %234, %95 ]
  %89 = mul nsw i32 %14, %7
  %90 = add i32 %13, %8
  %91 = add i32 %90, %18
  %92 = add i32 %91, %89
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float addrspace(1)* %0, i64 %93
  store float %88, float addrspace(1)* %94, align 4, !tbaa !5
  ret void

95:                                               ; preds = %22, %95
  %96 = phi float [ %234, %95 ], [ 0.000000e+00, %22 ]
  %97 = phi i32 [ %236, %95 ], [ %13, %22 ]
  %98 = phi i32 [ %235, %95 ], [ %11, %22 ]
  %99 = add i32 %16, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float addrspace(1)* %1, i64 %100
  %102 = load float, float addrspace(1)* %101, align 4, !tbaa !5
  store float %102, float addrspace(3)* %17, align 4, !tbaa !5
  %103 = add i32 %19, %97
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float addrspace(1)* %2, i64 %104
  %106 = load float, float addrspace(1)* %105, align 4, !tbaa !5
  store float %106, float addrspace(3)* %20, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %107 = load float, float addrspace(3)* %23, align 16, !tbaa !5
  %108 = load float, float addrspace(3)* %24, align 4, !tbaa !5
  %109 = fmul contract float %107, %108
  %110 = fadd contract float %96, %109
  %111 = load float, float addrspace(3)* %25, align 4, !tbaa !5
  %112 = load float, float addrspace(3)* %26, align 4, !tbaa !5
  %113 = fmul contract float %111, %112
  %114 = fadd contract float %110, %113
  %115 = load float, float addrspace(3)* %27, align 8, !tbaa !5
  %116 = load float, float addrspace(3)* %28, align 4, !tbaa !5
  %117 = fmul contract float %115, %116
  %118 = fadd contract float %114, %117
  %119 = load float, float addrspace(3)* %29, align 4, !tbaa !5
  %120 = load float, float addrspace(3)* %30, align 4, !tbaa !5
  %121 = fmul contract float %119, %120
  %122 = fadd contract float %118, %121
  %123 = load float, float addrspace(3)* %31, align 16, !tbaa !5
  %124 = load float, float addrspace(3)* %32, align 4, !tbaa !5
  %125 = fmul contract float %123, %124
  %126 = fadd contract float %122, %125
  %127 = load float, float addrspace(3)* %33, align 4, !tbaa !5
  %128 = load float, float addrspace(3)* %34, align 4, !tbaa !5
  %129 = fmul contract float %127, %128
  %130 = fadd contract float %126, %129
  %131 = load float, float addrspace(3)* %35, align 8, !tbaa !5
  %132 = load float, float addrspace(3)* %36, align 4, !tbaa !5
  %133 = fmul contract float %131, %132
  %134 = fadd contract float %130, %133
  %135 = load float, float addrspace(3)* %37, align 4, !tbaa !5
  %136 = load float, float addrspace(3)* %38, align 4, !tbaa !5
  %137 = fmul contract float %135, %136
  %138 = fadd contract float %134, %137
  %139 = load float, float addrspace(3)* %39, align 16, !tbaa !5
  %140 = load float, float addrspace(3)* %40, align 4, !tbaa !5
  %141 = fmul contract float %139, %140
  %142 = fadd contract float %138, %141
  %143 = load float, float addrspace(3)* %41, align 4, !tbaa !5
  %144 = load float, float addrspace(3)* %42, align 4, !tbaa !5
  %145 = fmul contract float %143, %144
  %146 = fadd contract float %142, %145
  %147 = load float, float addrspace(3)* %43, align 8, !tbaa !5
  %148 = load float, float addrspace(3)* %44, align 4, !tbaa !5
  %149 = fmul contract float %147, %148
  %150 = fadd contract float %146, %149
  %151 = load float, float addrspace(3)* %45, align 4, !tbaa !5
  %152 = load float, float addrspace(3)* %46, align 4, !tbaa !5
  %153 = fmul contract float %151, %152
  %154 = fadd contract float %150, %153
  %155 = load float, float addrspace(3)* %47, align 16, !tbaa !5
  %156 = load float, float addrspace(3)* %48, align 4, !tbaa !5
  %157 = fmul contract float %155, %156
  %158 = fadd contract float %154, %157
  %159 = load float, float addrspace(3)* %49, align 4, !tbaa !5
  %160 = load float, float addrspace(3)* %50, align 4, !tbaa !5
  %161 = fmul contract float %159, %160
  %162 = fadd contract float %158, %161
  %163 = load float, float addrspace(3)* %51, align 8, !tbaa !5
  %164 = load float, float addrspace(3)* %52, align 4, !tbaa !5
  %165 = fmul contract float %163, %164
  %166 = fadd contract float %162, %165
  %167 = load float, float addrspace(3)* %53, align 4, !tbaa !5
  %168 = load float, float addrspace(3)* %54, align 4, !tbaa !5
  %169 = fmul contract float %167, %168
  %170 = fadd contract float %166, %169
  %171 = load float, float addrspace(3)* %55, align 16, !tbaa !5
  %172 = load float, float addrspace(3)* %56, align 4, !tbaa !5
  %173 = fmul contract float %171, %172
  %174 = fadd contract float %170, %173
  %175 = load float, float addrspace(3)* %57, align 4, !tbaa !5
  %176 = load float, float addrspace(3)* %58, align 4, !tbaa !5
  %177 = fmul contract float %175, %176
  %178 = fadd contract float %174, %177
  %179 = load float, float addrspace(3)* %59, align 8, !tbaa !5
  %180 = load float, float addrspace(3)* %60, align 4, !tbaa !5
  %181 = fmul contract float %179, %180
  %182 = fadd contract float %178, %181
  %183 = load float, float addrspace(3)* %61, align 4, !tbaa !5
  %184 = load float, float addrspace(3)* %62, align 4, !tbaa !5
  %185 = fmul contract float %183, %184
  %186 = fadd contract float %182, %185
  %187 = load float, float addrspace(3)* %63, align 16, !tbaa !5
  %188 = load float, float addrspace(3)* %64, align 4, !tbaa !5
  %189 = fmul contract float %187, %188
  %190 = fadd contract float %186, %189
  %191 = load float, float addrspace(3)* %65, align 4, !tbaa !5
  %192 = load float, float addrspace(3)* %66, align 4, !tbaa !5
  %193 = fmul contract float %191, %192
  %194 = fadd contract float %190, %193
  %195 = load float, float addrspace(3)* %67, align 8, !tbaa !5
  %196 = load float, float addrspace(3)* %68, align 4, !tbaa !5
  %197 = fmul contract float %195, %196
  %198 = fadd contract float %194, %197
  %199 = load float, float addrspace(3)* %69, align 4, !tbaa !5
  %200 = load float, float addrspace(3)* %70, align 4, !tbaa !5
  %201 = fmul contract float %199, %200
  %202 = fadd contract float %198, %201
  %203 = load float, float addrspace(3)* %71, align 16, !tbaa !5
  %204 = load float, float addrspace(3)* %72, align 4, !tbaa !5
  %205 = fmul contract float %203, %204
  %206 = fadd contract float %202, %205
  %207 = load float, float addrspace(3)* %73, align 4, !tbaa !5
  %208 = load float, float addrspace(3)* %74, align 4, !tbaa !5
  %209 = fmul contract float %207, %208
  %210 = fadd contract float %206, %209
  %211 = load float, float addrspace(3)* %75, align 8, !tbaa !5
  %212 = load float, float addrspace(3)* %76, align 4, !tbaa !5
  %213 = fmul contract float %211, %212
  %214 = fadd contract float %210, %213
  %215 = load float, float addrspace(3)* %77, align 4, !tbaa !5
  %216 = load float, float addrspace(3)* %78, align 4, !tbaa !5
  %217 = fmul contract float %215, %216
  %218 = fadd contract float %214, %217
  %219 = load float, float addrspace(3)* %79, align 16, !tbaa !5
  %220 = load float, float addrspace(3)* %80, align 4, !tbaa !5
  %221 = fmul contract float %219, %220
  %222 = fadd contract float %218, %221
  %223 = load float, float addrspace(3)* %81, align 4, !tbaa !5
  %224 = load float, float addrspace(3)* %82, align 4, !tbaa !5
  %225 = fmul contract float %223, %224
  %226 = fadd contract float %222, %225
  %227 = load float, float addrspace(3)* %83, align 8, !tbaa !5
  %228 = load float, float addrspace(3)* %84, align 4, !tbaa !5
  %229 = fmul contract float %227, %228
  %230 = fadd contract float %226, %229
  %231 = load float, float addrspace(3)* %85, align 4, !tbaa !5
  %232 = load float, float addrspace(3)* %86, align 4, !tbaa !5
  %233 = fmul contract float %231, %232
  %234 = fadd contract float %230, %233
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %235 = add nsw i32 %98, 32
  %236 = add nsw i32 %97, %14
  %237 = icmp slt i32 %235, %12
  br i1 %237, label %95, label %87, !llvm.loop !11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

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
!4 = !{i32 0, i32 1024}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
