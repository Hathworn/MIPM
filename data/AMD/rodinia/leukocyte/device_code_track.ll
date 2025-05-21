; ModuleID = 'track_ellipse_kernel.cu'
source_filename = "track_ellipse_kernel.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF = internal unnamed_addr addrspace(3) global [3321 x float] undef, align 16
@_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer = internal unnamed_addr addrspace(3) global [320 x float] undef, align 16
@_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE14cell_converged = internal unnamed_addr addrspace(3) global i32 undef, align 4

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z12IMGVF_kernelPPfS0_PiS1_fffif(float* addrspace(1)* nocapture readonly %0, float* addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readonly %2, i32 addrspace(1)* nocapture readonly %3, float %4, float %5, float %6, i32 %7, float %8) local_unnamed_addr #0 {
  %10 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float*, float* addrspace(1)* %0, i64 %11
  %13 = load float*, float* addrspace(1)* %12, align 8, !tbaa !5, !amdgpu.noclobber !9
  %14 = getelementptr inbounds float*, float* addrspace(1)* %1, i64 %11
  %15 = load float*, float* addrspace(1)* %14, align 8, !tbaa !5, !amdgpu.noclobber !9
  %16 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %11
  %17 = load i32, i32 addrspace(1)* %16, align 4, !tbaa !10, !amdgpu.noclobber !9
  %18 = getelementptr inbounds i32, i32 addrspace(1)* %3, i64 %11
  %19 = load i32, i32 addrspace(1)* %18, align 4, !tbaa !10, !amdgpu.noclobber !9
  %20 = mul nsw i32 %19, %17
  %21 = add nsw i32 %20, 319
  %22 = sdiv i32 %21, 320
  %23 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !12
  %24 = icmp sgt i32 %20, 0
  br i1 %24, label %25, label %136

25:                                               ; preds = %9
  %26 = tail call i32 @llvm.smax.i32(i32 %22, i32 1)
  %27 = add nsw i32 %26, -1
  %28 = and i32 %26, 3
  %29 = icmp ult i32 %27, 3
  br i1 %29, label %109, label %30

30:                                               ; preds = %25
  %31 = and i32 %26, 2147483644
  br label %32

32:                                               ; preds = %105, %30
  %33 = phi i32 [ 0, %30 ], [ %106, %105 ]
  %34 = phi i32 [ 0, %30 ], [ %107, %105 ]
  %35 = mul nuw nsw i32 %33, 320
  %36 = add nuw nsw i32 %35, %23
  %37 = freeze i32 %36
  %38 = freeze i32 %19
  %39 = sdiv i32 %37, %38
  %40 = icmp slt i32 %39, %17
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = mul i32 %39, %38
  %43 = sub i32 %37, %42
  %44 = mul nsw i32 %39, %19
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %13, i64 %46
  %48 = addrspacecast float* %47 to float addrspace(1)*
  %49 = load float, float addrspace(1)* %48, align 4, !tbaa !13, !amdgpu.noclobber !9
  %50 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %45
  store float %49, float addrspace(3)* %50, align 4, !tbaa !13
  br label %51

51:                                               ; preds = %41, %32
  %52 = or i32 %33, 1
  %53 = mul nuw nsw i32 %52, 320
  %54 = add nuw nsw i32 %53, %23
  %55 = freeze i32 %54
  %56 = freeze i32 %19
  %57 = sdiv i32 %55, %56
  %58 = icmp slt i32 %57, %17
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = mul i32 %57, %56
  %61 = sub i32 %55, %60
  %62 = mul nsw i32 %57, %19
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %13, i64 %64
  %66 = addrspacecast float* %65 to float addrspace(1)*
  %67 = load float, float addrspace(1)* %66, align 4, !tbaa !13, !amdgpu.noclobber !9
  %68 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %63
  store float %67, float addrspace(3)* %68, align 4, !tbaa !13
  br label %69

69:                                               ; preds = %59, %51
  %70 = or i32 %33, 2
  %71 = mul nuw nsw i32 %70, 320
  %72 = add nuw nsw i32 %71, %23
  %73 = freeze i32 %72
  %74 = freeze i32 %19
  %75 = sdiv i32 %73, %74
  %76 = icmp slt i32 %75, %17
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = mul i32 %75, %74
  %79 = sub i32 %73, %78
  %80 = mul nsw i32 %75, %19
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %13, i64 %82
  %84 = addrspacecast float* %83 to float addrspace(1)*
  %85 = load float, float addrspace(1)* %84, align 4, !tbaa !13, !amdgpu.noclobber !9
  %86 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %81
  store float %85, float addrspace(3)* %86, align 4, !tbaa !13
  br label %87

87:                                               ; preds = %77, %69
  %88 = or i32 %33, 3
  %89 = mul nuw nsw i32 %88, 320
  %90 = add nuw nsw i32 %89, %23
  %91 = freeze i32 %90
  %92 = freeze i32 %19
  %93 = sdiv i32 %91, %92
  %94 = icmp slt i32 %93, %17
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = mul i32 %93, %92
  %97 = sub i32 %91, %96
  %98 = mul nsw i32 %93, %19
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %13, i64 %100
  %102 = addrspacecast float* %101 to float addrspace(1)*
  %103 = load float, float addrspace(1)* %102, align 4, !tbaa !13, !amdgpu.noclobber !9
  %104 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %99
  store float %103, float addrspace(3)* %104, align 4, !tbaa !13
  br label %105

105:                                              ; preds = %95, %87
  %106 = add nuw nsw i32 %33, 4
  %107 = add i32 %34, 4
  %108 = icmp eq i32 %107, %31
  br i1 %108, label %109, label %32, !llvm.loop !15

109:                                              ; preds = %105, %25
  %110 = phi i32 [ undef, %25 ], [ %93, %105 ]
  %111 = phi i32 [ 0, %25 ], [ %106, %105 ]
  %112 = icmp eq i32 %28, 0
  br i1 %112, label %136, label %113

113:                                              ; preds = %109, %132
  %114 = phi i32 [ %133, %132 ], [ %111, %109 ]
  %115 = phi i32 [ %134, %132 ], [ 0, %109 ]
  %116 = mul nuw nsw i32 %114, 320
  %117 = add nuw nsw i32 %116, %23
  %118 = freeze i32 %117
  %119 = freeze i32 %19
  %120 = sdiv i32 %118, %119
  %121 = icmp slt i32 %120, %17
  br i1 %121, label %122, label %132

122:                                              ; preds = %113
  %123 = mul i32 %120, %119
  %124 = sub i32 %118, %123
  %125 = mul nsw i32 %120, %19
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %13, i64 %127
  %129 = addrspacecast float* %128 to float addrspace(1)*
  %130 = load float, float addrspace(1)* %129, align 4, !tbaa !13, !amdgpu.noclobber !9
  %131 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %126
  store float %130, float addrspace(3)* %131, align 4, !tbaa !13
  br label %132

132:                                              ; preds = %122, %113
  %133 = add nuw nsw i32 %114, 1
  %134 = add i32 %115, 1
  %135 = icmp eq i32 %134, %28
  br i1 %135, label %136, label %113, !llvm.loop !17

136:                                              ; preds = %109, %132, %9
  %137 = phi i32 [ undef, %9 ], [ %110, %109 ], [ %120, %132 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %138 = icmp eq i32 %23, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 0, i32 addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE14cell_converged, align 4, !tbaa !10
  br label %140

140:                                              ; preds = %139, %136
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %141 = sitofp i32 %19 to float
  %142 = fdiv contract float 1.000000e+00, %141
  %143 = srem i32 320, %19
  %144 = fdiv contract float 1.000000e+00, %6
  %145 = load i32, i32 addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE14cell_converged, align 4, !tbaa !10
  %146 = icmp eq i32 %145, 0
  %147 = icmp sgt i32 %7, 0
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %191

149:                                              ; preds = %140
  %150 = srem i32 %23, %19
  %151 = sub nsw i32 %150, %143
  %152 = add nsw i32 %17, -1
  %153 = add nsw i32 %19, -1
  %154 = fneg contract float %5
  %155 = fneg contract float %4
  %156 = fsub contract float %4, %5
  %157 = fadd contract float %4, %5
  %158 = fsub contract float %155, %5
  %159 = fsub contract float %5, %4
  %160 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %23
  %161 = add nsw i32 %22, -1
  %162 = icmp ugt i32 %23, 255
  %163 = add nsw i32 %23, -256
  %164 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %163
  %165 = sitofp i32 %20 to float
  %166 = tail call i32 @llvm.smax.i32(i32 %22, i32 1)
  %167 = icmp ult i32 %23, 128
  %168 = add nuw nsw i32 %23, 128
  %169 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %168
  %170 = icmp ult i32 %23, 64
  %171 = add nuw nsw i32 %23, 64
  %172 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %171
  %173 = icmp ult i32 %23, 32
  %174 = add nuw nsw i32 %23, 32
  %175 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %174
  %176 = icmp ult i32 %23, 16
  %177 = add nuw nsw i32 %23, 16
  %178 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %177
  %179 = icmp ult i32 %23, 8
  %180 = add nuw nsw i32 %23, 8
  %181 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %180
  %182 = icmp ult i32 %23, 4
  %183 = add nuw nsw i32 %23, 4
  %184 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %183
  %185 = icmp ult i32 %23, 2
  %186 = add nuw nsw i32 %23, 2
  %187 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %186
  %188 = icmp eq i32 %23, 0
  %189 = add nuw nsw i32 %23, 1
  %190 = getelementptr inbounds [320 x float], [320 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE6buffer, i32 0, i32 %189
  br label %199

191:                                              ; preds = %563, %140
  br i1 %24, label %192, label %672

192:                                              ; preds = %191
  %193 = tail call i32 @llvm.smax.i32(i32 %22, i32 1)
  %194 = add nsw i32 %193, -1
  %195 = and i32 %193, 3
  %196 = icmp ult i32 %194, 3
  br i1 %196, label %646, label %197

197:                                              ; preds = %192
  %198 = and i32 %193, 2147483644
  br label %569

199:                                              ; preds = %149, %563
  %200 = phi i32 [ %137, %149 ], [ %512, %563 ]
  %201 = phi i32 [ 0, %149 ], [ %564, %563 ]
  br i1 %24, label %202, label %510

202:                                              ; preds = %199, %504
  %203 = phi i32 [ %508, %504 ], [ 0, %199 ]
  %204 = phi i32 [ %211, %504 ], [ %200, %199 ]
  %205 = phi i32 [ %215, %504 ], [ %151, %199 ]
  %206 = phi float [ %507, %504 ], [ 0.000000e+00, %199 ]
  %207 = mul nuw nsw i32 %203, 320
  %208 = add nuw nsw i32 %207, %23
  %209 = sitofp i32 %208 to float
  %210 = fmul contract float %142, %209
  %211 = fptosi float %210 to i32
  %212 = add nsw i32 %205, %143
  %213 = icmp slt i32 %212, %19
  %214 = select i1 %213, i32 0, i32 %19
  %215 = sub nsw i32 %212, %214
  %216 = icmp sgt i32 %17, %211
  br i1 %216, label %217, label %484

217:                                              ; preds = %202
  %218 = icmp eq i32 %211, 0
  %219 = add nsw i32 %211, -1
  %220 = select i1 %218, i32 0, i32 %219
  %221 = icmp eq i32 %152, %211
  %222 = add nsw i32 %211, 1
  %223 = select i1 %221, i32 %152, i32 %222
  %224 = icmp eq i32 %215, 0
  %225 = add nsw i32 %215, -1
  %226 = select i1 %224, i32 0, i32 %225
  %227 = icmp eq i32 %215, %153
  %228 = add nsw i32 %215, 1
  %229 = select i1 %227, i32 %153, i32 %228
  %230 = mul nsw i32 %19, %211
  %231 = add nsw i32 %230, %215
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %231
  %234 = load float, float addrspace(3)* %233, align 4, !tbaa !13
  %235 = mul nsw i32 %220, %19
  %236 = add nsw i32 %235, %215
  %237 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %236
  %238 = load float, float addrspace(3)* %237, align 4, !tbaa !13
  %239 = fsub contract float %238, %234
  %240 = mul nsw i32 %223, %19
  %241 = add nsw i32 %240, %215
  %242 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4, !tbaa !13
  %244 = fsub contract float %243, %234
  %245 = add nsw i32 %230, %226
  %246 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %245
  %247 = load float, float addrspace(3)* %246, align 4, !tbaa !13
  %248 = fsub contract float %247, %234
  %249 = add nsw i32 %230, %229
  %250 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %249
  %251 = load float, float addrspace(3)* %250, align 4, !tbaa !13
  %252 = fsub contract float %251, %234
  %253 = add nsw i32 %235, %229
  %254 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %253
  %255 = load float, float addrspace(3)* %254, align 4, !tbaa !13
  %256 = fsub contract float %255, %234
  %257 = add nsw i32 %240, %229
  %258 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %257
  %259 = load float, float addrspace(3)* %258, align 4, !tbaa !13
  %260 = fsub contract float %259, %234
  %261 = add nsw i32 %235, %226
  %262 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %261
  %263 = load float, float addrspace(3)* %262, align 4, !tbaa !13
  %264 = fsub contract float %263, %234
  %265 = add nsw i32 %240, %226
  %266 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %265
  %267 = load float, float addrspace(3)* %266, align 4, !tbaa !13
  %268 = fsub contract float %267, %234
  %269 = fmul contract float %239, %154
  %270 = fmul contract float %144, %269
  %271 = tail call float @llvm.fabs.f32(float %270)
  %272 = fcmp ogt float %271, 1.000000e+00
  %273 = tail call float @llvm.amdgcn.rcp.f32(float %271)
  %274 = select i1 %272, float %273, float %271
  %275 = fmul float %274, %274
  %276 = tail call float @llvm.fmuladd.f32(float %275, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %277 = tail call float @llvm.fmuladd.f32(float %275, float %276, float 0x3FA53F67E0000000)
  %278 = tail call float @llvm.fmuladd.f32(float %275, float %277, float 0xBFB2FA9AE0000000)
  %279 = tail call float @llvm.fmuladd.f32(float %275, float %278, float 0x3FBB263640000000)
  %280 = tail call float @llvm.fmuladd.f32(float %275, float %279, float 0xBFC22C1CC0000000)
  %281 = tail call float @llvm.fmuladd.f32(float %275, float %280, float 0x3FC99717E0000000)
  %282 = tail call float @llvm.fmuladd.f32(float %275, float %281, float 0xBFD5554C40000000)
  %283 = fmul float %275, %282
  %284 = tail call float @llvm.fmuladd.f32(float %274, float %283, float %274)
  %285 = fsub float 0x3FF921FB60000000, %284
  %286 = select i1 %272, float %285, float %284
  %287 = tail call float @llvm.copysign.f32(float %286, float %270)
  %288 = fpext float %287 to double
  %289 = fmul contract double %288, 0x3FD45F318E7ADAF5
  %290 = fadd contract double %289, 5.000000e-01
  %291 = fptrunc double %290 to float
  %292 = fmul contract float %244, %5
  %293 = fmul contract float %144, %292
  %294 = tail call float @llvm.fabs.f32(float %293)
  %295 = fcmp ogt float %294, 1.000000e+00
  %296 = tail call float @llvm.amdgcn.rcp.f32(float %294)
  %297 = select i1 %295, float %296, float %294
  %298 = fmul float %297, %297
  %299 = tail call float @llvm.fmuladd.f32(float %298, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %300 = tail call float @llvm.fmuladd.f32(float %298, float %299, float 0x3FA53F67E0000000)
  %301 = tail call float @llvm.fmuladd.f32(float %298, float %300, float 0xBFB2FA9AE0000000)
  %302 = tail call float @llvm.fmuladd.f32(float %298, float %301, float 0x3FBB263640000000)
  %303 = tail call float @llvm.fmuladd.f32(float %298, float %302, float 0xBFC22C1CC0000000)
  %304 = tail call float @llvm.fmuladd.f32(float %298, float %303, float 0x3FC99717E0000000)
  %305 = tail call float @llvm.fmuladd.f32(float %298, float %304, float 0xBFD5554C40000000)
  %306 = fmul float %298, %305
  %307 = tail call float @llvm.fmuladd.f32(float %297, float %306, float %297)
  %308 = fsub float 0x3FF921FB60000000, %307
  %309 = select i1 %295, float %308, float %307
  %310 = tail call float @llvm.copysign.f32(float %309, float %293)
  %311 = fpext float %310 to double
  %312 = fmul contract double %311, 0x3FD45F318E7ADAF5
  %313 = fadd contract double %312, 5.000000e-01
  %314 = fptrunc double %313 to float
  %315 = fmul contract float %248, %155
  %316 = fmul contract float %144, %315
  %317 = tail call float @llvm.fabs.f32(float %316)
  %318 = fcmp ogt float %317, 1.000000e+00
  %319 = tail call float @llvm.amdgcn.rcp.f32(float %317)
  %320 = select i1 %318, float %319, float %317
  %321 = fmul float %320, %320
  %322 = tail call float @llvm.fmuladd.f32(float %321, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %323 = tail call float @llvm.fmuladd.f32(float %321, float %322, float 0x3FA53F67E0000000)
  %324 = tail call float @llvm.fmuladd.f32(float %321, float %323, float 0xBFB2FA9AE0000000)
  %325 = tail call float @llvm.fmuladd.f32(float %321, float %324, float 0x3FBB263640000000)
  %326 = tail call float @llvm.fmuladd.f32(float %321, float %325, float 0xBFC22C1CC0000000)
  %327 = tail call float @llvm.fmuladd.f32(float %321, float %326, float 0x3FC99717E0000000)
  %328 = tail call float @llvm.fmuladd.f32(float %321, float %327, float 0xBFD5554C40000000)
  %329 = fmul float %321, %328
  %330 = tail call float @llvm.fmuladd.f32(float %320, float %329, float %320)
  %331 = fsub float 0x3FF921FB60000000, %330
  %332 = select i1 %318, float %331, float %330
  %333 = tail call float @llvm.copysign.f32(float %332, float %316)
  %334 = fpext float %333 to double
  %335 = fmul contract double %334, 0x3FD45F318E7ADAF5
  %336 = fadd contract double %335, 5.000000e-01
  %337 = fptrunc double %336 to float
  %338 = fmul contract float %252, %4
  %339 = fmul contract float %144, %338
  %340 = tail call float @llvm.fabs.f32(float %339)
  %341 = fcmp ogt float %340, 1.000000e+00
  %342 = tail call float @llvm.amdgcn.rcp.f32(float %340)
  %343 = select i1 %341, float %342, float %340
  %344 = fmul float %343, %343
  %345 = tail call float @llvm.fmuladd.f32(float %344, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %346 = tail call float @llvm.fmuladd.f32(float %344, float %345, float 0x3FA53F67E0000000)
  %347 = tail call float @llvm.fmuladd.f32(float %344, float %346, float 0xBFB2FA9AE0000000)
  %348 = tail call float @llvm.fmuladd.f32(float %344, float %347, float 0x3FBB263640000000)
  %349 = tail call float @llvm.fmuladd.f32(float %344, float %348, float 0xBFC22C1CC0000000)
  %350 = tail call float @llvm.fmuladd.f32(float %344, float %349, float 0x3FC99717E0000000)
  %351 = tail call float @llvm.fmuladd.f32(float %344, float %350, float 0xBFD5554C40000000)
  %352 = fmul float %344, %351
  %353 = tail call float @llvm.fmuladd.f32(float %343, float %352, float %343)
  %354 = fsub float 0x3FF921FB60000000, %353
  %355 = select i1 %341, float %354, float %353
  %356 = tail call float @llvm.copysign.f32(float %355, float %339)
  %357 = fpext float %356 to double
  %358 = fmul contract double %357, 0x3FD45F318E7ADAF5
  %359 = fadd contract double %358, 5.000000e-01
  %360 = fptrunc double %359 to float
  %361 = fmul contract float %156, %256
  %362 = fmul contract float %144, %361
  %363 = tail call float @llvm.fabs.f32(float %362)
  %364 = fcmp ogt float %363, 1.000000e+00
  %365 = tail call float @llvm.amdgcn.rcp.f32(float %363)
  %366 = select i1 %364, float %365, float %363
  %367 = fmul float %366, %366
  %368 = tail call float @llvm.fmuladd.f32(float %367, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %369 = tail call float @llvm.fmuladd.f32(float %367, float %368, float 0x3FA53F67E0000000)
  %370 = tail call float @llvm.fmuladd.f32(float %367, float %369, float 0xBFB2FA9AE0000000)
  %371 = tail call float @llvm.fmuladd.f32(float %367, float %370, float 0x3FBB263640000000)
  %372 = tail call float @llvm.fmuladd.f32(float %367, float %371, float 0xBFC22C1CC0000000)
  %373 = tail call float @llvm.fmuladd.f32(float %367, float %372, float 0x3FC99717E0000000)
  %374 = tail call float @llvm.fmuladd.f32(float %367, float %373, float 0xBFD5554C40000000)
  %375 = fmul float %367, %374
  %376 = tail call float @llvm.fmuladd.f32(float %366, float %375, float %366)
  %377 = fsub float 0x3FF921FB60000000, %376
  %378 = select i1 %364, float %377, float %376
  %379 = tail call float @llvm.copysign.f32(float %378, float %362)
  %380 = fpext float %379 to double
  %381 = fmul contract double %380, 0x3FD45F318E7ADAF5
  %382 = fadd contract double %381, 5.000000e-01
  %383 = fptrunc double %382 to float
  %384 = fmul contract float %157, %260
  %385 = fmul contract float %144, %384
  %386 = tail call float @llvm.fabs.f32(float %385)
  %387 = fcmp ogt float %386, 1.000000e+00
  %388 = tail call float @llvm.amdgcn.rcp.f32(float %386)
  %389 = select i1 %387, float %388, float %386
  %390 = fmul float %389, %389
  %391 = tail call float @llvm.fmuladd.f32(float %390, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %392 = tail call float @llvm.fmuladd.f32(float %390, float %391, float 0x3FA53F67E0000000)
  %393 = tail call float @llvm.fmuladd.f32(float %390, float %392, float 0xBFB2FA9AE0000000)
  %394 = tail call float @llvm.fmuladd.f32(float %390, float %393, float 0x3FBB263640000000)
  %395 = tail call float @llvm.fmuladd.f32(float %390, float %394, float 0xBFC22C1CC0000000)
  %396 = tail call float @llvm.fmuladd.f32(float %390, float %395, float 0x3FC99717E0000000)
  %397 = tail call float @llvm.fmuladd.f32(float %390, float %396, float 0xBFD5554C40000000)
  %398 = fmul float %390, %397
  %399 = tail call float @llvm.fmuladd.f32(float %389, float %398, float %389)
  %400 = fsub float 0x3FF921FB60000000, %399
  %401 = select i1 %387, float %400, float %399
  %402 = tail call float @llvm.copysign.f32(float %401, float %385)
  %403 = fpext float %402 to double
  %404 = fmul contract double %403, 0x3FD45F318E7ADAF5
  %405 = fadd contract double %404, 5.000000e-01
  %406 = fptrunc double %405 to float
  %407 = fmul contract float %158, %264
  %408 = fmul contract float %144, %407
  %409 = tail call float @llvm.fabs.f32(float %408)
  %410 = fcmp ogt float %409, 1.000000e+00
  %411 = tail call float @llvm.amdgcn.rcp.f32(float %409)
  %412 = select i1 %410, float %411, float %409
  %413 = fmul float %412, %412
  %414 = tail call float @llvm.fmuladd.f32(float %413, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %415 = tail call float @llvm.fmuladd.f32(float %413, float %414, float 0x3FA53F67E0000000)
  %416 = tail call float @llvm.fmuladd.f32(float %413, float %415, float 0xBFB2FA9AE0000000)
  %417 = tail call float @llvm.fmuladd.f32(float %413, float %416, float 0x3FBB263640000000)
  %418 = tail call float @llvm.fmuladd.f32(float %413, float %417, float 0xBFC22C1CC0000000)
  %419 = tail call float @llvm.fmuladd.f32(float %413, float %418, float 0x3FC99717E0000000)
  %420 = tail call float @llvm.fmuladd.f32(float %413, float %419, float 0xBFD5554C40000000)
  %421 = fmul float %413, %420
  %422 = tail call float @llvm.fmuladd.f32(float %412, float %421, float %412)
  %423 = fsub float 0x3FF921FB60000000, %422
  %424 = select i1 %410, float %423, float %422
  %425 = tail call float @llvm.copysign.f32(float %424, float %408)
  %426 = fpext float %425 to double
  %427 = fmul contract double %426, 0x3FD45F318E7ADAF5
  %428 = fadd contract double %427, 5.000000e-01
  %429 = fptrunc double %428 to float
  %430 = fmul contract float %159, %268
  %431 = fmul contract float %144, %430
  %432 = tail call float @llvm.fabs.f32(float %431)
  %433 = fcmp ogt float %432, 1.000000e+00
  %434 = tail call float @llvm.amdgcn.rcp.f32(float %432)
  %435 = select i1 %433, float %434, float %432
  %436 = fmul float %435, %435
  %437 = tail call float @llvm.fmuladd.f32(float %436, float 0x3F65A54B00000000, float 0xBF8F4B2180000000)
  %438 = tail call float @llvm.fmuladd.f32(float %436, float %437, float 0x3FA53F67E0000000)
  %439 = tail call float @llvm.fmuladd.f32(float %436, float %438, float 0xBFB2FA9AE0000000)
  %440 = tail call float @llvm.fmuladd.f32(float %436, float %439, float 0x3FBB263640000000)
  %441 = tail call float @llvm.fmuladd.f32(float %436, float %440, float 0xBFC22C1CC0000000)
  %442 = tail call float @llvm.fmuladd.f32(float %436, float %441, float 0x3FC99717E0000000)
  %443 = tail call float @llvm.fmuladd.f32(float %436, float %442, float 0xBFD5554C40000000)
  %444 = fmul float %436, %443
  %445 = tail call float @llvm.fmuladd.f32(float %435, float %444, float %435)
  %446 = fsub float 0x3FF921FB60000000, %445
  %447 = select i1 %433, float %446, float %445
  %448 = tail call float @llvm.copysign.f32(float %447, float %431)
  %449 = fpext float %448 to double
  %450 = fmul contract double %449, 0x3FD45F318E7ADAF5
  %451 = fadd contract double %450, 5.000000e-01
  %452 = fptrunc double %451 to float
  %453 = fpext float %234 to double
  %454 = fmul contract float %239, %291
  %455 = fmul contract float %244, %314
  %456 = fadd contract float %454, %455
  %457 = fmul contract float %248, %337
  %458 = fadd contract float %456, %457
  %459 = fmul contract float %252, %360
  %460 = fadd contract float %458, %459
  %461 = fmul contract float %256, %383
  %462 = fadd contract float %460, %461
  %463 = fmul contract float %260, %406
  %464 = fadd contract float %462, %463
  %465 = fmul contract float %264, %429
  %466 = fadd contract float %464, %465
  %467 = fmul contract float %268, %452
  %468 = fadd contract float %466, %467
  %469 = fpext float %468 to double
  %470 = fmul contract double %469, 1.000000e-01
  %471 = fadd contract double %470, %453
  %472 = fptrunc double %471 to float
  %473 = getelementptr inbounds float, float* %15, i64 %232
  %474 = addrspacecast float* %473 to float addrspace(1)*
  %475 = load float, float addrspace(1)* %474, align 4, !tbaa !13, !amdgpu.noclobber !9
  %476 = fpext float %475 to double
  %477 = fmul contract double %476, 2.000000e-01
  %478 = fsub contract float %472, %475
  %479 = fpext float %478 to double
  %480 = fmul contract double %477, %479
  %481 = fpext float %472 to double
  %482 = fsub contract double %481, %480
  %483 = fptrunc double %482 to float
  br label %484

484:                                              ; preds = %217, %202
  %485 = phi float [ %234, %217 ], [ 0.000000e+00, %202 ]
  %486 = phi float [ %483, %217 ], [ 0.000000e+00, %202 ]
  %487 = icmp ne i32 %203, 0
  %488 = icmp slt i32 %204, %17
  %489 = select i1 %487, i1 %488, i1 false
  br i1 %489, label %490, label %495

490:                                              ; preds = %484
  %491 = mul nsw i32 %204, %19
  %492 = add nsw i32 %491, %205
  %493 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %492
  %494 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  store float %494, float addrspace(3)* %493, align 4, !tbaa !13
  br label %495

495:                                              ; preds = %490, %484
  %496 = icmp slt i32 %203, %161
  br i1 %496, label %502, label %497

497:                                              ; preds = %495
  br i1 %216, label %498, label %504

498:                                              ; preds = %497
  %499 = mul nsw i32 %19, %211
  %500 = add nsw i32 %499, %215
  %501 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %500
  br label %502

502:                                              ; preds = %495, %498
  %503 = phi float addrspace(3)* [ %501, %498 ], [ %160, %495 ]
  store float %486, float addrspace(3)* %503, align 4, !tbaa !13
  br label %504

504:                                              ; preds = %502, %497
  %505 = fsub contract float %486, %485
  %506 = tail call float @llvm.fabs.f32(float %505)
  %507 = fadd contract float %206, %506
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %508 = add nuw nsw i32 %203, 1
  %509 = icmp eq i32 %508, %166
  br i1 %509, label %510, label %202, !llvm.loop !19

510:                                              ; preds = %504, %199
  %511 = phi float [ 0.000000e+00, %199 ], [ %507, %504 ]
  %512 = phi i32 [ %200, %199 ], [ %211, %504 ]
  store float %511, float addrspace(3)* %160, align 4, !tbaa !13
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %162, label %513, label %517

513:                                              ; preds = %510
  %514 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %515 = load float, float addrspace(3)* %164, align 4, !tbaa !13
  %516 = fadd contract float %514, %515
  store float %516, float addrspace(3)* %164, align 4, !tbaa !13
  br label %517

517:                                              ; preds = %513, %510
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %167, label %518, label %522

518:                                              ; preds = %517
  %519 = load float, float addrspace(3)* %169, align 4, !tbaa !13
  %520 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %521 = fadd contract float %519, %520
  store float %521, float addrspace(3)* %160, align 4, !tbaa !13
  br label %522

522:                                              ; preds = %518, %517
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %170, label %523, label %527

523:                                              ; preds = %522
  %524 = load float, float addrspace(3)* %172, align 4, !tbaa !13
  %525 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %526 = fadd contract float %524, %525
  store float %526, float addrspace(3)* %160, align 4, !tbaa !13
  br label %527

527:                                              ; preds = %523, %522
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %173, label %528, label %532

528:                                              ; preds = %527
  %529 = load float, float addrspace(3)* %175, align 4, !tbaa !13
  %530 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %531 = fadd contract float %529, %530
  store float %531, float addrspace(3)* %160, align 4, !tbaa !13
  br label %532

532:                                              ; preds = %528, %527
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %176, label %533, label %537

533:                                              ; preds = %532
  %534 = load float, float addrspace(3)* %178, align 4, !tbaa !13
  %535 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %536 = fadd contract float %534, %535
  store float %536, float addrspace(3)* %160, align 4, !tbaa !13
  br label %537

537:                                              ; preds = %533, %532
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %179, label %538, label %542

538:                                              ; preds = %537
  %539 = load float, float addrspace(3)* %181, align 4, !tbaa !13
  %540 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %541 = fadd contract float %539, %540
  store float %541, float addrspace(3)* %160, align 4, !tbaa !13
  br label %542

542:                                              ; preds = %538, %537
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %182, label %543, label %547

543:                                              ; preds = %542
  %544 = load float, float addrspace(3)* %184, align 4, !tbaa !13
  %545 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %546 = fadd contract float %544, %545
  store float %546, float addrspace(3)* %160, align 4, !tbaa !13
  br label %547

547:                                              ; preds = %543, %542
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %185, label %548, label %552

548:                                              ; preds = %547
  %549 = load float, float addrspace(3)* %187, align 4, !tbaa !13
  %550 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %551 = fadd contract float %549, %550
  store float %551, float addrspace(3)* %160, align 4, !tbaa !13
  br label %552

552:                                              ; preds = %548, %547
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %188, label %553, label %557

553:                                              ; preds = %552
  %554 = load float, float addrspace(3)* %190, align 4, !tbaa !13
  %555 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %556 = fadd contract float %554, %555
  store float %556, float addrspace(3)* %160, align 4, !tbaa !13
  br label %557

557:                                              ; preds = %553, %552
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %138, label %558, label %563

558:                                              ; preds = %557
  %559 = load float, float addrspace(3)* %160, align 4, !tbaa !13
  %560 = fdiv contract float %559, %165
  %561 = fcmp contract olt float %560, %8
  br i1 %561, label %562, label %563

562:                                              ; preds = %558
  store i32 1, i32 addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE14cell_converged, align 4, !tbaa !10
  br label %563

563:                                              ; preds = %558, %562, %557
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %564 = add nuw nsw i32 %201, 1
  %565 = load i32, i32 addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE14cell_converged, align 4, !tbaa !10
  %566 = icmp eq i32 %565, 0
  %567 = icmp slt i32 %564, %7
  %568 = select i1 %566, i1 %567, i1 false
  br i1 %568, label %199, label %191, !llvm.loop !20

569:                                              ; preds = %642, %197
  %570 = phi i32 [ 0, %197 ], [ %643, %642 ]
  %571 = phi i32 [ 0, %197 ], [ %644, %642 ]
  %572 = mul nuw nsw i32 %570, 320
  %573 = add nuw nsw i32 %572, %23
  %574 = freeze i32 %573
  %575 = freeze i32 %19
  %576 = sdiv i32 %574, %575
  %577 = icmp slt i32 %576, %17
  br i1 %577, label %578, label %588

578:                                              ; preds = %569
  %579 = mul i32 %576, %575
  %580 = sub i32 %574, %579
  %581 = mul nsw i32 %576, %19
  %582 = add nsw i32 %580, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %582
  %585 = load float, float addrspace(3)* %584, align 4, !tbaa !13
  %586 = getelementptr inbounds float, float* %13, i64 %583
  %587 = addrspacecast float* %586 to float addrspace(1)*
  store float %585, float addrspace(1)* %587, align 4, !tbaa !13
  br label %588

588:                                              ; preds = %578, %569
  %589 = or i32 %570, 1
  %590 = mul nuw nsw i32 %589, 320
  %591 = add nuw nsw i32 %590, %23
  %592 = freeze i32 %591
  %593 = freeze i32 %19
  %594 = sdiv i32 %592, %593
  %595 = icmp slt i32 %594, %17
  br i1 %595, label %596, label %606

596:                                              ; preds = %588
  %597 = mul i32 %594, %593
  %598 = sub i32 %592, %597
  %599 = mul nsw i32 %594, %19
  %600 = add nsw i32 %598, %599
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %600
  %603 = load float, float addrspace(3)* %602, align 4, !tbaa !13
  %604 = getelementptr inbounds float, float* %13, i64 %601
  %605 = addrspacecast float* %604 to float addrspace(1)*
  store float %603, float addrspace(1)* %605, align 4, !tbaa !13
  br label %606

606:                                              ; preds = %596, %588
  %607 = or i32 %570, 2
  %608 = mul nuw nsw i32 %607, 320
  %609 = add nuw nsw i32 %608, %23
  %610 = freeze i32 %609
  %611 = freeze i32 %19
  %612 = sdiv i32 %610, %611
  %613 = icmp slt i32 %612, %17
  br i1 %613, label %614, label %624

614:                                              ; preds = %606
  %615 = mul i32 %612, %611
  %616 = sub i32 %610, %615
  %617 = mul nsw i32 %612, %19
  %618 = add nsw i32 %616, %617
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %618
  %621 = load float, float addrspace(3)* %620, align 4, !tbaa !13
  %622 = getelementptr inbounds float, float* %13, i64 %619
  %623 = addrspacecast float* %622 to float addrspace(1)*
  store float %621, float addrspace(1)* %623, align 4, !tbaa !13
  br label %624

624:                                              ; preds = %614, %606
  %625 = or i32 %570, 3
  %626 = mul nuw nsw i32 %625, 320
  %627 = add nuw nsw i32 %626, %23
  %628 = freeze i32 %627
  %629 = freeze i32 %19
  %630 = sdiv i32 %628, %629
  %631 = icmp slt i32 %630, %17
  br i1 %631, label %632, label %642

632:                                              ; preds = %624
  %633 = mul i32 %630, %629
  %634 = sub i32 %628, %633
  %635 = mul nsw i32 %630, %19
  %636 = add nsw i32 %634, %635
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %636
  %639 = load float, float addrspace(3)* %638, align 4, !tbaa !13
  %640 = getelementptr inbounds float, float* %13, i64 %637
  %641 = addrspacecast float* %640 to float addrspace(1)*
  store float %639, float addrspace(1)* %641, align 4, !tbaa !13
  br label %642

642:                                              ; preds = %632, %624
  %643 = add nuw nsw i32 %570, 4
  %644 = add i32 %571, 4
  %645 = icmp eq i32 %644, %198
  br i1 %645, label %646, label %569, !llvm.loop !21

646:                                              ; preds = %642, %192
  %647 = phi i32 [ 0, %192 ], [ %643, %642 ]
  %648 = icmp eq i32 %195, 0
  br i1 %648, label %672, label %649

649:                                              ; preds = %646, %668
  %650 = phi i32 [ %669, %668 ], [ %647, %646 ]
  %651 = phi i32 [ %670, %668 ], [ 0, %646 ]
  %652 = mul nuw nsw i32 %650, 320
  %653 = add nuw nsw i32 %652, %23
  %654 = freeze i32 %653
  %655 = freeze i32 %19
  %656 = sdiv i32 %654, %655
  %657 = icmp slt i32 %656, %17
  br i1 %657, label %658, label %668

658:                                              ; preds = %649
  %659 = mul i32 %656, %655
  %660 = sub i32 %654, %659
  %661 = mul nsw i32 %656, %19
  %662 = add nsw i32 %660, %661
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [3321 x float], [3321 x float] addrspace(3)* @_ZZ12IMGVF_kernelPPfS0_PiS1_fffifE5IMGVF, i32 0, i32 %662
  %665 = load float, float addrspace(3)* %664, align 4, !tbaa !13
  %666 = getelementptr inbounds float, float* %13, i64 %663
  %667 = addrspacecast float* %666 to float addrspace(1)*
  store float %665, float addrspace(1)* %667, align 4, !tbaa !13
  br label %668

668:                                              ; preds = %658, %649
  %669 = add nuw nsw i32 %650, 1
  %670 = add i32 %651, 1
  %671 = icmp eq i32 %670, %195
  br i1 %671, label %672, label %649, !llvm.loop !22

672:                                              ; preds = %646, %668, %191
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.amdgcn.rcp.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{i32 0, i32 1024}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !18}
