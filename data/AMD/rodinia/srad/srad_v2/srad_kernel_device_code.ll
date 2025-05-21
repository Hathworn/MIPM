; ModuleID = 'hip/srad/srad_v2/srad_kernel.cu'
source_filename = "hip/srad/srad_v2/srad_kernel.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_1PfS_S_S_S_S_iifE11temp_result = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_1PfS_S_S_S_S_iifE5north = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_1PfS_S_S_S_S_iifE5south = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4east = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4west = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE7south_c = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE6east_c = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE11c_cuda_temp = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE13c_cuda_result = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE4temp = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z11srad_cuda_1PfS_S_S_S_S_iif(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture writeonly %1, float addrspace(1)* nocapture writeonly %2, float addrspace(1)* nocapture writeonly %3, float addrspace(1)* nocapture readonly %4, float addrspace(1)* nocapture writeonly %5, i32 %6, i32 %7, float %8) local_unnamed_addr #0 {
  %10 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %12 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %13 = zext i32 %12 to i64
  %14 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !5
  %15 = shl nsw i32 %6, 4
  %16 = mul nsw i32 %15, %11
  %17 = shl nsw i32 %10, 4
  %18 = add nsw i32 %16, %17
  %19 = mul nsw i32 %14, %6
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, %12
  %22 = add i32 %18, %12
  %23 = sub i32 %22, %6
  %24 = add i32 %22, %15
  %25 = add nsw i32 %20, -1
  %26 = add nsw i32 %20, 16
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds float, float addrspace(1)* %4, i64 %27
  %29 = load float, float addrspace(1)* %28, align 4, !tbaa !6, !amdgpu.noclobber !10
  %30 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE5north, i32 0, i32 %14, i32 %12
  store float %29, float addrspace(3)* %30, align 4, !tbaa !6
  %31 = sext i32 %24 to i64
  %32 = getelementptr inbounds float, float addrspace(1)* %4, i64 %31
  %33 = load float, float addrspace(1)* %32, align 4, !tbaa !6, !amdgpu.noclobber !10
  %34 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE5south, i32 0, i32 %14, i32 %12
  store float %33, float addrspace(3)* %34, align 4, !tbaa !6
  %35 = icmp eq i32 %11, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %9
  %37 = add nsw i32 %17, %12
  %38 = sext i32 %37 to i64
  br label %66

39:                                               ; preds = %9
  %40 = sext i32 %11 to i64
  %41 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %42 = getelementptr inbounds i8, i8 addrspace(4)* %41, i64 16
  %43 = bitcast i8 addrspace(4)* %42 to i32 addrspace(4)*
  %44 = load i32, i32 addrspace(4)* %43, align 8, !tbaa !11
  %45 = getelementptr i8, i8 addrspace(4)* %41, i64 6
  %46 = bitcast i8 addrspace(4)* %45 to i16 addrspace(4)*
  %47 = load i16, i16 addrspace(4)* %46, align 2, !range !20, !invariant.load !10
  %48 = zext i16 %47 to i32
  %49 = udiv i32 %44, %48
  %50 = mul i32 %49, %48
  %51 = icmp ugt i32 %44, %50
  %52 = zext i1 %51 to i32
  %53 = add i32 %49, %52
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %54, -1
  %56 = icmp eq i64 %55, %40
  br i1 %56, label %57, label %71

57:                                               ; preds = %39
  %58 = sext i32 %15 to i64
  %59 = mul nsw i64 %40, %58
  %60 = sext i32 %17 to i64
  %61 = mul nsw i32 %6, 15
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %13
  %64 = add nsw i64 %63, %62
  %65 = add nsw i64 %64, %59
  br label %66

66:                                               ; preds = %36, %57
  %67 = phi i64 [ %65, %57 ], [ %38, %36 ]
  %68 = phi float addrspace(3)* [ %34, %57 ], [ %30, %36 ]
  %69 = getelementptr inbounds float, float addrspace(1)* %4, i64 %67
  %70 = load float, float addrspace(1)* %69, align 4, !tbaa !6
  store float %70, float addrspace(3)* %68, align 4, !tbaa !6
  br label %71

71:                                               ; preds = %66, %39
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %72 = sext i32 %25 to i64
  %73 = getelementptr inbounds float, float addrspace(1)* %4, i64 %72
  %74 = load float, float addrspace(1)* %73, align 4, !tbaa !6, !amdgpu.noclobber !10
  %75 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4west, i32 0, i32 %14, i32 %12
  store float %74, float addrspace(3)* %75, align 4, !tbaa !6
  %76 = sext i32 %26 to i64
  %77 = getelementptr inbounds float, float addrspace(1)* %4, i64 %76
  %78 = load float, float addrspace(1)* %77, align 4, !tbaa !6, !amdgpu.noclobber !10
  %79 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4east, i32 0, i32 %14, i32 %12
  store float %78, float addrspace(3)* %79, align 4, !tbaa !6
  %80 = icmp eq i32 %10, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = add nsw i32 %16, %19
  %83 = sext i32 %82 to i64
  br label %109

84:                                               ; preds = %71
  %85 = sext i32 %10 to i64
  %86 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %87 = getelementptr inbounds i8, i8 addrspace(4)* %86, i64 12
  %88 = bitcast i8 addrspace(4)* %87 to i32 addrspace(4)*
  %89 = load i32, i32 addrspace(4)* %88, align 4, !tbaa !21
  %90 = getelementptr i8, i8 addrspace(4)* %86, i64 4
  %91 = bitcast i8 addrspace(4)* %90 to i16 addrspace(4)*
  %92 = load i16, i16 addrspace(4)* %91, align 4, !range !20, !invariant.load !10
  %93 = zext i16 %92 to i32
  %94 = udiv i32 %89, %93
  %95 = mul i32 %94, %93
  %96 = icmp ugt i32 %89, %95
  %97 = zext i1 %96 to i32
  %98 = add i32 %94, %97
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %99, -1
  %101 = icmp eq i64 %100, %85
  br i1 %101, label %102, label %114

102:                                              ; preds = %84
  %103 = sext i32 %16 to i64
  %104 = shl nsw i64 %85, 4
  %105 = sext i32 %19 to i64
  %106 = add nsw i64 %105, 15
  %107 = add nsw i64 %106, %103
  %108 = add nsw i64 %107, %104
  br label %109

109:                                              ; preds = %81, %102
  %110 = phi i64 [ %108, %102 ], [ %83, %81 ]
  %111 = phi float addrspace(3)* [ %79, %102 ], [ %75, %81 ]
  %112 = getelementptr inbounds float, float addrspace(1)* %4, i64 %110
  %113 = load float, float addrspace(1)* %112, align 4, !tbaa !6
  store float %113, float addrspace(3)* %111, align 4, !tbaa !6
  br label %114

114:                                              ; preds = %109, %84
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %115 = sext i32 %21 to i64
  %116 = getelementptr inbounds float, float addrspace(1)* %4, i64 %115
  %117 = load float, float addrspace(1)* %116, align 4, !tbaa !6, !amdgpu.noclobber !10
  %118 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %14, i32 %12
  store float %117, float addrspace(3)* %118, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %119 = load float, float addrspace(3)* %118, align 4, !tbaa !6
  %120 = icmp eq i32 %14, 0
  %121 = icmp eq i32 %12, 0
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %167, label %123

123:                                              ; preds = %114
  %124 = icmp eq i32 %12, 15
  %125 = select i1 %120, i1 %124, i1 false
  br i1 %125, label %167, label %126

126:                                              ; preds = %123
  %127 = icmp eq i32 %14, 15
  %128 = select i1 %127, i1 %124, i1 false
  br i1 %128, label %167, label %129

129:                                              ; preds = %126
  %130 = select i1 %127, i1 %121, i1 false
  br i1 %130, label %167, label %131

131:                                              ; preds = %129
  br i1 %120, label %132, label %138

132:                                              ; preds = %131
  %133 = getelementptr [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 1, i32 %12
  %134 = add nsw i32 %12, -1
  %135 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 0, i32 %134
  %136 = add nuw nsw i32 %12, 1
  %137 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 0, i32 %136
  br label %167

138:                                              ; preds = %131
  br i1 %124, label %139, label %145

139:                                              ; preds = %138
  %140 = add nsw i32 %14, -1
  %141 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %140, i32 15
  %142 = add nuw nsw i32 %14, 1
  %143 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %142, i32 15
  %144 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %14, i32 14
  br label %167

145:                                              ; preds = %138
  br i1 %127, label %146, label %152

146:                                              ; preds = %145
  %147 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 14, i32 %12
  %148 = add nsw i32 %12, -1
  %149 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 15, i32 %148
  %150 = add nuw nsw i32 %12, 1
  %151 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 15, i32 %150
  br label %167

152:                                              ; preds = %145
  %153 = add nsw i32 %14, -1
  br i1 %121, label %154, label %159

154:                                              ; preds = %152
  %155 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %153, i32 0
  %156 = add nuw nsw i32 %14, 1
  %157 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %156, i32 0
  %158 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %14, i32 1
  br label %167

159:                                              ; preds = %152
  %160 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %153, i32 %12
  %161 = add nuw nsw i32 %14, 1
  %162 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %161, i32 %12
  %163 = add nsw i32 %12, -1
  %164 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %14, i32 %163
  %165 = add nuw nsw i32 %12, 1
  %166 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 %14, i32 %165
  br label %167

167:                                              ; preds = %129, %126, %123, %114, %139, %154, %159, %146, %132
  %168 = phi float addrspace(3)* [ %133, %132 ], [ %143, %139 ], [ %34, %146 ], [ %157, %154 ], [ %162, %159 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 1, i32 0), %114 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 1, i32 15), %123 ], [ %34, %126 ], [ %34, %129 ]
  %169 = phi float addrspace(3)* [ %137, %132 ], [ %79, %139 ], [ %151, %146 ], [ %158, %154 ], [ %166, %159 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 0, i32 1), %114 ], [ %79, %123 ], [ %79, %126 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 15, i32 1), %129 ]
  %170 = phi float addrspace(3)* [ %135, %132 ], [ %144, %139 ], [ %149, %146 ], [ %75, %154 ], [ %164, %159 ], [ %75, %114 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 0, i32 14), %123 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 15, i32 14), %126 ], [ %75, %129 ]
  %171 = phi float addrspace(3)* [ %30, %132 ], [ %141, %139 ], [ %147, %146 ], [ %155, %154 ], [ %160, %159 ], [ %30, %114 ], [ %30, %123 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 14, i32 15), %126 ], [ getelementptr inbounds ([16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE4temp, i32 0, i32 14, i32 0), %129 ]
  %172 = load float, float addrspace(3)* %171, align 4, !tbaa !6
  %173 = fsub contract float %172, %119
  %174 = load float, float addrspace(3)* %170, align 4, !tbaa !6
  %175 = fsub contract float %174, %119
  %176 = load float, float addrspace(3)* %169, align 4, !tbaa !6
  %177 = fsub contract float %176, %119
  %178 = load float, float addrspace(3)* %168, align 4, !tbaa !6
  %179 = fsub contract float %178, %119
  %180 = fmul contract float %173, %173
  %181 = fmul contract float %179, %179
  %182 = fadd contract float %180, %181
  %183 = fmul contract float %175, %175
  %184 = fadd contract float %183, %182
  %185 = fmul contract float %177, %177
  %186 = fadd contract float %185, %184
  %187 = fmul contract float %119, %119
  %188 = fdiv contract float %186, %187
  %189 = fadd contract float %173, %179
  %190 = fadd contract float %175, %189
  %191 = fadd contract float %177, %190
  %192 = fdiv contract float %191, %119
  %193 = fpext float %188 to double
  %194 = fmul contract double %193, 5.000000e-01
  %195 = fmul contract float %192, %192
  %196 = fpext float %195 to double
  %197 = fmul contract double %196, 6.250000e-02
  %198 = fsub contract double %194, %197
  %199 = fptrunc double %198 to float
  %200 = fpext float %192 to double
  %201 = fmul contract double %200, 2.500000e-01
  %202 = fadd contract double %201, 1.000000e+00
  %203 = fptrunc double %202 to float
  %204 = fmul contract float %203, %203
  %205 = fdiv contract float %199, %204
  %206 = fsub contract float %205, %8
  %207 = fadd contract float %8, 1.000000e+00
  %208 = fmul contract float %207, %8
  %209 = fdiv contract float %206, %208
  %210 = fpext float %209 to double
  %211 = fadd contract double %210, 1.000000e+00
  %212 = fdiv contract double 1.000000e+00, %211
  %213 = fptrunc double %212 to float
  %214 = fcmp contract olt float %213, 0.000000e+00
  br i1 %214, label %215, label %217

215:                                              ; preds = %167
  %216 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE11temp_result, i32 0, i32 %14, i32 %12
  store float 0.000000e+00, float addrspace(3)* %216, align 4, !tbaa !6
  br label %222

217:                                              ; preds = %167
  %218 = fcmp contract ogt float %213, 1.000000e+00
  %219 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE11temp_result, i32 0, i32 %14, i32 %12
  br i1 %218, label %220, label %221

220:                                              ; preds = %217
  store float 1.000000e+00, float addrspace(3)* %219, align 4, !tbaa !6
  br label %222

221:                                              ; preds = %217
  store float %213, float addrspace(3)* %219, align 4, !tbaa !6
  br label %222

222:                                              ; preds = %220, %221, %215
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %223 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_1PfS_S_S_S_S_iifE11temp_result, i32 0, i32 %14, i32 %12
  %224 = load float, float addrspace(3)* %223, align 4, !tbaa !6
  %225 = getelementptr inbounds float, float addrspace(1)* %5, i64 %115
  store float %224, float addrspace(1)* %225, align 4, !tbaa !6
  %226 = getelementptr inbounds float, float addrspace(1)* %0, i64 %115
  store float %177, float addrspace(1)* %226, align 4, !tbaa !6
  %227 = getelementptr inbounds float, float addrspace(1)* %1, i64 %115
  store float %175, float addrspace(1)* %227, align 4, !tbaa !6
  %228 = getelementptr inbounds float, float addrspace(1)* %3, i64 %115
  store float %179, float addrspace(1)* %228, align 4, !tbaa !6
  %229 = getelementptr inbounds float, float addrspace(1)* %2, i64 %115
  store float %173, float addrspace(1)* %229, align 4, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z11srad_cuda_2PfS_S_S_S_S_iiff(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture %4, float addrspace(1)* nocapture readonly %5, i32 %6, i32 %7, float %8, float %9) local_unnamed_addr #0 {
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %12 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %14 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !5
  %15 = shl nsw i32 %6, 4
  %16 = mul nsw i32 %15, %12
  %17 = shl nsw i32 %11, 4
  %18 = add nsw i32 %16, %17
  %19 = mul nsw i32 %14, %6
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, %13
  %22 = add i32 %15, %13
  %23 = add i32 %22, %18
  %24 = add nsw i32 %20, 16
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds float, float addrspace(1)* %4, i64 %25
  %27 = load float, float addrspace(1)* %26, align 4, !tbaa !6, !amdgpu.noclobber !10
  %28 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE4temp, i32 0, i32 %14, i32 %13
  store float %27, float addrspace(3)* %28, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %29 = sext i32 %23 to i64
  %30 = getelementptr inbounds float, float addrspace(1)* %5, i64 %29
  %31 = load float, float addrspace(1)* %30, align 4, !tbaa !6, !amdgpu.noclobber !10
  %32 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE7south_c, i32 0, i32 %14, i32 %13
  store float %31, float addrspace(3)* %32, align 4, !tbaa !6
  %33 = sext i32 %12 to i64
  %34 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %35 = getelementptr inbounds i8, i8 addrspace(4)* %34, i64 16
  %36 = bitcast i8 addrspace(4)* %35 to i32 addrspace(4)*
  %37 = load i32, i32 addrspace(4)* %36, align 8, !tbaa !11
  %38 = getelementptr i8, i8 addrspace(4)* %34, i64 6
  %39 = bitcast i8 addrspace(4)* %38 to i16 addrspace(4)*
  %40 = load i16, i16 addrspace(4)* %39, align 2, !range !20, !invariant.load !10
  %41 = zext i16 %40 to i32
  %42 = udiv i32 %37, %41
  %43 = mul i32 %42, %41
  %44 = icmp ugt i32 %37, %43
  %45 = zext i1 %44 to i32
  %46 = add i32 %42, %45
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %47, -1
  %49 = icmp eq i64 %48, %33
  br i1 %49, label %50, label %62

50:                                               ; preds = %10
  %51 = zext i32 %13 to i64
  %52 = sext i32 %15 to i64
  %53 = mul nsw i64 %33, %52
  %54 = sext i32 %17 to i64
  %55 = mul nsw i32 %6, 15
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %51
  %58 = add nsw i64 %57, %56
  %59 = add nsw i64 %58, %53
  %60 = getelementptr inbounds float, float addrspace(1)* %5, i64 %59
  %61 = load float, float addrspace(1)* %60, align 4, !tbaa !6, !amdgpu.noclobber !10
  store float %61, float addrspace(3)* %32, align 4, !tbaa !6
  br label %62

62:                                               ; preds = %50, %10
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %63 = sext i32 %24 to i64
  %64 = getelementptr inbounds float, float addrspace(1)* %5, i64 %63
  %65 = load float, float addrspace(1)* %64, align 4, !tbaa !6, !amdgpu.noclobber !10
  %66 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE6east_c, i32 0, i32 %14, i32 %13
  store float %65, float addrspace(3)* %66, align 4, !tbaa !6
  %67 = sext i32 %11 to i64
  %68 = getelementptr inbounds i8, i8 addrspace(4)* %34, i64 12
  %69 = bitcast i8 addrspace(4)* %68 to i32 addrspace(4)*
  %70 = load i32, i32 addrspace(4)* %69, align 4, !tbaa !21
  %71 = getelementptr i8, i8 addrspace(4)* %34, i64 4
  %72 = bitcast i8 addrspace(4)* %71 to i16 addrspace(4)*
  %73 = load i16, i16 addrspace(4)* %72, align 4, !range !20, !invariant.load !10
  %74 = zext i16 %73 to i32
  %75 = udiv i32 %70, %74
  %76 = mul i32 %75, %74
  %77 = icmp ugt i32 %70, %76
  %78 = zext i1 %77 to i32
  %79 = add i32 %75, %78
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %80, -1
  %82 = icmp eq i64 %81, %67
  br i1 %82, label %83, label %92

83:                                               ; preds = %62
  %84 = sext i32 %16 to i64
  %85 = shl nsw i64 %67, 4
  %86 = sext i32 %19 to i64
  %87 = add nsw i64 %86, 15
  %88 = add nsw i64 %87, %84
  %89 = add nsw i64 %88, %85
  %90 = getelementptr inbounds float, float addrspace(1)* %5, i64 %89
  %91 = load float, float addrspace(1)* %90, align 4, !tbaa !6, !amdgpu.noclobber !10
  store float %91, float addrspace(3)* %66, align 4, !tbaa !6
  br label %92

92:                                               ; preds = %83, %62
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %93 = getelementptr inbounds float, float addrspace(1)* %5, i64 %25
  %94 = load float, float addrspace(1)* %93, align 4, !tbaa !6, !amdgpu.noclobber !10
  %95 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE11c_cuda_temp, i32 0, i32 %14, i32 %13
  store float %94, float addrspace(3)* %95, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %96 = load float, float addrspace(3)* %95, align 4, !tbaa !6
  %97 = icmp eq i32 %14, 15
  %98 = icmp eq i32 %13, 15
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %113, label %100

100:                                              ; preds = %92
  br i1 %98, label %101, label %104

101:                                              ; preds = %100
  %102 = add nuw nsw i32 %14, 1
  %103 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE11c_cuda_temp, i32 0, i32 %102, i32 15
  br label %113

104:                                              ; preds = %100
  br i1 %97, label %105, label %108

105:                                              ; preds = %104
  %106 = add nuw nsw i32 %13, 1
  %107 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE11c_cuda_temp, i32 0, i32 15, i32 %106
  br label %113

108:                                              ; preds = %104
  %109 = add nuw nsw i32 %14, 1
  %110 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE11c_cuda_temp, i32 0, i32 %109, i32 %13
  %111 = add nuw nsw i32 %13, 1
  %112 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE11c_cuda_temp, i32 0, i32 %14, i32 %111
  br label %113

113:                                              ; preds = %92, %101, %108, %105
  %114 = phi float addrspace(3)* [ %103, %101 ], [ %32, %105 ], [ %110, %108 ], [ %32, %92 ]
  %115 = phi float addrspace(3)* [ %66, %101 ], [ %107, %105 ], [ %112, %108 ], [ %66, %92 ]
  %116 = load float, float addrspace(3)* %115, align 4, !tbaa !6
  %117 = load float, float addrspace(3)* %114, align 4, !tbaa !6
  %118 = getelementptr inbounds float, float addrspace(1)* %2, i64 %25
  %119 = load float, float addrspace(1)* %118, align 4, !tbaa !6, !amdgpu.noclobber !10
  %120 = fmul contract float %96, %119
  %121 = getelementptr inbounds float, float addrspace(1)* %3, i64 %25
  %122 = load float, float addrspace(1)* %121, align 4, !tbaa !6, !amdgpu.noclobber !10
  %123 = fmul contract float %117, %122
  %124 = fadd contract float %120, %123
  %125 = getelementptr inbounds float, float addrspace(1)* %1, i64 %25
  %126 = load float, float addrspace(1)* %125, align 4, !tbaa !6, !amdgpu.noclobber !10
  %127 = fmul contract float %96, %126
  %128 = fadd contract float %124, %127
  %129 = getelementptr inbounds float, float addrspace(1)* %0, i64 %25
  %130 = load float, float addrspace(1)* %129, align 4, !tbaa !6, !amdgpu.noclobber !10
  %131 = fmul contract float %116, %130
  %132 = fadd contract float %128, %131
  %133 = load float, float addrspace(3)* %28, align 4, !tbaa !6
  %134 = fpext float %133 to double
  %135 = fpext float %8 to double
  %136 = fmul contract double %135, 2.500000e-01
  %137 = fpext float %132 to double
  %138 = fmul contract double %136, %137
  %139 = fadd contract double %138, %134
  %140 = fptrunc double %139 to float
  %141 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ11srad_cuda_2PfS_S_S_S_S_iiffE13c_cuda_result, i32 0, i32 %14, i32 %13
  store float %140, float addrspace(3)* %141, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %142 = load float, float addrspace(3)* %141, align 4, !tbaa !6
  store float %142, float addrspace(1)* %26, align 4, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

attributes #0 = { convergent mustprogress norecurse nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
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
!11 = !{!12, !16, i64 16}
!12 = !{!"hsa_kernel_dispatch_packet_s", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !17, i64 32, !18, i64 40, !17, i64 48, !19, i64 56}
!13 = !{!"short", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"int", !14, i64 0}
!17 = !{!"long", !14, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"hsa_signal_s", !17, i64 0}
!20 = !{i16 1, i16 1025}
!21 = !{!12, !16, i64 12}
