; ModuleID = 'hip/lud/lud_kernel.hip.cu'
source_filename = "hip/lud/lud_kernel.hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ12lud_diagonalPfiiE6shadow = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ13lud_perimeterPfiiE3dia = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ13lud_perimeterPfiiE8peri_row = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ13lud_perimeterPfiiE8peri_col = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ12lud_internalPfiiE8peri_row = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ12lud_internalPfiiE8peri_col = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z12lud_diagonalPfii(float addrspace(1)* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  %4 = mul nsw i32 %2, %1
  %5 = add nsw i32 %4, %2
  %6 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %7 = zext i32 %6 to i64
  %8 = sext i32 %5 to i64
  %9 = add nsw i64 %8, %7
  %10 = getelementptr inbounds float, float addrspace(1)* %0, i64 %9
  %11 = load float, float addrspace(1)* %10, align 4, !tbaa !6, !amdgpu.noclobber !10
  %12 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 %6
  store float %11, float addrspace(3)* %12, align 4, !tbaa !6
  %13 = add nsw i32 %5, %1
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %7
  %16 = getelementptr inbounds float, float addrspace(1)* %0, i64 %15
  %17 = load float, float addrspace(1)* %16, align 4, !tbaa !6, !amdgpu.noclobber !10
  %18 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 %6
  store float %17, float addrspace(3)* %18, align 4, !tbaa !6
  %19 = add nsw i32 %13, %1
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %7
  %22 = getelementptr inbounds float, float addrspace(1)* %0, i64 %21
  %23 = load float, float addrspace(1)* %22, align 4, !tbaa !6, !amdgpu.noclobber !10
  %24 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 %6
  store float %23, float addrspace(3)* %24, align 4, !tbaa !6
  %25 = add nsw i32 %19, %1
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %7
  %28 = getelementptr inbounds float, float addrspace(1)* %0, i64 %27
  %29 = load float, float addrspace(1)* %28, align 4, !tbaa !6, !amdgpu.noclobber !10
  %30 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 %6
  store float %29, float addrspace(3)* %30, align 4, !tbaa !6
  %31 = add nsw i32 %25, %1
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %7
  %34 = getelementptr inbounds float, float addrspace(1)* %0, i64 %33
  %35 = load float, float addrspace(1)* %34, align 4, !tbaa !6, !amdgpu.noclobber !10
  %36 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 %6
  store float %35, float addrspace(3)* %36, align 4, !tbaa !6
  %37 = add nsw i32 %31, %1
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %7
  %40 = getelementptr inbounds float, float addrspace(1)* %0, i64 %39
  %41 = load float, float addrspace(1)* %40, align 4, !tbaa !6, !amdgpu.noclobber !10
  %42 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 %6
  store float %41, float addrspace(3)* %42, align 4, !tbaa !6
  %43 = add nsw i32 %37, %1
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %7
  %46 = getelementptr inbounds float, float addrspace(1)* %0, i64 %45
  %47 = load float, float addrspace(1)* %46, align 4, !tbaa !6, !amdgpu.noclobber !10
  %48 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 %6
  store float %47, float addrspace(3)* %48, align 4, !tbaa !6
  %49 = add nsw i32 %43, %1
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %7
  %52 = getelementptr inbounds float, float addrspace(1)* %0, i64 %51
  %53 = load float, float addrspace(1)* %52, align 4, !tbaa !6, !amdgpu.noclobber !10
  %54 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 %6
  store float %53, float addrspace(3)* %54, align 4, !tbaa !6
  %55 = add nsw i32 %49, %1
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %7
  %58 = getelementptr inbounds float, float addrspace(1)* %0, i64 %57
  %59 = load float, float addrspace(1)* %58, align 4, !tbaa !6, !amdgpu.noclobber !10
  %60 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 %6
  store float %59, float addrspace(3)* %60, align 4, !tbaa !6
  %61 = add nsw i32 %55, %1
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %7
  %64 = getelementptr inbounds float, float addrspace(1)* %0, i64 %63
  %65 = load float, float addrspace(1)* %64, align 4, !tbaa !6, !amdgpu.noclobber !10
  %66 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 %6
  store float %65, float addrspace(3)* %66, align 4, !tbaa !6
  %67 = add nsw i32 %61, %1
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %7
  %70 = getelementptr inbounds float, float addrspace(1)* %0, i64 %69
  %71 = load float, float addrspace(1)* %70, align 4, !tbaa !6, !amdgpu.noclobber !10
  %72 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 %6
  store float %71, float addrspace(3)* %72, align 4, !tbaa !6
  %73 = add nsw i32 %67, %1
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %7
  %76 = getelementptr inbounds float, float addrspace(1)* %0, i64 %75
  %77 = load float, float addrspace(1)* %76, align 4, !tbaa !6, !amdgpu.noclobber !10
  %78 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 %6
  store float %77, float addrspace(3)* %78, align 4, !tbaa !6
  %79 = add nsw i32 %73, %1
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %7
  %82 = getelementptr inbounds float, float addrspace(1)* %0, i64 %81
  %83 = load float, float addrspace(1)* %82, align 4, !tbaa !6, !amdgpu.noclobber !10
  %84 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 %6
  store float %83, float addrspace(3)* %84, align 4, !tbaa !6
  %85 = add nsw i32 %79, %1
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %7
  %88 = getelementptr inbounds float, float addrspace(1)* %0, i64 %87
  %89 = load float, float addrspace(1)* %88, align 4, !tbaa !6, !amdgpu.noclobber !10
  %90 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 %6
  store float %89, float addrspace(3)* %90, align 4, !tbaa !6
  %91 = add nsw i32 %85, %1
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %7
  %94 = getelementptr inbounds float, float addrspace(1)* %0, i64 %93
  %95 = load float, float addrspace(1)* %94, align 4, !tbaa !6, !amdgpu.noclobber !10
  %96 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 %6
  store float %95, float addrspace(3)* %96, align 4, !tbaa !6
  %97 = add nsw i32 %91, %1
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %7
  %100 = getelementptr inbounds float, float addrspace(1)* %0, i64 %99
  %101 = load float, float addrspace(1)* %100, align 4, !tbaa !6, !amdgpu.noclobber !10
  %102 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 %6
  store float %101, float addrspace(3)* %102, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %103 = icmp eq i32 %6, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %3
  %105 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 0), align 16, !tbaa !6
  %106 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %107 = load float, float addrspace(3)* %106, align 16, !tbaa !6
  %108 = fdiv contract float %107, %105
  store float %108, float addrspace(3)* %106, align 16, !tbaa !6
  br label %109

109:                                              ; preds = %104, %3
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %103, label %116, label %110

110:                                              ; preds = %109
  %111 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 0), align 16, !tbaa !6
  %112 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %113 = fmul contract float %111, %112
  %114 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %115 = fsub contract float %114, %113
  store float %115, float addrspace(3)* %18, align 4, !tbaa !6
  br label %116

116:                                              ; preds = %110, %109
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %117 = icmp ugt i32 %6, 1
  br i1 %117, label %118, label %129

118:                                              ; preds = %116
  %119 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %120 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %121 = load float, float addrspace(3)* %120, align 16, !tbaa !6
  %122 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 1), align 4, !tbaa !6
  %123 = fmul contract float %121, %122
  %124 = load float, float addrspace(3)* %119, align 4, !tbaa !6
  %125 = fsub contract float %124, %123
  store float %125, float addrspace(3)* %119, align 4, !tbaa !6
  %126 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 1), align 4, !tbaa !6
  %127 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %128 = fdiv contract float %125, %126
  store float %128, float addrspace(3)* %127, align 4, !tbaa !6
  br label %129

129:                                              ; preds = %118, %116
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %117, label %130, label %140

130:                                              ; preds = %129
  %131 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 0), align 16, !tbaa !6
  %132 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %133 = fmul contract float %131, %132
  %134 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %135 = fsub contract float %134, %133
  store float %135, float addrspace(3)* %24, align 4, !tbaa !6
  %136 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 1), align 4, !tbaa !6
  %137 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %138 = fmul contract float %136, %137
  %139 = fsub contract float %135, %138
  store float %139, float addrspace(3)* %24, align 4, !tbaa !6
  br label %140

140:                                              ; preds = %130, %129
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %141 = icmp ugt i32 %6, 2
  br i1 %141, label %142, label %158

142:                                              ; preds = %140
  %143 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %144 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %145 = load float, float addrspace(3)* %144, align 16, !tbaa !6
  %146 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 2), align 8, !tbaa !6
  %147 = fmul contract float %145, %146
  %148 = load float, float addrspace(3)* %143, align 8, !tbaa !6
  %149 = fsub contract float %148, %147
  store float %149, float addrspace(3)* %143, align 8, !tbaa !6
  %150 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %151 = load float, float addrspace(3)* %150, align 4, !tbaa !6
  %152 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 2), align 8, !tbaa !6
  %153 = fmul contract float %151, %152
  %154 = fsub contract float %149, %153
  store float %154, float addrspace(3)* %143, align 8, !tbaa !6
  %155 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 2), align 8, !tbaa !6
  %156 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %157 = fdiv contract float %154, %155
  store float %157, float addrspace(3)* %156, align 8, !tbaa !6
  br label %158

158:                                              ; preds = %142, %140
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %141, label %159, label %173

159:                                              ; preds = %158
  %160 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 0), align 16, !tbaa !6
  %161 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %162 = fmul contract float %160, %161
  %163 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %164 = fsub contract float %163, %162
  store float %164, float addrspace(3)* %30, align 4, !tbaa !6
  %165 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 1), align 4, !tbaa !6
  %166 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %167 = fmul contract float %165, %166
  %168 = fsub contract float %164, %167
  store float %168, float addrspace(3)* %30, align 4, !tbaa !6
  %169 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 2), align 8, !tbaa !6
  %170 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %171 = fmul contract float %169, %170
  %172 = fsub contract float %168, %171
  store float %172, float addrspace(3)* %30, align 4, !tbaa !6
  br label %173

173:                                              ; preds = %159, %158
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %174 = icmp ugt i32 %6, 3
  br i1 %174, label %175, label %196

175:                                              ; preds = %173
  %176 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %177 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %178 = load float, float addrspace(3)* %177, align 16, !tbaa !6
  %179 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 3), align 4, !tbaa !6
  %180 = fmul contract float %178, %179
  %181 = load float, float addrspace(3)* %176, align 4, !tbaa !6
  %182 = fsub contract float %181, %180
  store float %182, float addrspace(3)* %176, align 4, !tbaa !6
  %183 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %184 = load float, float addrspace(3)* %183, align 4, !tbaa !6
  %185 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 3), align 4, !tbaa !6
  %186 = fmul contract float %184, %185
  %187 = fsub contract float %182, %186
  store float %187, float addrspace(3)* %176, align 4, !tbaa !6
  %188 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %189 = load float, float addrspace(3)* %188, align 8, !tbaa !6
  %190 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 3), align 4, !tbaa !6
  %191 = fmul contract float %189, %190
  %192 = fsub contract float %187, %191
  store float %192, float addrspace(3)* %176, align 4, !tbaa !6
  %193 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 3), align 4, !tbaa !6
  %194 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %195 = fdiv contract float %192, %193
  store float %195, float addrspace(3)* %194, align 4, !tbaa !6
  br label %196

196:                                              ; preds = %175, %173
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %174, label %197, label %215

197:                                              ; preds = %196
  %198 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 0), align 16, !tbaa !6
  %199 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %200 = fmul contract float %198, %199
  %201 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %202 = fsub contract float %201, %200
  store float %202, float addrspace(3)* %36, align 4, !tbaa !6
  %203 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 1), align 4, !tbaa !6
  %204 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %205 = fmul contract float %203, %204
  %206 = fsub contract float %202, %205
  store float %206, float addrspace(3)* %36, align 4, !tbaa !6
  %207 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 2), align 8, !tbaa !6
  %208 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %209 = fmul contract float %207, %208
  %210 = fsub contract float %206, %209
  store float %210, float addrspace(3)* %36, align 4, !tbaa !6
  %211 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 3), align 4, !tbaa !6
  %212 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %213 = fmul contract float %211, %212
  %214 = fsub contract float %210, %213
  store float %214, float addrspace(3)* %36, align 4, !tbaa !6
  br label %215

215:                                              ; preds = %197, %196
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %216 = icmp ugt i32 %6, 4
  br i1 %216, label %217, label %243

217:                                              ; preds = %215
  %218 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %219 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %220 = load float, float addrspace(3)* %219, align 16, !tbaa !6
  %221 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 4), align 16, !tbaa !6
  %222 = fmul contract float %220, %221
  %223 = load float, float addrspace(3)* %218, align 16, !tbaa !6
  %224 = fsub contract float %223, %222
  store float %224, float addrspace(3)* %218, align 16, !tbaa !6
  %225 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !6
  %227 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 4), align 16, !tbaa !6
  %228 = fmul contract float %226, %227
  %229 = fsub contract float %224, %228
  store float %229, float addrspace(3)* %218, align 16, !tbaa !6
  %230 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %231 = load float, float addrspace(3)* %230, align 8, !tbaa !6
  %232 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 4), align 16, !tbaa !6
  %233 = fmul contract float %231, %232
  %234 = fsub contract float %229, %233
  store float %234, float addrspace(3)* %218, align 16, !tbaa !6
  %235 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %236 = load float, float addrspace(3)* %235, align 4, !tbaa !6
  %237 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 4), align 16, !tbaa !6
  %238 = fmul contract float %236, %237
  %239 = fsub contract float %234, %238
  store float %239, float addrspace(3)* %218, align 16, !tbaa !6
  %240 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 4), align 16, !tbaa !6
  %241 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %242 = fdiv contract float %239, %240
  store float %242, float addrspace(3)* %241, align 16, !tbaa !6
  br label %243

243:                                              ; preds = %217, %215
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %216, label %244, label %266

244:                                              ; preds = %243
  %245 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 0), align 16, !tbaa !6
  %246 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %247 = fmul contract float %245, %246
  %248 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %249 = fsub contract float %248, %247
  store float %249, float addrspace(3)* %42, align 4, !tbaa !6
  %250 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 1), align 4, !tbaa !6
  %251 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %252 = fmul contract float %250, %251
  %253 = fsub contract float %249, %252
  store float %253, float addrspace(3)* %42, align 4, !tbaa !6
  %254 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 2), align 8, !tbaa !6
  %255 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %256 = fmul contract float %254, %255
  %257 = fsub contract float %253, %256
  store float %257, float addrspace(3)* %42, align 4, !tbaa !6
  %258 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 3), align 4, !tbaa !6
  %259 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %260 = fmul contract float %258, %259
  %261 = fsub contract float %257, %260
  store float %261, float addrspace(3)* %42, align 4, !tbaa !6
  %262 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 4), align 16, !tbaa !6
  %263 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %264 = fmul contract float %262, %263
  %265 = fsub contract float %261, %264
  store float %265, float addrspace(3)* %42, align 4, !tbaa !6
  br label %266

266:                                              ; preds = %244, %243
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %267 = icmp ugt i32 %6, 5
  br i1 %267, label %268, label %299

268:                                              ; preds = %266
  %269 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %270 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %271 = load float, float addrspace(3)* %270, align 16, !tbaa !6
  %272 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 5), align 4, !tbaa !6
  %273 = fmul contract float %271, %272
  %274 = load float, float addrspace(3)* %269, align 4, !tbaa !6
  %275 = fsub contract float %274, %273
  store float %275, float addrspace(3)* %269, align 4, !tbaa !6
  %276 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %277 = load float, float addrspace(3)* %276, align 4, !tbaa !6
  %278 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 5), align 4, !tbaa !6
  %279 = fmul contract float %277, %278
  %280 = fsub contract float %275, %279
  store float %280, float addrspace(3)* %269, align 4, !tbaa !6
  %281 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %282 = load float, float addrspace(3)* %281, align 8, !tbaa !6
  %283 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 5), align 4, !tbaa !6
  %284 = fmul contract float %282, %283
  %285 = fsub contract float %280, %284
  store float %285, float addrspace(3)* %269, align 4, !tbaa !6
  %286 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %287 = load float, float addrspace(3)* %286, align 4, !tbaa !6
  %288 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 5), align 4, !tbaa !6
  %289 = fmul contract float %287, %288
  %290 = fsub contract float %285, %289
  store float %290, float addrspace(3)* %269, align 4, !tbaa !6
  %291 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %292 = load float, float addrspace(3)* %291, align 16, !tbaa !6
  %293 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 5), align 4, !tbaa !6
  %294 = fmul contract float %292, %293
  %295 = fsub contract float %290, %294
  store float %295, float addrspace(3)* %269, align 4, !tbaa !6
  %296 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 5), align 4, !tbaa !6
  %297 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %298 = fdiv contract float %295, %296
  store float %298, float addrspace(3)* %297, align 4, !tbaa !6
  br label %299

299:                                              ; preds = %268, %266
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %267, label %300, label %326

300:                                              ; preds = %299
  %301 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 0), align 16, !tbaa !6
  %302 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %303 = fmul contract float %301, %302
  %304 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %305 = fsub contract float %304, %303
  store float %305, float addrspace(3)* %48, align 4, !tbaa !6
  %306 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 1), align 4, !tbaa !6
  %307 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %308 = fmul contract float %306, %307
  %309 = fsub contract float %305, %308
  store float %309, float addrspace(3)* %48, align 4, !tbaa !6
  %310 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 2), align 8, !tbaa !6
  %311 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %312 = fmul contract float %310, %311
  %313 = fsub contract float %309, %312
  store float %313, float addrspace(3)* %48, align 4, !tbaa !6
  %314 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 3), align 4, !tbaa !6
  %315 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %316 = fmul contract float %314, %315
  %317 = fsub contract float %313, %316
  store float %317, float addrspace(3)* %48, align 4, !tbaa !6
  %318 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 4), align 16, !tbaa !6
  %319 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %320 = fmul contract float %318, %319
  %321 = fsub contract float %317, %320
  store float %321, float addrspace(3)* %48, align 4, !tbaa !6
  %322 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 5), align 4, !tbaa !6
  %323 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %324 = fmul contract float %322, %323
  %325 = fsub contract float %321, %324
  store float %325, float addrspace(3)* %48, align 4, !tbaa !6
  br label %326

326:                                              ; preds = %300, %299
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %327 = icmp ugt i32 %6, 6
  br i1 %327, label %328, label %364

328:                                              ; preds = %326
  %329 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %330 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %331 = load float, float addrspace(3)* %330, align 16, !tbaa !6
  %332 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 6), align 8, !tbaa !6
  %333 = fmul contract float %331, %332
  %334 = load float, float addrspace(3)* %329, align 8, !tbaa !6
  %335 = fsub contract float %334, %333
  store float %335, float addrspace(3)* %329, align 8, !tbaa !6
  %336 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %337 = load float, float addrspace(3)* %336, align 4, !tbaa !6
  %338 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 6), align 8, !tbaa !6
  %339 = fmul contract float %337, %338
  %340 = fsub contract float %335, %339
  store float %340, float addrspace(3)* %329, align 8, !tbaa !6
  %341 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %342 = load float, float addrspace(3)* %341, align 8, !tbaa !6
  %343 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 6), align 8, !tbaa !6
  %344 = fmul contract float %342, %343
  %345 = fsub contract float %340, %344
  store float %345, float addrspace(3)* %329, align 8, !tbaa !6
  %346 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %347 = load float, float addrspace(3)* %346, align 4, !tbaa !6
  %348 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 6), align 8, !tbaa !6
  %349 = fmul contract float %347, %348
  %350 = fsub contract float %345, %349
  store float %350, float addrspace(3)* %329, align 8, !tbaa !6
  %351 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %352 = load float, float addrspace(3)* %351, align 16, !tbaa !6
  %353 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 6), align 8, !tbaa !6
  %354 = fmul contract float %352, %353
  %355 = fsub contract float %350, %354
  store float %355, float addrspace(3)* %329, align 8, !tbaa !6
  %356 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %357 = load float, float addrspace(3)* %356, align 4, !tbaa !6
  %358 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 6), align 8, !tbaa !6
  %359 = fmul contract float %357, %358
  %360 = fsub contract float %355, %359
  store float %360, float addrspace(3)* %329, align 8, !tbaa !6
  %361 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 6), align 8, !tbaa !6
  %362 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %363 = fdiv contract float %360, %361
  store float %363, float addrspace(3)* %362, align 8, !tbaa !6
  br label %364

364:                                              ; preds = %328, %326
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %327, label %365, label %395

365:                                              ; preds = %364
  %366 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 0), align 16, !tbaa !6
  %367 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %368 = fmul contract float %366, %367
  %369 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %370 = fsub contract float %369, %368
  store float %370, float addrspace(3)* %54, align 4, !tbaa !6
  %371 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 1), align 4, !tbaa !6
  %372 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %373 = fmul contract float %371, %372
  %374 = fsub contract float %370, %373
  store float %374, float addrspace(3)* %54, align 4, !tbaa !6
  %375 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 2), align 8, !tbaa !6
  %376 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %377 = fmul contract float %375, %376
  %378 = fsub contract float %374, %377
  store float %378, float addrspace(3)* %54, align 4, !tbaa !6
  %379 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 3), align 4, !tbaa !6
  %380 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %381 = fmul contract float %379, %380
  %382 = fsub contract float %378, %381
  store float %382, float addrspace(3)* %54, align 4, !tbaa !6
  %383 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 4), align 16, !tbaa !6
  %384 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %385 = fmul contract float %383, %384
  %386 = fsub contract float %382, %385
  store float %386, float addrspace(3)* %54, align 4, !tbaa !6
  %387 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 5), align 4, !tbaa !6
  %388 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %389 = fmul contract float %387, %388
  %390 = fsub contract float %386, %389
  store float %390, float addrspace(3)* %54, align 4, !tbaa !6
  %391 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 6), align 8, !tbaa !6
  %392 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %393 = fmul contract float %391, %392
  %394 = fsub contract float %390, %393
  store float %394, float addrspace(3)* %54, align 4, !tbaa !6
  br label %395

395:                                              ; preds = %365, %364
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %396 = icmp ugt i32 %6, 7
  br i1 %396, label %397, label %438

397:                                              ; preds = %395
  %398 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %399 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %400 = load float, float addrspace(3)* %399, align 16, !tbaa !6
  %401 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 7), align 4, !tbaa !6
  %402 = fmul contract float %400, %401
  %403 = load float, float addrspace(3)* %398, align 4, !tbaa !6
  %404 = fsub contract float %403, %402
  store float %404, float addrspace(3)* %398, align 4, !tbaa !6
  %405 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %406 = load float, float addrspace(3)* %405, align 4, !tbaa !6
  %407 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 7), align 4, !tbaa !6
  %408 = fmul contract float %406, %407
  %409 = fsub contract float %404, %408
  store float %409, float addrspace(3)* %398, align 4, !tbaa !6
  %410 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %411 = load float, float addrspace(3)* %410, align 8, !tbaa !6
  %412 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 7), align 4, !tbaa !6
  %413 = fmul contract float %411, %412
  %414 = fsub contract float %409, %413
  store float %414, float addrspace(3)* %398, align 4, !tbaa !6
  %415 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %416 = load float, float addrspace(3)* %415, align 4, !tbaa !6
  %417 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 7), align 4, !tbaa !6
  %418 = fmul contract float %416, %417
  %419 = fsub contract float %414, %418
  store float %419, float addrspace(3)* %398, align 4, !tbaa !6
  %420 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %421 = load float, float addrspace(3)* %420, align 16, !tbaa !6
  %422 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 7), align 4, !tbaa !6
  %423 = fmul contract float %421, %422
  %424 = fsub contract float %419, %423
  store float %424, float addrspace(3)* %398, align 4, !tbaa !6
  %425 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %426 = load float, float addrspace(3)* %425, align 4, !tbaa !6
  %427 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 7), align 4, !tbaa !6
  %428 = fmul contract float %426, %427
  %429 = fsub contract float %424, %428
  store float %429, float addrspace(3)* %398, align 4, !tbaa !6
  %430 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %431 = load float, float addrspace(3)* %430, align 8, !tbaa !6
  %432 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 7), align 4, !tbaa !6
  %433 = fmul contract float %431, %432
  %434 = fsub contract float %429, %433
  store float %434, float addrspace(3)* %398, align 4, !tbaa !6
  %435 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 7), align 4, !tbaa !6
  %436 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %437 = fdiv contract float %434, %435
  store float %437, float addrspace(3)* %436, align 4, !tbaa !6
  br label %438

438:                                              ; preds = %397, %395
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %396, label %439, label %473

439:                                              ; preds = %438
  %440 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 0), align 16, !tbaa !6
  %441 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %442 = fmul contract float %440, %441
  %443 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %444 = fsub contract float %443, %442
  store float %444, float addrspace(3)* %60, align 4, !tbaa !6
  %445 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 1), align 4, !tbaa !6
  %446 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %447 = fmul contract float %445, %446
  %448 = fsub contract float %444, %447
  store float %448, float addrspace(3)* %60, align 4, !tbaa !6
  %449 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 2), align 8, !tbaa !6
  %450 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %451 = fmul contract float %449, %450
  %452 = fsub contract float %448, %451
  store float %452, float addrspace(3)* %60, align 4, !tbaa !6
  %453 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 3), align 4, !tbaa !6
  %454 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %455 = fmul contract float %453, %454
  %456 = fsub contract float %452, %455
  store float %456, float addrspace(3)* %60, align 4, !tbaa !6
  %457 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 4), align 16, !tbaa !6
  %458 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %459 = fmul contract float %457, %458
  %460 = fsub contract float %456, %459
  store float %460, float addrspace(3)* %60, align 4, !tbaa !6
  %461 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 5), align 4, !tbaa !6
  %462 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %463 = fmul contract float %461, %462
  %464 = fsub contract float %460, %463
  store float %464, float addrspace(3)* %60, align 4, !tbaa !6
  %465 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 6), align 8, !tbaa !6
  %466 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %467 = fmul contract float %465, %466
  %468 = fsub contract float %464, %467
  store float %468, float addrspace(3)* %60, align 4, !tbaa !6
  %469 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 7), align 4, !tbaa !6
  %470 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %471 = fmul contract float %469, %470
  %472 = fsub contract float %468, %471
  store float %472, float addrspace(3)* %60, align 4, !tbaa !6
  br label %473

473:                                              ; preds = %439, %438
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %474 = icmp ugt i32 %6, 8
  br i1 %474, label %475, label %521

475:                                              ; preds = %473
  %476 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %477 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %478 = load float, float addrspace(3)* %477, align 16, !tbaa !6
  %479 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 8), align 16, !tbaa !6
  %480 = fmul contract float %478, %479
  %481 = load float, float addrspace(3)* %476, align 16, !tbaa !6
  %482 = fsub contract float %481, %480
  store float %482, float addrspace(3)* %476, align 16, !tbaa !6
  %483 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %484 = load float, float addrspace(3)* %483, align 4, !tbaa !6
  %485 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 8), align 16, !tbaa !6
  %486 = fmul contract float %484, %485
  %487 = fsub contract float %482, %486
  store float %487, float addrspace(3)* %476, align 16, !tbaa !6
  %488 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %489 = load float, float addrspace(3)* %488, align 8, !tbaa !6
  %490 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 8), align 16, !tbaa !6
  %491 = fmul contract float %489, %490
  %492 = fsub contract float %487, %491
  store float %492, float addrspace(3)* %476, align 16, !tbaa !6
  %493 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %494 = load float, float addrspace(3)* %493, align 4, !tbaa !6
  %495 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 8), align 16, !tbaa !6
  %496 = fmul contract float %494, %495
  %497 = fsub contract float %492, %496
  store float %497, float addrspace(3)* %476, align 16, !tbaa !6
  %498 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %499 = load float, float addrspace(3)* %498, align 16, !tbaa !6
  %500 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 8), align 16, !tbaa !6
  %501 = fmul contract float %499, %500
  %502 = fsub contract float %497, %501
  store float %502, float addrspace(3)* %476, align 16, !tbaa !6
  %503 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %504 = load float, float addrspace(3)* %503, align 4, !tbaa !6
  %505 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 8), align 16, !tbaa !6
  %506 = fmul contract float %504, %505
  %507 = fsub contract float %502, %506
  store float %507, float addrspace(3)* %476, align 16, !tbaa !6
  %508 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %509 = load float, float addrspace(3)* %508, align 8, !tbaa !6
  %510 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 8), align 16, !tbaa !6
  %511 = fmul contract float %509, %510
  %512 = fsub contract float %507, %511
  store float %512, float addrspace(3)* %476, align 16, !tbaa !6
  %513 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %514 = load float, float addrspace(3)* %513, align 4, !tbaa !6
  %515 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 8), align 16, !tbaa !6
  %516 = fmul contract float %514, %515
  %517 = fsub contract float %512, %516
  store float %517, float addrspace(3)* %476, align 16, !tbaa !6
  %518 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 8), align 16, !tbaa !6
  %519 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %520 = fdiv contract float %517, %518
  store float %520, float addrspace(3)* %519, align 16, !tbaa !6
  br label %521

521:                                              ; preds = %475, %473
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %474, label %522, label %560

522:                                              ; preds = %521
  %523 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 0), align 16, !tbaa !6
  %524 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %525 = fmul contract float %523, %524
  %526 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %527 = fsub contract float %526, %525
  store float %527, float addrspace(3)* %66, align 4, !tbaa !6
  %528 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 1), align 4, !tbaa !6
  %529 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %530 = fmul contract float %528, %529
  %531 = fsub contract float %527, %530
  store float %531, float addrspace(3)* %66, align 4, !tbaa !6
  %532 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 2), align 8, !tbaa !6
  %533 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %534 = fmul contract float %532, %533
  %535 = fsub contract float %531, %534
  store float %535, float addrspace(3)* %66, align 4, !tbaa !6
  %536 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 3), align 4, !tbaa !6
  %537 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %538 = fmul contract float %536, %537
  %539 = fsub contract float %535, %538
  store float %539, float addrspace(3)* %66, align 4, !tbaa !6
  %540 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 4), align 16, !tbaa !6
  %541 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %542 = fmul contract float %540, %541
  %543 = fsub contract float %539, %542
  store float %543, float addrspace(3)* %66, align 4, !tbaa !6
  %544 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 5), align 4, !tbaa !6
  %545 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %546 = fmul contract float %544, %545
  %547 = fsub contract float %543, %546
  store float %547, float addrspace(3)* %66, align 4, !tbaa !6
  %548 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 6), align 8, !tbaa !6
  %549 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %550 = fmul contract float %548, %549
  %551 = fsub contract float %547, %550
  store float %551, float addrspace(3)* %66, align 4, !tbaa !6
  %552 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 7), align 4, !tbaa !6
  %553 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %554 = fmul contract float %552, %553
  %555 = fsub contract float %551, %554
  store float %555, float addrspace(3)* %66, align 4, !tbaa !6
  %556 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 8), align 16, !tbaa !6
  %557 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %558 = fmul contract float %556, %557
  %559 = fsub contract float %555, %558
  store float %559, float addrspace(3)* %66, align 4, !tbaa !6
  br label %560

560:                                              ; preds = %522, %521
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %561 = icmp ugt i32 %6, 9
  br i1 %561, label %562, label %613

562:                                              ; preds = %560
  %563 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 9
  %564 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %565 = load float, float addrspace(3)* %564, align 16, !tbaa !6
  %566 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 9), align 4, !tbaa !6
  %567 = fmul contract float %565, %566
  %568 = load float, float addrspace(3)* %563, align 4, !tbaa !6
  %569 = fsub contract float %568, %567
  store float %569, float addrspace(3)* %563, align 4, !tbaa !6
  %570 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %571 = load float, float addrspace(3)* %570, align 4, !tbaa !6
  %572 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 9), align 4, !tbaa !6
  %573 = fmul contract float %571, %572
  %574 = fsub contract float %569, %573
  store float %574, float addrspace(3)* %563, align 4, !tbaa !6
  %575 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %576 = load float, float addrspace(3)* %575, align 8, !tbaa !6
  %577 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 9), align 4, !tbaa !6
  %578 = fmul contract float %576, %577
  %579 = fsub contract float %574, %578
  store float %579, float addrspace(3)* %563, align 4, !tbaa !6
  %580 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %581 = load float, float addrspace(3)* %580, align 4, !tbaa !6
  %582 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 9), align 4, !tbaa !6
  %583 = fmul contract float %581, %582
  %584 = fsub contract float %579, %583
  store float %584, float addrspace(3)* %563, align 4, !tbaa !6
  %585 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %586 = load float, float addrspace(3)* %585, align 16, !tbaa !6
  %587 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 9), align 4, !tbaa !6
  %588 = fmul contract float %586, %587
  %589 = fsub contract float %584, %588
  store float %589, float addrspace(3)* %563, align 4, !tbaa !6
  %590 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %591 = load float, float addrspace(3)* %590, align 4, !tbaa !6
  %592 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 9), align 4, !tbaa !6
  %593 = fmul contract float %591, %592
  %594 = fsub contract float %589, %593
  store float %594, float addrspace(3)* %563, align 4, !tbaa !6
  %595 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %596 = load float, float addrspace(3)* %595, align 8, !tbaa !6
  %597 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 9), align 4, !tbaa !6
  %598 = fmul contract float %596, %597
  %599 = fsub contract float %594, %598
  store float %599, float addrspace(3)* %563, align 4, !tbaa !6
  %600 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %601 = load float, float addrspace(3)* %600, align 4, !tbaa !6
  %602 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 9), align 4, !tbaa !6
  %603 = fmul contract float %601, %602
  %604 = fsub contract float %599, %603
  store float %604, float addrspace(3)* %563, align 4, !tbaa !6
  %605 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %606 = load float, float addrspace(3)* %605, align 16, !tbaa !6
  %607 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 9), align 4, !tbaa !6
  %608 = fmul contract float %606, %607
  %609 = fsub contract float %604, %608
  store float %609, float addrspace(3)* %563, align 4, !tbaa !6
  %610 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 9), align 4, !tbaa !6
  %611 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 9
  %612 = fdiv contract float %609, %610
  store float %612, float addrspace(3)* %611, align 4, !tbaa !6
  br label %613

613:                                              ; preds = %562, %560
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %561, label %614, label %656

614:                                              ; preds = %613
  %615 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 0), align 16, !tbaa !6
  %616 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %617 = fmul contract float %615, %616
  %618 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %619 = fsub contract float %618, %617
  store float %619, float addrspace(3)* %72, align 4, !tbaa !6
  %620 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 1), align 4, !tbaa !6
  %621 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %622 = fmul contract float %620, %621
  %623 = fsub contract float %619, %622
  store float %623, float addrspace(3)* %72, align 4, !tbaa !6
  %624 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 2), align 8, !tbaa !6
  %625 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %626 = fmul contract float %624, %625
  %627 = fsub contract float %623, %626
  store float %627, float addrspace(3)* %72, align 4, !tbaa !6
  %628 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 3), align 4, !tbaa !6
  %629 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %630 = fmul contract float %628, %629
  %631 = fsub contract float %627, %630
  store float %631, float addrspace(3)* %72, align 4, !tbaa !6
  %632 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 4), align 16, !tbaa !6
  %633 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %634 = fmul contract float %632, %633
  %635 = fsub contract float %631, %634
  store float %635, float addrspace(3)* %72, align 4, !tbaa !6
  %636 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 5), align 4, !tbaa !6
  %637 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %638 = fmul contract float %636, %637
  %639 = fsub contract float %635, %638
  store float %639, float addrspace(3)* %72, align 4, !tbaa !6
  %640 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 6), align 8, !tbaa !6
  %641 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %642 = fmul contract float %640, %641
  %643 = fsub contract float %639, %642
  store float %643, float addrspace(3)* %72, align 4, !tbaa !6
  %644 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 7), align 4, !tbaa !6
  %645 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %646 = fmul contract float %644, %645
  %647 = fsub contract float %643, %646
  store float %647, float addrspace(3)* %72, align 4, !tbaa !6
  %648 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 8), align 16, !tbaa !6
  %649 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %650 = fmul contract float %648, %649
  %651 = fsub contract float %647, %650
  store float %651, float addrspace(3)* %72, align 4, !tbaa !6
  %652 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 9), align 4, !tbaa !6
  %653 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %654 = fmul contract float %652, %653
  %655 = fsub contract float %651, %654
  store float %655, float addrspace(3)* %72, align 4, !tbaa !6
  br label %656

656:                                              ; preds = %614, %613
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %657 = icmp ugt i32 %6, 10
  br i1 %657, label %658, label %714

658:                                              ; preds = %656
  %659 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 10
  %660 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %661 = load float, float addrspace(3)* %660, align 16, !tbaa !6
  %662 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 10), align 8, !tbaa !6
  %663 = fmul contract float %661, %662
  %664 = load float, float addrspace(3)* %659, align 8, !tbaa !6
  %665 = fsub contract float %664, %663
  store float %665, float addrspace(3)* %659, align 8, !tbaa !6
  %666 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %667 = load float, float addrspace(3)* %666, align 4, !tbaa !6
  %668 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 10), align 8, !tbaa !6
  %669 = fmul contract float %667, %668
  %670 = fsub contract float %665, %669
  store float %670, float addrspace(3)* %659, align 8, !tbaa !6
  %671 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %672 = load float, float addrspace(3)* %671, align 8, !tbaa !6
  %673 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 10), align 8, !tbaa !6
  %674 = fmul contract float %672, %673
  %675 = fsub contract float %670, %674
  store float %675, float addrspace(3)* %659, align 8, !tbaa !6
  %676 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %677 = load float, float addrspace(3)* %676, align 4, !tbaa !6
  %678 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 10), align 8, !tbaa !6
  %679 = fmul contract float %677, %678
  %680 = fsub contract float %675, %679
  store float %680, float addrspace(3)* %659, align 8, !tbaa !6
  %681 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %682 = load float, float addrspace(3)* %681, align 16, !tbaa !6
  %683 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 10), align 8, !tbaa !6
  %684 = fmul contract float %682, %683
  %685 = fsub contract float %680, %684
  store float %685, float addrspace(3)* %659, align 8, !tbaa !6
  %686 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %687 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %688 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 10), align 8, !tbaa !6
  %689 = fmul contract float %687, %688
  %690 = fsub contract float %685, %689
  store float %690, float addrspace(3)* %659, align 8, !tbaa !6
  %691 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %692 = load float, float addrspace(3)* %691, align 8, !tbaa !6
  %693 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 10), align 8, !tbaa !6
  %694 = fmul contract float %692, %693
  %695 = fsub contract float %690, %694
  store float %695, float addrspace(3)* %659, align 8, !tbaa !6
  %696 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %697 = load float, float addrspace(3)* %696, align 4, !tbaa !6
  %698 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 10), align 8, !tbaa !6
  %699 = fmul contract float %697, %698
  %700 = fsub contract float %695, %699
  store float %700, float addrspace(3)* %659, align 8, !tbaa !6
  %701 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %702 = load float, float addrspace(3)* %701, align 16, !tbaa !6
  %703 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 10), align 8, !tbaa !6
  %704 = fmul contract float %702, %703
  %705 = fsub contract float %700, %704
  store float %705, float addrspace(3)* %659, align 8, !tbaa !6
  %706 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 9
  %707 = load float, float addrspace(3)* %706, align 4, !tbaa !6
  %708 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 10), align 8, !tbaa !6
  %709 = fmul contract float %707, %708
  %710 = fsub contract float %705, %709
  store float %710, float addrspace(3)* %659, align 8, !tbaa !6
  %711 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 10), align 8, !tbaa !6
  %712 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 10
  %713 = fdiv contract float %710, %711
  store float %713, float addrspace(3)* %712, align 8, !tbaa !6
  br label %714

714:                                              ; preds = %658, %656
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %657, label %715, label %761

715:                                              ; preds = %714
  %716 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 0), align 16, !tbaa !6
  %717 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %718 = fmul contract float %716, %717
  %719 = load float, float addrspace(3)* %78, align 4, !tbaa !6
  %720 = fsub contract float %719, %718
  store float %720, float addrspace(3)* %78, align 4, !tbaa !6
  %721 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 1), align 4, !tbaa !6
  %722 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %723 = fmul contract float %721, %722
  %724 = fsub contract float %720, %723
  store float %724, float addrspace(3)* %78, align 4, !tbaa !6
  %725 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 2), align 8, !tbaa !6
  %726 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %727 = fmul contract float %725, %726
  %728 = fsub contract float %724, %727
  store float %728, float addrspace(3)* %78, align 4, !tbaa !6
  %729 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 3), align 4, !tbaa !6
  %730 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %731 = fmul contract float %729, %730
  %732 = fsub contract float %728, %731
  store float %732, float addrspace(3)* %78, align 4, !tbaa !6
  %733 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 4), align 16, !tbaa !6
  %734 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %735 = fmul contract float %733, %734
  %736 = fsub contract float %732, %735
  store float %736, float addrspace(3)* %78, align 4, !tbaa !6
  %737 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 5), align 4, !tbaa !6
  %738 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %739 = fmul contract float %737, %738
  %740 = fsub contract float %736, %739
  store float %740, float addrspace(3)* %78, align 4, !tbaa !6
  %741 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 6), align 8, !tbaa !6
  %742 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %743 = fmul contract float %741, %742
  %744 = fsub contract float %740, %743
  store float %744, float addrspace(3)* %78, align 4, !tbaa !6
  %745 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 7), align 4, !tbaa !6
  %746 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %747 = fmul contract float %745, %746
  %748 = fsub contract float %744, %747
  store float %748, float addrspace(3)* %78, align 4, !tbaa !6
  %749 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 8), align 16, !tbaa !6
  %750 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %751 = fmul contract float %749, %750
  %752 = fsub contract float %748, %751
  store float %752, float addrspace(3)* %78, align 4, !tbaa !6
  %753 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 9), align 4, !tbaa !6
  %754 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %755 = fmul contract float %753, %754
  %756 = fsub contract float %752, %755
  store float %756, float addrspace(3)* %78, align 4, !tbaa !6
  %757 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 10), align 8, !tbaa !6
  %758 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %759 = fmul contract float %757, %758
  %760 = fsub contract float %756, %759
  store float %760, float addrspace(3)* %78, align 4, !tbaa !6
  br label %761

761:                                              ; preds = %715, %714
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %762 = icmp ugt i32 %6, 11
  br i1 %762, label %763, label %824

763:                                              ; preds = %761
  %764 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 11
  %765 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %766 = load float, float addrspace(3)* %765, align 16, !tbaa !6
  %767 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 11), align 4, !tbaa !6
  %768 = fmul contract float %766, %767
  %769 = load float, float addrspace(3)* %764, align 4, !tbaa !6
  %770 = fsub contract float %769, %768
  store float %770, float addrspace(3)* %764, align 4, !tbaa !6
  %771 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %772 = load float, float addrspace(3)* %771, align 4, !tbaa !6
  %773 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 11), align 4, !tbaa !6
  %774 = fmul contract float %772, %773
  %775 = fsub contract float %770, %774
  store float %775, float addrspace(3)* %764, align 4, !tbaa !6
  %776 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %777 = load float, float addrspace(3)* %776, align 8, !tbaa !6
  %778 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 11), align 4, !tbaa !6
  %779 = fmul contract float %777, %778
  %780 = fsub contract float %775, %779
  store float %780, float addrspace(3)* %764, align 4, !tbaa !6
  %781 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %782 = load float, float addrspace(3)* %781, align 4, !tbaa !6
  %783 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 11), align 4, !tbaa !6
  %784 = fmul contract float %782, %783
  %785 = fsub contract float %780, %784
  store float %785, float addrspace(3)* %764, align 4, !tbaa !6
  %786 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %787 = load float, float addrspace(3)* %786, align 16, !tbaa !6
  %788 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 11), align 4, !tbaa !6
  %789 = fmul contract float %787, %788
  %790 = fsub contract float %785, %789
  store float %790, float addrspace(3)* %764, align 4, !tbaa !6
  %791 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %792 = load float, float addrspace(3)* %791, align 4, !tbaa !6
  %793 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 11), align 4, !tbaa !6
  %794 = fmul contract float %792, %793
  %795 = fsub contract float %790, %794
  store float %795, float addrspace(3)* %764, align 4, !tbaa !6
  %796 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %797 = load float, float addrspace(3)* %796, align 8, !tbaa !6
  %798 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 11), align 4, !tbaa !6
  %799 = fmul contract float %797, %798
  %800 = fsub contract float %795, %799
  store float %800, float addrspace(3)* %764, align 4, !tbaa !6
  %801 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %802 = load float, float addrspace(3)* %801, align 4, !tbaa !6
  %803 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 11), align 4, !tbaa !6
  %804 = fmul contract float %802, %803
  %805 = fsub contract float %800, %804
  store float %805, float addrspace(3)* %764, align 4, !tbaa !6
  %806 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %807 = load float, float addrspace(3)* %806, align 16, !tbaa !6
  %808 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 11), align 4, !tbaa !6
  %809 = fmul contract float %807, %808
  %810 = fsub contract float %805, %809
  store float %810, float addrspace(3)* %764, align 4, !tbaa !6
  %811 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 9
  %812 = load float, float addrspace(3)* %811, align 4, !tbaa !6
  %813 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 11), align 4, !tbaa !6
  %814 = fmul contract float %812, %813
  %815 = fsub contract float %810, %814
  store float %815, float addrspace(3)* %764, align 4, !tbaa !6
  %816 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 10
  %817 = load float, float addrspace(3)* %816, align 8, !tbaa !6
  %818 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 11), align 4, !tbaa !6
  %819 = fmul contract float %817, %818
  %820 = fsub contract float %815, %819
  store float %820, float addrspace(3)* %764, align 4, !tbaa !6
  %821 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 11), align 4, !tbaa !6
  %822 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 11
  %823 = fdiv contract float %820, %821
  store float %823, float addrspace(3)* %822, align 4, !tbaa !6
  br label %824

824:                                              ; preds = %763, %761
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %762, label %825, label %875

825:                                              ; preds = %824
  %826 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 0), align 16, !tbaa !6
  %827 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %828 = fmul contract float %826, %827
  %829 = load float, float addrspace(3)* %84, align 4, !tbaa !6
  %830 = fsub contract float %829, %828
  store float %830, float addrspace(3)* %84, align 4, !tbaa !6
  %831 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 1), align 4, !tbaa !6
  %832 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %833 = fmul contract float %831, %832
  %834 = fsub contract float %830, %833
  store float %834, float addrspace(3)* %84, align 4, !tbaa !6
  %835 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 2), align 8, !tbaa !6
  %836 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %837 = fmul contract float %835, %836
  %838 = fsub contract float %834, %837
  store float %838, float addrspace(3)* %84, align 4, !tbaa !6
  %839 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 3), align 4, !tbaa !6
  %840 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %841 = fmul contract float %839, %840
  %842 = fsub contract float %838, %841
  store float %842, float addrspace(3)* %84, align 4, !tbaa !6
  %843 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 4), align 16, !tbaa !6
  %844 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %845 = fmul contract float %843, %844
  %846 = fsub contract float %842, %845
  store float %846, float addrspace(3)* %84, align 4, !tbaa !6
  %847 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 5), align 4, !tbaa !6
  %848 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %849 = fmul contract float %847, %848
  %850 = fsub contract float %846, %849
  store float %850, float addrspace(3)* %84, align 4, !tbaa !6
  %851 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 6), align 8, !tbaa !6
  %852 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %853 = fmul contract float %851, %852
  %854 = fsub contract float %850, %853
  store float %854, float addrspace(3)* %84, align 4, !tbaa !6
  %855 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 7), align 4, !tbaa !6
  %856 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %857 = fmul contract float %855, %856
  %858 = fsub contract float %854, %857
  store float %858, float addrspace(3)* %84, align 4, !tbaa !6
  %859 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 8), align 16, !tbaa !6
  %860 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %861 = fmul contract float %859, %860
  %862 = fsub contract float %858, %861
  store float %862, float addrspace(3)* %84, align 4, !tbaa !6
  %863 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 9), align 4, !tbaa !6
  %864 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %865 = fmul contract float %863, %864
  %866 = fsub contract float %862, %865
  store float %866, float addrspace(3)* %84, align 4, !tbaa !6
  %867 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 10), align 8, !tbaa !6
  %868 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %869 = fmul contract float %867, %868
  %870 = fsub contract float %866, %869
  store float %870, float addrspace(3)* %84, align 4, !tbaa !6
  %871 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 11), align 4, !tbaa !6
  %872 = load float, float addrspace(3)* %78, align 4, !tbaa !6
  %873 = fmul contract float %871, %872
  %874 = fsub contract float %870, %873
  store float %874, float addrspace(3)* %84, align 4, !tbaa !6
  br label %875

875:                                              ; preds = %825, %824
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %876 = icmp ugt i32 %6, 12
  br i1 %876, label %877, label %943

877:                                              ; preds = %875
  %878 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 12
  %879 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %880 = load float, float addrspace(3)* %879, align 16, !tbaa !6
  %881 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 12), align 16, !tbaa !6
  %882 = fmul contract float %880, %881
  %883 = load float, float addrspace(3)* %878, align 16, !tbaa !6
  %884 = fsub contract float %883, %882
  store float %884, float addrspace(3)* %878, align 16, !tbaa !6
  %885 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %886 = load float, float addrspace(3)* %885, align 4, !tbaa !6
  %887 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 12), align 16, !tbaa !6
  %888 = fmul contract float %886, %887
  %889 = fsub contract float %884, %888
  store float %889, float addrspace(3)* %878, align 16, !tbaa !6
  %890 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %891 = load float, float addrspace(3)* %890, align 8, !tbaa !6
  %892 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 12), align 16, !tbaa !6
  %893 = fmul contract float %891, %892
  %894 = fsub contract float %889, %893
  store float %894, float addrspace(3)* %878, align 16, !tbaa !6
  %895 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %896 = load float, float addrspace(3)* %895, align 4, !tbaa !6
  %897 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 12), align 16, !tbaa !6
  %898 = fmul contract float %896, %897
  %899 = fsub contract float %894, %898
  store float %899, float addrspace(3)* %878, align 16, !tbaa !6
  %900 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %901 = load float, float addrspace(3)* %900, align 16, !tbaa !6
  %902 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 12), align 16, !tbaa !6
  %903 = fmul contract float %901, %902
  %904 = fsub contract float %899, %903
  store float %904, float addrspace(3)* %878, align 16, !tbaa !6
  %905 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %906 = load float, float addrspace(3)* %905, align 4, !tbaa !6
  %907 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 12), align 16, !tbaa !6
  %908 = fmul contract float %906, %907
  %909 = fsub contract float %904, %908
  store float %909, float addrspace(3)* %878, align 16, !tbaa !6
  %910 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %911 = load float, float addrspace(3)* %910, align 8, !tbaa !6
  %912 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 12), align 16, !tbaa !6
  %913 = fmul contract float %911, %912
  %914 = fsub contract float %909, %913
  store float %914, float addrspace(3)* %878, align 16, !tbaa !6
  %915 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %916 = load float, float addrspace(3)* %915, align 4, !tbaa !6
  %917 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 12), align 16, !tbaa !6
  %918 = fmul contract float %916, %917
  %919 = fsub contract float %914, %918
  store float %919, float addrspace(3)* %878, align 16, !tbaa !6
  %920 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %921 = load float, float addrspace(3)* %920, align 16, !tbaa !6
  %922 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 12), align 16, !tbaa !6
  %923 = fmul contract float %921, %922
  %924 = fsub contract float %919, %923
  store float %924, float addrspace(3)* %878, align 16, !tbaa !6
  %925 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 9
  %926 = load float, float addrspace(3)* %925, align 4, !tbaa !6
  %927 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 12), align 16, !tbaa !6
  %928 = fmul contract float %926, %927
  %929 = fsub contract float %924, %928
  store float %929, float addrspace(3)* %878, align 16, !tbaa !6
  %930 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 10
  %931 = load float, float addrspace(3)* %930, align 8, !tbaa !6
  %932 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 12), align 16, !tbaa !6
  %933 = fmul contract float %931, %932
  %934 = fsub contract float %929, %933
  store float %934, float addrspace(3)* %878, align 16, !tbaa !6
  %935 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 11
  %936 = load float, float addrspace(3)* %935, align 4, !tbaa !6
  %937 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 12), align 16, !tbaa !6
  %938 = fmul contract float %936, %937
  %939 = fsub contract float %934, %938
  store float %939, float addrspace(3)* %878, align 16, !tbaa !6
  %940 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 12), align 16, !tbaa !6
  %941 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 12
  %942 = fdiv contract float %939, %940
  store float %942, float addrspace(3)* %941, align 16, !tbaa !6
  br label %943

943:                                              ; preds = %877, %875
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %876, label %944, label %998

944:                                              ; preds = %943
  %945 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 0), align 16, !tbaa !6
  %946 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %947 = fmul contract float %945, %946
  %948 = load float, float addrspace(3)* %90, align 4, !tbaa !6
  %949 = fsub contract float %948, %947
  store float %949, float addrspace(3)* %90, align 4, !tbaa !6
  %950 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 1), align 4, !tbaa !6
  %951 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %952 = fmul contract float %950, %951
  %953 = fsub contract float %949, %952
  store float %953, float addrspace(3)* %90, align 4, !tbaa !6
  %954 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 2), align 8, !tbaa !6
  %955 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %956 = fmul contract float %954, %955
  %957 = fsub contract float %953, %956
  store float %957, float addrspace(3)* %90, align 4, !tbaa !6
  %958 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 3), align 4, !tbaa !6
  %959 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %960 = fmul contract float %958, %959
  %961 = fsub contract float %957, %960
  store float %961, float addrspace(3)* %90, align 4, !tbaa !6
  %962 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 4), align 16, !tbaa !6
  %963 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %964 = fmul contract float %962, %963
  %965 = fsub contract float %961, %964
  store float %965, float addrspace(3)* %90, align 4, !tbaa !6
  %966 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 5), align 4, !tbaa !6
  %967 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %968 = fmul contract float %966, %967
  %969 = fsub contract float %965, %968
  store float %969, float addrspace(3)* %90, align 4, !tbaa !6
  %970 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 6), align 8, !tbaa !6
  %971 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %972 = fmul contract float %970, %971
  %973 = fsub contract float %969, %972
  store float %973, float addrspace(3)* %90, align 4, !tbaa !6
  %974 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 7), align 4, !tbaa !6
  %975 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %976 = fmul contract float %974, %975
  %977 = fsub contract float %973, %976
  store float %977, float addrspace(3)* %90, align 4, !tbaa !6
  %978 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 8), align 16, !tbaa !6
  %979 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %980 = fmul contract float %978, %979
  %981 = fsub contract float %977, %980
  store float %981, float addrspace(3)* %90, align 4, !tbaa !6
  %982 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 9), align 4, !tbaa !6
  %983 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %984 = fmul contract float %982, %983
  %985 = fsub contract float %981, %984
  store float %985, float addrspace(3)* %90, align 4, !tbaa !6
  %986 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 10), align 8, !tbaa !6
  %987 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %988 = fmul contract float %986, %987
  %989 = fsub contract float %985, %988
  store float %989, float addrspace(3)* %90, align 4, !tbaa !6
  %990 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 11), align 4, !tbaa !6
  %991 = load float, float addrspace(3)* %78, align 4, !tbaa !6
  %992 = fmul contract float %990, %991
  %993 = fsub contract float %989, %992
  store float %993, float addrspace(3)* %90, align 4, !tbaa !6
  %994 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 12), align 16, !tbaa !6
  %995 = load float, float addrspace(3)* %84, align 4, !tbaa !6
  %996 = fmul contract float %994, %995
  %997 = fsub contract float %993, %996
  store float %997, float addrspace(3)* %90, align 4, !tbaa !6
  br label %998

998:                                              ; preds = %944, %943
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %999 = icmp ugt i32 %6, 13
  br i1 %999, label %1000, label %1071

1000:                                             ; preds = %998
  %1001 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 13
  %1002 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %1003 = load float, float addrspace(3)* %1002, align 16, !tbaa !6
  %1004 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 13), align 4, !tbaa !6
  %1005 = fmul contract float %1003, %1004
  %1006 = load float, float addrspace(3)* %1001, align 4, !tbaa !6
  %1007 = fsub contract float %1006, %1005
  store float %1007, float addrspace(3)* %1001, align 4, !tbaa !6
  %1008 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %1009 = load float, float addrspace(3)* %1008, align 4, !tbaa !6
  %1010 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 13), align 4, !tbaa !6
  %1011 = fmul contract float %1009, %1010
  %1012 = fsub contract float %1007, %1011
  store float %1012, float addrspace(3)* %1001, align 4, !tbaa !6
  %1013 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %1014 = load float, float addrspace(3)* %1013, align 8, !tbaa !6
  %1015 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 13), align 4, !tbaa !6
  %1016 = fmul contract float %1014, %1015
  %1017 = fsub contract float %1012, %1016
  store float %1017, float addrspace(3)* %1001, align 4, !tbaa !6
  %1018 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %1019 = load float, float addrspace(3)* %1018, align 4, !tbaa !6
  %1020 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 13), align 4, !tbaa !6
  %1021 = fmul contract float %1019, %1020
  %1022 = fsub contract float %1017, %1021
  store float %1022, float addrspace(3)* %1001, align 4, !tbaa !6
  %1023 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %1024 = load float, float addrspace(3)* %1023, align 16, !tbaa !6
  %1025 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 13), align 4, !tbaa !6
  %1026 = fmul contract float %1024, %1025
  %1027 = fsub contract float %1022, %1026
  store float %1027, float addrspace(3)* %1001, align 4, !tbaa !6
  %1028 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %1029 = load float, float addrspace(3)* %1028, align 4, !tbaa !6
  %1030 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 13), align 4, !tbaa !6
  %1031 = fmul contract float %1029, %1030
  %1032 = fsub contract float %1027, %1031
  store float %1032, float addrspace(3)* %1001, align 4, !tbaa !6
  %1033 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %1034 = load float, float addrspace(3)* %1033, align 8, !tbaa !6
  %1035 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 13), align 4, !tbaa !6
  %1036 = fmul contract float %1034, %1035
  %1037 = fsub contract float %1032, %1036
  store float %1037, float addrspace(3)* %1001, align 4, !tbaa !6
  %1038 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %1039 = load float, float addrspace(3)* %1038, align 4, !tbaa !6
  %1040 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 13), align 4, !tbaa !6
  %1041 = fmul contract float %1039, %1040
  %1042 = fsub contract float %1037, %1041
  store float %1042, float addrspace(3)* %1001, align 4, !tbaa !6
  %1043 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %1044 = load float, float addrspace(3)* %1043, align 16, !tbaa !6
  %1045 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 13), align 4, !tbaa !6
  %1046 = fmul contract float %1044, %1045
  %1047 = fsub contract float %1042, %1046
  store float %1047, float addrspace(3)* %1001, align 4, !tbaa !6
  %1048 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 9
  %1049 = load float, float addrspace(3)* %1048, align 4, !tbaa !6
  %1050 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 13), align 4, !tbaa !6
  %1051 = fmul contract float %1049, %1050
  %1052 = fsub contract float %1047, %1051
  store float %1052, float addrspace(3)* %1001, align 4, !tbaa !6
  %1053 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 10
  %1054 = load float, float addrspace(3)* %1053, align 8, !tbaa !6
  %1055 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 13), align 4, !tbaa !6
  %1056 = fmul contract float %1054, %1055
  %1057 = fsub contract float %1052, %1056
  store float %1057, float addrspace(3)* %1001, align 4, !tbaa !6
  %1058 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 11
  %1059 = load float, float addrspace(3)* %1058, align 4, !tbaa !6
  %1060 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 13), align 4, !tbaa !6
  %1061 = fmul contract float %1059, %1060
  %1062 = fsub contract float %1057, %1061
  store float %1062, float addrspace(3)* %1001, align 4, !tbaa !6
  %1063 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 12
  %1064 = load float, float addrspace(3)* %1063, align 16, !tbaa !6
  %1065 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 13), align 4, !tbaa !6
  %1066 = fmul contract float %1064, %1065
  %1067 = fsub contract float %1062, %1066
  store float %1067, float addrspace(3)* %1001, align 4, !tbaa !6
  %1068 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 13), align 4, !tbaa !6
  %1069 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 13
  %1070 = fdiv contract float %1067, %1068
  store float %1070, float addrspace(3)* %1069, align 4, !tbaa !6
  br label %1071

1071:                                             ; preds = %1000, %998
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %999, label %1072, label %1130

1072:                                             ; preds = %1071
  %1073 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 0), align 16, !tbaa !6
  %1074 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %1075 = fmul contract float %1073, %1074
  %1076 = load float, float addrspace(3)* %96, align 4, !tbaa !6
  %1077 = fsub contract float %1076, %1075
  store float %1077, float addrspace(3)* %96, align 4, !tbaa !6
  %1078 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 1), align 4, !tbaa !6
  %1079 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %1080 = fmul contract float %1078, %1079
  %1081 = fsub contract float %1077, %1080
  store float %1081, float addrspace(3)* %96, align 4, !tbaa !6
  %1082 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 2), align 8, !tbaa !6
  %1083 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %1084 = fmul contract float %1082, %1083
  %1085 = fsub contract float %1081, %1084
  store float %1085, float addrspace(3)* %96, align 4, !tbaa !6
  %1086 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 3), align 4, !tbaa !6
  %1087 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %1088 = fmul contract float %1086, %1087
  %1089 = fsub contract float %1085, %1088
  store float %1089, float addrspace(3)* %96, align 4, !tbaa !6
  %1090 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 4), align 16, !tbaa !6
  %1091 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %1092 = fmul contract float %1090, %1091
  %1093 = fsub contract float %1089, %1092
  store float %1093, float addrspace(3)* %96, align 4, !tbaa !6
  %1094 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 5), align 4, !tbaa !6
  %1095 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %1096 = fmul contract float %1094, %1095
  %1097 = fsub contract float %1093, %1096
  store float %1097, float addrspace(3)* %96, align 4, !tbaa !6
  %1098 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 6), align 8, !tbaa !6
  %1099 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %1100 = fmul contract float %1098, %1099
  %1101 = fsub contract float %1097, %1100
  store float %1101, float addrspace(3)* %96, align 4, !tbaa !6
  %1102 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 7), align 4, !tbaa !6
  %1103 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %1104 = fmul contract float %1102, %1103
  %1105 = fsub contract float %1101, %1104
  store float %1105, float addrspace(3)* %96, align 4, !tbaa !6
  %1106 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 8), align 16, !tbaa !6
  %1107 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %1108 = fmul contract float %1106, %1107
  %1109 = fsub contract float %1105, %1108
  store float %1109, float addrspace(3)* %96, align 4, !tbaa !6
  %1110 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 9), align 4, !tbaa !6
  %1111 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %1112 = fmul contract float %1110, %1111
  %1113 = fsub contract float %1109, %1112
  store float %1113, float addrspace(3)* %96, align 4, !tbaa !6
  %1114 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 10), align 8, !tbaa !6
  %1115 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %1116 = fmul contract float %1114, %1115
  %1117 = fsub contract float %1113, %1116
  store float %1117, float addrspace(3)* %96, align 4, !tbaa !6
  %1118 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 11), align 4, !tbaa !6
  %1119 = load float, float addrspace(3)* %78, align 4, !tbaa !6
  %1120 = fmul contract float %1118, %1119
  %1121 = fsub contract float %1117, %1120
  store float %1121, float addrspace(3)* %96, align 4, !tbaa !6
  %1122 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 12), align 16, !tbaa !6
  %1123 = load float, float addrspace(3)* %84, align 4, !tbaa !6
  %1124 = fmul contract float %1122, %1123
  %1125 = fsub contract float %1121, %1124
  store float %1125, float addrspace(3)* %96, align 4, !tbaa !6
  %1126 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 13), align 4, !tbaa !6
  %1127 = load float, float addrspace(3)* %90, align 4, !tbaa !6
  %1128 = fmul contract float %1126, %1127
  %1129 = fsub contract float %1125, %1128
  store float %1129, float addrspace(3)* %96, align 4, !tbaa !6
  br label %1130

1130:                                             ; preds = %1072, %1071
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1131 = icmp ugt i32 %6, 14
  br i1 %1131, label %1132, label %1208

1132:                                             ; preds = %1130
  %1133 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 14
  %1134 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 0
  %1135 = load float, float addrspace(3)* %1134, align 16, !tbaa !6
  %1136 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 0, i32 14), align 8, !tbaa !6
  %1137 = fmul contract float %1135, %1136
  %1138 = load float, float addrspace(3)* %1133, align 8, !tbaa !6
  %1139 = fsub contract float %1138, %1137
  store float %1139, float addrspace(3)* %1133, align 8, !tbaa !6
  %1140 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 1
  %1141 = load float, float addrspace(3)* %1140, align 4, !tbaa !6
  %1142 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 1, i32 14), align 8, !tbaa !6
  %1143 = fmul contract float %1141, %1142
  %1144 = fsub contract float %1139, %1143
  store float %1144, float addrspace(3)* %1133, align 8, !tbaa !6
  %1145 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 2
  %1146 = load float, float addrspace(3)* %1145, align 8, !tbaa !6
  %1147 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 2, i32 14), align 8, !tbaa !6
  %1148 = fmul contract float %1146, %1147
  %1149 = fsub contract float %1144, %1148
  store float %1149, float addrspace(3)* %1133, align 8, !tbaa !6
  %1150 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 3
  %1151 = load float, float addrspace(3)* %1150, align 4, !tbaa !6
  %1152 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 3, i32 14), align 8, !tbaa !6
  %1153 = fmul contract float %1151, %1152
  %1154 = fsub contract float %1149, %1153
  store float %1154, float addrspace(3)* %1133, align 8, !tbaa !6
  %1155 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 4
  %1156 = load float, float addrspace(3)* %1155, align 16, !tbaa !6
  %1157 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 4, i32 14), align 8, !tbaa !6
  %1158 = fmul contract float %1156, %1157
  %1159 = fsub contract float %1154, %1158
  store float %1159, float addrspace(3)* %1133, align 8, !tbaa !6
  %1160 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 5
  %1161 = load float, float addrspace(3)* %1160, align 4, !tbaa !6
  %1162 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 5, i32 14), align 8, !tbaa !6
  %1163 = fmul contract float %1161, %1162
  %1164 = fsub contract float %1159, %1163
  store float %1164, float addrspace(3)* %1133, align 8, !tbaa !6
  %1165 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 6
  %1166 = load float, float addrspace(3)* %1165, align 8, !tbaa !6
  %1167 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 6, i32 14), align 8, !tbaa !6
  %1168 = fmul contract float %1166, %1167
  %1169 = fsub contract float %1164, %1168
  store float %1169, float addrspace(3)* %1133, align 8, !tbaa !6
  %1170 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 7
  %1171 = load float, float addrspace(3)* %1170, align 4, !tbaa !6
  %1172 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 7, i32 14), align 8, !tbaa !6
  %1173 = fmul contract float %1171, %1172
  %1174 = fsub contract float %1169, %1173
  store float %1174, float addrspace(3)* %1133, align 8, !tbaa !6
  %1175 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 8
  %1176 = load float, float addrspace(3)* %1175, align 16, !tbaa !6
  %1177 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 8, i32 14), align 8, !tbaa !6
  %1178 = fmul contract float %1176, %1177
  %1179 = fsub contract float %1174, %1178
  store float %1179, float addrspace(3)* %1133, align 8, !tbaa !6
  %1180 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 9
  %1181 = load float, float addrspace(3)* %1180, align 4, !tbaa !6
  %1182 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 9, i32 14), align 8, !tbaa !6
  %1183 = fmul contract float %1181, %1182
  %1184 = fsub contract float %1179, %1183
  store float %1184, float addrspace(3)* %1133, align 8, !tbaa !6
  %1185 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 10
  %1186 = load float, float addrspace(3)* %1185, align 8, !tbaa !6
  %1187 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 10, i32 14), align 8, !tbaa !6
  %1188 = fmul contract float %1186, %1187
  %1189 = fsub contract float %1184, %1188
  store float %1189, float addrspace(3)* %1133, align 8, !tbaa !6
  %1190 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 11
  %1191 = load float, float addrspace(3)* %1190, align 4, !tbaa !6
  %1192 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 11, i32 14), align 8, !tbaa !6
  %1193 = fmul contract float %1191, %1192
  %1194 = fsub contract float %1189, %1193
  store float %1194, float addrspace(3)* %1133, align 8, !tbaa !6
  %1195 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 12
  %1196 = load float, float addrspace(3)* %1195, align 16, !tbaa !6
  %1197 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 12, i32 14), align 8, !tbaa !6
  %1198 = fmul contract float %1196, %1197
  %1199 = fsub contract float %1194, %1198
  store float %1199, float addrspace(3)* %1133, align 8, !tbaa !6
  %1200 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 13
  %1201 = load float, float addrspace(3)* %1200, align 4, !tbaa !6
  %1202 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 13, i32 14), align 8, !tbaa !6
  %1203 = fmul contract float %1201, %1202
  %1204 = fsub contract float %1199, %1203
  store float %1204, float addrspace(3)* %1133, align 8, !tbaa !6
  %1205 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 14, i32 14), align 8, !tbaa !6
  %1206 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 %6, i32 14
  %1207 = fdiv contract float %1204, %1205
  store float %1207, float addrspace(3)* %1206, align 8, !tbaa !6
  br label %1208

1208:                                             ; preds = %1132, %1130
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %1131, label %1209, label %1271

1209:                                             ; preds = %1208
  %1210 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 0), align 16, !tbaa !6
  %1211 = load float, float addrspace(3)* %12, align 4, !tbaa !6
  %1212 = fmul contract float %1210, %1211
  %1213 = load float, float addrspace(3)* %102, align 4, !tbaa !6
  %1214 = fsub contract float %1213, %1212
  store float %1214, float addrspace(3)* %102, align 4, !tbaa !6
  %1215 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 1), align 4, !tbaa !6
  %1216 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %1217 = fmul contract float %1215, %1216
  %1218 = fsub contract float %1214, %1217
  store float %1218, float addrspace(3)* %102, align 4, !tbaa !6
  %1219 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 2), align 8, !tbaa !6
  %1220 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %1221 = fmul contract float %1219, %1220
  %1222 = fsub contract float %1218, %1221
  store float %1222, float addrspace(3)* %102, align 4, !tbaa !6
  %1223 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 3), align 4, !tbaa !6
  %1224 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %1225 = fmul contract float %1223, %1224
  %1226 = fsub contract float %1222, %1225
  store float %1226, float addrspace(3)* %102, align 4, !tbaa !6
  %1227 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 4), align 16, !tbaa !6
  %1228 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %1229 = fmul contract float %1227, %1228
  %1230 = fsub contract float %1226, %1229
  store float %1230, float addrspace(3)* %102, align 4, !tbaa !6
  %1231 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 5), align 4, !tbaa !6
  %1232 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %1233 = fmul contract float %1231, %1232
  %1234 = fsub contract float %1230, %1233
  store float %1234, float addrspace(3)* %102, align 4, !tbaa !6
  %1235 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 6), align 8, !tbaa !6
  %1236 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %1237 = fmul contract float %1235, %1236
  %1238 = fsub contract float %1234, %1237
  store float %1238, float addrspace(3)* %102, align 4, !tbaa !6
  %1239 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 7), align 4, !tbaa !6
  %1240 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %1241 = fmul contract float %1239, %1240
  %1242 = fsub contract float %1238, %1241
  store float %1242, float addrspace(3)* %102, align 4, !tbaa !6
  %1243 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 8), align 16, !tbaa !6
  %1244 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %1245 = fmul contract float %1243, %1244
  %1246 = fsub contract float %1242, %1245
  store float %1246, float addrspace(3)* %102, align 4, !tbaa !6
  %1247 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 9), align 4, !tbaa !6
  %1248 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %1249 = fmul contract float %1247, %1248
  %1250 = fsub contract float %1246, %1249
  store float %1250, float addrspace(3)* %102, align 4, !tbaa !6
  %1251 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 10), align 8, !tbaa !6
  %1252 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %1253 = fmul contract float %1251, %1252
  %1254 = fsub contract float %1250, %1253
  store float %1254, float addrspace(3)* %102, align 4, !tbaa !6
  %1255 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 11), align 4, !tbaa !6
  %1256 = load float, float addrspace(3)* %78, align 4, !tbaa !6
  %1257 = fmul contract float %1255, %1256
  %1258 = fsub contract float %1254, %1257
  store float %1258, float addrspace(3)* %102, align 4, !tbaa !6
  %1259 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 12), align 16, !tbaa !6
  %1260 = load float, float addrspace(3)* %84, align 4, !tbaa !6
  %1261 = fmul contract float %1259, %1260
  %1262 = fsub contract float %1258, %1261
  store float %1262, float addrspace(3)* %102, align 4, !tbaa !6
  %1263 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 13), align 4, !tbaa !6
  %1264 = load float, float addrspace(3)* %90, align 4, !tbaa !6
  %1265 = fmul contract float %1263, %1264
  %1266 = fsub contract float %1262, %1265
  store float %1266, float addrspace(3)* %102, align 4, !tbaa !6
  %1267 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_diagonalPfiiE6shadow, i32 0, i32 15, i32 14), align 8, !tbaa !6
  %1268 = load float, float addrspace(3)* %96, align 4, !tbaa !6
  %1269 = fmul contract float %1267, %1268
  %1270 = fsub contract float %1266, %1269
  store float %1270, float addrspace(3)* %102, align 4, !tbaa !6
  br label %1271

1271:                                             ; preds = %1209, %1208
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1272 = add nsw i32 %2, 1
  %1273 = mul nsw i32 %1272, %1
  %1274 = add nsw i32 %1273, %2
  %1275 = load float, float addrspace(3)* %18, align 4, !tbaa !6
  %1276 = sext i32 %1274 to i64
  %1277 = add nsw i64 %1276, %7
  %1278 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1277
  store float %1275, float addrspace(1)* %1278, align 4, !tbaa !6
  %1279 = add nsw i32 %1274, %1
  %1280 = load float, float addrspace(3)* %24, align 4, !tbaa !6
  %1281 = sext i32 %1279 to i64
  %1282 = add nsw i64 %1281, %7
  %1283 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1282
  store float %1280, float addrspace(1)* %1283, align 4, !tbaa !6
  %1284 = add nsw i32 %1279, %1
  %1285 = load float, float addrspace(3)* %30, align 4, !tbaa !6
  %1286 = sext i32 %1284 to i64
  %1287 = add nsw i64 %1286, %7
  %1288 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1287
  store float %1285, float addrspace(1)* %1288, align 4, !tbaa !6
  %1289 = add nsw i32 %1284, %1
  %1290 = load float, float addrspace(3)* %36, align 4, !tbaa !6
  %1291 = sext i32 %1289 to i64
  %1292 = add nsw i64 %1291, %7
  %1293 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1292
  store float %1290, float addrspace(1)* %1293, align 4, !tbaa !6
  %1294 = add nsw i32 %1289, %1
  %1295 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %1296 = sext i32 %1294 to i64
  %1297 = add nsw i64 %1296, %7
  %1298 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1297
  store float %1295, float addrspace(1)* %1298, align 4, !tbaa !6
  %1299 = add nsw i32 %1294, %1
  %1300 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %1301 = sext i32 %1299 to i64
  %1302 = add nsw i64 %1301, %7
  %1303 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1302
  store float %1300, float addrspace(1)* %1303, align 4, !tbaa !6
  %1304 = add nsw i32 %1299, %1
  %1305 = load float, float addrspace(3)* %54, align 4, !tbaa !6
  %1306 = sext i32 %1304 to i64
  %1307 = add nsw i64 %1306, %7
  %1308 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1307
  store float %1305, float addrspace(1)* %1308, align 4, !tbaa !6
  %1309 = add nsw i32 %1304, %1
  %1310 = load float, float addrspace(3)* %60, align 4, !tbaa !6
  %1311 = sext i32 %1309 to i64
  %1312 = add nsw i64 %1311, %7
  %1313 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1312
  store float %1310, float addrspace(1)* %1313, align 4, !tbaa !6
  %1314 = add nsw i32 %1309, %1
  %1315 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %1316 = sext i32 %1314 to i64
  %1317 = add nsw i64 %1316, %7
  %1318 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1317
  store float %1315, float addrspace(1)* %1318, align 4, !tbaa !6
  %1319 = add nsw i32 %1314, %1
  %1320 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %1321 = sext i32 %1319 to i64
  %1322 = add nsw i64 %1321, %7
  %1323 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1322
  store float %1320, float addrspace(1)* %1323, align 4, !tbaa !6
  %1324 = add nsw i32 %1319, %1
  %1325 = load float, float addrspace(3)* %78, align 4, !tbaa !6
  %1326 = sext i32 %1324 to i64
  %1327 = add nsw i64 %1326, %7
  %1328 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1327
  store float %1325, float addrspace(1)* %1328, align 4, !tbaa !6
  %1329 = add nsw i32 %1324, %1
  %1330 = load float, float addrspace(3)* %84, align 4, !tbaa !6
  %1331 = sext i32 %1329 to i64
  %1332 = add nsw i64 %1331, %7
  %1333 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1332
  store float %1330, float addrspace(1)* %1333, align 4, !tbaa !6
  %1334 = add nsw i32 %1329, %1
  %1335 = load float, float addrspace(3)* %90, align 4, !tbaa !6
  %1336 = sext i32 %1334 to i64
  %1337 = add nsw i64 %1336, %7
  %1338 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1337
  store float %1335, float addrspace(1)* %1338, align 4, !tbaa !6
  %1339 = add nsw i32 %1334, %1
  %1340 = load float, float addrspace(3)* %96, align 4, !tbaa !6
  %1341 = sext i32 %1339 to i64
  %1342 = add nsw i64 %1341, %7
  %1343 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1342
  store float %1340, float addrspace(1)* %1343, align 4, !tbaa !6
  %1344 = add nsw i32 %1339, %1
  %1345 = load float, float addrspace(3)* %102, align 4, !tbaa !6
  %1346 = sext i32 %1344 to i64
  %1347 = add nsw i64 %1346, %7
  %1348 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1347
  store float %1345, float addrspace(1)* %1348, align 4, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z13lud_perimeterPfii(float addrspace(1)* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %5 = zext i32 %4 to i64
  %6 = icmp ult i32 %4, 16
  br i1 %6, label %7, label %150

7:                                                ; preds = %3
  %8 = mul nsw i32 %2, %1
  %9 = add nsw i32 %8, %2
  %10 = add nsw i32 %9, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float, float addrspace(1)* %0, i64 %11
  %13 = load float, float addrspace(1)* %12, align 4, !tbaa !6, !amdgpu.noclobber !10
  %14 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 %4
  store float %13, float addrspace(3)* %14, align 4, !tbaa !6
  %15 = add nsw i32 %9, %1
  %16 = add nsw i32 %15, %4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float addrspace(1)* %0, i64 %17
  %19 = load float, float addrspace(1)* %18, align 4, !tbaa !6, !amdgpu.noclobber !10
  %20 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 %4
  store float %19, float addrspace(3)* %20, align 4, !tbaa !6
  %21 = add nsw i32 %15, %1
  %22 = add nsw i32 %21, %4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float addrspace(1)* %0, i64 %23
  %25 = load float, float addrspace(1)* %24, align 4, !tbaa !6, !amdgpu.noclobber !10
  %26 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 %4
  store float %25, float addrspace(3)* %26, align 4, !tbaa !6
  %27 = add nsw i32 %21, %1
  %28 = add nsw i32 %27, %4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float addrspace(1)* %0, i64 %29
  %31 = load float, float addrspace(1)* %30, align 4, !tbaa !6, !amdgpu.noclobber !10
  %32 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 %4
  store float %31, float addrspace(3)* %32, align 4, !tbaa !6
  %33 = add nsw i32 %27, %1
  %34 = add nsw i32 %33, %4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float addrspace(1)* %0, i64 %35
  %37 = load float, float addrspace(1)* %36, align 4, !tbaa !6, !amdgpu.noclobber !10
  %38 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 %4
  store float %37, float addrspace(3)* %38, align 4, !tbaa !6
  %39 = add nsw i32 %33, %1
  %40 = add nsw i32 %39, %4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float addrspace(1)* %0, i64 %41
  %43 = load float, float addrspace(1)* %42, align 4, !tbaa !6, !amdgpu.noclobber !10
  %44 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 %4
  store float %43, float addrspace(3)* %44, align 4, !tbaa !6
  %45 = add nsw i32 %39, %1
  %46 = add nsw i32 %45, %4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float addrspace(1)* %0, i64 %47
  %49 = load float, float addrspace(1)* %48, align 4, !tbaa !6, !amdgpu.noclobber !10
  %50 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 %4
  store float %49, float addrspace(3)* %50, align 4, !tbaa !6
  %51 = add nsw i32 %45, %1
  %52 = add nsw i32 %51, %4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float addrspace(1)* %0, i64 %53
  %55 = load float, float addrspace(1)* %54, align 4, !tbaa !6, !amdgpu.noclobber !10
  %56 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 %4
  store float %55, float addrspace(3)* %56, align 4, !tbaa !6
  %57 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 4
  %60 = add nuw nsw i64 %5, 16
  %61 = add nuw nsw i64 %60, %59
  %62 = sext i32 %9 to i64
  %63 = add nsw i64 %61, %62
  %64 = getelementptr inbounds float, float addrspace(1)* %0, i64 %63
  %65 = load float, float addrspace(1)* %64, align 4, !tbaa !6, !amdgpu.noclobber !10
  %66 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 0, i32 %4
  store float %65, float addrspace(3)* %66, align 4, !tbaa !6
  %67 = sext i32 %15 to i64
  %68 = add nsw i64 %61, %67
  %69 = getelementptr inbounds float, float addrspace(1)* %0, i64 %68
  %70 = load float, float addrspace(1)* %69, align 4, !tbaa !6, !amdgpu.noclobber !10
  %71 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 1, i32 %4
  store float %70, float addrspace(3)* %71, align 4, !tbaa !6
  %72 = sext i32 %21 to i64
  %73 = add nsw i64 %61, %72
  %74 = getelementptr inbounds float, float addrspace(1)* %0, i64 %73
  %75 = load float, float addrspace(1)* %74, align 4, !tbaa !6, !amdgpu.noclobber !10
  %76 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 2, i32 %4
  store float %75, float addrspace(3)* %76, align 4, !tbaa !6
  %77 = sext i32 %27 to i64
  %78 = add nsw i64 %61, %77
  %79 = getelementptr inbounds float, float addrspace(1)* %0, i64 %78
  %80 = load float, float addrspace(1)* %79, align 4, !tbaa !6, !amdgpu.noclobber !10
  %81 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 3, i32 %4
  store float %80, float addrspace(3)* %81, align 4, !tbaa !6
  %82 = sext i32 %33 to i64
  %83 = add nsw i64 %61, %82
  %84 = getelementptr inbounds float, float addrspace(1)* %0, i64 %83
  %85 = load float, float addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 4, i32 %4
  store float %85, float addrspace(3)* %86, align 4, !tbaa !6
  %87 = sext i32 %39 to i64
  %88 = add nsw i64 %61, %87
  %89 = getelementptr inbounds float, float addrspace(1)* %0, i64 %88
  %90 = load float, float addrspace(1)* %89, align 4, !tbaa !6, !amdgpu.noclobber !10
  %91 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 5, i32 %4
  store float %90, float addrspace(3)* %91, align 4, !tbaa !6
  %92 = sext i32 %45 to i64
  %93 = add nsw i64 %61, %92
  %94 = getelementptr inbounds float, float addrspace(1)* %0, i64 %93
  %95 = load float, float addrspace(1)* %94, align 4, !tbaa !6, !amdgpu.noclobber !10
  %96 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 6, i32 %4
  store float %95, float addrspace(3)* %96, align 4, !tbaa !6
  %97 = sext i32 %51 to i64
  %98 = add nsw i64 %61, %97
  %99 = getelementptr inbounds float, float addrspace(1)* %0, i64 %98
  %100 = load float, float addrspace(1)* %99, align 4, !tbaa !6, !amdgpu.noclobber !10
  %101 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 7, i32 %4
  store float %100, float addrspace(3)* %101, align 4, !tbaa !6
  %102 = add nsw i32 %51, %1
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %61, %103
  %105 = getelementptr inbounds float, float addrspace(1)* %0, i64 %104
  %106 = load float, float addrspace(1)* %105, align 4, !tbaa !6, !amdgpu.noclobber !10
  %107 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 8, i32 %4
  store float %106, float addrspace(3)* %107, align 4, !tbaa !6
  %108 = add nsw i32 %102, %1
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %61, %109
  %111 = getelementptr inbounds float, float addrspace(1)* %0, i64 %110
  %112 = load float, float addrspace(1)* %111, align 4, !tbaa !6, !amdgpu.noclobber !10
  %113 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 9, i32 %4
  store float %112, float addrspace(3)* %113, align 4, !tbaa !6
  %114 = add nsw i32 %108, %1
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %61, %115
  %117 = getelementptr inbounds float, float addrspace(1)* %0, i64 %116
  %118 = load float, float addrspace(1)* %117, align 4, !tbaa !6, !amdgpu.noclobber !10
  %119 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 10, i32 %4
  store float %118, float addrspace(3)* %119, align 4, !tbaa !6
  %120 = add nsw i32 %114, %1
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %61, %121
  %123 = getelementptr inbounds float, float addrspace(1)* %0, i64 %122
  %124 = load float, float addrspace(1)* %123, align 4, !tbaa !6, !amdgpu.noclobber !10
  %125 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 11, i32 %4
  store float %124, float addrspace(3)* %125, align 4, !tbaa !6
  %126 = add nsw i32 %120, %1
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %61, %127
  %129 = getelementptr inbounds float, float addrspace(1)* %0, i64 %128
  %130 = load float, float addrspace(1)* %129, align 4, !tbaa !6, !amdgpu.noclobber !10
  %131 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 12, i32 %4
  store float %130, float addrspace(3)* %131, align 4, !tbaa !6
  %132 = add nsw i32 %126, %1
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %61, %133
  %135 = getelementptr inbounds float, float addrspace(1)* %0, i64 %134
  %136 = load float, float addrspace(1)* %135, align 4, !tbaa !6, !amdgpu.noclobber !10
  %137 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 13, i32 %4
  store float %136, float addrspace(3)* %137, align 4, !tbaa !6
  %138 = add nsw i32 %132, %1
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %61, %139
  %141 = getelementptr inbounds float, float addrspace(1)* %0, i64 %140
  %142 = load float, float addrspace(1)* %141, align 4, !tbaa !6, !amdgpu.noclobber !10
  %143 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 14, i32 %4
  store float %142, float addrspace(3)* %143, align 4, !tbaa !6
  %144 = add nsw i32 %138, %1
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %61, %145
  %147 = getelementptr inbounds float, float addrspace(1)* %0, i64 %146
  %148 = load float, float addrspace(1)* %147, align 4, !tbaa !6, !amdgpu.noclobber !10
  %149 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 15, i32 %4
  store float %148, float addrspace(3)* %149, align 4, !tbaa !6
  br label %303

150:                                              ; preds = %3
  %151 = add nsw i32 %4, -16
  %152 = add nsw i32 %2, 8
  %153 = mul nsw i32 %152, %1
  %154 = add nsw i32 %153, %2
  %155 = add nsw i32 %154, %151
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float addrspace(1)* %0, i64 %156
  %158 = load float, float addrspace(1)* %157, align 4, !tbaa !6, !amdgpu.noclobber !10
  %159 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 %151
  store float %158, float addrspace(3)* %159, align 4, !tbaa !6
  %160 = add nsw i32 %154, %1
  %161 = add nsw i32 %160, %151
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float addrspace(1)* %0, i64 %162
  %164 = load float, float addrspace(1)* %163, align 4, !tbaa !6, !amdgpu.noclobber !10
  %165 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 %151
  store float %164, float addrspace(3)* %165, align 4, !tbaa !6
  %166 = add nsw i32 %160, %1
  %167 = add nsw i32 %166, %151
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float addrspace(1)* %0, i64 %168
  %170 = load float, float addrspace(1)* %169, align 4, !tbaa !6, !amdgpu.noclobber !10
  %171 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 %151
  store float %170, float addrspace(3)* %171, align 4, !tbaa !6
  %172 = add nsw i32 %166, %1
  %173 = add nsw i32 %172, %151
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float addrspace(1)* %0, i64 %174
  %176 = load float, float addrspace(1)* %175, align 4, !tbaa !6, !amdgpu.noclobber !10
  %177 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 %151
  store float %176, float addrspace(3)* %177, align 4, !tbaa !6
  %178 = add nsw i32 %172, %1
  %179 = add nsw i32 %178, %151
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float addrspace(1)* %0, i64 %180
  %182 = load float, float addrspace(1)* %181, align 4, !tbaa !6, !amdgpu.noclobber !10
  %183 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 %151
  store float %182, float addrspace(3)* %183, align 4, !tbaa !6
  %184 = add nsw i32 %178, %1
  %185 = add nsw i32 %184, %151
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float addrspace(1)* %0, i64 %186
  %188 = load float, float addrspace(1)* %187, align 4, !tbaa !6, !amdgpu.noclobber !10
  %189 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 %151
  store float %188, float addrspace(3)* %189, align 4, !tbaa !6
  %190 = add nsw i32 %184, %1
  %191 = add nsw i32 %190, %151
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float addrspace(1)* %0, i64 %192
  %194 = load float, float addrspace(1)* %193, align 4, !tbaa !6, !amdgpu.noclobber !10
  %195 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 %151
  store float %194, float addrspace(3)* %195, align 4, !tbaa !6
  %196 = add nsw i32 %190, %1
  %197 = add nsw i32 %196, %151
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float addrspace(1)* %0, i64 %198
  %200 = load float, float addrspace(1)* %199, align 4, !tbaa !6, !amdgpu.noclobber !10
  %201 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 %151
  store float %200, float addrspace(3)* %201, align 4, !tbaa !6
  %202 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %203 = shl i32 %202, 4
  %204 = add i32 %2, 16
  %205 = add i32 %204, %203
  %206 = mul i32 %205, %1
  %207 = add i32 %206, %2
  %208 = add nsw i32 %207, %151
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float addrspace(1)* %0, i64 %209
  %211 = load float, float addrspace(1)* %210, align 4, !tbaa !6, !amdgpu.noclobber !10
  %212 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 0, i32 %151
  store float %211, float addrspace(3)* %212, align 4, !tbaa !6
  %213 = add nsw i32 %207, %1
  %214 = add nsw i32 %213, %151
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float addrspace(1)* %0, i64 %215
  %217 = load float, float addrspace(1)* %216, align 4, !tbaa !6, !amdgpu.noclobber !10
  %218 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 1, i32 %151
  store float %217, float addrspace(3)* %218, align 4, !tbaa !6
  %219 = add nsw i32 %213, %1
  %220 = add nsw i32 %219, %151
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float addrspace(1)* %0, i64 %221
  %223 = load float, float addrspace(1)* %222, align 4, !tbaa !6, !amdgpu.noclobber !10
  %224 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 2, i32 %151
  store float %223, float addrspace(3)* %224, align 4, !tbaa !6
  %225 = add nsw i32 %219, %1
  %226 = add nsw i32 %225, %151
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float addrspace(1)* %0, i64 %227
  %229 = load float, float addrspace(1)* %228, align 4, !tbaa !6, !amdgpu.noclobber !10
  %230 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 3, i32 %151
  store float %229, float addrspace(3)* %230, align 4, !tbaa !6
  %231 = add nsw i32 %225, %1
  %232 = add nsw i32 %231, %151
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float addrspace(1)* %0, i64 %233
  %235 = load float, float addrspace(1)* %234, align 4, !tbaa !6, !amdgpu.noclobber !10
  %236 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 4, i32 %151
  store float %235, float addrspace(3)* %236, align 4, !tbaa !6
  %237 = add nsw i32 %231, %1
  %238 = add nsw i32 %237, %151
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, float addrspace(1)* %0, i64 %239
  %241 = load float, float addrspace(1)* %240, align 4, !tbaa !6, !amdgpu.noclobber !10
  %242 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 5, i32 %151
  store float %241, float addrspace(3)* %242, align 4, !tbaa !6
  %243 = add nsw i32 %237, %1
  %244 = add nsw i32 %243, %151
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float addrspace(1)* %0, i64 %245
  %247 = load float, float addrspace(1)* %246, align 4, !tbaa !6, !amdgpu.noclobber !10
  %248 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 6, i32 %151
  store float %247, float addrspace(3)* %248, align 4, !tbaa !6
  %249 = add nsw i32 %243, %1
  %250 = add nsw i32 %249, %151
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float addrspace(1)* %0, i64 %251
  %253 = load float, float addrspace(1)* %252, align 4, !tbaa !6, !amdgpu.noclobber !10
  %254 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 7, i32 %151
  store float %253, float addrspace(3)* %254, align 4, !tbaa !6
  %255 = add nsw i32 %249, %1
  %256 = add nsw i32 %255, %151
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float addrspace(1)* %0, i64 %257
  %259 = load float, float addrspace(1)* %258, align 4, !tbaa !6, !amdgpu.noclobber !10
  %260 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 8, i32 %151
  store float %259, float addrspace(3)* %260, align 4, !tbaa !6
  %261 = add nsw i32 %255, %1
  %262 = add nsw i32 %261, %151
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float addrspace(1)* %0, i64 %263
  %265 = load float, float addrspace(1)* %264, align 4, !tbaa !6, !amdgpu.noclobber !10
  %266 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 9, i32 %151
  store float %265, float addrspace(3)* %266, align 4, !tbaa !6
  %267 = add nsw i32 %261, %1
  %268 = add nsw i32 %267, %151
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float addrspace(1)* %0, i64 %269
  %271 = load float, float addrspace(1)* %270, align 4, !tbaa !6, !amdgpu.noclobber !10
  %272 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 10, i32 %151
  store float %271, float addrspace(3)* %272, align 4, !tbaa !6
  %273 = add nsw i32 %267, %1
  %274 = add nsw i32 %273, %151
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float addrspace(1)* %0, i64 %275
  %277 = load float, float addrspace(1)* %276, align 4, !tbaa !6, !amdgpu.noclobber !10
  %278 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 11, i32 %151
  store float %277, float addrspace(3)* %278, align 4, !tbaa !6
  %279 = add nsw i32 %273, %1
  %280 = add nsw i32 %279, %151
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float addrspace(1)* %0, i64 %281
  %283 = load float, float addrspace(1)* %282, align 4, !tbaa !6, !amdgpu.noclobber !10
  %284 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 12, i32 %151
  store float %283, float addrspace(3)* %284, align 4, !tbaa !6
  %285 = add nsw i32 %279, %1
  %286 = add nsw i32 %285, %151
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float addrspace(1)* %0, i64 %287
  %289 = load float, float addrspace(1)* %288, align 4, !tbaa !6, !amdgpu.noclobber !10
  %290 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 13, i32 %151
  store float %289, float addrspace(3)* %290, align 4, !tbaa !6
  %291 = add nsw i32 %285, %1
  %292 = add nsw i32 %291, %151
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float addrspace(1)* %0, i64 %293
  %295 = load float, float addrspace(1)* %294, align 4, !tbaa !6, !amdgpu.noclobber !10
  %296 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 14, i32 %151
  store float %295, float addrspace(3)* %296, align 4, !tbaa !6
  %297 = add nsw i32 %291, %1
  %298 = add nsw i32 %297, %151
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float addrspace(1)* %0, i64 %299
  %301 = load float, float addrspace(1)* %300, align 4, !tbaa !6, !amdgpu.noclobber !10
  %302 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 15, i32 %151
  store float %301, float addrspace(3)* %302, align 4, !tbaa !6
  br label %303

303:                                              ; preds = %150, %7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %6, label %304, label %737

304:                                              ; preds = %303
  %305 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 1, i32 %4
  %306 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 0), align 16, !tbaa !6
  %307 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 0, i32 %4
  %308 = load float, float addrspace(3)* %307, align 4, !tbaa !6
  %309 = fmul contract float %306, %308
  %310 = load float, float addrspace(3)* %305, align 4, !tbaa !6
  %311 = fsub contract float %310, %309
  store float %311, float addrspace(3)* %305, align 4, !tbaa !6
  %312 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 2, i32 %4
  %313 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 0), align 16, !tbaa !6
  %314 = fmul contract float %313, %308
  %315 = load float, float addrspace(3)* %312, align 4, !tbaa !6
  %316 = fsub contract float %315, %314
  %317 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 1), align 4, !tbaa !6
  %318 = fmul contract float %317, %311
  %319 = fsub contract float %316, %318
  store float %319, float addrspace(3)* %312, align 4, !tbaa !6
  %320 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 3, i32 %4
  %321 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 0), align 16, !tbaa !6
  %322 = fmul contract float %321, %308
  %323 = load float, float addrspace(3)* %320, align 4, !tbaa !6
  %324 = fsub contract float %323, %322
  %325 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 1), align 4, !tbaa !6
  %326 = fmul contract float %325, %311
  %327 = fsub contract float %324, %326
  %328 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 2), align 8, !tbaa !6
  %329 = fmul contract float %328, %319
  %330 = fsub contract float %327, %329
  store float %330, float addrspace(3)* %320, align 4, !tbaa !6
  %331 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 4, i32 %4
  %332 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 0), align 16, !tbaa !6
  %333 = fmul contract float %332, %308
  %334 = load float, float addrspace(3)* %331, align 4, !tbaa !6
  %335 = fsub contract float %334, %333
  %336 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 1), align 4, !tbaa !6
  %337 = fmul contract float %336, %311
  %338 = fsub contract float %335, %337
  %339 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 2), align 8, !tbaa !6
  %340 = fmul contract float %339, %319
  %341 = fsub contract float %338, %340
  %342 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 3), align 4, !tbaa !6
  %343 = fmul contract float %342, %330
  %344 = fsub contract float %341, %343
  store float %344, float addrspace(3)* %331, align 4, !tbaa !6
  %345 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 5, i32 %4
  %346 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 0), align 16, !tbaa !6
  %347 = fmul contract float %346, %308
  %348 = load float, float addrspace(3)* %345, align 4, !tbaa !6
  %349 = fsub contract float %348, %347
  %350 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 1), align 4, !tbaa !6
  %351 = fmul contract float %350, %311
  %352 = fsub contract float %349, %351
  %353 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 2), align 8, !tbaa !6
  %354 = fmul contract float %353, %319
  %355 = fsub contract float %352, %354
  %356 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 3), align 4, !tbaa !6
  %357 = fmul contract float %356, %330
  %358 = fsub contract float %355, %357
  %359 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 4), align 16, !tbaa !6
  %360 = fmul contract float %359, %344
  %361 = fsub contract float %358, %360
  store float %361, float addrspace(3)* %345, align 4, !tbaa !6
  %362 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 6, i32 %4
  %363 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 0), align 16, !tbaa !6
  %364 = fmul contract float %363, %308
  %365 = load float, float addrspace(3)* %362, align 4, !tbaa !6
  %366 = fsub contract float %365, %364
  %367 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 1), align 4, !tbaa !6
  %368 = fmul contract float %367, %311
  %369 = fsub contract float %366, %368
  %370 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 2), align 8, !tbaa !6
  %371 = fmul contract float %370, %319
  %372 = fsub contract float %369, %371
  %373 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 3), align 4, !tbaa !6
  %374 = fmul contract float %373, %330
  %375 = fsub contract float %372, %374
  %376 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 4), align 16, !tbaa !6
  %377 = fmul contract float %376, %344
  %378 = fsub contract float %375, %377
  %379 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 5), align 4, !tbaa !6
  %380 = fmul contract float %379, %361
  %381 = fsub contract float %378, %380
  store float %381, float addrspace(3)* %362, align 4, !tbaa !6
  %382 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 7, i32 %4
  %383 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 0), align 16, !tbaa !6
  %384 = fmul contract float %383, %308
  %385 = load float, float addrspace(3)* %382, align 4, !tbaa !6
  %386 = fsub contract float %385, %384
  %387 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 1), align 4, !tbaa !6
  %388 = fmul contract float %387, %311
  %389 = fsub contract float %386, %388
  %390 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 2), align 8, !tbaa !6
  %391 = fmul contract float %390, %319
  %392 = fsub contract float %389, %391
  %393 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 3), align 4, !tbaa !6
  %394 = fmul contract float %393, %330
  %395 = fsub contract float %392, %394
  %396 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 4), align 16, !tbaa !6
  %397 = fmul contract float %396, %344
  %398 = fsub contract float %395, %397
  %399 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 5), align 4, !tbaa !6
  %400 = fmul contract float %399, %361
  %401 = fsub contract float %398, %400
  %402 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 6), align 8, !tbaa !6
  %403 = fmul contract float %402, %381
  %404 = fsub contract float %401, %403
  store float %404, float addrspace(3)* %382, align 4, !tbaa !6
  %405 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 8, i32 %4
  %406 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 0), align 16, !tbaa !6
  %407 = load float, float addrspace(3)* %307, align 4, !tbaa !6
  %408 = fmul contract float %406, %407
  %409 = load float, float addrspace(3)* %405, align 4, !tbaa !6
  %410 = fsub contract float %409, %408
  %411 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 1), align 4, !tbaa !6
  %412 = load float, float addrspace(3)* %305, align 4, !tbaa !6
  %413 = fmul contract float %411, %412
  %414 = fsub contract float %410, %413
  %415 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 2), align 8, !tbaa !6
  %416 = load float, float addrspace(3)* %312, align 4, !tbaa !6
  %417 = fmul contract float %415, %416
  %418 = fsub contract float %414, %417
  %419 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 3), align 4, !tbaa !6
  %420 = load float, float addrspace(3)* %320, align 4, !tbaa !6
  %421 = fmul contract float %419, %420
  %422 = fsub contract float %418, %421
  %423 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 4), align 16, !tbaa !6
  %424 = load float, float addrspace(3)* %331, align 4, !tbaa !6
  %425 = fmul contract float %423, %424
  %426 = fsub contract float %422, %425
  %427 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 5), align 4, !tbaa !6
  %428 = fmul contract float %427, %361
  %429 = fsub contract float %426, %428
  %430 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 6), align 8, !tbaa !6
  %431 = fmul contract float %430, %381
  %432 = fsub contract float %429, %431
  %433 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 7), align 4, !tbaa !6
  %434 = fmul contract float %433, %404
  %435 = fsub contract float %432, %434
  store float %435, float addrspace(3)* %405, align 4, !tbaa !6
  %436 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 9, i32 %4
  %437 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 0), align 16, !tbaa !6
  %438 = fmul contract float %437, %407
  %439 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %440 = fsub contract float %439, %438
  %441 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 1), align 4, !tbaa !6
  %442 = fmul contract float %441, %412
  %443 = fsub contract float %440, %442
  %444 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 2), align 8, !tbaa !6
  %445 = fmul contract float %444, %416
  %446 = fsub contract float %443, %445
  %447 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 3), align 4, !tbaa !6
  %448 = fmul contract float %447, %420
  %449 = fsub contract float %446, %448
  %450 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 4), align 16, !tbaa !6
  %451 = fmul contract float %450, %424
  %452 = fsub contract float %449, %451
  %453 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 5), align 4, !tbaa !6
  %454 = load float, float addrspace(3)* %345, align 4, !tbaa !6
  %455 = fmul contract float %453, %454
  %456 = fsub contract float %452, %455
  %457 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 6), align 8, !tbaa !6
  %458 = fmul contract float %457, %381
  %459 = fsub contract float %456, %458
  %460 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 7), align 4, !tbaa !6
  %461 = fmul contract float %460, %404
  %462 = fsub contract float %459, %461
  %463 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 8), align 16, !tbaa !6
  %464 = fmul contract float %463, %435
  %465 = fsub contract float %462, %464
  store float %465, float addrspace(3)* %436, align 4, !tbaa !6
  %466 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 10, i32 %4
  %467 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 0), align 16, !tbaa !6
  %468 = fmul contract float %467, %407
  %469 = load float, float addrspace(3)* %466, align 4, !tbaa !6
  %470 = fsub contract float %469, %468
  %471 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 1), align 4, !tbaa !6
  %472 = fmul contract float %471, %412
  %473 = fsub contract float %470, %472
  %474 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 2), align 8, !tbaa !6
  %475 = fmul contract float %474, %416
  %476 = fsub contract float %473, %475
  %477 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 3), align 4, !tbaa !6
  %478 = fmul contract float %477, %420
  %479 = fsub contract float %476, %478
  %480 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 4), align 16, !tbaa !6
  %481 = fmul contract float %480, %424
  %482 = fsub contract float %479, %481
  %483 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 5), align 4, !tbaa !6
  %484 = fmul contract float %483, %454
  %485 = fsub contract float %482, %484
  %486 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 6), align 8, !tbaa !6
  %487 = load float, float addrspace(3)* %362, align 4, !tbaa !6
  %488 = fmul contract float %486, %487
  %489 = fsub contract float %485, %488
  %490 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 7), align 4, !tbaa !6
  %491 = load float, float addrspace(3)* %382, align 4, !tbaa !6
  %492 = fmul contract float %490, %491
  %493 = fsub contract float %489, %492
  %494 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 8), align 16, !tbaa !6
  %495 = fmul contract float %494, %435
  %496 = fsub contract float %493, %495
  %497 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 9), align 4, !tbaa !6
  %498 = fmul contract float %497, %465
  %499 = fsub contract float %496, %498
  store float %499, float addrspace(3)* %466, align 4, !tbaa !6
  %500 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 11, i32 %4
  %501 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 0), align 16, !tbaa !6
  %502 = load float, float addrspace(3)* %307, align 4, !tbaa !6
  %503 = fmul contract float %501, %502
  %504 = load float, float addrspace(3)* %500, align 4, !tbaa !6
  %505 = fsub contract float %504, %503
  %506 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 1), align 4, !tbaa !6
  %507 = load float, float addrspace(3)* %305, align 4, !tbaa !6
  %508 = fmul contract float %506, %507
  %509 = fsub contract float %505, %508
  %510 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 2), align 8, !tbaa !6
  %511 = load float, float addrspace(3)* %312, align 4, !tbaa !6
  %512 = fmul contract float %510, %511
  %513 = fsub contract float %509, %512
  %514 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 3), align 4, !tbaa !6
  %515 = load float, float addrspace(3)* %320, align 4, !tbaa !6
  %516 = fmul contract float %514, %515
  %517 = fsub contract float %513, %516
  %518 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 4), align 16, !tbaa !6
  %519 = load float, float addrspace(3)* %331, align 4, !tbaa !6
  %520 = fmul contract float %518, %519
  %521 = fsub contract float %517, %520
  %522 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 5), align 4, !tbaa !6
  %523 = fmul contract float %522, %454
  %524 = fsub contract float %521, %523
  %525 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 6), align 8, !tbaa !6
  %526 = fmul contract float %525, %487
  %527 = fsub contract float %524, %526
  %528 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 7), align 4, !tbaa !6
  %529 = fmul contract float %528, %491
  %530 = fsub contract float %527, %529
  %531 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 8), align 16, !tbaa !6
  %532 = load float, float addrspace(3)* %405, align 4, !tbaa !6
  %533 = fmul contract float %531, %532
  %534 = fsub contract float %530, %533
  %535 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 9), align 4, !tbaa !6
  %536 = fmul contract float %535, %465
  %537 = fsub contract float %534, %536
  %538 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 10), align 8, !tbaa !6
  %539 = fmul contract float %538, %499
  %540 = fsub contract float %537, %539
  store float %540, float addrspace(3)* %500, align 4, !tbaa !6
  %541 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 12, i32 %4
  %542 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 0), align 16, !tbaa !6
  %543 = fmul contract float %542, %502
  %544 = load float, float addrspace(3)* %541, align 4, !tbaa !6
  %545 = fsub contract float %544, %543
  %546 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 1), align 4, !tbaa !6
  %547 = fmul contract float %546, %507
  %548 = fsub contract float %545, %547
  %549 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 2), align 8, !tbaa !6
  %550 = fmul contract float %549, %511
  %551 = fsub contract float %548, %550
  %552 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 3), align 4, !tbaa !6
  %553 = fmul contract float %552, %515
  %554 = fsub contract float %551, %553
  %555 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 4), align 16, !tbaa !6
  %556 = fmul contract float %555, %519
  %557 = fsub contract float %554, %556
  %558 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 5), align 4, !tbaa !6
  %559 = load float, float addrspace(3)* %345, align 4, !tbaa !6
  %560 = fmul contract float %558, %559
  %561 = fsub contract float %557, %560
  %562 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 6), align 8, !tbaa !6
  %563 = fmul contract float %562, %487
  %564 = fsub contract float %561, %563
  %565 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 7), align 4, !tbaa !6
  %566 = fmul contract float %565, %491
  %567 = fsub contract float %564, %566
  %568 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 8), align 16, !tbaa !6
  %569 = fmul contract float %568, %532
  %570 = fsub contract float %567, %569
  %571 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 9), align 4, !tbaa !6
  %572 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %573 = fmul contract float %571, %572
  %574 = fsub contract float %570, %573
  %575 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 10), align 8, !tbaa !6
  %576 = fmul contract float %575, %499
  %577 = fsub contract float %574, %576
  %578 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 11), align 4, !tbaa !6
  %579 = fmul contract float %578, %540
  %580 = fsub contract float %577, %579
  store float %580, float addrspace(3)* %541, align 4, !tbaa !6
  %581 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 13, i32 %4
  %582 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 0), align 16, !tbaa !6
  %583 = load float, float addrspace(3)* %307, align 4, !tbaa !6
  %584 = fmul contract float %582, %583
  %585 = load float, float addrspace(3)* %581, align 4, !tbaa !6
  %586 = fsub contract float %585, %584
  %587 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 1), align 4, !tbaa !6
  %588 = load float, float addrspace(3)* %305, align 4, !tbaa !6
  %589 = fmul contract float %587, %588
  %590 = fsub contract float %586, %589
  %591 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 2), align 8, !tbaa !6
  %592 = load float, float addrspace(3)* %312, align 4, !tbaa !6
  %593 = fmul contract float %591, %592
  %594 = fsub contract float %590, %593
  %595 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 3), align 4, !tbaa !6
  %596 = load float, float addrspace(3)* %320, align 4, !tbaa !6
  %597 = fmul contract float %595, %596
  %598 = fsub contract float %594, %597
  %599 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 4), align 16, !tbaa !6
  %600 = load float, float addrspace(3)* %331, align 4, !tbaa !6
  %601 = fmul contract float %599, %600
  %602 = fsub contract float %598, %601
  %603 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 5), align 4, !tbaa !6
  %604 = fmul contract float %603, %559
  %605 = fsub contract float %602, %604
  %606 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 6), align 8, !tbaa !6
  %607 = load float, float addrspace(3)* %362, align 4, !tbaa !6
  %608 = fmul contract float %606, %607
  %609 = fsub contract float %605, %608
  %610 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 7), align 4, !tbaa !6
  %611 = load float, float addrspace(3)* %382, align 4, !tbaa !6
  %612 = fmul contract float %610, %611
  %613 = fsub contract float %609, %612
  %614 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 8), align 16, !tbaa !6
  %615 = load float, float addrspace(3)* %405, align 4, !tbaa !6
  %616 = fmul contract float %614, %615
  %617 = fsub contract float %613, %616
  %618 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 9), align 4, !tbaa !6
  %619 = fmul contract float %618, %572
  %620 = fsub contract float %617, %619
  %621 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 10), align 8, !tbaa !6
  %622 = load float, float addrspace(3)* %466, align 4, !tbaa !6
  %623 = fmul contract float %621, %622
  %624 = fsub contract float %620, %623
  %625 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 11), align 4, !tbaa !6
  %626 = load float, float addrspace(3)* %500, align 4, !tbaa !6
  %627 = fmul contract float %625, %626
  %628 = fsub contract float %624, %627
  %629 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 12), align 16, !tbaa !6
  %630 = fmul contract float %629, %580
  %631 = fsub contract float %628, %630
  store float %631, float addrspace(3)* %581, align 4, !tbaa !6
  %632 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 14, i32 %4
  %633 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 0), align 16, !tbaa !6
  %634 = fmul contract float %633, %583
  %635 = load float, float addrspace(3)* %632, align 4, !tbaa !6
  %636 = fsub contract float %635, %634
  %637 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 1), align 4, !tbaa !6
  %638 = fmul contract float %637, %588
  %639 = fsub contract float %636, %638
  %640 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 2), align 8, !tbaa !6
  %641 = fmul contract float %640, %592
  %642 = fsub contract float %639, %641
  %643 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 3), align 4, !tbaa !6
  %644 = fmul contract float %643, %596
  %645 = fsub contract float %642, %644
  %646 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 4), align 16, !tbaa !6
  %647 = fmul contract float %646, %600
  %648 = fsub contract float %645, %647
  %649 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 5), align 4, !tbaa !6
  %650 = load float, float addrspace(3)* %345, align 4, !tbaa !6
  %651 = fmul contract float %649, %650
  %652 = fsub contract float %648, %651
  %653 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 6), align 8, !tbaa !6
  %654 = fmul contract float %653, %607
  %655 = fsub contract float %652, %654
  %656 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 7), align 4, !tbaa !6
  %657 = fmul contract float %656, %611
  %658 = fsub contract float %655, %657
  %659 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 8), align 16, !tbaa !6
  %660 = fmul contract float %659, %615
  %661 = fsub contract float %658, %660
  %662 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 9), align 4, !tbaa !6
  %663 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %664 = fmul contract float %662, %663
  %665 = fsub contract float %661, %664
  %666 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 10), align 8, !tbaa !6
  %667 = fmul contract float %666, %622
  %668 = fsub contract float %665, %667
  %669 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 11), align 4, !tbaa !6
  %670 = fmul contract float %669, %626
  %671 = fsub contract float %668, %670
  %672 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 12), align 16, !tbaa !6
  %673 = load float, float addrspace(3)* %541, align 4, !tbaa !6
  %674 = fmul contract float %672, %673
  %675 = fsub contract float %671, %674
  %676 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 13), align 4, !tbaa !6
  %677 = fmul contract float %676, %631
  %678 = fsub contract float %675, %677
  store float %678, float addrspace(3)* %632, align 4, !tbaa !6
  %679 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 15, i32 %4
  %680 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 0), align 16, !tbaa !6
  %681 = load float, float addrspace(3)* %307, align 4, !tbaa !6
  %682 = fmul contract float %680, %681
  %683 = load float, float addrspace(3)* %679, align 4, !tbaa !6
  %684 = fsub contract float %683, %682
  %685 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 1), align 4, !tbaa !6
  %686 = load float, float addrspace(3)* %305, align 4, !tbaa !6
  %687 = fmul contract float %685, %686
  %688 = fsub contract float %684, %687
  %689 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 2), align 8, !tbaa !6
  %690 = load float, float addrspace(3)* %312, align 4, !tbaa !6
  %691 = fmul contract float %689, %690
  %692 = fsub contract float %688, %691
  %693 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 3), align 4, !tbaa !6
  %694 = load float, float addrspace(3)* %320, align 4, !tbaa !6
  %695 = fmul contract float %693, %694
  %696 = fsub contract float %692, %695
  %697 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 4), align 16, !tbaa !6
  %698 = load float, float addrspace(3)* %331, align 4, !tbaa !6
  %699 = fmul contract float %697, %698
  %700 = fsub contract float %696, %699
  %701 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 5), align 4, !tbaa !6
  %702 = fmul contract float %701, %650
  %703 = fsub contract float %700, %702
  %704 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 6), align 8, !tbaa !6
  %705 = load float, float addrspace(3)* %362, align 4, !tbaa !6
  %706 = fmul contract float %704, %705
  %707 = fsub contract float %703, %706
  %708 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 7), align 4, !tbaa !6
  %709 = load float, float addrspace(3)* %382, align 4, !tbaa !6
  %710 = fmul contract float %708, %709
  %711 = fsub contract float %707, %710
  %712 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 8), align 16, !tbaa !6
  %713 = load float, float addrspace(3)* %405, align 4, !tbaa !6
  %714 = fmul contract float %712, %713
  %715 = fsub contract float %711, %714
  %716 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 9), align 4, !tbaa !6
  %717 = fmul contract float %716, %663
  %718 = fsub contract float %715, %717
  %719 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 10), align 8, !tbaa !6
  %720 = load float, float addrspace(3)* %466, align 4, !tbaa !6
  %721 = fmul contract float %719, %720
  %722 = fsub contract float %718, %721
  %723 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 11), align 4, !tbaa !6
  %724 = load float, float addrspace(3)* %500, align 4, !tbaa !6
  %725 = fmul contract float %723, %724
  %726 = fsub contract float %722, %725
  %727 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 12), align 16, !tbaa !6
  %728 = fmul contract float %727, %673
  %729 = fsub contract float %726, %728
  %730 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 13), align 4, !tbaa !6
  %731 = load float, float addrspace(3)* %581, align 4, !tbaa !6
  %732 = fmul contract float %730, %731
  %733 = fsub contract float %729, %732
  %734 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 14), align 8, !tbaa !6
  %735 = fmul contract float %734, %678
  %736 = fsub contract float %733, %735
  store float %736, float addrspace(3)* %679, align 4, !tbaa !6
  br label %1178

737:                                              ; preds = %303
  %738 = add nsw i32 %4, -16
  %739 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 0), align 16, !tbaa !6
  %740 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 0
  %741 = load float, float addrspace(3)* %740, align 16, !tbaa !6
  %742 = fdiv contract float %741, %739
  store float %742, float addrspace(3)* %740, align 16, !tbaa !6
  %743 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 1
  %744 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 1), align 4, !tbaa !6
  %745 = fmul contract float %742, %744
  %746 = load float, float addrspace(3)* %743, align 4, !tbaa !6
  %747 = fsub contract float %746, %745
  store float %747, float addrspace(3)* %743, align 4, !tbaa !6
  %748 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 1), align 4, !tbaa !6
  %749 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 1
  %750 = fdiv contract float %747, %748
  store float %750, float addrspace(3)* %749, align 4, !tbaa !6
  %751 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 2
  %752 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 2), align 8, !tbaa !6
  %753 = fmul contract float %742, %752
  %754 = load float, float addrspace(3)* %751, align 8, !tbaa !6
  %755 = fsub contract float %754, %753
  %756 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 2), align 8, !tbaa !6
  %757 = fmul contract float %750, %756
  %758 = fsub contract float %755, %757
  store float %758, float addrspace(3)* %751, align 8, !tbaa !6
  %759 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 2), align 8, !tbaa !6
  %760 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 2
  %761 = fdiv contract float %758, %759
  store float %761, float addrspace(3)* %760, align 8, !tbaa !6
  %762 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 3
  %763 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 3), align 4, !tbaa !6
  %764 = fmul contract float %742, %763
  %765 = load float, float addrspace(3)* %762, align 4, !tbaa !6
  %766 = fsub contract float %765, %764
  %767 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 3), align 4, !tbaa !6
  %768 = fmul contract float %750, %767
  %769 = fsub contract float %766, %768
  %770 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 3), align 4, !tbaa !6
  %771 = fmul contract float %761, %770
  %772 = fsub contract float %769, %771
  store float %772, float addrspace(3)* %762, align 4, !tbaa !6
  %773 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 3), align 4, !tbaa !6
  %774 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 3
  %775 = fdiv contract float %772, %773
  store float %775, float addrspace(3)* %774, align 4, !tbaa !6
  %776 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 4
  %777 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 4), align 16, !tbaa !6
  %778 = fmul contract float %742, %777
  %779 = load float, float addrspace(3)* %776, align 16, !tbaa !6
  %780 = fsub contract float %779, %778
  %781 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 4), align 16, !tbaa !6
  %782 = fmul contract float %750, %781
  %783 = fsub contract float %780, %782
  %784 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 4), align 16, !tbaa !6
  %785 = fmul contract float %761, %784
  %786 = fsub contract float %783, %785
  %787 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 4), align 16, !tbaa !6
  %788 = fmul contract float %775, %787
  %789 = fsub contract float %786, %788
  store float %789, float addrspace(3)* %776, align 16, !tbaa !6
  %790 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 4), align 16, !tbaa !6
  %791 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 4
  %792 = fdiv contract float %789, %790
  store float %792, float addrspace(3)* %791, align 16, !tbaa !6
  %793 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 5
  %794 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 5), align 4, !tbaa !6
  %795 = fmul contract float %742, %794
  %796 = load float, float addrspace(3)* %793, align 4, !tbaa !6
  %797 = fsub contract float %796, %795
  %798 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 5), align 4, !tbaa !6
  %799 = fmul contract float %750, %798
  %800 = fsub contract float %797, %799
  %801 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 5), align 4, !tbaa !6
  %802 = fmul contract float %761, %801
  %803 = fsub contract float %800, %802
  %804 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 5), align 4, !tbaa !6
  %805 = fmul contract float %775, %804
  %806 = fsub contract float %803, %805
  %807 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 5), align 4, !tbaa !6
  %808 = fmul contract float %792, %807
  %809 = fsub contract float %806, %808
  store float %809, float addrspace(3)* %793, align 4, !tbaa !6
  %810 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 5), align 4, !tbaa !6
  %811 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 5
  %812 = fdiv contract float %809, %810
  store float %812, float addrspace(3)* %811, align 4, !tbaa !6
  %813 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 6
  %814 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 6), align 8, !tbaa !6
  %815 = fmul contract float %742, %814
  %816 = load float, float addrspace(3)* %813, align 8, !tbaa !6
  %817 = fsub contract float %816, %815
  %818 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 6), align 8, !tbaa !6
  %819 = fmul contract float %750, %818
  %820 = fsub contract float %817, %819
  %821 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 6), align 8, !tbaa !6
  %822 = fmul contract float %761, %821
  %823 = fsub contract float %820, %822
  %824 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 6), align 8, !tbaa !6
  %825 = fmul contract float %775, %824
  %826 = fsub contract float %823, %825
  %827 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 6), align 8, !tbaa !6
  %828 = fmul contract float %792, %827
  %829 = fsub contract float %826, %828
  %830 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 6), align 8, !tbaa !6
  %831 = fmul contract float %812, %830
  %832 = fsub contract float %829, %831
  store float %832, float addrspace(3)* %813, align 8, !tbaa !6
  %833 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 6), align 8, !tbaa !6
  %834 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 6
  %835 = fdiv contract float %832, %833
  store float %835, float addrspace(3)* %834, align 8, !tbaa !6
  %836 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 7
  %837 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 7), align 4, !tbaa !6
  %838 = fmul contract float %742, %837
  %839 = load float, float addrspace(3)* %836, align 4, !tbaa !6
  %840 = fsub contract float %839, %838
  %841 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 7), align 4, !tbaa !6
  %842 = fmul contract float %750, %841
  %843 = fsub contract float %840, %842
  %844 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 7), align 4, !tbaa !6
  %845 = fmul contract float %761, %844
  %846 = fsub contract float %843, %845
  %847 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 7), align 4, !tbaa !6
  %848 = fmul contract float %775, %847
  %849 = fsub contract float %846, %848
  %850 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 7), align 4, !tbaa !6
  %851 = fmul contract float %792, %850
  %852 = fsub contract float %849, %851
  %853 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 7), align 4, !tbaa !6
  %854 = fmul contract float %812, %853
  %855 = fsub contract float %852, %854
  %856 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 7), align 4, !tbaa !6
  %857 = fmul contract float %835, %856
  %858 = fsub contract float %855, %857
  store float %858, float addrspace(3)* %836, align 4, !tbaa !6
  %859 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 7), align 4, !tbaa !6
  %860 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 7
  %861 = fdiv contract float %858, %859
  store float %861, float addrspace(3)* %860, align 4, !tbaa !6
  %862 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 8
  %863 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 8), align 16, !tbaa !6
  %864 = fmul contract float %742, %863
  %865 = load float, float addrspace(3)* %862, align 16, !tbaa !6
  %866 = fsub contract float %865, %864
  %867 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 8), align 16, !tbaa !6
  %868 = fmul contract float %750, %867
  %869 = fsub contract float %866, %868
  %870 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 8), align 16, !tbaa !6
  %871 = fmul contract float %761, %870
  %872 = fsub contract float %869, %871
  %873 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 8), align 16, !tbaa !6
  %874 = fmul contract float %775, %873
  %875 = fsub contract float %872, %874
  %876 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 8), align 16, !tbaa !6
  %877 = fmul contract float %792, %876
  %878 = fsub contract float %875, %877
  %879 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 8), align 16, !tbaa !6
  %880 = fmul contract float %812, %879
  %881 = fsub contract float %878, %880
  %882 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 8), align 16, !tbaa !6
  %883 = fmul contract float %835, %882
  %884 = fsub contract float %881, %883
  %885 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 8), align 16, !tbaa !6
  %886 = fmul contract float %861, %885
  %887 = fsub contract float %884, %886
  store float %887, float addrspace(3)* %862, align 16, !tbaa !6
  %888 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 8), align 16, !tbaa !6
  %889 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 8
  %890 = fdiv contract float %887, %888
  store float %890, float addrspace(3)* %889, align 16, !tbaa !6
  %891 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 9
  %892 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 9), align 4, !tbaa !6
  %893 = fmul contract float %742, %892
  %894 = load float, float addrspace(3)* %891, align 4, !tbaa !6
  %895 = fsub contract float %894, %893
  %896 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 9), align 4, !tbaa !6
  %897 = fmul contract float %750, %896
  %898 = fsub contract float %895, %897
  %899 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 9), align 4, !tbaa !6
  %900 = fmul contract float %761, %899
  %901 = fsub contract float %898, %900
  %902 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 9), align 4, !tbaa !6
  %903 = fmul contract float %775, %902
  %904 = fsub contract float %901, %903
  %905 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 9), align 4, !tbaa !6
  %906 = fmul contract float %792, %905
  %907 = fsub contract float %904, %906
  %908 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 9), align 4, !tbaa !6
  %909 = fmul contract float %812, %908
  %910 = fsub contract float %907, %909
  %911 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 9), align 4, !tbaa !6
  %912 = fmul contract float %835, %911
  %913 = fsub contract float %910, %912
  %914 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 9), align 4, !tbaa !6
  %915 = fmul contract float %861, %914
  %916 = fsub contract float %913, %915
  %917 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 9), align 4, !tbaa !6
  %918 = fmul contract float %890, %917
  %919 = fsub contract float %916, %918
  store float %919, float addrspace(3)* %891, align 4, !tbaa !6
  %920 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 9), align 4, !tbaa !6
  %921 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 9
  %922 = fdiv contract float %919, %920
  store float %922, float addrspace(3)* %921, align 4, !tbaa !6
  %923 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 10
  %924 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 10), align 8, !tbaa !6
  %925 = fmul contract float %742, %924
  %926 = load float, float addrspace(3)* %923, align 8, !tbaa !6
  %927 = fsub contract float %926, %925
  %928 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 10), align 8, !tbaa !6
  %929 = fmul contract float %750, %928
  %930 = fsub contract float %927, %929
  %931 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 10), align 8, !tbaa !6
  %932 = fmul contract float %761, %931
  %933 = fsub contract float %930, %932
  %934 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 10), align 8, !tbaa !6
  %935 = fmul contract float %775, %934
  %936 = fsub contract float %933, %935
  %937 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 10), align 8, !tbaa !6
  %938 = fmul contract float %792, %937
  %939 = fsub contract float %936, %938
  %940 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 10), align 8, !tbaa !6
  %941 = fmul contract float %812, %940
  %942 = fsub contract float %939, %941
  %943 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 10), align 8, !tbaa !6
  %944 = fmul contract float %835, %943
  %945 = fsub contract float %942, %944
  %946 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 10), align 8, !tbaa !6
  %947 = fmul contract float %861, %946
  %948 = fsub contract float %945, %947
  %949 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 10), align 8, !tbaa !6
  %950 = fmul contract float %890, %949
  %951 = fsub contract float %948, %950
  %952 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 10), align 8, !tbaa !6
  %953 = fmul contract float %922, %952
  %954 = fsub contract float %951, %953
  store float %954, float addrspace(3)* %923, align 8, !tbaa !6
  %955 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 10), align 8, !tbaa !6
  %956 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 10
  %957 = fdiv contract float %954, %955
  store float %957, float addrspace(3)* %956, align 8, !tbaa !6
  %958 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 11
  %959 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 11), align 4, !tbaa !6
  %960 = fmul contract float %742, %959
  %961 = load float, float addrspace(3)* %958, align 4, !tbaa !6
  %962 = fsub contract float %961, %960
  %963 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 11), align 4, !tbaa !6
  %964 = fmul contract float %750, %963
  %965 = fsub contract float %962, %964
  %966 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 11), align 4, !tbaa !6
  %967 = fmul contract float %761, %966
  %968 = fsub contract float %965, %967
  %969 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 11), align 4, !tbaa !6
  %970 = fmul contract float %775, %969
  %971 = fsub contract float %968, %970
  %972 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 11), align 4, !tbaa !6
  %973 = fmul contract float %792, %972
  %974 = fsub contract float %971, %973
  %975 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 11), align 4, !tbaa !6
  %976 = fmul contract float %812, %975
  %977 = fsub contract float %974, %976
  %978 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 11), align 4, !tbaa !6
  %979 = fmul contract float %835, %978
  %980 = fsub contract float %977, %979
  %981 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 11), align 4, !tbaa !6
  %982 = fmul contract float %861, %981
  %983 = fsub contract float %980, %982
  %984 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 11), align 4, !tbaa !6
  %985 = fmul contract float %890, %984
  %986 = fsub contract float %983, %985
  %987 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 11), align 4, !tbaa !6
  %988 = fmul contract float %922, %987
  %989 = fsub contract float %986, %988
  %990 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 11), align 4, !tbaa !6
  %991 = fmul contract float %957, %990
  %992 = fsub contract float %989, %991
  store float %992, float addrspace(3)* %958, align 4, !tbaa !6
  %993 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 11), align 4, !tbaa !6
  %994 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 11
  %995 = fdiv contract float %992, %993
  store float %995, float addrspace(3)* %994, align 4, !tbaa !6
  %996 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 12
  %997 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 12), align 16, !tbaa !6
  %998 = fmul contract float %742, %997
  %999 = load float, float addrspace(3)* %996, align 16, !tbaa !6
  %1000 = fsub contract float %999, %998
  %1001 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 12), align 16, !tbaa !6
  %1002 = fmul contract float %750, %1001
  %1003 = fsub contract float %1000, %1002
  %1004 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 12), align 16, !tbaa !6
  %1005 = fmul contract float %761, %1004
  %1006 = fsub contract float %1003, %1005
  %1007 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 12), align 16, !tbaa !6
  %1008 = fmul contract float %775, %1007
  %1009 = fsub contract float %1006, %1008
  %1010 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 12), align 16, !tbaa !6
  %1011 = fmul contract float %792, %1010
  %1012 = fsub contract float %1009, %1011
  %1013 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 12), align 16, !tbaa !6
  %1014 = fmul contract float %812, %1013
  %1015 = fsub contract float %1012, %1014
  %1016 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 12), align 16, !tbaa !6
  %1017 = fmul contract float %835, %1016
  %1018 = fsub contract float %1015, %1017
  %1019 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 12), align 16, !tbaa !6
  %1020 = fmul contract float %861, %1019
  %1021 = fsub contract float %1018, %1020
  %1022 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 12), align 16, !tbaa !6
  %1023 = fmul contract float %890, %1022
  %1024 = fsub contract float %1021, %1023
  %1025 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 12), align 16, !tbaa !6
  %1026 = fmul contract float %922, %1025
  %1027 = fsub contract float %1024, %1026
  %1028 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 12), align 16, !tbaa !6
  %1029 = fmul contract float %957, %1028
  %1030 = fsub contract float %1027, %1029
  %1031 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 12), align 16, !tbaa !6
  %1032 = fmul contract float %995, %1031
  %1033 = fsub contract float %1030, %1032
  store float %1033, float addrspace(3)* %996, align 16, !tbaa !6
  %1034 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 12), align 16, !tbaa !6
  %1035 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 12
  %1036 = fdiv contract float %1033, %1034
  store float %1036, float addrspace(3)* %1035, align 16, !tbaa !6
  %1037 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 13
  %1038 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 13), align 4, !tbaa !6
  %1039 = fmul contract float %742, %1038
  %1040 = load float, float addrspace(3)* %1037, align 4, !tbaa !6
  %1041 = fsub contract float %1040, %1039
  %1042 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 13), align 4, !tbaa !6
  %1043 = fmul contract float %750, %1042
  %1044 = fsub contract float %1041, %1043
  %1045 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 13), align 4, !tbaa !6
  %1046 = fmul contract float %761, %1045
  %1047 = fsub contract float %1044, %1046
  %1048 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 13), align 4, !tbaa !6
  %1049 = fmul contract float %775, %1048
  %1050 = fsub contract float %1047, %1049
  %1051 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 13), align 4, !tbaa !6
  %1052 = fmul contract float %792, %1051
  %1053 = fsub contract float %1050, %1052
  %1054 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 13), align 4, !tbaa !6
  %1055 = fmul contract float %812, %1054
  %1056 = fsub contract float %1053, %1055
  %1057 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 13), align 4, !tbaa !6
  %1058 = fmul contract float %835, %1057
  %1059 = fsub contract float %1056, %1058
  %1060 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 13), align 4, !tbaa !6
  %1061 = fmul contract float %861, %1060
  %1062 = fsub contract float %1059, %1061
  %1063 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 13), align 4, !tbaa !6
  %1064 = fmul contract float %890, %1063
  %1065 = fsub contract float %1062, %1064
  %1066 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 13), align 4, !tbaa !6
  %1067 = fmul contract float %922, %1066
  %1068 = fsub contract float %1065, %1067
  %1069 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 13), align 4, !tbaa !6
  %1070 = fmul contract float %957, %1069
  %1071 = fsub contract float %1068, %1070
  %1072 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 13), align 4, !tbaa !6
  %1073 = fmul contract float %995, %1072
  %1074 = fsub contract float %1071, %1073
  %1075 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 13), align 4, !tbaa !6
  %1076 = fmul contract float %1036, %1075
  %1077 = fsub contract float %1074, %1076
  store float %1077, float addrspace(3)* %1037, align 4, !tbaa !6
  %1078 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 13), align 4, !tbaa !6
  %1079 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 13
  %1080 = fdiv contract float %1077, %1078
  store float %1080, float addrspace(3)* %1079, align 4, !tbaa !6
  %1081 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 14
  %1082 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 14), align 8, !tbaa !6
  %1083 = fmul contract float %742, %1082
  %1084 = load float, float addrspace(3)* %1081, align 8, !tbaa !6
  %1085 = fsub contract float %1084, %1083
  %1086 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 14), align 8, !tbaa !6
  %1087 = fmul contract float %750, %1086
  %1088 = fsub contract float %1085, %1087
  %1089 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 14), align 8, !tbaa !6
  %1090 = fmul contract float %761, %1089
  %1091 = fsub contract float %1088, %1090
  %1092 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 14), align 8, !tbaa !6
  %1093 = fmul contract float %775, %1092
  %1094 = fsub contract float %1091, %1093
  %1095 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 14), align 8, !tbaa !6
  %1096 = fmul contract float %792, %1095
  %1097 = fsub contract float %1094, %1096
  %1098 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 14), align 8, !tbaa !6
  %1099 = fmul contract float %812, %1098
  %1100 = fsub contract float %1097, %1099
  %1101 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 14), align 8, !tbaa !6
  %1102 = fmul contract float %835, %1101
  %1103 = fsub contract float %1100, %1102
  %1104 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 14), align 8, !tbaa !6
  %1105 = fmul contract float %861, %1104
  %1106 = fsub contract float %1103, %1105
  %1107 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 14), align 8, !tbaa !6
  %1108 = fmul contract float %890, %1107
  %1109 = fsub contract float %1106, %1108
  %1110 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 14), align 8, !tbaa !6
  %1111 = fmul contract float %922, %1110
  %1112 = fsub contract float %1109, %1111
  %1113 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 14), align 8, !tbaa !6
  %1114 = fmul contract float %957, %1113
  %1115 = fsub contract float %1112, %1114
  %1116 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 14), align 8, !tbaa !6
  %1117 = fmul contract float %995, %1116
  %1118 = fsub contract float %1115, %1117
  %1119 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 14), align 8, !tbaa !6
  %1120 = fmul contract float %1036, %1119
  %1121 = fsub contract float %1118, %1120
  %1122 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 14), align 8, !tbaa !6
  %1123 = fmul contract float %1080, %1122
  %1124 = fsub contract float %1121, %1123
  store float %1124, float addrspace(3)* %1081, align 8, !tbaa !6
  %1125 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 14), align 8, !tbaa !6
  %1126 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 14
  %1127 = fdiv contract float %1124, %1125
  store float %1127, float addrspace(3)* %1126, align 8, !tbaa !6
  %1128 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 15
  %1129 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 0, i32 15), align 4, !tbaa !6
  %1130 = fmul contract float %742, %1129
  %1131 = load float, float addrspace(3)* %1128, align 4, !tbaa !6
  %1132 = fsub contract float %1131, %1130
  %1133 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 1, i32 15), align 4, !tbaa !6
  %1134 = fmul contract float %750, %1133
  %1135 = fsub contract float %1132, %1134
  %1136 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 2, i32 15), align 4, !tbaa !6
  %1137 = fmul contract float %761, %1136
  %1138 = fsub contract float %1135, %1137
  %1139 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 3, i32 15), align 4, !tbaa !6
  %1140 = fmul contract float %775, %1139
  %1141 = fsub contract float %1138, %1140
  %1142 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 4, i32 15), align 4, !tbaa !6
  %1143 = fmul contract float %792, %1142
  %1144 = fsub contract float %1141, %1143
  %1145 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 5, i32 15), align 4, !tbaa !6
  %1146 = fmul contract float %812, %1145
  %1147 = fsub contract float %1144, %1146
  %1148 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 6, i32 15), align 4, !tbaa !6
  %1149 = fmul contract float %835, %1148
  %1150 = fsub contract float %1147, %1149
  %1151 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 7, i32 15), align 4, !tbaa !6
  %1152 = fmul contract float %861, %1151
  %1153 = fsub contract float %1150, %1152
  %1154 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 8, i32 15), align 4, !tbaa !6
  %1155 = fmul contract float %890, %1154
  %1156 = fsub contract float %1153, %1155
  %1157 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 9, i32 15), align 4, !tbaa !6
  %1158 = fmul contract float %922, %1157
  %1159 = fsub contract float %1156, %1158
  %1160 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 10, i32 15), align 4, !tbaa !6
  %1161 = fmul contract float %957, %1160
  %1162 = fsub contract float %1159, %1161
  %1163 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 11, i32 15), align 4, !tbaa !6
  %1164 = fmul contract float %995, %1163
  %1165 = fsub contract float %1162, %1164
  %1166 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 12, i32 15), align 4, !tbaa !6
  %1167 = fmul contract float %1036, %1166
  %1168 = fsub contract float %1165, %1167
  %1169 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 13, i32 15), align 4, !tbaa !6
  %1170 = fmul contract float %1080, %1169
  %1171 = fsub contract float %1168, %1170
  %1172 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 14, i32 15), align 4, !tbaa !6
  %1173 = fmul contract float %1127, %1172
  %1174 = fsub contract float %1171, %1173
  store float %1174, float addrspace(3)* %1128, align 4, !tbaa !6
  %1175 = load float, float addrspace(3)* getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE3dia, i32 0, i32 15, i32 15), align 4, !tbaa !6
  %1176 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 %738, i32 15
  %1177 = fdiv contract float %1174, %1175
  store float %1177, float addrspace(3)* %1176, align 4, !tbaa !6
  br label %1178

1178:                                             ; preds = %737, %304
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %6, label %1179, label %1275

1179:                                             ; preds = %1178
  %1180 = add nsw i32 %2, 1
  %1181 = mul nsw i32 %1180, %1
  %1182 = add nsw i32 %1181, %2
  %1183 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %1184 = zext i32 %1183 to i64
  %1185 = shl nuw nsw i64 %1184, 4
  %1186 = add nuw nsw i64 %5, 16
  %1187 = add nuw nsw i64 %1186, %1185
  %1188 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 1, i32 %4
  %1189 = load float, float addrspace(3)* %1188, align 4, !tbaa !6
  %1190 = sext i32 %1182 to i64
  %1191 = add nsw i64 %1187, %1190
  %1192 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1191
  store float %1189, float addrspace(1)* %1192, align 4, !tbaa !6
  %1193 = add nsw i32 %1182, %1
  %1194 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 2, i32 %4
  %1195 = load float, float addrspace(3)* %1194, align 4, !tbaa !6
  %1196 = sext i32 %1193 to i64
  %1197 = add nsw i64 %1187, %1196
  %1198 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1197
  store float %1195, float addrspace(1)* %1198, align 4, !tbaa !6
  %1199 = add nsw i32 %1193, %1
  %1200 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 3, i32 %4
  %1201 = load float, float addrspace(3)* %1200, align 4, !tbaa !6
  %1202 = sext i32 %1199 to i64
  %1203 = add nsw i64 %1187, %1202
  %1204 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1203
  store float %1201, float addrspace(1)* %1204, align 4, !tbaa !6
  %1205 = add nsw i32 %1199, %1
  %1206 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 4, i32 %4
  %1207 = load float, float addrspace(3)* %1206, align 4, !tbaa !6
  %1208 = sext i32 %1205 to i64
  %1209 = add nsw i64 %1187, %1208
  %1210 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1209
  store float %1207, float addrspace(1)* %1210, align 4, !tbaa !6
  %1211 = add nsw i32 %1205, %1
  %1212 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 5, i32 %4
  %1213 = load float, float addrspace(3)* %1212, align 4, !tbaa !6
  %1214 = sext i32 %1211 to i64
  %1215 = add nsw i64 %1187, %1214
  %1216 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1215
  store float %1213, float addrspace(1)* %1216, align 4, !tbaa !6
  %1217 = add nsw i32 %1211, %1
  %1218 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 6, i32 %4
  %1219 = load float, float addrspace(3)* %1218, align 4, !tbaa !6
  %1220 = sext i32 %1217 to i64
  %1221 = add nsw i64 %1187, %1220
  %1222 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1221
  store float %1219, float addrspace(1)* %1222, align 4, !tbaa !6
  %1223 = add nsw i32 %1217, %1
  %1224 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 7, i32 %4
  %1225 = load float, float addrspace(3)* %1224, align 4, !tbaa !6
  %1226 = sext i32 %1223 to i64
  %1227 = add nsw i64 %1187, %1226
  %1228 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1227
  store float %1225, float addrspace(1)* %1228, align 4, !tbaa !6
  %1229 = add nsw i32 %1223, %1
  %1230 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 8, i32 %4
  %1231 = load float, float addrspace(3)* %1230, align 4, !tbaa !6
  %1232 = sext i32 %1229 to i64
  %1233 = add nsw i64 %1187, %1232
  %1234 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1233
  store float %1231, float addrspace(1)* %1234, align 4, !tbaa !6
  %1235 = add nsw i32 %1229, %1
  %1236 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 9, i32 %4
  %1237 = load float, float addrspace(3)* %1236, align 4, !tbaa !6
  %1238 = sext i32 %1235 to i64
  %1239 = add nsw i64 %1187, %1238
  %1240 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1239
  store float %1237, float addrspace(1)* %1240, align 4, !tbaa !6
  %1241 = add nsw i32 %1235, %1
  %1242 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 10, i32 %4
  %1243 = load float, float addrspace(3)* %1242, align 4, !tbaa !6
  %1244 = sext i32 %1241 to i64
  %1245 = add nsw i64 %1187, %1244
  %1246 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1245
  store float %1243, float addrspace(1)* %1246, align 4, !tbaa !6
  %1247 = add nsw i32 %1241, %1
  %1248 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 11, i32 %4
  %1249 = load float, float addrspace(3)* %1248, align 4, !tbaa !6
  %1250 = sext i32 %1247 to i64
  %1251 = add nsw i64 %1187, %1250
  %1252 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1251
  store float %1249, float addrspace(1)* %1252, align 4, !tbaa !6
  %1253 = add nsw i32 %1247, %1
  %1254 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 12, i32 %4
  %1255 = load float, float addrspace(3)* %1254, align 4, !tbaa !6
  %1256 = sext i32 %1253 to i64
  %1257 = add nsw i64 %1187, %1256
  %1258 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1257
  store float %1255, float addrspace(1)* %1258, align 4, !tbaa !6
  %1259 = add nsw i32 %1253, %1
  %1260 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 13, i32 %4
  %1261 = load float, float addrspace(3)* %1260, align 4, !tbaa !6
  %1262 = sext i32 %1259 to i64
  %1263 = add nsw i64 %1187, %1262
  %1264 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1263
  store float %1261, float addrspace(1)* %1264, align 4, !tbaa !6
  %1265 = add nsw i32 %1259, %1
  %1266 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 14, i32 %4
  %1267 = load float, float addrspace(3)* %1266, align 4, !tbaa !6
  %1268 = sext i32 %1265 to i64
  %1269 = add nsw i64 %1187, %1268
  %1270 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1269
  store float %1267, float addrspace(1)* %1270, align 4, !tbaa !6
  %1271 = add nsw i32 %1265, %1
  %1272 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_row, i32 0, i32 15, i32 %4
  %1273 = sext i32 %1271 to i64
  %1274 = add nsw i64 %1187, %1273
  br label %1376

1275:                                             ; preds = %1178
  %1276 = add nsw i32 %4, -16
  %1277 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %1278 = shl i32 %1277, 4
  %1279 = add i32 %2, 16
  %1280 = add i32 %1279, %1278
  %1281 = mul i32 %1280, %1
  %1282 = add i32 %1281, %2
  %1283 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 0, i32 %1276
  %1284 = load float, float addrspace(3)* %1283, align 4, !tbaa !6
  %1285 = add nsw i32 %1282, %1276
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1286
  store float %1284, float addrspace(1)* %1287, align 4, !tbaa !6
  %1288 = add nsw i32 %1282, %1
  %1289 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 1, i32 %1276
  %1290 = load float, float addrspace(3)* %1289, align 4, !tbaa !6
  %1291 = add nsw i32 %1288, %1276
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1292
  store float %1290, float addrspace(1)* %1293, align 4, !tbaa !6
  %1294 = add nsw i32 %1288, %1
  %1295 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 2, i32 %1276
  %1296 = load float, float addrspace(3)* %1295, align 4, !tbaa !6
  %1297 = add nsw i32 %1294, %1276
  %1298 = sext i32 %1297 to i64
  %1299 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1298
  store float %1296, float addrspace(1)* %1299, align 4, !tbaa !6
  %1300 = add nsw i32 %1294, %1
  %1301 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 3, i32 %1276
  %1302 = load float, float addrspace(3)* %1301, align 4, !tbaa !6
  %1303 = add nsw i32 %1300, %1276
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1304
  store float %1302, float addrspace(1)* %1305, align 4, !tbaa !6
  %1306 = add nsw i32 %1300, %1
  %1307 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 4, i32 %1276
  %1308 = load float, float addrspace(3)* %1307, align 4, !tbaa !6
  %1309 = add nsw i32 %1306, %1276
  %1310 = sext i32 %1309 to i64
  %1311 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1310
  store float %1308, float addrspace(1)* %1311, align 4, !tbaa !6
  %1312 = add nsw i32 %1306, %1
  %1313 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 5, i32 %1276
  %1314 = load float, float addrspace(3)* %1313, align 4, !tbaa !6
  %1315 = add nsw i32 %1312, %1276
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1316
  store float %1314, float addrspace(1)* %1317, align 4, !tbaa !6
  %1318 = add nsw i32 %1312, %1
  %1319 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 6, i32 %1276
  %1320 = load float, float addrspace(3)* %1319, align 4, !tbaa !6
  %1321 = add nsw i32 %1318, %1276
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1322
  store float %1320, float addrspace(1)* %1323, align 4, !tbaa !6
  %1324 = add nsw i32 %1318, %1
  %1325 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 7, i32 %1276
  %1326 = load float, float addrspace(3)* %1325, align 4, !tbaa !6
  %1327 = add nsw i32 %1324, %1276
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1328
  store float %1326, float addrspace(1)* %1329, align 4, !tbaa !6
  %1330 = add nsw i32 %1324, %1
  %1331 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 8, i32 %1276
  %1332 = load float, float addrspace(3)* %1331, align 4, !tbaa !6
  %1333 = add nsw i32 %1330, %1276
  %1334 = sext i32 %1333 to i64
  %1335 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1334
  store float %1332, float addrspace(1)* %1335, align 4, !tbaa !6
  %1336 = add nsw i32 %1330, %1
  %1337 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 9, i32 %1276
  %1338 = load float, float addrspace(3)* %1337, align 4, !tbaa !6
  %1339 = add nsw i32 %1336, %1276
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1340
  store float %1338, float addrspace(1)* %1341, align 4, !tbaa !6
  %1342 = add nsw i32 %1336, %1
  %1343 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 10, i32 %1276
  %1344 = load float, float addrspace(3)* %1343, align 4, !tbaa !6
  %1345 = add nsw i32 %1342, %1276
  %1346 = sext i32 %1345 to i64
  %1347 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1346
  store float %1344, float addrspace(1)* %1347, align 4, !tbaa !6
  %1348 = add nsw i32 %1342, %1
  %1349 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 11, i32 %1276
  %1350 = load float, float addrspace(3)* %1349, align 4, !tbaa !6
  %1351 = add nsw i32 %1348, %1276
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1352
  store float %1350, float addrspace(1)* %1353, align 4, !tbaa !6
  %1354 = add nsw i32 %1348, %1
  %1355 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 12, i32 %1276
  %1356 = load float, float addrspace(3)* %1355, align 4, !tbaa !6
  %1357 = add nsw i32 %1354, %1276
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1358
  store float %1356, float addrspace(1)* %1359, align 4, !tbaa !6
  %1360 = add nsw i32 %1354, %1
  %1361 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 13, i32 %1276
  %1362 = load float, float addrspace(3)* %1361, align 4, !tbaa !6
  %1363 = add nsw i32 %1360, %1276
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1364
  store float %1362, float addrspace(1)* %1365, align 4, !tbaa !6
  %1366 = add nsw i32 %1360, %1
  %1367 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 14, i32 %1276
  %1368 = load float, float addrspace(3)* %1367, align 4, !tbaa !6
  %1369 = add nsw i32 %1366, %1276
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1370
  store float %1368, float addrspace(1)* %1371, align 4, !tbaa !6
  %1372 = add nsw i32 %1366, %1
  %1373 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ13lud_perimeterPfiiE8peri_col, i32 0, i32 15, i32 %1276
  %1374 = add nsw i32 %1372, %1276
  %1375 = sext i32 %1374 to i64
  br label %1376

1376:                                             ; preds = %1275, %1179
  %1377 = phi i64 [ %1375, %1275 ], [ %1274, %1179 ]
  %1378 = phi float addrspace(3)* [ %1373, %1275 ], [ %1272, %1179 ]
  %1379 = load float, float addrspace(3)* %1378, align 4, !tbaa !6
  %1380 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1377
  store float %1379, float addrspace(1)* %1380, align 4, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z12lud_internalPfii(float addrspace(1)* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #0 {
  %4 = sext i32 %2 to i64
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %6 = shl i32 %5, 4
  %7 = add i32 %2, 16
  %8 = add i32 %7, %6
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = shl i32 %9, 4
  %11 = add i32 %7, %10
  %12 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !5
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %4, %13
  %15 = sext i32 %1 to i64
  %16 = mul nsw i64 %14, %15
  %17 = sext i32 %11 to i64
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = add nsw i64 %20, %16
  %22 = getelementptr inbounds float, float addrspace(1)* %0, i64 %21
  %23 = load float, float addrspace(1)* %22, align 4, !tbaa !6, !amdgpu.noclobber !10
  %24 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 %12, i32 %18
  store float %23, float addrspace(3)* %24, align 4, !tbaa !6
  %25 = sext i32 %8 to i64
  %26 = add nsw i64 %25, %13
  %27 = mul nsw i64 %26, %15
  %28 = add nsw i64 %27, %19
  %29 = add nsw i64 %28, %4
  %30 = getelementptr inbounds float, float addrspace(1)* %0, i64 %29
  %31 = load float, float addrspace(1)* %30, align 4, !tbaa !6, !amdgpu.noclobber !10
  %32 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 %18
  store float %31, float addrspace(3)* %32, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %33 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 0
  %34 = load float, float addrspace(3)* %33, align 16, !tbaa !6
  %35 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 0, i32 %18
  %36 = load float, float addrspace(3)* %35, align 4, !tbaa !6
  %37 = fmul contract float %34, %36
  %38 = fadd contract float %37, 0.000000e+00
  %39 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 1
  %40 = load float, float addrspace(3)* %39, align 4, !tbaa !6
  %41 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 1, i32 %18
  %42 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %43 = fmul contract float %40, %42
  %44 = fadd contract float %38, %43
  %45 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 2
  %46 = load float, float addrspace(3)* %45, align 8, !tbaa !6
  %47 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 2, i32 %18
  %48 = load float, float addrspace(3)* %47, align 4, !tbaa !6
  %49 = fmul contract float %46, %48
  %50 = fadd contract float %44, %49
  %51 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 3
  %52 = load float, float addrspace(3)* %51, align 4, !tbaa !6
  %53 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 3, i32 %18
  %54 = load float, float addrspace(3)* %53, align 4, !tbaa !6
  %55 = fmul contract float %52, %54
  %56 = fadd contract float %50, %55
  %57 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 4
  %58 = load float, float addrspace(3)* %57, align 16, !tbaa !6
  %59 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 4, i32 %18
  %60 = load float, float addrspace(3)* %59, align 4, !tbaa !6
  %61 = fmul contract float %58, %60
  %62 = fadd contract float %56, %61
  %63 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 5
  %64 = load float, float addrspace(3)* %63, align 4, !tbaa !6
  %65 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 5, i32 %18
  %66 = load float, float addrspace(3)* %65, align 4, !tbaa !6
  %67 = fmul contract float %64, %66
  %68 = fadd contract float %62, %67
  %69 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 6
  %70 = load float, float addrspace(3)* %69, align 8, !tbaa !6
  %71 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 6, i32 %18
  %72 = load float, float addrspace(3)* %71, align 4, !tbaa !6
  %73 = fmul contract float %70, %72
  %74 = fadd contract float %68, %73
  %75 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 7
  %76 = load float, float addrspace(3)* %75, align 4, !tbaa !6
  %77 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 7, i32 %18
  %78 = load float, float addrspace(3)* %77, align 4, !tbaa !6
  %79 = fmul contract float %76, %78
  %80 = fadd contract float %74, %79
  %81 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 8
  %82 = load float, float addrspace(3)* %81, align 16, !tbaa !6
  %83 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 8, i32 %18
  %84 = load float, float addrspace(3)* %83, align 4, !tbaa !6
  %85 = fmul contract float %82, %84
  %86 = fadd contract float %80, %85
  %87 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 9
  %88 = load float, float addrspace(3)* %87, align 4, !tbaa !6
  %89 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 9, i32 %18
  %90 = load float, float addrspace(3)* %89, align 4, !tbaa !6
  %91 = fmul contract float %88, %90
  %92 = fadd contract float %86, %91
  %93 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 10
  %94 = load float, float addrspace(3)* %93, align 8, !tbaa !6
  %95 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 10, i32 %18
  %96 = load float, float addrspace(3)* %95, align 4, !tbaa !6
  %97 = fmul contract float %94, %96
  %98 = fadd contract float %92, %97
  %99 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 11
  %100 = load float, float addrspace(3)* %99, align 4, !tbaa !6
  %101 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 11, i32 %18
  %102 = load float, float addrspace(3)* %101, align 4, !tbaa !6
  %103 = fmul contract float %100, %102
  %104 = fadd contract float %98, %103
  %105 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 12
  %106 = load float, float addrspace(3)* %105, align 16, !tbaa !6
  %107 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 12, i32 %18
  %108 = load float, float addrspace(3)* %107, align 4, !tbaa !6
  %109 = fmul contract float %106, %108
  %110 = fadd contract float %104, %109
  %111 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 13
  %112 = load float, float addrspace(3)* %111, align 4, !tbaa !6
  %113 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 13, i32 %18
  %114 = load float, float addrspace(3)* %113, align 4, !tbaa !6
  %115 = fmul contract float %112, %114
  %116 = fadd contract float %110, %115
  %117 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 14
  %118 = load float, float addrspace(3)* %117, align 8, !tbaa !6
  %119 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 14, i32 %18
  %120 = load float, float addrspace(3)* %119, align 4, !tbaa !6
  %121 = fmul contract float %118, %120
  %122 = fadd contract float %116, %121
  %123 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_col, i32 0, i32 %12, i32 15
  %124 = load float, float addrspace(3)* %123, align 4, !tbaa !6
  %125 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ12lud_internalPfiiE8peri_row, i32 0, i32 15, i32 %18
  %126 = load float, float addrspace(3)* %125, align 4, !tbaa !6
  %127 = fmul contract float %124, %126
  %128 = fadd contract float %122, %127
  %129 = add nsw i64 %20, %27
  %130 = getelementptr inbounds float, float addrspace(1)* %0, i64 %129
  %131 = load float, float addrspace(1)* %130, align 4, !tbaa !6, !amdgpu.noclobber !10
  %132 = fsub contract float %131, %128
  store float %132, float addrspace(1)* %130, align 4, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{}
