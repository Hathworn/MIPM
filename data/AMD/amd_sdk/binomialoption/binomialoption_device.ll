; ModuleID = 'binomialoption/binomialoption.cpp'
source_filename = "binomialoption/binomialoption.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x float> }

@_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA = internal unnamed_addr addrspace(3) global [255 x %struct.HIP_vector_type] undef, align 16
@_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB = internal unnamed_addr addrspace(3) global [255 x %struct.HIP_vector_type] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_(i32 %0, %struct.HIP_vector_type addrspace(1)* nocapture readonly %1, %struct.HIP_vector_type addrspace(1)* nocapture writeonly %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %6, i32 0, i32 0, i32 0, i64 0
  %8 = load float, float addrspace(1)* %7, align 16
  %9 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %6, i32 0, i32 0, i32 0, i64 1
  %10 = load float, float addrspace(1)* %9, align 4
  %11 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %6, i32 0, i32 0, i32 0, i64 2
  %12 = load float, float addrspace(1)* %11, align 8
  %13 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %6, i32 0, i32 0, i32 0, i64 3
  %14 = load float, float addrspace(1)* %13, align 4
  %15 = fsub contract float 1.000000e+00, %8
  %16 = fmul contract float %15, 5.000000e+00
  %17 = fmul contract float %8, 3.000000e+01
  %18 = fadd contract float %17, %16
  %19 = fsub contract float 1.000000e+00, %10
  %20 = fmul contract float %19, 5.000000e+00
  %21 = fmul contract float %10, 3.000000e+01
  %22 = fadd contract float %21, %20
  %23 = fsub contract float 1.000000e+00, %12
  %24 = fmul contract float %23, 5.000000e+00
  %25 = fmul contract float %12, 3.000000e+01
  %26 = fadd contract float %25, %24
  %27 = fsub contract float 1.000000e+00, %14
  %28 = fmul contract float %27, 5.000000e+00
  %29 = fmul contract float %14, 3.000000e+01
  %30 = fadd contract float %29, %28
  %31 = fmul contract float %8, 1.000000e+02
  %32 = fadd contract float %15, %31
  %33 = fmul contract float %10, 1.000000e+02
  %34 = fadd contract float %19, %33
  %35 = fmul contract float %12, 1.000000e+02
  %36 = fadd contract float %23, %35
  %37 = fmul contract float %14, 1.000000e+02
  %38 = fadd contract float %27, %37
  %39 = fmul contract float %15, 2.500000e-01
  %40 = fmul contract float %8, 1.000000e+01
  %41 = fadd contract float %40, %39
  %42 = fmul contract float %19, 2.500000e-01
  %43 = fmul contract float %10, 1.000000e+01
  %44 = fadd contract float %43, %42
  %45 = fmul contract float %23, 2.500000e-01
  %46 = fmul contract float %12, 1.000000e+01
  %47 = fadd contract float %46, %45
  %48 = fmul contract float %27, 2.500000e-01
  %49 = fmul contract float %14, 1.000000e+01
  %50 = fadd contract float %49, %48
  %51 = sitofp i32 %0 to float
  %52 = fdiv contract float 1.000000e+00, %51
  %53 = fmul contract float %52, %41
  %54 = fmul contract float %52, %44
  %55 = fmul contract float %52, %47
  %56 = fmul contract float %52, %50
  %57 = fcmp olt float %53, 0x39F0000000000000
  %58 = select i1 %57, float 0x41F0000000000000, float 1.000000e+00
  %59 = fmul float %53, %58
  %60 = tail call float @llvm.sqrt.f32(float %59) #4
  %61 = bitcast float %60 to i32
  %62 = add nsw i32 %61, -1
  %63 = bitcast i32 %62 to float
  %64 = add nsw i32 %61, 1
  %65 = bitcast i32 %64 to float
  %66 = tail call i1 @llvm.amdgcn.class.f32(float %59, i32 608) #4
  %67 = select i1 %57, float 0x3EF0000000000000, float 1.000000e+00
  %68 = fneg float %65
  %69 = tail call float @llvm.fma.f32(float %68, float %60, float %59) #4
  %70 = fcmp ogt float %69, 0.000000e+00
  %71 = fneg float %63
  %72 = tail call float @llvm.fma.f32(float %71, float %60, float %59) #4
  %73 = fcmp ole float %72, 0.000000e+00
  %74 = select i1 %73, float %63, float %60
  %75 = select i1 %70, float %65, float %74
  %76 = fmul float %67, %75
  %77 = select i1 %66, float %59, float %76
  %78 = fmul contract float %77, 0x3FD3333340000000
  %79 = fcmp olt float %54, 0x39F0000000000000
  %80 = select i1 %79, float 0x41F0000000000000, float 1.000000e+00
  %81 = fmul float %54, %80
  %82 = tail call float @llvm.sqrt.f32(float %81) #4
  %83 = bitcast float %82 to i32
  %84 = add nsw i32 %83, -1
  %85 = bitcast i32 %84 to float
  %86 = add nsw i32 %83, 1
  %87 = bitcast i32 %86 to float
  %88 = tail call i1 @llvm.amdgcn.class.f32(float %81, i32 608) #4
  %89 = select i1 %79, float 0x3EF0000000000000, float 1.000000e+00
  %90 = fneg float %87
  %91 = tail call float @llvm.fma.f32(float %90, float %82, float %81) #4
  %92 = fcmp ogt float %91, 0.000000e+00
  %93 = fneg float %85
  %94 = tail call float @llvm.fma.f32(float %93, float %82, float %81) #4
  %95 = fcmp ole float %94, 0.000000e+00
  %96 = select i1 %95, float %85, float %82
  %97 = select i1 %92, float %87, float %96
  %98 = fmul float %89, %97
  %99 = select i1 %88, float %81, float %98
  %100 = fmul contract float %99, 0x3FD3333340000000
  %101 = fcmp olt float %55, 0x39F0000000000000
  %102 = select i1 %101, float 0x41F0000000000000, float 1.000000e+00
  %103 = fmul float %55, %102
  %104 = tail call float @llvm.sqrt.f32(float %103) #4
  %105 = bitcast float %104 to i32
  %106 = add nsw i32 %105, -1
  %107 = bitcast i32 %106 to float
  %108 = add nsw i32 %105, 1
  %109 = bitcast i32 %108 to float
  %110 = tail call i1 @llvm.amdgcn.class.f32(float %103, i32 608) #4
  %111 = select i1 %101, float 0x3EF0000000000000, float 1.000000e+00
  %112 = fneg float %109
  %113 = tail call float @llvm.fma.f32(float %112, float %104, float %103) #4
  %114 = fcmp ogt float %113, 0.000000e+00
  %115 = fneg float %107
  %116 = tail call float @llvm.fma.f32(float %115, float %104, float %103) #4
  %117 = fcmp ole float %116, 0.000000e+00
  %118 = select i1 %117, float %107, float %104
  %119 = select i1 %114, float %109, float %118
  %120 = fmul float %111, %119
  %121 = select i1 %110, float %103, float %120
  %122 = fmul contract float %121, 0x3FD3333340000000
  %123 = fcmp olt float %56, 0x39F0000000000000
  %124 = select i1 %123, float 0x41F0000000000000, float 1.000000e+00
  %125 = fmul float %56, %124
  %126 = tail call float @llvm.sqrt.f32(float %125) #4
  %127 = bitcast float %126 to i32
  %128 = add nsw i32 %127, -1
  %129 = bitcast i32 %128 to float
  %130 = add nsw i32 %127, 1
  %131 = bitcast i32 %130 to float
  %132 = tail call i1 @llvm.amdgcn.class.f32(float %125, i32 608) #4
  %133 = select i1 %123, float 0x3EF0000000000000, float 1.000000e+00
  %134 = fneg float %131
  %135 = tail call float @llvm.fma.f32(float %134, float %126, float %125) #4
  %136 = fcmp ogt float %135, 0.000000e+00
  %137 = fneg float %129
  %138 = tail call float @llvm.fma.f32(float %137, float %126, float %125) #4
  %139 = fcmp ole float %138, 0.000000e+00
  %140 = select i1 %139, float %129, float %126
  %141 = select i1 %136, float %131, float %140
  %142 = fmul float %133, %141
  %143 = select i1 %132, float %125, float %142
  %144 = fmul contract float %143, 0x3FD3333340000000
  %145 = fmul contract float %53, 0x3F947AE140000000
  %146 = fmul contract float %54, 0x3F947AE140000000
  %147 = fmul contract float %55, 0x3F947AE140000000
  %148 = fmul contract float %56, 0x3F947AE140000000
  %149 = fmul float %145, 0x3FF7154760000000
  %150 = tail call float @llvm.rint.f32(float %149) #4
  %151 = fcmp ogt float %145, 0x40562E4300000000
  %152 = fcmp olt float %145, 0xC059D1DA00000000
  %153 = fneg float %149
  %154 = tail call float @llvm.fma.f32(float %145, float 0x3FF7154760000000, float %153) #4
  %155 = tail call float @llvm.fma.f32(float %145, float 0x3E54AE0BE0000000, float %154) #4
  %156 = fsub float %149, %150
  %157 = fadd float %155, %156
  %158 = tail call float @llvm.exp2.f32(float %157) #4
  %159 = fptosi float %150 to i32
  %160 = tail call float @llvm.amdgcn.ldexp.f32(float %158, i32 %159) #4
  %161 = select i1 %152, float 0.000000e+00, float %160
  %162 = select i1 %151, float 0x7FF0000000000000, float %161
  %163 = fmul float %146, 0x3FF7154760000000
  %164 = tail call float @llvm.rint.f32(float %163) #4
  %165 = fcmp ogt float %146, 0x40562E4300000000
  %166 = fcmp olt float %146, 0xC059D1DA00000000
  %167 = fneg float %163
  %168 = tail call float @llvm.fma.f32(float %146, float 0x3FF7154760000000, float %167) #4
  %169 = tail call float @llvm.fma.f32(float %146, float 0x3E54AE0BE0000000, float %168) #4
  %170 = fsub float %163, %164
  %171 = fadd float %169, %170
  %172 = tail call float @llvm.exp2.f32(float %171) #4
  %173 = fptosi float %164 to i32
  %174 = tail call float @llvm.amdgcn.ldexp.f32(float %172, i32 %173) #4
  %175 = select i1 %166, float 0.000000e+00, float %174
  %176 = select i1 %165, float 0x7FF0000000000000, float %175
  %177 = fmul float %147, 0x3FF7154760000000
  %178 = tail call float @llvm.rint.f32(float %177) #4
  %179 = fcmp ogt float %147, 0x40562E4300000000
  %180 = fcmp olt float %147, 0xC059D1DA00000000
  %181 = fneg float %177
  %182 = tail call float @llvm.fma.f32(float %147, float 0x3FF7154760000000, float %181) #4
  %183 = tail call float @llvm.fma.f32(float %147, float 0x3E54AE0BE0000000, float %182) #4
  %184 = fsub float %177, %178
  %185 = fadd float %183, %184
  %186 = tail call float @llvm.exp2.f32(float %185) #4
  %187 = fptosi float %178 to i32
  %188 = tail call float @llvm.amdgcn.ldexp.f32(float %186, i32 %187) #4
  %189 = select i1 %180, float 0.000000e+00, float %188
  %190 = select i1 %179, float 0x7FF0000000000000, float %189
  %191 = fmul float %148, 0x3FF7154760000000
  %192 = tail call float @llvm.rint.f32(float %191) #4
  %193 = fcmp ogt float %148, 0x40562E4300000000
  %194 = fcmp olt float %148, 0xC059D1DA00000000
  %195 = fneg float %191
  %196 = tail call float @llvm.fma.f32(float %148, float 0x3FF7154760000000, float %195) #4
  %197 = tail call float @llvm.fma.f32(float %148, float 0x3E54AE0BE0000000, float %196) #4
  %198 = fsub float %191, %192
  %199 = fadd float %197, %198
  %200 = tail call float @llvm.exp2.f32(float %199) #4
  %201 = fptosi float %192 to i32
  %202 = tail call float @llvm.amdgcn.ldexp.f32(float %200, i32 %201) #4
  %203 = select i1 %194, float 0.000000e+00, float %202
  %204 = select i1 %193, float 0x7FF0000000000000, float %203
  %205 = fdiv contract float 1.000000e+00, %162
  %206 = fdiv contract float 1.000000e+00, %176
  %207 = fdiv contract float 1.000000e+00, %190
  %208 = fdiv contract float 1.000000e+00, %204
  %209 = fmul float %78, 0x3FF7154760000000
  %210 = tail call float @llvm.rint.f32(float %209) #4
  %211 = fcmp ogt float %78, 0x40562E4300000000
  %212 = fcmp olt float %78, 0xC059D1DA00000000
  %213 = fneg float %209
  %214 = tail call float @llvm.fma.f32(float %78, float 0x3FF7154760000000, float %213) #4
  %215 = tail call float @llvm.fma.f32(float %78, float 0x3E54AE0BE0000000, float %214) #4
  %216 = fsub float %209, %210
  %217 = fadd float %215, %216
  %218 = tail call float @llvm.exp2.f32(float %217) #4
  %219 = fptosi float %210 to i32
  %220 = tail call float @llvm.amdgcn.ldexp.f32(float %218, i32 %219) #4
  %221 = select i1 %212, float 0.000000e+00, float %220
  %222 = select i1 %211, float 0x7FF0000000000000, float %221
  %223 = fmul float %100, 0x3FF7154760000000
  %224 = tail call float @llvm.rint.f32(float %223) #4
  %225 = fcmp ogt float %100, 0x40562E4300000000
  %226 = fcmp olt float %100, 0xC059D1DA00000000
  %227 = fneg float %223
  %228 = tail call float @llvm.fma.f32(float %100, float 0x3FF7154760000000, float %227) #4
  %229 = tail call float @llvm.fma.f32(float %100, float 0x3E54AE0BE0000000, float %228) #4
  %230 = fsub float %223, %224
  %231 = fadd float %229, %230
  %232 = tail call float @llvm.exp2.f32(float %231) #4
  %233 = fptosi float %224 to i32
  %234 = tail call float @llvm.amdgcn.ldexp.f32(float %232, i32 %233) #4
  %235 = select i1 %226, float 0.000000e+00, float %234
  %236 = select i1 %225, float 0x7FF0000000000000, float %235
  %237 = fmul float %122, 0x3FF7154760000000
  %238 = tail call float @llvm.rint.f32(float %237) #4
  %239 = fcmp ogt float %122, 0x40562E4300000000
  %240 = fcmp olt float %122, 0xC059D1DA00000000
  %241 = fneg float %237
  %242 = tail call float @llvm.fma.f32(float %122, float 0x3FF7154760000000, float %241) #4
  %243 = tail call float @llvm.fma.f32(float %122, float 0x3E54AE0BE0000000, float %242) #4
  %244 = fsub float %237, %238
  %245 = fadd float %243, %244
  %246 = tail call float @llvm.exp2.f32(float %245) #4
  %247 = fptosi float %238 to i32
  %248 = tail call float @llvm.amdgcn.ldexp.f32(float %246, i32 %247) #4
  %249 = select i1 %240, float 0.000000e+00, float %248
  %250 = select i1 %239, float 0x7FF0000000000000, float %249
  %251 = fmul float %144, 0x3FF7154760000000
  %252 = tail call float @llvm.rint.f32(float %251) #4
  %253 = fcmp ogt float %144, 0x40562E4300000000
  %254 = fcmp olt float %144, 0xC059D1DA00000000
  %255 = fneg float %251
  %256 = tail call float @llvm.fma.f32(float %144, float 0x3FF7154760000000, float %255) #4
  %257 = tail call float @llvm.fma.f32(float %144, float 0x3E54AE0BE0000000, float %256) #4
  %258 = fsub float %251, %252
  %259 = fadd float %257, %258
  %260 = tail call float @llvm.exp2.f32(float %259) #4
  %261 = fptosi float %252 to i32
  %262 = tail call float @llvm.amdgcn.ldexp.f32(float %260, i32 %261) #4
  %263 = select i1 %254, float 0.000000e+00, float %262
  %264 = select i1 %253, float 0x7FF0000000000000, float %263
  %265 = fdiv contract float 1.000000e+00, %222
  %266 = fdiv contract float 1.000000e+00, %236
  %267 = fdiv contract float 1.000000e+00, %250
  %268 = fdiv contract float 1.000000e+00, %264
  %269 = fsub contract float %162, %265
  %270 = fsub contract float %222, %265
  %271 = fdiv contract float %269, %270
  %272 = fsub contract float %176, %266
  %273 = fsub contract float %236, %266
  %274 = fdiv contract float %272, %273
  %275 = fsub contract float %190, %267
  %276 = fsub contract float %250, %267
  %277 = fdiv contract float %275, %276
  %278 = fsub contract float %204, %268
  %279 = fsub contract float %264, %268
  %280 = fdiv contract float %278, %279
  %281 = fsub contract float 1.000000e+00, %271
  %282 = fsub contract float 1.000000e+00, %274
  %283 = fsub contract float 1.000000e+00, %277
  %284 = fsub contract float 1.000000e+00, %280
  %285 = fmul contract float %205, %271
  %286 = fmul contract float %206, %274
  %287 = fmul contract float %207, %277
  %288 = fmul contract float %208, %280
  %289 = fmul contract float %205, %281
  %290 = fmul contract float %206, %282
  %291 = fmul contract float %207, %283
  %292 = fmul contract float %208, %284
  %293 = uitofp i32 %4 to float
  %294 = fmul contract float %293, 2.000000e+00
  %295 = fsub contract float %294, %51
  %296 = fmul contract float %295, %78
  %297 = fmul float %296, 0x3FF7154760000000
  %298 = tail call float @llvm.rint.f32(float %297) #4
  %299 = fcmp ogt float %296, 0x40562E4300000000
  %300 = fcmp olt float %296, 0xC059D1DA00000000
  %301 = fneg float %297
  %302 = tail call float @llvm.fma.f32(float %296, float 0x3FF7154760000000, float %301) #4
  %303 = tail call float @llvm.fma.f32(float %296, float 0x3E54AE0BE0000000, float %302) #4
  %304 = fsub float %297, %298
  %305 = fadd float %303, %304
  %306 = tail call float @llvm.exp2.f32(float %305) #4
  %307 = fptosi float %298 to i32
  %308 = tail call float @llvm.amdgcn.ldexp.f32(float %306, i32 %307) #4
  %309 = select i1 %300, float 0.000000e+00, float %308
  %310 = select i1 %299, float 0x7FF0000000000000, float %309
  %311 = fmul contract float %18, %310
  %312 = fsub contract float %311, %32
  %313 = fmul contract float %295, %100
  %314 = fmul float %313, 0x3FF7154760000000
  %315 = tail call float @llvm.rint.f32(float %314) #4
  %316 = fcmp ogt float %313, 0x40562E4300000000
  %317 = fcmp olt float %313, 0xC059D1DA00000000
  %318 = fneg float %314
  %319 = tail call float @llvm.fma.f32(float %313, float 0x3FF7154760000000, float %318) #4
  %320 = tail call float @llvm.fma.f32(float %313, float 0x3E54AE0BE0000000, float %319) #4
  %321 = fsub float %314, %315
  %322 = fadd float %320, %321
  %323 = tail call float @llvm.exp2.f32(float %322) #4
  %324 = fptosi float %315 to i32
  %325 = tail call float @llvm.amdgcn.ldexp.f32(float %323, i32 %324) #4
  %326 = select i1 %317, float 0.000000e+00, float %325
  %327 = select i1 %316, float 0x7FF0000000000000, float %326
  %328 = fmul contract float %22, %327
  %329 = fsub contract float %328, %34
  %330 = fmul contract float %295, %122
  %331 = fmul float %330, 0x3FF7154760000000
  %332 = tail call float @llvm.rint.f32(float %331) #4
  %333 = fcmp ogt float %330, 0x40562E4300000000
  %334 = fcmp olt float %330, 0xC059D1DA00000000
  %335 = fneg float %331
  %336 = tail call float @llvm.fma.f32(float %330, float 0x3FF7154760000000, float %335) #4
  %337 = tail call float @llvm.fma.f32(float %330, float 0x3E54AE0BE0000000, float %336) #4
  %338 = fsub float %331, %332
  %339 = fadd float %337, %338
  %340 = tail call float @llvm.exp2.f32(float %339) #4
  %341 = fptosi float %332 to i32
  %342 = tail call float @llvm.amdgcn.ldexp.f32(float %340, i32 %341) #4
  %343 = select i1 %334, float 0.000000e+00, float %342
  %344 = select i1 %333, float 0x7FF0000000000000, float %343
  %345 = fmul contract float %26, %344
  %346 = fsub contract float %345, %36
  %347 = fmul contract float %295, %144
  %348 = fmul float %347, 0x3FF7154760000000
  %349 = tail call float @llvm.rint.f32(float %348) #4
  %350 = fcmp ogt float %347, 0x40562E4300000000
  %351 = fcmp olt float %347, 0xC059D1DA00000000
  %352 = fneg float %348
  %353 = tail call float @llvm.fma.f32(float %347, float 0x3FF7154760000000, float %352) #4
  %354 = tail call float @llvm.fma.f32(float %347, float 0x3E54AE0BE0000000, float %353) #4
  %355 = fsub float %348, %349
  %356 = fadd float %354, %355
  %357 = tail call float @llvm.exp2.f32(float %356) #4
  %358 = fptosi float %349 to i32
  %359 = tail call float @llvm.amdgcn.ldexp.f32(float %357, i32 %358) #4
  %360 = select i1 %351, float 0.000000e+00, float %359
  %361 = select i1 %350, float 0x7FF0000000000000, float %360
  %362 = fmul contract float %30, %361
  %363 = fsub contract float %362, %38
  %364 = tail call contract float @llvm.maxnum.f32(float %312, float 0.000000e+00)
  %365 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 0
  store float %364, float addrspace(3)* %365, align 16, !tbaa !5
  %366 = tail call contract float @llvm.maxnum.f32(float %329, float 0.000000e+00)
  %367 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 1
  store float %366, float addrspace(3)* %367, align 4, !tbaa !5
  %368 = tail call contract float @llvm.maxnum.f32(float %346, float 0.000000e+00)
  %369 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 2
  store float %368, float addrspace(3)* %369, align 8, !tbaa !5
  %370 = tail call contract float @llvm.maxnum.f32(float %363, float 0.000000e+00)
  %371 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 3
  store float %370, float addrspace(3)* %371, align 4, !tbaa !5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %372 = add nuw nsw i32 %4, 1
  %373 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 0
  %374 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 0
  %375 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 1
  %376 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 1
  %377 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 2
  %378 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 2
  %379 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 3
  %380 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %4, i32 0, i32 0, i32 0, i32 3
  %381 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 0
  %382 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 1
  %383 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 2
  %384 = getelementptr inbounds [255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callB, i32 0, i32 %372, i32 0, i32 0, i32 0, i32 3
  %385 = icmp sgt i32 %0, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %436, %3
  %387 = icmp eq i32 %4, 0
  br i1 %387, label %439, label %442

388:                                              ; preds = %3, %436
  %389 = phi i32 [ %437, %436 ], [ %0, %3 ]
  %390 = icmp ugt i32 %389, %4
  br i1 %390, label %391, label %412

391:                                              ; preds = %388
  %392 = load float, float addrspace(3)* %365, align 16, !tbaa !5
  %393 = fmul contract float %285, %392
  %394 = load float, float addrspace(3)* %373, align 16, !tbaa !5
  %395 = fmul contract float %289, %394
  %396 = fadd contract float %393, %395
  store float %396, float addrspace(3)* %374, align 16, !tbaa !5
  %397 = load float, float addrspace(3)* %367, align 4, !tbaa !5
  %398 = fmul contract float %286, %397
  %399 = load float, float addrspace(3)* %375, align 4, !tbaa !5
  %400 = fmul contract float %290, %399
  %401 = fadd contract float %398, %400
  store float %401, float addrspace(3)* %376, align 4, !tbaa !5
  %402 = load float, float addrspace(3)* %369, align 8, !tbaa !5
  %403 = fmul contract float %287, %402
  %404 = load float, float addrspace(3)* %377, align 8, !tbaa !5
  %405 = fmul contract float %291, %404
  %406 = fadd contract float %403, %405
  store float %406, float addrspace(3)* %378, align 8, !tbaa !5
  %407 = load float, float addrspace(3)* %371, align 4, !tbaa !5
  %408 = fmul contract float %288, %407
  %409 = load float, float addrspace(3)* %379, align 4, !tbaa !5
  %410 = fmul contract float %292, %409
  %411 = fadd contract float %408, %410
  store float %411, float addrspace(3)* %380, align 4, !tbaa !5
  br label %412

412:                                              ; preds = %391, %388
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %413 = add nsw i32 %389, -1
  %414 = icmp ugt i32 %413, %4
  br i1 %414, label %415, label %436

415:                                              ; preds = %412
  %416 = load float, float addrspace(3)* %374, align 16, !tbaa !5
  %417 = fmul contract float %285, %416
  %418 = load float, float addrspace(3)* %381, align 16, !tbaa !5
  %419 = fmul contract float %289, %418
  %420 = fadd contract float %417, %419
  store float %420, float addrspace(3)* %365, align 16, !tbaa !5
  %421 = load float, float addrspace(3)* %376, align 4, !tbaa !5
  %422 = fmul contract float %286, %421
  %423 = load float, float addrspace(3)* %382, align 4, !tbaa !5
  %424 = fmul contract float %290, %423
  %425 = fadd contract float %422, %424
  store float %425, float addrspace(3)* %367, align 4, !tbaa !5
  %426 = load float, float addrspace(3)* %378, align 8, !tbaa !5
  %427 = fmul contract float %287, %426
  %428 = load float, float addrspace(3)* %383, align 8, !tbaa !5
  %429 = fmul contract float %291, %428
  %430 = fadd contract float %427, %429
  store float %430, float addrspace(3)* %369, align 8, !tbaa !5
  %431 = load float, float addrspace(3)* %380, align 4, !tbaa !5
  %432 = fmul contract float %288, %431
  %433 = load float, float addrspace(3)* %384, align 4, !tbaa !5
  %434 = fmul contract float %292, %433
  %435 = fadd contract float %432, %434
  store float %435, float addrspace(3)* %371, align 4, !tbaa !5
  br label %436

436:                                              ; preds = %415, %412
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %437 = add nsw i32 %389, -2
  %438 = icmp ugt i32 %389, 2
  br i1 %438, label %388, label %386, !llvm.loop !8

439:                                              ; preds = %386
  %440 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %2, i64 %6, i32 0, i32 0, i32 0
  %441 = load <4 x float>, <4 x float> addrspace(3)* getelementptr inbounds ([255 x %struct.HIP_vector_type], [255 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16binomial_optionsiPK15HIP_vector_typeIfLj4EEPS0_E5callA, i32 0, i32 0, i32 0, i32 0, i32 0), align 16, !tbaa !5
  store <4 x float> %441, <4 x float> addrspace(1)* %440, align 16, !tbaa !5
  br label %442

442:                                              ; preds = %439, %386
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.exp2.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.rint.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.amdgcn.ldexp.f32(float, i32) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
