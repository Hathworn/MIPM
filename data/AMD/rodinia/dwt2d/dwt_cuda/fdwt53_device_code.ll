; ModuleID = 'hip/dwt2d/dwt_cuda/fdwt53.cu'
source_filename = "hip/dwt2d/dwt_cuda/fdwt53.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"class.dwt_cuda::FDWT53" = type { %"class.dwt_cuda::TransformBuffer" }
%"class.dwt_cuda::TransformBuffer" = type { [2158 x i32] }
%"class.dwt_cuda::FDWT53.5" = type { %"class.dwt_cuda::TransformBuffer.6" }
%"class.dwt_cuda::TransformBuffer.6" = type { [1454 x i32] }
%"class.dwt_cuda::FDWT53.8" = type { %"class.dwt_cuda::TransformBuffer.9" }
%"class.dwt_cuda::TransformBuffer.9" = type { [750 x i32] }

$_ZN8dwt_cuda12fdwt53KernelILi192ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda12fdwt53KernelILi128ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii = comdat any

$_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53 = comdat any

$_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53 = comdat any

$_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53 = comdat any

@_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::FDWT53" undef, comdat, align 4
@_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::FDWT53.5" undef, comdat, align 4
@_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::FDWT53.8" undef, comdat, align 4

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12fdwt53KernelILi192ELi8EEEvPKiPiiii(i32 addrspace(1)* readonly %0, i32 addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = shl i32 %7, 3
  %9 = add i32 %8, 8
  %10 = mul i32 %9, %4
  %11 = or i32 %10, 1
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %789, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = add nuw nsw i32 %15, 2
  %17 = lshr i32 %16, 1
  %18 = and i32 %15, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 1080
  %21 = add nuw nsw i32 %20, %17
  %22 = mul i32 %6, 192
  %23 = add i32 %22, %15
  %24 = sub i32 0, %23
  %25 = icmp eq i32 %7, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %13
  %27 = icmp slt i32 %23, %2
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = shl nsw i32 %2, 1
  %30 = sub i32 -2, %23
  %31 = add i32 %30, %29
  br label %34

32:                                               ; preds = %26
  %33 = icmp slt i32 %23, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %24, %32 ]
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %35, %34 ], [ %23, %32 ]
  %38 = mul nsw i32 %3, %2
  %39 = add nsw i32 %37, %38
  %40 = mul i32 %14, %2
  %41 = icmp eq i32 %40, %38
  %42 = mul i32 %2, -2
  %43 = sub nsw i32 0, %2
  %44 = shl i32 %2, 1
  %45 = select i1 %41, i32 %44, i32 %42
  %46 = select i1 %41, i32 %43, i32 %2
  %47 = select i1 %41, i32 %42, i32 0
  %48 = add i32 %47, %40
  %49 = add i32 %48, %37
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %50
  %52 = load i32, i32 addrspace(1)* %51, align 4, !tbaa !6, !amdgpu.noclobber !10
  %53 = add nsw i32 %49, %46
  %54 = icmp eq i32 %53, %39
  %55 = sub nsw i32 0, %46
  %56 = shl i32 %46, 1
  %57 = select i1 %54, i32 %56, i32 %45
  %58 = select i1 %54, i32 %55, i32 %46
  %59 = select i1 %54, i32 %45, i32 0
  %60 = add i32 %59, %53
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %61
  %63 = load i32, i32 addrspace(1)* %62, align 4, !tbaa !6, !amdgpu.noclobber !10
  %64 = add nsw i32 %60, %58
  %65 = icmp eq i32 %64, %39
  %66 = select i1 %65, i32 %57, i32 0
  %67 = add i32 %66, %64
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %68
  %70 = load i32, i32 addrspace(1)* %69, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %27, label %74, label %71

71:                                               ; preds = %36
  %72 = sub i32 -2, %23
  %73 = add i32 %72, %44
  br label %76

74:                                               ; preds = %36
  %75 = icmp slt i32 %23, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %24, %74 ]
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %77, %76 ], [ %23, %74 ]
  %80 = add nsw i32 %79, %38
  %81 = add i32 %79, %40
  br label %130

82:                                               ; preds = %13
  %83 = add nsw i32 %14, -2
  %84 = icmp slt i32 %23, %2
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = shl nsw i32 %2, 1
  %87 = sub i32 -2, %23
  %88 = add i32 %87, %86
  br label %91

89:                                               ; preds = %82
  %90 = icmp slt i32 %23, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %88, %85 ], [ %24, %89 ]
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %92, %91 ], [ %23, %89 ]
  %95 = mul nsw i32 %3, %2
  %96 = add nsw i32 %94, %95
  %97 = mul nsw i32 %83, %2
  %98 = icmp eq i32 %97, %95
  %99 = mul i32 %2, -2
  %100 = sub nsw i32 0, %2
  %101 = shl i32 %2, 1
  %102 = select i1 %98, i32 %100, i32 %2
  %103 = select i1 %98, i32 %101, i32 %99
  %104 = select i1 %98, i32 %99, i32 0
  %105 = add i32 %104, %97
  %106 = add i32 %105, %94
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %107
  %109 = load i32, i32 addrspace(1)* %108, align 4, !tbaa !6, !amdgpu.noclobber !10
  %110 = add nsw i32 %106, %102
  %111 = icmp eq i32 %110, %96
  %112 = sub nsw i32 0, %102
  %113 = shl i32 %102, 1
  %114 = select i1 %111, i32 %112, i32 %102
  %115 = select i1 %111, i32 %113, i32 %103
  %116 = select i1 %111, i32 %103, i32 0
  %117 = add i32 %116, %110
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %118
  %120 = load i32, i32 addrspace(1)* %119, align 4, !tbaa !6, !amdgpu.noclobber !10
  %121 = add nsw i32 %117, %114
  %122 = icmp eq i32 %121, %96
  %123 = sub nsw i32 0, %114
  %124 = select i1 %122, i32 %115, i32 0
  %125 = add i32 %124, %121
  %126 = select i1 %122, i32 %123, i32 %114
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %127
  %129 = load i32, i32 addrspace(1)* %128, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %130

130:                                              ; preds = %93, %78
  %131 = phi i32 [ %63, %78 ], [ %120, %93 ]
  %132 = phi i32 [ %70, %78 ], [ %109, %93 ]
  %133 = phi i32 [ %52, %78 ], [ %129, %93 ]
  %134 = phi i32 [ %81, %78 ], [ %125, %93 ]
  %135 = phi i32 [ %2, %78 ], [ %126, %93 ]
  %136 = phi i32 [ %80, %78 ], [ %96, %93 ]
  %137 = icmp ult i32 %15, 3
  br i1 %137, label %138, label %256

138:                                              ; preds = %130
  %139 = icmp eq i32 %15, 0
  %140 = select i1 %139, i32 192, i32 -3
  %141 = add nsw i32 %140, %15
  %142 = trunc i32 %141 to i16
  %143 = add nsw i16 %142, 2
  %144 = sdiv i16 %143, 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %141, 1
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 0, i32 1080
  %149 = add nuw nsw i32 %148, %145
  %150 = add i32 %141, %22
  %151 = sub i32 0, %150
  br i1 %25, label %152, label %208

152:                                              ; preds = %138
  %153 = icmp slt i32 %150, %2
  br i1 %153, label %158, label %154

154:                                              ; preds = %152
  %155 = shl nsw i32 %2, 1
  %156 = sub i32 -2, %150
  %157 = add i32 %156, %155
  br label %160

158:                                              ; preds = %152
  %159 = icmp slt i32 %150, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %158, %154
  %161 = phi i32 [ %157, %154 ], [ %151, %158 ]
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %161, %160 ], [ %150, %158 ]
  %164 = mul nsw i32 %3, %2
  %165 = add nsw i32 %163, %164
  %166 = mul i32 %14, %2
  %167 = icmp eq i32 %166, %164
  %168 = mul i32 %2, -2
  %169 = sub nsw i32 0, %2
  %170 = shl i32 %2, 1
  %171 = select i1 %167, i32 %170, i32 %168
  %172 = select i1 %167, i32 %169, i32 %2
  %173 = select i1 %167, i32 %168, i32 0
  %174 = add i32 %173, %166
  %175 = add i32 %174, %163
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %176
  %178 = load i32, i32 addrspace(1)* %177, align 4, !tbaa !6, !amdgpu.noclobber !10
  %179 = add nsw i32 %175, %172
  %180 = icmp eq i32 %179, %165
  %181 = sub nsw i32 0, %172
  %182 = shl i32 %172, 1
  %183 = select i1 %180, i32 %182, i32 %171
  %184 = select i1 %180, i32 %181, i32 %172
  %185 = select i1 %180, i32 %171, i32 0
  %186 = add i32 %185, %179
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %187
  %189 = load i32, i32 addrspace(1)* %188, align 4, !tbaa !6, !amdgpu.noclobber !10
  %190 = add nsw i32 %186, %184
  %191 = icmp eq i32 %190, %165
  %192 = select i1 %191, i32 %183, i32 0
  %193 = add i32 %192, %190
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %194
  %196 = load i32, i32 addrspace(1)* %195, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %153, label %200, label %197

197:                                              ; preds = %162
  %198 = sub i32 -2, %150
  %199 = add i32 %198, %170
  br label %202

200:                                              ; preds = %162
  %201 = icmp slt i32 %150, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %199, %197 ], [ %151, %200 ]
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %203, %202 ], [ %150, %200 ]
  %206 = add nsw i32 %205, %164
  %207 = add i32 %205, %166
  br label %256

208:                                              ; preds = %138
  %209 = add nsw i32 %14, -2
  %210 = icmp slt i32 %150, %2
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = shl nsw i32 %2, 1
  %213 = sub i32 -2, %150
  %214 = add i32 %213, %212
  br label %217

215:                                              ; preds = %208
  %216 = icmp slt i32 %150, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %215, %211
  %218 = phi i32 [ %214, %211 ], [ %151, %215 ]
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %218, %217 ], [ %150, %215 ]
  %221 = mul nsw i32 %3, %2
  %222 = add nsw i32 %220, %221
  %223 = mul nsw i32 %209, %2
  %224 = icmp eq i32 %223, %221
  %225 = mul i32 %2, -2
  %226 = sub nsw i32 0, %2
  %227 = shl i32 %2, 1
  %228 = select i1 %224, i32 %226, i32 %2
  %229 = select i1 %224, i32 %227, i32 %225
  %230 = select i1 %224, i32 %225, i32 0
  %231 = add i32 %230, %223
  %232 = add i32 %231, %220
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %233
  %235 = load i32, i32 addrspace(1)* %234, align 4, !tbaa !6, !amdgpu.noclobber !10
  %236 = add nsw i32 %232, %228
  %237 = icmp eq i32 %236, %222
  %238 = sub nsw i32 0, %228
  %239 = shl i32 %228, 1
  %240 = select i1 %237, i32 %238, i32 %228
  %241 = select i1 %237, i32 %239, i32 %229
  %242 = select i1 %237, i32 %229, i32 0
  %243 = add i32 %242, %236
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %244
  %246 = load i32, i32 addrspace(1)* %245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %247 = add nsw i32 %243, %240
  %248 = icmp eq i32 %247, %222
  %249 = sub nsw i32 0, %240
  %250 = select i1 %248, i32 %241, i32 0
  %251 = add i32 %250, %247
  %252 = select i1 %248, i32 %249, i32 %240
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %253
  %255 = load i32, i32 addrspace(1)* %254, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %256

256:                                              ; preds = %219, %204, %130
  %257 = phi i32 [ 0, %130 ], [ %178, %204 ], [ %255, %219 ]
  %258 = phi i32 [ 0, %130 ], [ %189, %204 ], [ %246, %219 ]
  %259 = phi i32 [ 0, %130 ], [ %196, %204 ], [ %235, %219 ]
  %260 = phi i32 [ 0, %130 ], [ %149, %204 ], [ %149, %219 ]
  %261 = phi i32 [ 0, %130 ], [ %207, %204 ], [ %251, %219 ]
  %262 = phi i32 [ 0, %130 ], [ %2, %204 ], [ %252, %219 ]
  %263 = phi i32 [ 0, %130 ], [ %206, %204 ], [ %222, %219 ]
  %264 = shl nuw nsw i32 %15, 1
  %265 = trunc i32 %15 to i16
  %266 = udiv i16 %265, 96
  %267 = zext i16 %266 to i32
  %268 = mul nsw i32 %267, -191
  %269 = add nsw i32 %268, %264
  %270 = trunc i32 %269 to i16
  %271 = add nsw i16 %270, 2
  %272 = sdiv i16 %271, 2
  %273 = sext i16 %272 to i32
  %274 = and i32 %269, 1
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i32 0, i32 1080
  %277 = add nsw i32 %276, %273
  %278 = add i32 %269, %22
  %279 = icmp slt i32 %278, %2
  br i1 %279, label %280, label %310

280:                                              ; preds = %256
  %281 = sdiv i32 %278, 2
  %282 = and i32 %278, 1
  %283 = icmp eq i32 %282, 0
  %284 = sdiv i32 %2, 2
  %285 = and i32 %2, 1
  %286 = add nsw i32 %284, %285
  %287 = sdiv i32 %3, 2
  %288 = and i32 %3, 1
  %289 = add nsw i32 %287, %288
  br i1 %283, label %295, label %290

290:                                              ; preds = %280
  %291 = mul nsw i32 %289, %286
  %292 = add nsw i32 %291, %281
  %293 = mul nsw i32 %3, %2
  %294 = sdiv i32 %293, 2
  br label %297

295:                                              ; preds = %280
  %296 = mul nsw i32 %289, %2
  br label %297

297:                                              ; preds = %295, %290
  %298 = phi i32 [ %296, %295 ], [ %294, %290 ]
  %299 = phi i32 [ %281, %295 ], [ %292, %290 ]
  %300 = phi i32 [ %286, %295 ], [ %284, %290 ]
  %301 = sub nsw i32 %300, %298
  %302 = mul nsw i32 %300, %287
  %303 = icmp eq i32 %288, 0
  %304 = select i1 %303, i32 0, i32 %298
  %305 = add i32 %304, %299
  %306 = add i32 %305, %302
  %307 = sdiv i32 %14, 2
  %308 = mul nsw i32 %300, %307
  %309 = add i32 %308, %299
  br label %310

310:                                              ; preds = %297, %256
  %311 = phi i32 [ %298, %297 ], [ 0, %256 ]
  %312 = phi i32 [ %301, %297 ], [ 0, %256 ]
  %313 = phi i32 [ %306, %297 ], [ 0, %256 ]
  %314 = phi i32 [ %309, %297 ], [ 0, %256 ]
  %315 = icmp sgt i32 %4, 0
  br i1 %315, label %316, label %1922

316:                                              ; preds = %310
  %317 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %21
  %318 = add nuw nsw i32 %21, 98
  %319 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %318
  %320 = add nuw nsw i32 %21, 196
  %321 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %320
  %322 = add nuw nsw i32 %21, 294
  %323 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %322
  %324 = add nuw nsw i32 %21, 392
  %325 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %324
  %326 = add nuw nsw i32 %21, 490
  %327 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %326
  %328 = add nuw nsw i32 %21, 588
  %329 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %328
  %330 = add nuw nsw i32 %21, 686
  %331 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %330
  %332 = add nuw nsw i32 %21, 784
  %333 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %332
  %334 = add nuw nsw i32 %21, 882
  %335 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %334
  %336 = add nuw nsw i32 %21, 980
  %337 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %336
  %338 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %260
  %339 = add nuw nsw i32 %260, 98
  %340 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %339
  %341 = add nuw nsw i32 %260, 196
  %342 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %341
  %343 = add nuw nsw i32 %260, 294
  %344 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %343
  %345 = add nuw nsw i32 %260, 392
  %346 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %345
  %347 = add nuw nsw i32 %260, 490
  %348 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %347
  %349 = add nuw nsw i32 %260, 588
  %350 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %349
  %351 = add nuw nsw i32 %260, 686
  %352 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %351
  %353 = add nuw nsw i32 %260, 784
  %354 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %353
  %355 = add nuw nsw i32 %260, 882
  %356 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %355
  %357 = add nuw nsw i32 %260, 980
  %358 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %357
  %359 = add nuw nsw i32 %15, 196
  %360 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %359
  %361 = add nuw nsw i32 %15, 197
  %362 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %361
  %363 = add nuw nsw i32 %15, 1276
  %364 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %363
  %365 = add nuw nsw i32 %15, 388
  %366 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %365
  %367 = add nuw nsw i32 %15, 389
  %368 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %367
  %369 = add nuw nsw i32 %15, 1468
  %370 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %369
  %371 = add nuw nsw i32 %15, 580
  %372 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %371
  %373 = add nuw nsw i32 %15, 581
  %374 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %373
  %375 = add nuw nsw i32 %15, 1660
  %376 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %375
  %377 = add nuw nsw i32 %15, 772
  %378 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %377
  %379 = add nuw nsw i32 %15, 773
  %380 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %379
  %381 = add nuw nsw i32 %15, 1852
  %382 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %381
  %383 = icmp ult i32 %15, 15
  %384 = add nuw nsw i32 %15, 964
  %385 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %384
  %386 = add nuw nsw i32 %15, 965
  %387 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %386
  %388 = add nuw nsw i32 %15, 2044
  %389 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %388
  %390 = add nuw nsw i32 %15, 1277
  %391 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %390
  %392 = add nuw nsw i32 %15, 1469
  %393 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %392
  %394 = add nuw nsw i32 %15, 1661
  %395 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %394
  %396 = add nuw nsw i32 %15, 1853
  %397 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %396
  %398 = add nuw nsw i32 %15, 2045
  %399 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %398
  %400 = add nsw i32 %277, 196
  %401 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %400
  %402 = add nsw i32 %277, 294
  %403 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %402
  %404 = add nsw i32 %277, 392
  %405 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %404
  %406 = add nsw i32 %277, 490
  %407 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %406
  %408 = add nsw i32 %277, 588
  %409 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %408
  %410 = add nsw i32 %277, 686
  %411 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %410
  %412 = add nsw i32 %277, 784
  %413 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %412
  %414 = add nsw i32 %277, 882
  %415 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %414
  br label %416

416:                                              ; preds = %785, %316
  %417 = phi i32 [ 0, %316 ], [ %787, %785 ]
  %418 = phi i32 [ %314, %316 ], [ %786, %785 ]
  %419 = phi i32 [ %262, %316 ], [ %653, %785 ]
  %420 = phi i32 [ %261, %316 ], [ %652, %785 ]
  %421 = phi i32 [ %259, %316 ], [ %651, %785 ]
  %422 = phi i32 [ %258, %316 ], [ %650, %785 ]
  %423 = phi i32 [ %257, %316 ], [ %649, %785 ]
  %424 = phi i32 [ %135, %316 ], [ %505, %785 ]
  %425 = phi i32 [ %134, %316 ], [ %504, %785 ]
  %426 = phi i32 [ %133, %316 ], [ %508, %785 ]
  %427 = phi i32 [ %132, %316 ], [ %488, %785 ]
  %428 = phi i32 [ %131, %316 ], [ %498, %785 ]
  store i32 %427, i32 addrspace(3)* %317, align 4, !tbaa !6
  %429 = add nsw i32 %425, %424
  %430 = icmp eq i32 %429, %136
  %431 = mul i32 %424, -2
  %432 = sub nsw i32 0, %424
  %433 = select i1 %430, i32 %431, i32 0
  %434 = add i32 %433, %429
  %435 = select i1 %430, i32 %432, i32 %424
  %436 = sext i32 %434 to i64
  %437 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %436
  %438 = load i32, i32 addrspace(1)* %437, align 4, !tbaa !6
  %439 = add nsw i32 %434, %435
  %440 = icmp eq i32 %439, %136
  %441 = mul i32 %435, -2
  %442 = sub nsw i32 0, %435
  %443 = select i1 %440, i32 %441, i32 0
  %444 = add i32 %443, %439
  %445 = select i1 %440, i32 %442, i32 %435
  %446 = sext i32 %444 to i64
  %447 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %446
  %448 = load i32, i32 addrspace(1)* %447, align 4, !tbaa !6
  %449 = add nsw i32 %444, %445
  %450 = icmp eq i32 %449, %136
  %451 = mul i32 %445, -2
  %452 = sub nsw i32 0, %445
  %453 = select i1 %450, i32 %451, i32 0
  %454 = add i32 %453, %449
  %455 = select i1 %450, i32 %452, i32 %445
  %456 = sext i32 %454 to i64
  %457 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %456
  %458 = load i32, i32 addrspace(1)* %457, align 4, !tbaa !6
  %459 = add nsw i32 %454, %455
  %460 = icmp eq i32 %459, %136
  %461 = mul i32 %455, -2
  %462 = sub nsw i32 0, %455
  %463 = select i1 %460, i32 %461, i32 0
  %464 = add i32 %463, %459
  %465 = select i1 %460, i32 %462, i32 %455
  %466 = sext i32 %464 to i64
  %467 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %466
  %468 = load i32, i32 addrspace(1)* %467, align 4, !tbaa !6
  %469 = add nsw i32 %464, %465
  %470 = icmp eq i32 %469, %136
  %471 = mul i32 %465, -2
  %472 = sub nsw i32 0, %465
  %473 = select i1 %470, i32 %471, i32 0
  %474 = add i32 %473, %469
  %475 = select i1 %470, i32 %472, i32 %465
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %476
  %478 = load i32, i32 addrspace(1)* %477, align 4, !tbaa !6
  %479 = add nsw i32 %474, %475
  %480 = icmp eq i32 %479, %136
  %481 = mul i32 %475, -2
  %482 = sub nsw i32 0, %475
  %483 = select i1 %480, i32 %481, i32 0
  %484 = add i32 %483, %479
  %485 = select i1 %480, i32 %482, i32 %475
  %486 = sext i32 %484 to i64
  %487 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %486
  %488 = load i32, i32 addrspace(1)* %487, align 4, !tbaa !6
  %489 = add nsw i32 %484, %485
  %490 = icmp eq i32 %489, %136
  %491 = mul i32 %485, -2
  %492 = sub nsw i32 0, %485
  %493 = select i1 %490, i32 %491, i32 0
  %494 = add i32 %493, %489
  %495 = select i1 %490, i32 %492, i32 %485
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %496
  %498 = load i32, i32 addrspace(1)* %497, align 4, !tbaa !6
  %499 = add nsw i32 %494, %495
  %500 = icmp eq i32 %499, %136
  %501 = mul i32 %495, -2
  %502 = sub nsw i32 0, %495
  %503 = select i1 %500, i32 %501, i32 0
  %504 = add i32 %503, %499
  %505 = select i1 %500, i32 %502, i32 %495
  %506 = sext i32 %504 to i64
  %507 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %506
  %508 = load i32, i32 addrspace(1)* %507, align 4, !tbaa !6
  store i32 %508, i32 addrspace(3)* %337, align 4, !tbaa !6
  %509 = add nsw i32 %427, %426
  %510 = sdiv i32 %509, -2
  %511 = add i32 %510, %428
  store i32 %511, i32 addrspace(3)* %319, align 4, !tbaa !6
  %512 = add nsw i32 %448, %426
  %513 = sdiv i32 %512, -2
  %514 = add i32 %513, %438
  store i32 %514, i32 addrspace(3)* %323, align 4, !tbaa !6
  %515 = add nsw i32 %468, %448
  %516 = sdiv i32 %515, -2
  %517 = add i32 %516, %458
  store i32 %517, i32 addrspace(3)* %327, align 4, !tbaa !6
  %518 = add nsw i32 %488, %468
  %519 = sdiv i32 %518, -2
  %520 = add i32 %519, %478
  store i32 %520, i32 addrspace(3)* %331, align 4, !tbaa !6
  %521 = add nsw i32 %508, %488
  %522 = sdiv i32 %521, -2
  %523 = add i32 %522, %498
  store i32 %523, i32 addrspace(3)* %335, align 4, !tbaa !6
  %524 = add i32 %514, 2
  %525 = add i32 %524, %511
  %526 = sdiv i32 %525, 4
  %527 = add nsw i32 %526, %426
  store i32 %527, i32 addrspace(3)* %321, align 4, !tbaa !6
  %528 = add i32 %517, %524
  %529 = sdiv i32 %528, 4
  %530 = add nsw i32 %529, %448
  store i32 %530, i32 addrspace(3)* %325, align 4, !tbaa !6
  %531 = add i32 %520, 2
  %532 = add i32 %531, %517
  %533 = sdiv i32 %532, 4
  %534 = add nsw i32 %533, %468
  store i32 %534, i32 addrspace(3)* %329, align 4, !tbaa !6
  %535 = add i32 %523, %531
  %536 = sdiv i32 %535, 4
  %537 = add nsw i32 %536, %488
  store i32 %537, i32 addrspace(3)* %333, align 4, !tbaa !6
  br i1 %137, label %538, label %648

538:                                              ; preds = %416
  store i32 %421, i32 addrspace(3)* %338, align 4, !tbaa !6
  %539 = add nsw i32 %420, %419
  %540 = icmp eq i32 %539, %263
  %541 = mul i32 %419, -2
  %542 = sub nsw i32 0, %419
  %543 = select i1 %540, i32 %541, i32 0
  %544 = add i32 %543, %539
  %545 = select i1 %540, i32 %542, i32 %419
  %546 = sext i32 %544 to i64
  %547 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %546
  %548 = load i32, i32 addrspace(1)* %547, align 4, !tbaa !6
  %549 = add nsw i32 %544, %545
  %550 = icmp eq i32 %549, %263
  %551 = mul i32 %545, -2
  %552 = sub nsw i32 0, %545
  %553 = select i1 %550, i32 %551, i32 0
  %554 = add i32 %553, %549
  %555 = select i1 %550, i32 %552, i32 %545
  %556 = sext i32 %554 to i64
  %557 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %556
  %558 = load i32, i32 addrspace(1)* %557, align 4, !tbaa !6
  %559 = add nsw i32 %554, %555
  %560 = icmp eq i32 %559, %263
  %561 = mul i32 %555, -2
  %562 = sub nsw i32 0, %555
  %563 = select i1 %560, i32 %561, i32 0
  %564 = add i32 %563, %559
  %565 = select i1 %560, i32 %562, i32 %555
  %566 = sext i32 %564 to i64
  %567 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %566
  %568 = load i32, i32 addrspace(1)* %567, align 4, !tbaa !6
  %569 = add nsw i32 %564, %565
  %570 = icmp eq i32 %569, %263
  %571 = mul i32 %565, -2
  %572 = sub nsw i32 0, %565
  %573 = select i1 %570, i32 %571, i32 0
  %574 = add i32 %573, %569
  %575 = select i1 %570, i32 %572, i32 %565
  %576 = sext i32 %574 to i64
  %577 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %576
  %578 = load i32, i32 addrspace(1)* %577, align 4, !tbaa !6
  %579 = add nsw i32 %574, %575
  %580 = icmp eq i32 %579, %263
  %581 = mul i32 %575, -2
  %582 = sub nsw i32 0, %575
  %583 = select i1 %580, i32 %581, i32 0
  %584 = add i32 %583, %579
  %585 = select i1 %580, i32 %582, i32 %575
  %586 = sext i32 %584 to i64
  %587 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %586
  %588 = load i32, i32 addrspace(1)* %587, align 4, !tbaa !6
  %589 = add nsw i32 %584, %585
  %590 = icmp eq i32 %589, %263
  %591 = mul i32 %585, -2
  %592 = sub nsw i32 0, %585
  %593 = select i1 %590, i32 %591, i32 0
  %594 = add i32 %593, %589
  %595 = select i1 %590, i32 %592, i32 %585
  %596 = sext i32 %594 to i64
  %597 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %596
  %598 = load i32, i32 addrspace(1)* %597, align 4, !tbaa !6
  %599 = add nsw i32 %594, %595
  %600 = icmp eq i32 %599, %263
  %601 = mul i32 %595, -2
  %602 = sub nsw i32 0, %595
  %603 = select i1 %600, i32 %601, i32 0
  %604 = add i32 %603, %599
  %605 = select i1 %600, i32 %602, i32 %595
  %606 = sext i32 %604 to i64
  %607 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %606
  %608 = load i32, i32 addrspace(1)* %607, align 4, !tbaa !6
  %609 = add nsw i32 %604, %605
  %610 = icmp eq i32 %609, %263
  %611 = mul i32 %605, -2
  %612 = sub nsw i32 0, %605
  %613 = select i1 %610, i32 %611, i32 0
  %614 = add i32 %613, %609
  %615 = select i1 %610, i32 %612, i32 %605
  %616 = sext i32 %614 to i64
  %617 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %616
  %618 = load i32, i32 addrspace(1)* %617, align 4, !tbaa !6
  store i32 %618, i32 addrspace(3)* %358, align 4, !tbaa !6
  %619 = add nsw i32 %423, %421
  %620 = sdiv i32 %619, -2
  %621 = add i32 %620, %422
  store i32 %621, i32 addrspace(3)* %340, align 4, !tbaa !6
  %622 = add nsw i32 %558, %423
  %623 = sdiv i32 %622, -2
  %624 = add i32 %623, %548
  store i32 %624, i32 addrspace(3)* %344, align 4, !tbaa !6
  %625 = add nsw i32 %578, %558
  %626 = sdiv i32 %625, -2
  %627 = add i32 %626, %568
  store i32 %627, i32 addrspace(3)* %348, align 4, !tbaa !6
  %628 = add nsw i32 %598, %578
  %629 = sdiv i32 %628, -2
  %630 = add i32 %629, %588
  store i32 %630, i32 addrspace(3)* %352, align 4, !tbaa !6
  %631 = add nsw i32 %618, %598
  %632 = sdiv i32 %631, -2
  %633 = add i32 %632, %608
  store i32 %633, i32 addrspace(3)* %356, align 4, !tbaa !6
  %634 = add i32 %624, 2
  %635 = add i32 %634, %621
  %636 = sdiv i32 %635, 4
  %637 = add nsw i32 %636, %423
  store i32 %637, i32 addrspace(3)* %342, align 4, !tbaa !6
  %638 = add i32 %627, %634
  %639 = sdiv i32 %638, 4
  %640 = add nsw i32 %639, %558
  store i32 %640, i32 addrspace(3)* %346, align 4, !tbaa !6
  %641 = add i32 %630, 2
  %642 = add i32 %641, %627
  %643 = sdiv i32 %642, 4
  %644 = add nsw i32 %643, %578
  store i32 %644, i32 addrspace(3)* %350, align 4, !tbaa !6
  %645 = add i32 %633, %641
  %646 = sdiv i32 %645, 4
  %647 = add nsw i32 %646, %598
  store i32 %647, i32 addrspace(3)* %354, align 4, !tbaa !6
  br label %648

648:                                              ; preds = %538, %416
  %649 = phi i32 [ %618, %538 ], [ %423, %416 ]
  %650 = phi i32 [ %608, %538 ], [ %422, %416 ]
  %651 = phi i32 [ %598, %538 ], [ %421, %416 ]
  %652 = phi i32 [ %614, %538 ], [ %420, %416 ]
  %653 = phi i32 [ %615, %538 ], [ %419, %416 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %654 = load i32, i32 addrspace(3)* %360, align 4, !tbaa !6
  %655 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %656 = add nsw i32 %655, %654
  %657 = sdiv i32 %656, -2
  %658 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !6
  %659 = add i32 %657, %658
  store i32 %659, i32 addrspace(3)* %364, align 4, !tbaa !6
  %660 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !6
  %661 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %662 = add nsw i32 %661, %660
  %663 = sdiv i32 %662, -2
  %664 = load i32, i32 addrspace(3)* %370, align 4, !tbaa !6
  %665 = add i32 %663, %664
  store i32 %665, i32 addrspace(3)* %370, align 4, !tbaa !6
  %666 = load i32, i32 addrspace(3)* %372, align 4, !tbaa !6
  %667 = load i32, i32 addrspace(3)* %374, align 4, !tbaa !6
  %668 = add nsw i32 %667, %666
  %669 = sdiv i32 %668, -2
  %670 = load i32, i32 addrspace(3)* %376, align 4, !tbaa !6
  %671 = add i32 %669, %670
  store i32 %671, i32 addrspace(3)* %376, align 4, !tbaa !6
  %672 = load i32, i32 addrspace(3)* %378, align 4, !tbaa !6
  %673 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %674 = add nsw i32 %673, %672
  %675 = sdiv i32 %674, -2
  %676 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !6
  %677 = add i32 %675, %676
  store i32 %677, i32 addrspace(3)* %382, align 4, !tbaa !6
  br i1 %383, label %678, label %685

678:                                              ; preds = %648
  %679 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !6
  %680 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %681 = add nsw i32 %680, %679
  %682 = sdiv i32 %681, -2
  %683 = load i32, i32 addrspace(3)* %389, align 4, !tbaa !6
  %684 = add i32 %682, %683
  store i32 %684, i32 addrspace(3)* %389, align 4, !tbaa !6
  br label %685

685:                                              ; preds = %678, %648
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %686 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !6
  %687 = load i32, i32 addrspace(3)* %391, align 4, !tbaa !6
  %688 = add i32 %686, 2
  %689 = add i32 %688, %687
  %690 = sdiv i32 %689, 4
  %691 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %692 = add nsw i32 %690, %691
  store i32 %692, i32 addrspace(3)* %362, align 4, !tbaa !6
  %693 = load i32, i32 addrspace(3)* %370, align 4, !tbaa !6
  %694 = load i32, i32 addrspace(3)* %393, align 4, !tbaa !6
  %695 = add i32 %693, 2
  %696 = add i32 %695, %694
  %697 = sdiv i32 %696, 4
  %698 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %699 = add nsw i32 %697, %698
  store i32 %699, i32 addrspace(3)* %368, align 4, !tbaa !6
  %700 = load i32, i32 addrspace(3)* %376, align 4, !tbaa !6
  %701 = load i32, i32 addrspace(3)* %395, align 4, !tbaa !6
  %702 = add i32 %700, 2
  %703 = add i32 %702, %701
  %704 = sdiv i32 %703, 4
  %705 = load i32, i32 addrspace(3)* %374, align 4, !tbaa !6
  %706 = add nsw i32 %704, %705
  store i32 %706, i32 addrspace(3)* %374, align 4, !tbaa !6
  %707 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !6
  %708 = load i32, i32 addrspace(3)* %397, align 4, !tbaa !6
  %709 = add i32 %707, 2
  %710 = add i32 %709, %708
  %711 = sdiv i32 %710, 4
  %712 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %713 = add nsw i32 %711, %712
  store i32 %713, i32 addrspace(3)* %380, align 4, !tbaa !6
  br i1 %383, label %714, label %722

714:                                              ; preds = %685
  %715 = load i32, i32 addrspace(3)* %389, align 4, !tbaa !6
  %716 = load i32, i32 addrspace(3)* %399, align 4, !tbaa !6
  %717 = add i32 %715, 2
  %718 = add i32 %717, %716
  %719 = sdiv i32 %718, 4
  %720 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %721 = add nsw i32 %719, %720
  store i32 %721, i32 addrspace(3)* %387, align 4, !tbaa !6
  br label %722

722:                                              ; preds = %714, %685
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %723 = icmp eq i32 %418, %313
  br i1 %723, label %729, label %724

724:                                              ; preds = %722
  %725 = add nsw i32 %418, %311
  %726 = sext i32 %418 to i64
  %727 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %726
  %728 = load i32, i32 addrspace(3)* %401, align 4
  store i32 %728, i32 addrspace(1)* %727, align 4, !tbaa !6
  br label %729

729:                                              ; preds = %724, %722
  %730 = phi i32 [ %313, %722 ], [ %725, %724 ]
  %731 = icmp eq i32 %730, %313
  br i1 %731, label %737, label %732

732:                                              ; preds = %729
  %733 = add nsw i32 %730, %312
  %734 = sext i32 %730 to i64
  %735 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %734
  %736 = load i32, i32 addrspace(3)* %403, align 4
  store i32 %736, i32 addrspace(1)* %735, align 4, !tbaa !6
  br label %737

737:                                              ; preds = %732, %729
  %738 = phi i32 [ %313, %729 ], [ %733, %732 ]
  %739 = icmp eq i32 %738, %313
  br i1 %739, label %745, label %740

740:                                              ; preds = %737
  %741 = add nsw i32 %738, %311
  %742 = sext i32 %738 to i64
  %743 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %742
  %744 = load i32, i32 addrspace(3)* %405, align 4
  store i32 %744, i32 addrspace(1)* %743, align 4, !tbaa !6
  br label %745

745:                                              ; preds = %740, %737
  %746 = phi i32 [ %313, %737 ], [ %741, %740 ]
  %747 = icmp eq i32 %746, %313
  br i1 %747, label %753, label %748

748:                                              ; preds = %745
  %749 = add nsw i32 %746, %312
  %750 = sext i32 %746 to i64
  %751 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %750
  %752 = load i32, i32 addrspace(3)* %407, align 4
  store i32 %752, i32 addrspace(1)* %751, align 4, !tbaa !6
  br label %753

753:                                              ; preds = %748, %745
  %754 = phi i32 [ %313, %745 ], [ %749, %748 ]
  %755 = icmp eq i32 %754, %313
  br i1 %755, label %761, label %756

756:                                              ; preds = %753
  %757 = add nsw i32 %754, %311
  %758 = sext i32 %754 to i64
  %759 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %758
  %760 = load i32, i32 addrspace(3)* %409, align 4
  store i32 %760, i32 addrspace(1)* %759, align 4, !tbaa !6
  br label %761

761:                                              ; preds = %756, %753
  %762 = phi i32 [ %313, %753 ], [ %757, %756 ]
  %763 = icmp eq i32 %762, %313
  br i1 %763, label %769, label %764

764:                                              ; preds = %761
  %765 = add nsw i32 %762, %312
  %766 = sext i32 %762 to i64
  %767 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %766
  %768 = load i32, i32 addrspace(3)* %411, align 4
  store i32 %768, i32 addrspace(1)* %767, align 4, !tbaa !6
  br label %769

769:                                              ; preds = %764, %761
  %770 = phi i32 [ %313, %761 ], [ %765, %764 ]
  %771 = icmp eq i32 %770, %313
  br i1 %771, label %777, label %772

772:                                              ; preds = %769
  %773 = add nsw i32 %770, %311
  %774 = sext i32 %770 to i64
  %775 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %774
  %776 = load i32, i32 addrspace(3)* %413, align 4
  store i32 %776, i32 addrspace(1)* %775, align 4, !tbaa !6
  br label %777

777:                                              ; preds = %772, %769
  %778 = phi i32 [ %313, %769 ], [ %773, %772 ]
  %779 = icmp eq i32 %778, %313
  br i1 %779, label %785, label %780

780:                                              ; preds = %777
  %781 = add nsw i32 %778, %312
  %782 = sext i32 %778 to i64
  %783 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %782
  %784 = load i32, i32 addrspace(3)* %415, align 4
  store i32 %784, i32 addrspace(1)* %783, align 4, !tbaa !6
  br label %785

785:                                              ; preds = %780, %777
  %786 = phi i32 [ %313, %777 ], [ %781, %780 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %787 = add nuw nsw i32 %417, 1
  %788 = icmp eq i32 %787, %4
  br i1 %788, label %1922, label %416, !llvm.loop !11

789:                                              ; preds = %5
  %790 = mul i32 %6, 192
  %791 = add i32 %790, 193
  %792 = icmp slt i32 %791, %2
  %793 = mul i32 %8, %4
  %794 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %795 = add nuw nsw i32 %794, 2
  %796 = lshr i32 %795, 1
  %797 = and i32 %794, 1
  %798 = icmp eq i32 %797, 0
  %799 = select i1 %798, i32 0, i32 1080
  %800 = add nuw nsw i32 %799, %796
  %801 = add i32 %790, %794
  %802 = sub i32 0, %801
  %803 = icmp eq i32 %7, 0
  br i1 %792, label %1382, label %804

804:                                              ; preds = %789
  br i1 %803, label %805, label %841

805:                                              ; preds = %804
  %806 = icmp slt i32 %801, %2
  br i1 %806, label %811, label %807

807:                                              ; preds = %805
  %808 = shl nsw i32 %2, 1
  %809 = sub i32 -2, %801
  %810 = add i32 %809, %808
  br label %813

811:                                              ; preds = %805
  %812 = icmp slt i32 %801, 0
  br i1 %812, label %813, label %815

813:                                              ; preds = %811, %807
  %814 = phi i32 [ %810, %807 ], [ %802, %811 ]
  br label %815

815:                                              ; preds = %813, %811
  %816 = phi i32 [ %814, %813 ], [ %801, %811 ]
  %817 = mul i32 %793, %2
  %818 = add i32 %816, %817
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %819
  %821 = load i32, i32 addrspace(1)* %820, align 4, !tbaa !6, !amdgpu.noclobber !10
  %822 = add nsw i32 %818, %2
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %823
  %825 = load i32, i32 addrspace(1)* %824, align 4, !tbaa !6, !amdgpu.noclobber !10
  %826 = add nsw i32 %822, %2
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %827
  %829 = load i32, i32 addrspace(1)* %828, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %806, label %834, label %830

830:                                              ; preds = %815
  %831 = shl nsw i32 %2, 1
  %832 = sub i32 -2, %801
  %833 = add i32 %832, %831
  br label %836

834:                                              ; preds = %815
  %835 = icmp slt i32 %801, 0
  br i1 %835, label %836, label %838

836:                                              ; preds = %834, %830
  %837 = phi i32 [ %833, %830 ], [ %802, %834 ]
  br label %838

838:                                              ; preds = %836, %834
  %839 = phi i32 [ %837, %836 ], [ %801, %834 ]
  %840 = add i32 %839, %817
  br label %867

841:                                              ; preds = %804
  %842 = add nsw i32 %793, -2
  %843 = icmp slt i32 %801, %2
  br i1 %843, label %848, label %844

844:                                              ; preds = %841
  %845 = shl nsw i32 %2, 1
  %846 = sub i32 -2, %801
  %847 = add i32 %846, %845
  br label %850

848:                                              ; preds = %841
  %849 = icmp slt i32 %801, 0
  br i1 %849, label %850, label %852

850:                                              ; preds = %848, %844
  %851 = phi i32 [ %847, %844 ], [ %802, %848 ]
  br label %852

852:                                              ; preds = %850, %848
  %853 = phi i32 [ %851, %850 ], [ %801, %848 ]
  %854 = mul nsw i32 %842, %2
  %855 = add i32 %853, %854
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %856
  %858 = load i32, i32 addrspace(1)* %857, align 4, !tbaa !6, !amdgpu.noclobber !10
  %859 = add nsw i32 %855, %2
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %860
  %862 = load i32, i32 addrspace(1)* %861, align 4, !tbaa !6, !amdgpu.noclobber !10
  %863 = add nsw i32 %859, %2
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %864
  %866 = load i32, i32 addrspace(1)* %865, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %867

867:                                              ; preds = %852, %838
  %868 = phi i32 [ %825, %838 ], [ %862, %852 ]
  %869 = phi i32 [ %829, %838 ], [ %858, %852 ]
  %870 = phi i32 [ %821, %838 ], [ %866, %852 ]
  %871 = phi i32 [ %840, %838 ], [ %863, %852 ]
  %872 = icmp ult i32 %794, 3
  br i1 %872, label %873, label %949

873:                                              ; preds = %867
  %874 = icmp eq i32 %794, 0
  %875 = select i1 %874, i32 192, i32 -3
  %876 = add nsw i32 %875, %794
  %877 = trunc i32 %876 to i16
  %878 = add nsw i16 %877, 2
  %879 = sdiv i16 %878, 2
  %880 = zext i16 %879 to i32
  %881 = and i32 %876, 1
  %882 = icmp eq i32 %881, 0
  %883 = select i1 %882, i32 0, i32 1080
  %884 = add nuw nsw i32 %883, %880
  %885 = add i32 %876, %790
  %886 = sub i32 0, %885
  br i1 %803, label %887, label %923

887:                                              ; preds = %873
  %888 = icmp slt i32 %885, %2
  br i1 %888, label %893, label %889

889:                                              ; preds = %887
  %890 = shl nsw i32 %2, 1
  %891 = sub i32 -2, %885
  %892 = add i32 %891, %890
  br label %895

893:                                              ; preds = %887
  %894 = icmp slt i32 %885, 0
  br i1 %894, label %895, label %897

895:                                              ; preds = %893, %889
  %896 = phi i32 [ %892, %889 ], [ %886, %893 ]
  br label %897

897:                                              ; preds = %895, %893
  %898 = phi i32 [ %896, %895 ], [ %885, %893 ]
  %899 = mul i32 %793, %2
  %900 = add i32 %898, %899
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %901
  %903 = load i32, i32 addrspace(1)* %902, align 4, !tbaa !6, !amdgpu.noclobber !10
  %904 = add nsw i32 %900, %2
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %905
  %907 = load i32, i32 addrspace(1)* %906, align 4, !tbaa !6, !amdgpu.noclobber !10
  %908 = add nsw i32 %904, %2
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %909
  %911 = load i32, i32 addrspace(1)* %910, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %888, label %916, label %912

912:                                              ; preds = %897
  %913 = shl nsw i32 %2, 1
  %914 = sub i32 -2, %885
  %915 = add i32 %914, %913
  br label %918

916:                                              ; preds = %897
  %917 = icmp slt i32 %885, 0
  br i1 %917, label %918, label %920

918:                                              ; preds = %916, %912
  %919 = phi i32 [ %915, %912 ], [ %886, %916 ]
  br label %920

920:                                              ; preds = %918, %916
  %921 = phi i32 [ %919, %918 ], [ %885, %916 ]
  %922 = add i32 %921, %899
  br label %949

923:                                              ; preds = %873
  %924 = add nsw i32 %793, -2
  %925 = icmp slt i32 %885, %2
  br i1 %925, label %930, label %926

926:                                              ; preds = %923
  %927 = shl nsw i32 %2, 1
  %928 = sub i32 -2, %885
  %929 = add i32 %928, %927
  br label %932

930:                                              ; preds = %923
  %931 = icmp slt i32 %885, 0
  br i1 %931, label %932, label %934

932:                                              ; preds = %930, %926
  %933 = phi i32 [ %929, %926 ], [ %886, %930 ]
  br label %934

934:                                              ; preds = %932, %930
  %935 = phi i32 [ %933, %932 ], [ %885, %930 ]
  %936 = mul nsw i32 %924, %2
  %937 = add i32 %935, %936
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %938
  %940 = load i32, i32 addrspace(1)* %939, align 4, !tbaa !6, !amdgpu.noclobber !10
  %941 = add nsw i32 %937, %2
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %942
  %944 = load i32, i32 addrspace(1)* %943, align 4, !tbaa !6, !amdgpu.noclobber !10
  %945 = add nsw i32 %941, %2
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %946
  %948 = load i32, i32 addrspace(1)* %947, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %949

949:                                              ; preds = %934, %920, %867
  %950 = phi i32 [ 0, %867 ], [ %903, %920 ], [ %948, %934 ]
  %951 = phi i32 [ 0, %867 ], [ %907, %920 ], [ %944, %934 ]
  %952 = phi i32 [ 0, %867 ], [ %911, %920 ], [ %940, %934 ]
  %953 = phi i32 [ 0, %867 ], [ %884, %920 ], [ %884, %934 ]
  %954 = phi i32 [ 0, %867 ], [ %922, %920 ], [ %945, %934 ]
  %955 = phi i32 [ 0, %867 ], [ %2, %920 ], [ %2, %934 ]
  %956 = shl nuw nsw i32 %794, 1
  %957 = trunc i32 %794 to i16
  %958 = udiv i16 %957, 96
  %959 = zext i16 %958 to i32
  %960 = mul nsw i32 %959, -191
  %961 = add nsw i32 %960, %956
  %962 = trunc i32 %961 to i16
  %963 = add nsw i16 %962, 2
  %964 = sdiv i16 %963, 2
  %965 = sext i16 %964 to i32
  %966 = and i32 %961, 1
  %967 = icmp eq i32 %966, 0
  %968 = select i1 %967, i32 0, i32 1080
  %969 = add nsw i32 %968, %965
  %970 = add i32 %961, %790
  %971 = icmp slt i32 %970, %2
  br i1 %971, label %972, label %1002

972:                                              ; preds = %949
  %973 = sdiv i32 %970, 2
  %974 = and i32 %970, 1
  %975 = icmp eq i32 %974, 0
  %976 = sdiv i32 %2, 2
  %977 = and i32 %2, 1
  %978 = add nsw i32 %976, %977
  %979 = sdiv i32 %3, 2
  %980 = and i32 %3, 1
  %981 = add nsw i32 %979, %980
  br i1 %975, label %987, label %982

982:                                              ; preds = %972
  %983 = mul nsw i32 %981, %978
  %984 = add nsw i32 %983, %973
  %985 = mul nsw i32 %3, %2
  %986 = sdiv i32 %985, 2
  br label %989

987:                                              ; preds = %972
  %988 = mul nsw i32 %981, %2
  br label %989

989:                                              ; preds = %987, %982
  %990 = phi i32 [ %988, %987 ], [ %986, %982 ]
  %991 = phi i32 [ %973, %987 ], [ %984, %982 ]
  %992 = phi i32 [ %978, %987 ], [ %976, %982 ]
  %993 = sub nsw i32 %992, %990
  %994 = mul nsw i32 %992, %979
  %995 = icmp eq i32 %980, 0
  %996 = select i1 %995, i32 0, i32 %990
  %997 = add i32 %996, %991
  %998 = add i32 %997, %994
  %999 = sdiv i32 %793, 2
  %1000 = mul nsw i32 %992, %999
  %1001 = add i32 %1000, %991
  br label %1002

1002:                                             ; preds = %989, %949
  %1003 = phi i32 [ %990, %989 ], [ 0, %949 ]
  %1004 = phi i32 [ %993, %989 ], [ 0, %949 ]
  %1005 = phi i32 [ %998, %989 ], [ 0, %949 ]
  %1006 = phi i32 [ %1001, %989 ], [ 0, %949 ]
  %1007 = icmp sgt i32 %4, 0
  br i1 %1007, label %1008, label %1922

1008:                                             ; preds = %1002
  %1009 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %800
  %1010 = add nuw nsw i32 %800, 98
  %1011 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1010
  %1012 = add nuw nsw i32 %800, 196
  %1013 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1012
  %1014 = add nuw nsw i32 %800, 294
  %1015 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1014
  %1016 = add nuw nsw i32 %800, 392
  %1017 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1016
  %1018 = add nuw nsw i32 %800, 490
  %1019 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1018
  %1020 = add nuw nsw i32 %800, 588
  %1021 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1020
  %1022 = add nuw nsw i32 %800, 686
  %1023 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1022
  %1024 = add nuw nsw i32 %800, 784
  %1025 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1024
  %1026 = add nuw nsw i32 %800, 882
  %1027 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1026
  %1028 = add nuw nsw i32 %800, 980
  %1029 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1028
  %1030 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %953
  %1031 = add nuw nsw i32 %953, 98
  %1032 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1031
  %1033 = add nuw nsw i32 %953, 196
  %1034 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1033
  %1035 = add nuw nsw i32 %953, 294
  %1036 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1035
  %1037 = add nuw nsw i32 %953, 392
  %1038 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1037
  %1039 = add nuw nsw i32 %953, 490
  %1040 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1039
  %1041 = add nuw nsw i32 %953, 588
  %1042 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1041
  %1043 = add nuw nsw i32 %953, 686
  %1044 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1043
  %1045 = add nuw nsw i32 %953, 784
  %1046 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1045
  %1047 = add nuw nsw i32 %953, 882
  %1048 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1047
  %1049 = add nuw nsw i32 %953, 980
  %1050 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1049
  %1051 = add nuw nsw i32 %794, 196
  %1052 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1051
  %1053 = add nuw nsw i32 %794, 197
  %1054 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1053
  %1055 = add nuw nsw i32 %794, 1276
  %1056 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1055
  %1057 = add nuw nsw i32 %794, 388
  %1058 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1057
  %1059 = add nuw nsw i32 %794, 389
  %1060 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1059
  %1061 = add nuw nsw i32 %794, 1468
  %1062 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1061
  %1063 = add nuw nsw i32 %794, 580
  %1064 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1063
  %1065 = add nuw nsw i32 %794, 581
  %1066 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1065
  %1067 = add nuw nsw i32 %794, 1660
  %1068 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1067
  %1069 = add nuw nsw i32 %794, 772
  %1070 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1069
  %1071 = add nuw nsw i32 %794, 773
  %1072 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1071
  %1073 = add nuw nsw i32 %794, 1852
  %1074 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1073
  %1075 = icmp ult i32 %794, 15
  %1076 = add nuw nsw i32 %794, 964
  %1077 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1076
  %1078 = add nuw nsw i32 %794, 965
  %1079 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1078
  %1080 = add nuw nsw i32 %794, 2044
  %1081 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1080
  %1082 = add nuw nsw i32 %794, 1277
  %1083 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1082
  %1084 = add nuw nsw i32 %794, 1469
  %1085 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1084
  %1086 = add nuw nsw i32 %794, 1661
  %1087 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1086
  %1088 = add nuw nsw i32 %794, 1853
  %1089 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1088
  %1090 = add nuw nsw i32 %794, 2045
  %1091 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1090
  %1092 = add nsw i32 %969, 196
  %1093 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1092
  %1094 = add nsw i32 %969, 294
  %1095 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1094
  %1096 = add nsw i32 %969, 392
  %1097 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1096
  %1098 = add nsw i32 %969, 490
  %1099 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1098
  %1100 = add nsw i32 %969, 588
  %1101 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1100
  %1102 = add nsw i32 %969, 686
  %1103 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1102
  %1104 = add nsw i32 %969, 784
  %1105 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1104
  %1106 = add nsw i32 %969, 882
  %1107 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1106
  br label %1108

1108:                                             ; preds = %1378, %1008
  %1109 = phi i32 [ 0, %1008 ], [ %1380, %1378 ]
  %1110 = phi i32 [ %1006, %1008 ], [ %1379, %1378 ]
  %1111 = phi i32 [ %954, %1008 ], [ %1246, %1378 ]
  %1112 = phi i32 [ %952, %1008 ], [ %1245, %1378 ]
  %1113 = phi i32 [ %951, %1008 ], [ %1244, %1378 ]
  %1114 = phi i32 [ %950, %1008 ], [ %1243, %1378 ]
  %1115 = phi i32 [ %871, %1008 ], [ %1147, %1378 ]
  %1116 = phi i32 [ %870, %1008 ], [ %1150, %1378 ]
  %1117 = phi i32 [ %869, %1008 ], [ %1142, %1378 ]
  %1118 = phi i32 [ %868, %1008 ], [ %1146, %1378 ]
  store i32 %1117, i32 addrspace(3)* %1009, align 4, !tbaa !6
  %1119 = add nsw i32 %1115, %2
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1120
  %1122 = load i32, i32 addrspace(1)* %1121, align 4, !tbaa !6
  %1123 = add nsw i32 %1119, %2
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1124
  %1126 = load i32, i32 addrspace(1)* %1125, align 4, !tbaa !6
  %1127 = add nsw i32 %1123, %2
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1128
  %1130 = load i32, i32 addrspace(1)* %1129, align 4, !tbaa !6
  %1131 = add nsw i32 %1127, %2
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1132
  %1134 = load i32, i32 addrspace(1)* %1133, align 4, !tbaa !6
  %1135 = add nsw i32 %1131, %2
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1136
  %1138 = load i32, i32 addrspace(1)* %1137, align 4, !tbaa !6
  %1139 = add nsw i32 %1135, %2
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1140
  %1142 = load i32, i32 addrspace(1)* %1141, align 4, !tbaa !6
  %1143 = add nsw i32 %1139, %2
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1144
  %1146 = load i32, i32 addrspace(1)* %1145, align 4, !tbaa !6
  %1147 = add nsw i32 %1143, %2
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1148
  %1150 = load i32, i32 addrspace(1)* %1149, align 4, !tbaa !6
  store i32 %1150, i32 addrspace(3)* %1029, align 4, !tbaa !6
  %1151 = add nsw i32 %1117, %1116
  %1152 = sdiv i32 %1151, -2
  %1153 = add i32 %1152, %1118
  store i32 %1153, i32 addrspace(3)* %1011, align 4, !tbaa !6
  %1154 = add nsw i32 %1126, %1116
  %1155 = sdiv i32 %1154, -2
  %1156 = add i32 %1155, %1122
  store i32 %1156, i32 addrspace(3)* %1015, align 4, !tbaa !6
  %1157 = add nsw i32 %1134, %1126
  %1158 = sdiv i32 %1157, -2
  %1159 = add i32 %1158, %1130
  store i32 %1159, i32 addrspace(3)* %1019, align 4, !tbaa !6
  %1160 = add nsw i32 %1142, %1134
  %1161 = sdiv i32 %1160, -2
  %1162 = add i32 %1161, %1138
  store i32 %1162, i32 addrspace(3)* %1023, align 4, !tbaa !6
  %1163 = add nsw i32 %1150, %1142
  %1164 = sdiv i32 %1163, -2
  %1165 = add i32 %1164, %1146
  store i32 %1165, i32 addrspace(3)* %1027, align 4, !tbaa !6
  %1166 = add i32 %1156, 2
  %1167 = add i32 %1166, %1153
  %1168 = sdiv i32 %1167, 4
  %1169 = add nsw i32 %1168, %1116
  store i32 %1169, i32 addrspace(3)* %1013, align 4, !tbaa !6
  %1170 = add i32 %1159, %1166
  %1171 = sdiv i32 %1170, 4
  %1172 = add nsw i32 %1171, %1126
  store i32 %1172, i32 addrspace(3)* %1017, align 4, !tbaa !6
  %1173 = add i32 %1162, 2
  %1174 = add i32 %1173, %1159
  %1175 = sdiv i32 %1174, 4
  %1176 = add nsw i32 %1175, %1134
  store i32 %1176, i32 addrspace(3)* %1021, align 4, !tbaa !6
  %1177 = add i32 %1165, %1173
  %1178 = sdiv i32 %1177, 4
  %1179 = add nsw i32 %1178, %1142
  store i32 %1179, i32 addrspace(3)* %1025, align 4, !tbaa !6
  br i1 %872, label %1180, label %1242

1180:                                             ; preds = %1108
  store i32 %1112, i32 addrspace(3)* %1030, align 4, !tbaa !6
  %1181 = add nsw i32 %1111, %955
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1182
  %1184 = load i32, i32 addrspace(1)* %1183, align 4, !tbaa !6
  %1185 = add nsw i32 %1181, %955
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1186
  %1188 = load i32, i32 addrspace(1)* %1187, align 4, !tbaa !6
  %1189 = add nsw i32 %1185, %955
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1190
  %1192 = load i32, i32 addrspace(1)* %1191, align 4, !tbaa !6
  %1193 = add nsw i32 %1189, %955
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1194
  %1196 = load i32, i32 addrspace(1)* %1195, align 4, !tbaa !6
  %1197 = add nsw i32 %1193, %955
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1198
  %1200 = load i32, i32 addrspace(1)* %1199, align 4, !tbaa !6
  %1201 = add nsw i32 %1197, %955
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1202
  %1204 = load i32, i32 addrspace(1)* %1203, align 4, !tbaa !6
  %1205 = add nsw i32 %1201, %955
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1206
  %1208 = load i32, i32 addrspace(1)* %1207, align 4, !tbaa !6
  %1209 = add nsw i32 %1205, %955
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1210
  %1212 = load i32, i32 addrspace(1)* %1211, align 4, !tbaa !6
  store i32 %1212, i32 addrspace(3)* %1050, align 4, !tbaa !6
  %1213 = add nsw i32 %1114, %1112
  %1214 = sdiv i32 %1213, -2
  %1215 = add i32 %1214, %1113
  store i32 %1215, i32 addrspace(3)* %1032, align 4, !tbaa !6
  %1216 = add nsw i32 %1188, %1114
  %1217 = sdiv i32 %1216, -2
  %1218 = add i32 %1217, %1184
  store i32 %1218, i32 addrspace(3)* %1036, align 4, !tbaa !6
  %1219 = add nsw i32 %1196, %1188
  %1220 = sdiv i32 %1219, -2
  %1221 = add i32 %1220, %1192
  store i32 %1221, i32 addrspace(3)* %1040, align 4, !tbaa !6
  %1222 = add nsw i32 %1204, %1196
  %1223 = sdiv i32 %1222, -2
  %1224 = add i32 %1223, %1200
  store i32 %1224, i32 addrspace(3)* %1044, align 4, !tbaa !6
  %1225 = add nsw i32 %1212, %1204
  %1226 = sdiv i32 %1225, -2
  %1227 = add i32 %1226, %1208
  store i32 %1227, i32 addrspace(3)* %1048, align 4, !tbaa !6
  %1228 = add i32 %1218, 2
  %1229 = add i32 %1228, %1215
  %1230 = sdiv i32 %1229, 4
  %1231 = add nsw i32 %1230, %1114
  store i32 %1231, i32 addrspace(3)* %1034, align 4, !tbaa !6
  %1232 = add i32 %1221, %1228
  %1233 = sdiv i32 %1232, 4
  %1234 = add nsw i32 %1233, %1188
  store i32 %1234, i32 addrspace(3)* %1038, align 4, !tbaa !6
  %1235 = add i32 %1224, 2
  %1236 = add i32 %1235, %1221
  %1237 = sdiv i32 %1236, 4
  %1238 = add nsw i32 %1237, %1196
  store i32 %1238, i32 addrspace(3)* %1042, align 4, !tbaa !6
  %1239 = add i32 %1227, %1235
  %1240 = sdiv i32 %1239, 4
  %1241 = add nsw i32 %1240, %1204
  store i32 %1241, i32 addrspace(3)* %1046, align 4, !tbaa !6
  br label %1242

1242:                                             ; preds = %1180, %1108
  %1243 = phi i32 [ %1212, %1180 ], [ %1114, %1108 ]
  %1244 = phi i32 [ %1208, %1180 ], [ %1113, %1108 ]
  %1245 = phi i32 [ %1204, %1180 ], [ %1112, %1108 ]
  %1246 = phi i32 [ %1209, %1180 ], [ %1111, %1108 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1247 = load i32, i32 addrspace(3)* %1052, align 4, !tbaa !6
  %1248 = load i32, i32 addrspace(3)* %1054, align 4, !tbaa !6
  %1249 = add nsw i32 %1248, %1247
  %1250 = sdiv i32 %1249, -2
  %1251 = load i32, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1252 = add i32 %1250, %1251
  store i32 %1252, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1253 = load i32, i32 addrspace(3)* %1058, align 4, !tbaa !6
  %1254 = load i32, i32 addrspace(3)* %1060, align 4, !tbaa !6
  %1255 = add nsw i32 %1254, %1253
  %1256 = sdiv i32 %1255, -2
  %1257 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1258 = add i32 %1256, %1257
  store i32 %1258, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1259 = load i32, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1260 = load i32, i32 addrspace(3)* %1066, align 4, !tbaa !6
  %1261 = add nsw i32 %1260, %1259
  %1262 = sdiv i32 %1261, -2
  %1263 = load i32, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1264 = add i32 %1262, %1263
  store i32 %1264, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1265 = load i32, i32 addrspace(3)* %1070, align 4, !tbaa !6
  %1266 = load i32, i32 addrspace(3)* %1072, align 4, !tbaa !6
  %1267 = add nsw i32 %1266, %1265
  %1268 = sdiv i32 %1267, -2
  %1269 = load i32, i32 addrspace(3)* %1074, align 4, !tbaa !6
  %1270 = add i32 %1268, %1269
  store i32 %1270, i32 addrspace(3)* %1074, align 4, !tbaa !6
  br i1 %1075, label %1271, label %1278

1271:                                             ; preds = %1242
  %1272 = load i32, i32 addrspace(3)* %1077, align 4, !tbaa !6
  %1273 = load i32, i32 addrspace(3)* %1079, align 4, !tbaa !6
  %1274 = add nsw i32 %1273, %1272
  %1275 = sdiv i32 %1274, -2
  %1276 = load i32, i32 addrspace(3)* %1081, align 4, !tbaa !6
  %1277 = add i32 %1275, %1276
  store i32 %1277, i32 addrspace(3)* %1081, align 4, !tbaa !6
  br label %1278

1278:                                             ; preds = %1271, %1242
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1279 = load i32, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1280 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !6
  %1281 = add i32 %1279, 2
  %1282 = add i32 %1281, %1280
  %1283 = sdiv i32 %1282, 4
  %1284 = load i32, i32 addrspace(3)* %1054, align 4, !tbaa !6
  %1285 = add nsw i32 %1283, %1284
  store i32 %1285, i32 addrspace(3)* %1054, align 4, !tbaa !6
  %1286 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1287 = load i32, i32 addrspace(3)* %1085, align 4, !tbaa !6
  %1288 = add i32 %1286, 2
  %1289 = add i32 %1288, %1287
  %1290 = sdiv i32 %1289, 4
  %1291 = load i32, i32 addrspace(3)* %1060, align 4, !tbaa !6
  %1292 = add nsw i32 %1290, %1291
  store i32 %1292, i32 addrspace(3)* %1060, align 4, !tbaa !6
  %1293 = load i32, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1294 = load i32, i32 addrspace(3)* %1087, align 4, !tbaa !6
  %1295 = add i32 %1293, 2
  %1296 = add i32 %1295, %1294
  %1297 = sdiv i32 %1296, 4
  %1298 = load i32, i32 addrspace(3)* %1066, align 4, !tbaa !6
  %1299 = add nsw i32 %1297, %1298
  store i32 %1299, i32 addrspace(3)* %1066, align 4, !tbaa !6
  %1300 = load i32, i32 addrspace(3)* %1074, align 4, !tbaa !6
  %1301 = load i32, i32 addrspace(3)* %1089, align 4, !tbaa !6
  %1302 = add i32 %1300, 2
  %1303 = add i32 %1302, %1301
  %1304 = sdiv i32 %1303, 4
  %1305 = load i32, i32 addrspace(3)* %1072, align 4, !tbaa !6
  %1306 = add nsw i32 %1304, %1305
  store i32 %1306, i32 addrspace(3)* %1072, align 4, !tbaa !6
  br i1 %1075, label %1307, label %1315

1307:                                             ; preds = %1278
  %1308 = load i32, i32 addrspace(3)* %1081, align 4, !tbaa !6
  %1309 = load i32, i32 addrspace(3)* %1091, align 4, !tbaa !6
  %1310 = add i32 %1308, 2
  %1311 = add i32 %1310, %1309
  %1312 = sdiv i32 %1311, 4
  %1313 = load i32, i32 addrspace(3)* %1079, align 4, !tbaa !6
  %1314 = add nsw i32 %1312, %1313
  store i32 %1314, i32 addrspace(3)* %1079, align 4, !tbaa !6
  br label %1315

1315:                                             ; preds = %1307, %1278
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1316 = icmp eq i32 %1110, %1005
  br i1 %1316, label %1322, label %1317

1317:                                             ; preds = %1315
  %1318 = add nsw i32 %1110, %1003
  %1319 = sext i32 %1110 to i64
  %1320 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1319
  %1321 = load i32, i32 addrspace(3)* %1093, align 4
  store i32 %1321, i32 addrspace(1)* %1320, align 4, !tbaa !6
  br label %1322

1322:                                             ; preds = %1317, %1315
  %1323 = phi i32 [ %1005, %1315 ], [ %1318, %1317 ]
  %1324 = icmp eq i32 %1323, %1005
  br i1 %1324, label %1330, label %1325

1325:                                             ; preds = %1322
  %1326 = add nsw i32 %1323, %1004
  %1327 = sext i32 %1323 to i64
  %1328 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1327
  %1329 = load i32, i32 addrspace(3)* %1095, align 4
  store i32 %1329, i32 addrspace(1)* %1328, align 4, !tbaa !6
  br label %1330

1330:                                             ; preds = %1325, %1322
  %1331 = phi i32 [ %1005, %1322 ], [ %1326, %1325 ]
  %1332 = icmp eq i32 %1331, %1005
  br i1 %1332, label %1338, label %1333

1333:                                             ; preds = %1330
  %1334 = add nsw i32 %1331, %1003
  %1335 = sext i32 %1331 to i64
  %1336 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1335
  %1337 = load i32, i32 addrspace(3)* %1097, align 4
  store i32 %1337, i32 addrspace(1)* %1336, align 4, !tbaa !6
  br label %1338

1338:                                             ; preds = %1333, %1330
  %1339 = phi i32 [ %1005, %1330 ], [ %1334, %1333 ]
  %1340 = icmp eq i32 %1339, %1005
  br i1 %1340, label %1346, label %1341

1341:                                             ; preds = %1338
  %1342 = add nsw i32 %1339, %1004
  %1343 = sext i32 %1339 to i64
  %1344 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1343
  %1345 = load i32, i32 addrspace(3)* %1099, align 4
  store i32 %1345, i32 addrspace(1)* %1344, align 4, !tbaa !6
  br label %1346

1346:                                             ; preds = %1341, %1338
  %1347 = phi i32 [ %1005, %1338 ], [ %1342, %1341 ]
  %1348 = icmp eq i32 %1347, %1005
  br i1 %1348, label %1354, label %1349

1349:                                             ; preds = %1346
  %1350 = add nsw i32 %1347, %1003
  %1351 = sext i32 %1347 to i64
  %1352 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1351
  %1353 = load i32, i32 addrspace(3)* %1101, align 4
  store i32 %1353, i32 addrspace(1)* %1352, align 4, !tbaa !6
  br label %1354

1354:                                             ; preds = %1349, %1346
  %1355 = phi i32 [ %1005, %1346 ], [ %1350, %1349 ]
  %1356 = icmp eq i32 %1355, %1005
  br i1 %1356, label %1362, label %1357

1357:                                             ; preds = %1354
  %1358 = add nsw i32 %1355, %1004
  %1359 = sext i32 %1355 to i64
  %1360 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1359
  %1361 = load i32, i32 addrspace(3)* %1103, align 4
  store i32 %1361, i32 addrspace(1)* %1360, align 4, !tbaa !6
  br label %1362

1362:                                             ; preds = %1357, %1354
  %1363 = phi i32 [ %1005, %1354 ], [ %1358, %1357 ]
  %1364 = icmp eq i32 %1363, %1005
  br i1 %1364, label %1370, label %1365

1365:                                             ; preds = %1362
  %1366 = add nsw i32 %1363, %1003
  %1367 = sext i32 %1363 to i64
  %1368 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1367
  %1369 = load i32, i32 addrspace(3)* %1105, align 4
  store i32 %1369, i32 addrspace(1)* %1368, align 4, !tbaa !6
  br label %1370

1370:                                             ; preds = %1365, %1362
  %1371 = phi i32 [ %1005, %1362 ], [ %1366, %1365 ]
  %1372 = icmp eq i32 %1371, %1005
  br i1 %1372, label %1378, label %1373

1373:                                             ; preds = %1370
  %1374 = add nsw i32 %1371, %1004
  %1375 = sext i32 %1371 to i64
  %1376 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1375
  %1377 = load i32, i32 addrspace(3)* %1107, align 4
  store i32 %1377, i32 addrspace(1)* %1376, align 4, !tbaa !6
  br label %1378

1378:                                             ; preds = %1373, %1370
  %1379 = phi i32 [ %1005, %1370 ], [ %1374, %1373 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1380 = add nuw nsw i32 %1109, 1
  %1381 = icmp eq i32 %1380, %4
  br i1 %1381, label %1922, label %1108, !llvm.loop !13

1382:                                             ; preds = %789
  br i1 %803, label %1383, label %1419

1383:                                             ; preds = %1382
  %1384 = icmp slt i32 %801, %2
  br i1 %1384, label %1389, label %1385

1385:                                             ; preds = %1383
  %1386 = shl nsw i32 %2, 1
  %1387 = sub i32 -2, %801
  %1388 = add i32 %1387, %1386
  br label %1391

1389:                                             ; preds = %1383
  %1390 = icmp slt i32 %801, 0
  br i1 %1390, label %1391, label %1393

1391:                                             ; preds = %1389, %1385
  %1392 = phi i32 [ %1388, %1385 ], [ %802, %1389 ]
  br label %1393

1393:                                             ; preds = %1391, %1389
  %1394 = phi i32 [ %1392, %1391 ], [ %801, %1389 ]
  %1395 = mul i32 %793, %2
  %1396 = add i32 %1394, %1395
  %1397 = sext i32 %1396 to i64
  %1398 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1397
  %1399 = load i32, i32 addrspace(1)* %1398, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1400 = add nsw i32 %1396, %2
  %1401 = sext i32 %1400 to i64
  %1402 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1401
  %1403 = load i32, i32 addrspace(1)* %1402, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1404 = add nsw i32 %1400, %2
  %1405 = sext i32 %1404 to i64
  %1406 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1405
  %1407 = load i32, i32 addrspace(1)* %1406, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %1384, label %1412, label %1408

1408:                                             ; preds = %1393
  %1409 = shl nsw i32 %2, 1
  %1410 = sub i32 -2, %801
  %1411 = add i32 %1410, %1409
  br label %1414

1412:                                             ; preds = %1393
  %1413 = icmp slt i32 %801, 0
  br i1 %1413, label %1414, label %1416

1414:                                             ; preds = %1412, %1408
  %1415 = phi i32 [ %1411, %1408 ], [ %802, %1412 ]
  br label %1416

1416:                                             ; preds = %1414, %1412
  %1417 = phi i32 [ %1415, %1414 ], [ %801, %1412 ]
  %1418 = add i32 %1417, %1395
  br label %1445

1419:                                             ; preds = %1382
  %1420 = add nsw i32 %793, -2
  %1421 = icmp slt i32 %801, %2
  br i1 %1421, label %1426, label %1422

1422:                                             ; preds = %1419
  %1423 = shl nsw i32 %2, 1
  %1424 = sub i32 -2, %801
  %1425 = add i32 %1424, %1423
  br label %1428

1426:                                             ; preds = %1419
  %1427 = icmp slt i32 %801, 0
  br i1 %1427, label %1428, label %1430

1428:                                             ; preds = %1426, %1422
  %1429 = phi i32 [ %1425, %1422 ], [ %802, %1426 ]
  br label %1430

1430:                                             ; preds = %1428, %1426
  %1431 = phi i32 [ %1429, %1428 ], [ %801, %1426 ]
  %1432 = mul nsw i32 %1420, %2
  %1433 = add i32 %1431, %1432
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1434
  %1436 = load i32, i32 addrspace(1)* %1435, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1437 = add nsw i32 %1433, %2
  %1438 = sext i32 %1437 to i64
  %1439 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1438
  %1440 = load i32, i32 addrspace(1)* %1439, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1441 = add nsw i32 %1437, %2
  %1442 = sext i32 %1441 to i64
  %1443 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1442
  %1444 = load i32, i32 addrspace(1)* %1443, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1445

1445:                                             ; preds = %1430, %1416
  %1446 = phi i32 [ %1403, %1416 ], [ %1440, %1430 ]
  %1447 = phi i32 [ %1407, %1416 ], [ %1436, %1430 ]
  %1448 = phi i32 [ %1399, %1416 ], [ %1444, %1430 ]
  %1449 = phi i32 [ %1418, %1416 ], [ %1441, %1430 ]
  %1450 = icmp ult i32 %794, 3
  br i1 %1450, label %1451, label %1527

1451:                                             ; preds = %1445
  %1452 = icmp eq i32 %794, 0
  %1453 = select i1 %1452, i32 192, i32 -3
  %1454 = add nsw i32 %1453, %794
  %1455 = trunc i32 %1454 to i16
  %1456 = add nsw i16 %1455, 2
  %1457 = sdiv i16 %1456, 2
  %1458 = zext i16 %1457 to i32
  %1459 = and i32 %1454, 1
  %1460 = icmp eq i32 %1459, 0
  %1461 = select i1 %1460, i32 0, i32 1080
  %1462 = add nuw nsw i32 %1461, %1458
  %1463 = add i32 %1454, %790
  %1464 = sub i32 0, %1463
  br i1 %803, label %1465, label %1501

1465:                                             ; preds = %1451
  %1466 = icmp slt i32 %1463, %2
  br i1 %1466, label %1471, label %1467

1467:                                             ; preds = %1465
  %1468 = shl nsw i32 %2, 1
  %1469 = sub i32 -2, %1463
  %1470 = add i32 %1469, %1468
  br label %1473

1471:                                             ; preds = %1465
  %1472 = icmp slt i32 %1463, 0
  br i1 %1472, label %1473, label %1475

1473:                                             ; preds = %1471, %1467
  %1474 = phi i32 [ %1470, %1467 ], [ %1464, %1471 ]
  br label %1475

1475:                                             ; preds = %1473, %1471
  %1476 = phi i32 [ %1474, %1473 ], [ %1463, %1471 ]
  %1477 = mul i32 %793, %2
  %1478 = add i32 %1476, %1477
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1479
  %1481 = load i32, i32 addrspace(1)* %1480, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1482 = add nsw i32 %1478, %2
  %1483 = sext i32 %1482 to i64
  %1484 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1483
  %1485 = load i32, i32 addrspace(1)* %1484, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1486 = add nsw i32 %1482, %2
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1487
  %1489 = load i32, i32 addrspace(1)* %1488, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %1466, label %1494, label %1490

1490:                                             ; preds = %1475
  %1491 = shl nsw i32 %2, 1
  %1492 = sub i32 -2, %1463
  %1493 = add i32 %1492, %1491
  br label %1496

1494:                                             ; preds = %1475
  %1495 = icmp slt i32 %1463, 0
  br i1 %1495, label %1496, label %1498

1496:                                             ; preds = %1494, %1490
  %1497 = phi i32 [ %1493, %1490 ], [ %1464, %1494 ]
  br label %1498

1498:                                             ; preds = %1496, %1494
  %1499 = phi i32 [ %1497, %1496 ], [ %1463, %1494 ]
  %1500 = add i32 %1499, %1477
  br label %1527

1501:                                             ; preds = %1451
  %1502 = add nsw i32 %793, -2
  %1503 = icmp slt i32 %1463, %2
  br i1 %1503, label %1508, label %1504

1504:                                             ; preds = %1501
  %1505 = shl nsw i32 %2, 1
  %1506 = sub i32 -2, %1463
  %1507 = add i32 %1506, %1505
  br label %1510

1508:                                             ; preds = %1501
  %1509 = icmp slt i32 %1463, 0
  br i1 %1509, label %1510, label %1512

1510:                                             ; preds = %1508, %1504
  %1511 = phi i32 [ %1507, %1504 ], [ %1464, %1508 ]
  br label %1512

1512:                                             ; preds = %1510, %1508
  %1513 = phi i32 [ %1511, %1510 ], [ %1463, %1508 ]
  %1514 = mul nsw i32 %1502, %2
  %1515 = add i32 %1513, %1514
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1516
  %1518 = load i32, i32 addrspace(1)* %1517, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1519 = add nsw i32 %1515, %2
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1520
  %1522 = load i32, i32 addrspace(1)* %1521, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1523 = add nsw i32 %1519, %2
  %1524 = sext i32 %1523 to i64
  %1525 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1524
  %1526 = load i32, i32 addrspace(1)* %1525, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1527

1527:                                             ; preds = %1512, %1498, %1445
  %1528 = phi i32 [ 0, %1445 ], [ %1481, %1498 ], [ %1526, %1512 ]
  %1529 = phi i32 [ 0, %1445 ], [ %1485, %1498 ], [ %1522, %1512 ]
  %1530 = phi i32 [ 0, %1445 ], [ %1489, %1498 ], [ %1518, %1512 ]
  %1531 = phi i32 [ 0, %1445 ], [ %1462, %1498 ], [ %1462, %1512 ]
  %1532 = phi i32 [ 0, %1445 ], [ %1500, %1498 ], [ %1523, %1512 ]
  %1533 = phi i32 [ 0, %1445 ], [ %2, %1498 ], [ %2, %1512 ]
  %1534 = shl nuw nsw i32 %794, 1
  %1535 = trunc i32 %794 to i16
  %1536 = udiv i16 %1535, 96
  %1537 = zext i16 %1536 to i32
  %1538 = mul nsw i32 %1537, -191
  %1539 = add nsw i32 %1538, %1534
  %1540 = trunc i32 %1539 to i16
  %1541 = add nsw i16 %1540, 2
  %1542 = sdiv i16 %1541, 2
  %1543 = sext i16 %1542 to i32
  %1544 = and i32 %1539, 1
  %1545 = icmp eq i32 %1544, 0
  %1546 = select i1 %1545, i32 0, i32 1080
  %1547 = add nsw i32 %1546, %1543
  %1548 = add i32 %1539, %790
  %1549 = icmp slt i32 %1548, %2
  br i1 %1549, label %1550, label %1575

1550:                                             ; preds = %1527
  %1551 = sdiv i32 %1548, 2
  %1552 = and i32 %1548, 1
  %1553 = icmp eq i32 %1552, 0
  %1554 = sdiv i32 %2, 2
  %1555 = and i32 %2, 1
  %1556 = add nsw i32 %1554, %1555
  %1557 = sdiv i32 %3, 2
  %1558 = and i32 %3, 1
  %1559 = add nsw i32 %1557, %1558
  br i1 %1553, label %1565, label %1560

1560:                                             ; preds = %1550
  %1561 = mul nsw i32 %1559, %1556
  %1562 = add nsw i32 %1561, %1551
  %1563 = mul nsw i32 %3, %2
  %1564 = sdiv i32 %1563, 2
  br label %1567

1565:                                             ; preds = %1550
  %1566 = mul nsw i32 %1559, %2
  br label %1567

1567:                                             ; preds = %1565, %1560
  %1568 = phi i32 [ %1566, %1565 ], [ %1564, %1560 ]
  %1569 = phi i32 [ %1551, %1565 ], [ %1562, %1560 ]
  %1570 = phi i32 [ %1556, %1565 ], [ %1554, %1560 ]
  %1571 = sub nsw i32 %1570, %1568
  %1572 = sdiv i32 %793, 2
  %1573 = mul nsw i32 %1570, %1572
  %1574 = add i32 %1573, %1569
  br label %1575

1575:                                             ; preds = %1567, %1527
  %1576 = phi i32 [ %1568, %1567 ], [ 0, %1527 ]
  %1577 = phi i32 [ %1571, %1567 ], [ 0, %1527 ]
  %1578 = phi i32 [ %1574, %1567 ], [ 0, %1527 ]
  %1579 = icmp sgt i32 %4, 0
  br i1 %1579, label %1580, label %1922

1580:                                             ; preds = %1575
  %1581 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %800
  %1582 = add nuw nsw i32 %800, 98
  %1583 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1582
  %1584 = add nuw nsw i32 %800, 196
  %1585 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1584
  %1586 = add nuw nsw i32 %800, 294
  %1587 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1586
  %1588 = add nuw nsw i32 %800, 392
  %1589 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1588
  %1590 = add nuw nsw i32 %800, 490
  %1591 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1590
  %1592 = add nuw nsw i32 %800, 588
  %1593 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1592
  %1594 = add nuw nsw i32 %800, 686
  %1595 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1594
  %1596 = add nuw nsw i32 %800, 784
  %1597 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1596
  %1598 = add nuw nsw i32 %800, 882
  %1599 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1598
  %1600 = add nuw nsw i32 %800, 980
  %1601 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1600
  %1602 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1531
  %1603 = add nuw nsw i32 %1531, 98
  %1604 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1603
  %1605 = add nuw nsw i32 %1531, 196
  %1606 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1605
  %1607 = add nuw nsw i32 %1531, 294
  %1608 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1607
  %1609 = add nuw nsw i32 %1531, 392
  %1610 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1609
  %1611 = add nuw nsw i32 %1531, 490
  %1612 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1611
  %1613 = add nuw nsw i32 %1531, 588
  %1614 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1613
  %1615 = add nuw nsw i32 %1531, 686
  %1616 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1615
  %1617 = add nuw nsw i32 %1531, 784
  %1618 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1617
  %1619 = add nuw nsw i32 %1531, 882
  %1620 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1619
  %1621 = add nuw nsw i32 %1531, 980
  %1622 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1621
  %1623 = add nuw nsw i32 %794, 196
  %1624 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1623
  %1625 = add nuw nsw i32 %794, 197
  %1626 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1625
  %1627 = add nuw nsw i32 %794, 1276
  %1628 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1627
  %1629 = add nuw nsw i32 %794, 388
  %1630 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1629
  %1631 = add nuw nsw i32 %794, 389
  %1632 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1631
  %1633 = add nuw nsw i32 %794, 1468
  %1634 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1633
  %1635 = add nuw nsw i32 %794, 580
  %1636 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1635
  %1637 = add nuw nsw i32 %794, 581
  %1638 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1637
  %1639 = add nuw nsw i32 %794, 1660
  %1640 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1639
  %1641 = add nuw nsw i32 %794, 772
  %1642 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1641
  %1643 = add nuw nsw i32 %794, 773
  %1644 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1643
  %1645 = add nuw nsw i32 %794, 1852
  %1646 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1645
  %1647 = icmp ult i32 %794, 15
  %1648 = add nuw nsw i32 %794, 964
  %1649 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1648
  %1650 = add nuw nsw i32 %794, 965
  %1651 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1650
  %1652 = add nuw nsw i32 %794, 2044
  %1653 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1652
  %1654 = add nuw nsw i32 %794, 1277
  %1655 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1654
  %1656 = add nuw nsw i32 %794, 1469
  %1657 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1656
  %1658 = add nuw nsw i32 %794, 1661
  %1659 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1658
  %1660 = add nuw nsw i32 %794, 1853
  %1661 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1660
  %1662 = add nuw nsw i32 %794, 2045
  %1663 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1662
  %1664 = add nsw i32 %1547, 196
  %1665 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1664
  %1666 = add nsw i32 %1547, 294
  %1667 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1666
  %1668 = add nsw i32 %1547, 392
  %1669 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1668
  %1670 = add nsw i32 %1547, 490
  %1671 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1670
  %1672 = add nsw i32 %1547, 588
  %1673 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1672
  %1674 = add nsw i32 %1547, 686
  %1675 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1674
  %1676 = add nsw i32 %1547, 784
  %1677 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1676
  %1678 = add nsw i32 %1547, 882
  %1679 = getelementptr inbounds %"class.dwt_cuda::FDWT53", %"class.dwt_cuda::FDWT53" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi192ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1678
  br label %1680

1680:                                             ; preds = %1887, %1580
  %1681 = phi i32 [ 0, %1580 ], [ %1920, %1887 ]
  %1682 = phi i32 [ %1578, %1580 ], [ %1919, %1887 ]
  %1683 = phi i32 [ %1532, %1580 ], [ %1818, %1887 ]
  %1684 = phi i32 [ %1530, %1580 ], [ %1817, %1887 ]
  %1685 = phi i32 [ %1529, %1580 ], [ %1816, %1887 ]
  %1686 = phi i32 [ %1528, %1580 ], [ %1815, %1887 ]
  %1687 = phi i32 [ %1449, %1580 ], [ %1719, %1887 ]
  %1688 = phi i32 [ %1448, %1580 ], [ %1722, %1887 ]
  %1689 = phi i32 [ %1447, %1580 ], [ %1714, %1887 ]
  %1690 = phi i32 [ %1446, %1580 ], [ %1718, %1887 ]
  store i32 %1689, i32 addrspace(3)* %1581, align 4, !tbaa !6
  %1691 = add nsw i32 %1687, %2
  %1692 = sext i32 %1691 to i64
  %1693 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1692
  %1694 = load i32, i32 addrspace(1)* %1693, align 4, !tbaa !6
  %1695 = add nsw i32 %1691, %2
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1696
  %1698 = load i32, i32 addrspace(1)* %1697, align 4, !tbaa !6
  %1699 = add nsw i32 %1695, %2
  %1700 = sext i32 %1699 to i64
  %1701 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1700
  %1702 = load i32, i32 addrspace(1)* %1701, align 4, !tbaa !6
  %1703 = add nsw i32 %1699, %2
  %1704 = sext i32 %1703 to i64
  %1705 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1704
  %1706 = load i32, i32 addrspace(1)* %1705, align 4, !tbaa !6
  %1707 = add nsw i32 %1703, %2
  %1708 = sext i32 %1707 to i64
  %1709 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1708
  %1710 = load i32, i32 addrspace(1)* %1709, align 4, !tbaa !6
  %1711 = add nsw i32 %1707, %2
  %1712 = sext i32 %1711 to i64
  %1713 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1712
  %1714 = load i32, i32 addrspace(1)* %1713, align 4, !tbaa !6
  %1715 = add nsw i32 %1711, %2
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1716
  %1718 = load i32, i32 addrspace(1)* %1717, align 4, !tbaa !6
  %1719 = add nsw i32 %1715, %2
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1720
  %1722 = load i32, i32 addrspace(1)* %1721, align 4, !tbaa !6
  store i32 %1722, i32 addrspace(3)* %1601, align 4, !tbaa !6
  %1723 = add nsw i32 %1689, %1688
  %1724 = sdiv i32 %1723, -2
  %1725 = add i32 %1724, %1690
  store i32 %1725, i32 addrspace(3)* %1583, align 4, !tbaa !6
  %1726 = add nsw i32 %1698, %1688
  %1727 = sdiv i32 %1726, -2
  %1728 = add i32 %1727, %1694
  store i32 %1728, i32 addrspace(3)* %1587, align 4, !tbaa !6
  %1729 = add nsw i32 %1706, %1698
  %1730 = sdiv i32 %1729, -2
  %1731 = add i32 %1730, %1702
  store i32 %1731, i32 addrspace(3)* %1591, align 4, !tbaa !6
  %1732 = add nsw i32 %1714, %1706
  %1733 = sdiv i32 %1732, -2
  %1734 = add i32 %1733, %1710
  store i32 %1734, i32 addrspace(3)* %1595, align 4, !tbaa !6
  %1735 = add nsw i32 %1722, %1714
  %1736 = sdiv i32 %1735, -2
  %1737 = add i32 %1736, %1718
  store i32 %1737, i32 addrspace(3)* %1599, align 4, !tbaa !6
  %1738 = add i32 %1728, 2
  %1739 = add i32 %1738, %1725
  %1740 = sdiv i32 %1739, 4
  %1741 = add nsw i32 %1740, %1688
  store i32 %1741, i32 addrspace(3)* %1585, align 4, !tbaa !6
  %1742 = add i32 %1731, %1738
  %1743 = sdiv i32 %1742, 4
  %1744 = add nsw i32 %1743, %1698
  store i32 %1744, i32 addrspace(3)* %1589, align 4, !tbaa !6
  %1745 = add i32 %1734, 2
  %1746 = add i32 %1745, %1731
  %1747 = sdiv i32 %1746, 4
  %1748 = add nsw i32 %1747, %1706
  store i32 %1748, i32 addrspace(3)* %1593, align 4, !tbaa !6
  %1749 = add i32 %1737, %1745
  %1750 = sdiv i32 %1749, 4
  %1751 = add nsw i32 %1750, %1714
  store i32 %1751, i32 addrspace(3)* %1597, align 4, !tbaa !6
  br i1 %1450, label %1752, label %1814

1752:                                             ; preds = %1680
  store i32 %1684, i32 addrspace(3)* %1602, align 4, !tbaa !6
  %1753 = add nsw i32 %1683, %1533
  %1754 = sext i32 %1753 to i64
  %1755 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1754
  %1756 = load i32, i32 addrspace(1)* %1755, align 4, !tbaa !6
  %1757 = add nsw i32 %1753, %1533
  %1758 = sext i32 %1757 to i64
  %1759 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1758
  %1760 = load i32, i32 addrspace(1)* %1759, align 4, !tbaa !6
  %1761 = add nsw i32 %1757, %1533
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1762
  %1764 = load i32, i32 addrspace(1)* %1763, align 4, !tbaa !6
  %1765 = add nsw i32 %1761, %1533
  %1766 = sext i32 %1765 to i64
  %1767 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1766
  %1768 = load i32, i32 addrspace(1)* %1767, align 4, !tbaa !6
  %1769 = add nsw i32 %1765, %1533
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1770
  %1772 = load i32, i32 addrspace(1)* %1771, align 4, !tbaa !6
  %1773 = add nsw i32 %1769, %1533
  %1774 = sext i32 %1773 to i64
  %1775 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1774
  %1776 = load i32, i32 addrspace(1)* %1775, align 4, !tbaa !6
  %1777 = add nsw i32 %1773, %1533
  %1778 = sext i32 %1777 to i64
  %1779 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1778
  %1780 = load i32, i32 addrspace(1)* %1779, align 4, !tbaa !6
  %1781 = add nsw i32 %1777, %1533
  %1782 = sext i32 %1781 to i64
  %1783 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1782
  %1784 = load i32, i32 addrspace(1)* %1783, align 4, !tbaa !6
  store i32 %1784, i32 addrspace(3)* %1622, align 4, !tbaa !6
  %1785 = add nsw i32 %1686, %1684
  %1786 = sdiv i32 %1785, -2
  %1787 = add i32 %1786, %1685
  store i32 %1787, i32 addrspace(3)* %1604, align 4, !tbaa !6
  %1788 = add nsw i32 %1760, %1686
  %1789 = sdiv i32 %1788, -2
  %1790 = add i32 %1789, %1756
  store i32 %1790, i32 addrspace(3)* %1608, align 4, !tbaa !6
  %1791 = add nsw i32 %1768, %1760
  %1792 = sdiv i32 %1791, -2
  %1793 = add i32 %1792, %1764
  store i32 %1793, i32 addrspace(3)* %1612, align 4, !tbaa !6
  %1794 = add nsw i32 %1776, %1768
  %1795 = sdiv i32 %1794, -2
  %1796 = add i32 %1795, %1772
  store i32 %1796, i32 addrspace(3)* %1616, align 4, !tbaa !6
  %1797 = add nsw i32 %1784, %1776
  %1798 = sdiv i32 %1797, -2
  %1799 = add i32 %1798, %1780
  store i32 %1799, i32 addrspace(3)* %1620, align 4, !tbaa !6
  %1800 = add i32 %1790, 2
  %1801 = add i32 %1800, %1787
  %1802 = sdiv i32 %1801, 4
  %1803 = add nsw i32 %1802, %1686
  store i32 %1803, i32 addrspace(3)* %1606, align 4, !tbaa !6
  %1804 = add i32 %1793, %1800
  %1805 = sdiv i32 %1804, 4
  %1806 = add nsw i32 %1805, %1760
  store i32 %1806, i32 addrspace(3)* %1610, align 4, !tbaa !6
  %1807 = add i32 %1796, 2
  %1808 = add i32 %1807, %1793
  %1809 = sdiv i32 %1808, 4
  %1810 = add nsw i32 %1809, %1768
  store i32 %1810, i32 addrspace(3)* %1614, align 4, !tbaa !6
  %1811 = add i32 %1799, %1807
  %1812 = sdiv i32 %1811, 4
  %1813 = add nsw i32 %1812, %1776
  store i32 %1813, i32 addrspace(3)* %1618, align 4, !tbaa !6
  br label %1814

1814:                                             ; preds = %1752, %1680
  %1815 = phi i32 [ %1784, %1752 ], [ %1686, %1680 ]
  %1816 = phi i32 [ %1780, %1752 ], [ %1685, %1680 ]
  %1817 = phi i32 [ %1776, %1752 ], [ %1684, %1680 ]
  %1818 = phi i32 [ %1781, %1752 ], [ %1683, %1680 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1819 = load i32, i32 addrspace(3)* %1624, align 4, !tbaa !6
  %1820 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1821 = add nsw i32 %1820, %1819
  %1822 = sdiv i32 %1821, -2
  %1823 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1824 = add i32 %1822, %1823
  store i32 %1824, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1825 = load i32, i32 addrspace(3)* %1630, align 4, !tbaa !6
  %1826 = load i32, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1827 = add nsw i32 %1826, %1825
  %1828 = sdiv i32 %1827, -2
  %1829 = load i32, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1830 = add i32 %1828, %1829
  store i32 %1830, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1831 = load i32, i32 addrspace(3)* %1636, align 4, !tbaa !6
  %1832 = load i32, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1833 = add nsw i32 %1832, %1831
  %1834 = sdiv i32 %1833, -2
  %1835 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !6
  %1836 = add i32 %1834, %1835
  store i32 %1836, i32 addrspace(3)* %1640, align 4, !tbaa !6
  %1837 = load i32, i32 addrspace(3)* %1642, align 4, !tbaa !6
  %1838 = load i32, i32 addrspace(3)* %1644, align 4, !tbaa !6
  %1839 = add nsw i32 %1838, %1837
  %1840 = sdiv i32 %1839, -2
  %1841 = load i32, i32 addrspace(3)* %1646, align 4, !tbaa !6
  %1842 = add i32 %1840, %1841
  store i32 %1842, i32 addrspace(3)* %1646, align 4, !tbaa !6
  br i1 %1647, label %1843, label %1850

1843:                                             ; preds = %1814
  %1844 = load i32, i32 addrspace(3)* %1649, align 4, !tbaa !6
  %1845 = load i32, i32 addrspace(3)* %1651, align 4, !tbaa !6
  %1846 = add nsw i32 %1845, %1844
  %1847 = sdiv i32 %1846, -2
  %1848 = load i32, i32 addrspace(3)* %1653, align 4, !tbaa !6
  %1849 = add i32 %1847, %1848
  store i32 %1849, i32 addrspace(3)* %1653, align 4, !tbaa !6
  br label %1850

1850:                                             ; preds = %1843, %1814
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1851 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1852 = load i32, i32 addrspace(3)* %1655, align 4, !tbaa !6
  %1853 = add i32 %1851, 2
  %1854 = add i32 %1853, %1852
  %1855 = sdiv i32 %1854, 4
  %1856 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1857 = add nsw i32 %1855, %1856
  store i32 %1857, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1858 = load i32, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1859 = load i32, i32 addrspace(3)* %1657, align 4, !tbaa !6
  %1860 = add i32 %1858, 2
  %1861 = add i32 %1860, %1859
  %1862 = sdiv i32 %1861, 4
  %1863 = load i32, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1864 = add nsw i32 %1862, %1863
  store i32 %1864, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1865 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !6
  %1866 = load i32, i32 addrspace(3)* %1659, align 4, !tbaa !6
  %1867 = add i32 %1865, 2
  %1868 = add i32 %1867, %1866
  %1869 = sdiv i32 %1868, 4
  %1870 = load i32, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1871 = add nsw i32 %1869, %1870
  store i32 %1871, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1872 = load i32, i32 addrspace(3)* %1646, align 4, !tbaa !6
  %1873 = load i32, i32 addrspace(3)* %1661, align 4, !tbaa !6
  %1874 = add i32 %1872, 2
  %1875 = add i32 %1874, %1873
  %1876 = sdiv i32 %1875, 4
  %1877 = load i32, i32 addrspace(3)* %1644, align 4, !tbaa !6
  %1878 = add nsw i32 %1876, %1877
  store i32 %1878, i32 addrspace(3)* %1644, align 4, !tbaa !6
  br i1 %1647, label %1879, label %1887

1879:                                             ; preds = %1850
  %1880 = load i32, i32 addrspace(3)* %1653, align 4, !tbaa !6
  %1881 = load i32, i32 addrspace(3)* %1663, align 4, !tbaa !6
  %1882 = add i32 %1880, 2
  %1883 = add i32 %1882, %1881
  %1884 = sdiv i32 %1883, 4
  %1885 = load i32, i32 addrspace(3)* %1651, align 4, !tbaa !6
  %1886 = add nsw i32 %1884, %1885
  store i32 %1886, i32 addrspace(3)* %1651, align 4, !tbaa !6
  br label %1887

1887:                                             ; preds = %1879, %1850
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1888 = load i32, i32 addrspace(3)* %1665, align 4, !tbaa !6
  %1889 = sext i32 %1682 to i64
  %1890 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1889
  store i32 %1888, i32 addrspace(1)* %1890, align 4, !tbaa !6
  %1891 = add nsw i32 %1682, %1576
  %1892 = load i32, i32 addrspace(3)* %1667, align 4, !tbaa !6
  %1893 = sext i32 %1891 to i64
  %1894 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1893
  store i32 %1892, i32 addrspace(1)* %1894, align 4, !tbaa !6
  %1895 = add nsw i32 %1891, %1577
  %1896 = load i32, i32 addrspace(3)* %1669, align 4, !tbaa !6
  %1897 = sext i32 %1895 to i64
  %1898 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1897
  store i32 %1896, i32 addrspace(1)* %1898, align 4, !tbaa !6
  %1899 = add nsw i32 %1895, %1576
  %1900 = load i32, i32 addrspace(3)* %1671, align 4, !tbaa !6
  %1901 = sext i32 %1899 to i64
  %1902 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1901
  store i32 %1900, i32 addrspace(1)* %1902, align 4, !tbaa !6
  %1903 = add nsw i32 %1899, %1577
  %1904 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !6
  %1905 = sext i32 %1903 to i64
  %1906 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1905
  store i32 %1904, i32 addrspace(1)* %1906, align 4, !tbaa !6
  %1907 = add nsw i32 %1903, %1576
  %1908 = load i32, i32 addrspace(3)* %1675, align 4, !tbaa !6
  %1909 = sext i32 %1907 to i64
  %1910 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1909
  store i32 %1908, i32 addrspace(1)* %1910, align 4, !tbaa !6
  %1911 = add nsw i32 %1907, %1577
  %1912 = load i32, i32 addrspace(3)* %1677, align 4, !tbaa !6
  %1913 = sext i32 %1911 to i64
  %1914 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1913
  store i32 %1912, i32 addrspace(1)* %1914, align 4, !tbaa !6
  %1915 = add nsw i32 %1911, %1576
  %1916 = load i32, i32 addrspace(3)* %1679, align 4, !tbaa !6
  %1917 = sext i32 %1915 to i64
  %1918 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1917
  store i32 %1916, i32 addrspace(1)* %1918, align 4, !tbaa !6
  %1919 = add nsw i32 %1915, %1577
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1920 = add nuw nsw i32 %1681, 1
  %1921 = icmp eq i32 %1920, %4
  br i1 %1921, label %1922, label %1680, !llvm.loop !14

1922:                                             ; preds = %785, %1378, %1887, %310, %1002, %1575
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12fdwt53KernelILi128ELi8EEEvPKiPiiii(i32 addrspace(1)* readonly %0, i32 addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #2 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = shl i32 %7, 3
  %9 = add i32 %8, 8
  %10 = mul i32 %9, %4
  %11 = or i32 %10, 1
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %787, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = add nuw nsw i32 %15, 2
  %17 = lshr i32 %16, 1
  %18 = and i32 %15, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 728
  %21 = add nuw nsw i32 %20, %17
  %22 = shl i32 %6, 7
  %23 = add i32 %22, %15
  %24 = sub i32 0, %23
  %25 = icmp eq i32 %7, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %13
  %27 = icmp slt i32 %23, %2
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = shl nsw i32 %2, 1
  %30 = sub i32 -2, %23
  %31 = add i32 %30, %29
  br label %34

32:                                               ; preds = %26
  %33 = icmp slt i32 %23, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %24, %32 ]
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %35, %34 ], [ %23, %32 ]
  %38 = mul nsw i32 %3, %2
  %39 = add nsw i32 %37, %38
  %40 = mul i32 %14, %2
  %41 = icmp eq i32 %40, %38
  %42 = mul i32 %2, -2
  %43 = sub nsw i32 0, %2
  %44 = shl i32 %2, 1
  %45 = select i1 %41, i32 %44, i32 %42
  %46 = select i1 %41, i32 %43, i32 %2
  %47 = select i1 %41, i32 %42, i32 0
  %48 = add i32 %47, %40
  %49 = add i32 %48, %37
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %50
  %52 = load i32, i32 addrspace(1)* %51, align 4, !tbaa !6, !amdgpu.noclobber !10
  %53 = add nsw i32 %49, %46
  %54 = icmp eq i32 %53, %39
  %55 = sub nsw i32 0, %46
  %56 = shl i32 %46, 1
  %57 = select i1 %54, i32 %56, i32 %45
  %58 = select i1 %54, i32 %55, i32 %46
  %59 = select i1 %54, i32 %45, i32 0
  %60 = add i32 %59, %53
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %61
  %63 = load i32, i32 addrspace(1)* %62, align 4, !tbaa !6, !amdgpu.noclobber !10
  %64 = add nsw i32 %60, %58
  %65 = icmp eq i32 %64, %39
  %66 = select i1 %65, i32 %57, i32 0
  %67 = add i32 %66, %64
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %68
  %70 = load i32, i32 addrspace(1)* %69, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %27, label %74, label %71

71:                                               ; preds = %36
  %72 = sub i32 -2, %23
  %73 = add i32 %72, %44
  br label %76

74:                                               ; preds = %36
  %75 = icmp slt i32 %23, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %24, %74 ]
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %77, %76 ], [ %23, %74 ]
  %80 = add nsw i32 %79, %38
  %81 = add i32 %79, %40
  br label %130

82:                                               ; preds = %13
  %83 = add nsw i32 %14, -2
  %84 = icmp slt i32 %23, %2
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = shl nsw i32 %2, 1
  %87 = sub i32 -2, %23
  %88 = add i32 %87, %86
  br label %91

89:                                               ; preds = %82
  %90 = icmp slt i32 %23, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %88, %85 ], [ %24, %89 ]
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %92, %91 ], [ %23, %89 ]
  %95 = mul nsw i32 %3, %2
  %96 = add nsw i32 %94, %95
  %97 = mul nsw i32 %83, %2
  %98 = icmp eq i32 %97, %95
  %99 = mul i32 %2, -2
  %100 = sub nsw i32 0, %2
  %101 = shl i32 %2, 1
  %102 = select i1 %98, i32 %100, i32 %2
  %103 = select i1 %98, i32 %101, i32 %99
  %104 = select i1 %98, i32 %99, i32 0
  %105 = add i32 %104, %97
  %106 = add i32 %105, %94
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %107
  %109 = load i32, i32 addrspace(1)* %108, align 4, !tbaa !6, !amdgpu.noclobber !10
  %110 = add nsw i32 %106, %102
  %111 = icmp eq i32 %110, %96
  %112 = sub nsw i32 0, %102
  %113 = shl i32 %102, 1
  %114 = select i1 %111, i32 %112, i32 %102
  %115 = select i1 %111, i32 %113, i32 %103
  %116 = select i1 %111, i32 %103, i32 0
  %117 = add i32 %116, %110
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %118
  %120 = load i32, i32 addrspace(1)* %119, align 4, !tbaa !6, !amdgpu.noclobber !10
  %121 = add nsw i32 %117, %114
  %122 = icmp eq i32 %121, %96
  %123 = sub nsw i32 0, %114
  %124 = select i1 %122, i32 %115, i32 0
  %125 = add i32 %124, %121
  %126 = select i1 %122, i32 %123, i32 %114
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %127
  %129 = load i32, i32 addrspace(1)* %128, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %130

130:                                              ; preds = %93, %78
  %131 = phi i32 [ %63, %78 ], [ %120, %93 ]
  %132 = phi i32 [ %70, %78 ], [ %109, %93 ]
  %133 = phi i32 [ %52, %78 ], [ %129, %93 ]
  %134 = phi i32 [ %81, %78 ], [ %125, %93 ]
  %135 = phi i32 [ %2, %78 ], [ %126, %93 ]
  %136 = phi i32 [ %80, %78 ], [ %96, %93 ]
  %137 = icmp ult i32 %15, 3
  br i1 %137, label %138, label %256

138:                                              ; preds = %130
  %139 = icmp eq i32 %15, 0
  %140 = select i1 %139, i32 128, i32 -3
  %141 = add nsw i32 %140, %15
  %142 = trunc i32 %141 to i16
  %143 = add nsw i16 %142, 2
  %144 = sdiv i16 %143, 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %141, 1
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 0, i32 728
  %149 = add nuw nsw i32 %148, %145
  %150 = add i32 %141, %22
  %151 = sub i32 0, %150
  br i1 %25, label %152, label %208

152:                                              ; preds = %138
  %153 = icmp slt i32 %150, %2
  br i1 %153, label %158, label %154

154:                                              ; preds = %152
  %155 = shl nsw i32 %2, 1
  %156 = sub i32 -2, %150
  %157 = add i32 %156, %155
  br label %160

158:                                              ; preds = %152
  %159 = icmp slt i32 %150, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %158, %154
  %161 = phi i32 [ %157, %154 ], [ %151, %158 ]
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %161, %160 ], [ %150, %158 ]
  %164 = mul nsw i32 %3, %2
  %165 = add nsw i32 %163, %164
  %166 = mul i32 %14, %2
  %167 = icmp eq i32 %166, %164
  %168 = mul i32 %2, -2
  %169 = sub nsw i32 0, %2
  %170 = shl i32 %2, 1
  %171 = select i1 %167, i32 %170, i32 %168
  %172 = select i1 %167, i32 %169, i32 %2
  %173 = select i1 %167, i32 %168, i32 0
  %174 = add i32 %173, %166
  %175 = add i32 %174, %163
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %176
  %178 = load i32, i32 addrspace(1)* %177, align 4, !tbaa !6, !amdgpu.noclobber !10
  %179 = add nsw i32 %175, %172
  %180 = icmp eq i32 %179, %165
  %181 = sub nsw i32 0, %172
  %182 = shl i32 %172, 1
  %183 = select i1 %180, i32 %182, i32 %171
  %184 = select i1 %180, i32 %181, i32 %172
  %185 = select i1 %180, i32 %171, i32 0
  %186 = add i32 %185, %179
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %187
  %189 = load i32, i32 addrspace(1)* %188, align 4, !tbaa !6, !amdgpu.noclobber !10
  %190 = add nsw i32 %186, %184
  %191 = icmp eq i32 %190, %165
  %192 = select i1 %191, i32 %183, i32 0
  %193 = add i32 %192, %190
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %194
  %196 = load i32, i32 addrspace(1)* %195, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %153, label %200, label %197

197:                                              ; preds = %162
  %198 = sub i32 -2, %150
  %199 = add i32 %198, %170
  br label %202

200:                                              ; preds = %162
  %201 = icmp slt i32 %150, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %199, %197 ], [ %151, %200 ]
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %203, %202 ], [ %150, %200 ]
  %206 = add nsw i32 %205, %164
  %207 = add i32 %205, %166
  br label %256

208:                                              ; preds = %138
  %209 = add nsw i32 %14, -2
  %210 = icmp slt i32 %150, %2
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = shl nsw i32 %2, 1
  %213 = sub i32 -2, %150
  %214 = add i32 %213, %212
  br label %217

215:                                              ; preds = %208
  %216 = icmp slt i32 %150, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %215, %211
  %218 = phi i32 [ %214, %211 ], [ %151, %215 ]
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %218, %217 ], [ %150, %215 ]
  %221 = mul nsw i32 %3, %2
  %222 = add nsw i32 %220, %221
  %223 = mul nsw i32 %209, %2
  %224 = icmp eq i32 %223, %221
  %225 = mul i32 %2, -2
  %226 = sub nsw i32 0, %2
  %227 = shl i32 %2, 1
  %228 = select i1 %224, i32 %226, i32 %2
  %229 = select i1 %224, i32 %227, i32 %225
  %230 = select i1 %224, i32 %225, i32 0
  %231 = add i32 %230, %223
  %232 = add i32 %231, %220
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %233
  %235 = load i32, i32 addrspace(1)* %234, align 4, !tbaa !6, !amdgpu.noclobber !10
  %236 = add nsw i32 %232, %228
  %237 = icmp eq i32 %236, %222
  %238 = sub nsw i32 0, %228
  %239 = shl i32 %228, 1
  %240 = select i1 %237, i32 %238, i32 %228
  %241 = select i1 %237, i32 %239, i32 %229
  %242 = select i1 %237, i32 %229, i32 0
  %243 = add i32 %242, %236
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %244
  %246 = load i32, i32 addrspace(1)* %245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %247 = add nsw i32 %243, %240
  %248 = icmp eq i32 %247, %222
  %249 = sub nsw i32 0, %240
  %250 = select i1 %248, i32 %241, i32 0
  %251 = add i32 %250, %247
  %252 = select i1 %248, i32 %249, i32 %240
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %253
  %255 = load i32, i32 addrspace(1)* %254, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %256

256:                                              ; preds = %219, %204, %130
  %257 = phi i32 [ 0, %130 ], [ %178, %204 ], [ %255, %219 ]
  %258 = phi i32 [ 0, %130 ], [ %189, %204 ], [ %246, %219 ]
  %259 = phi i32 [ 0, %130 ], [ %196, %204 ], [ %235, %219 ]
  %260 = phi i32 [ 0, %130 ], [ %149, %204 ], [ %149, %219 ]
  %261 = phi i32 [ 0, %130 ], [ %207, %204 ], [ %251, %219 ]
  %262 = phi i32 [ 0, %130 ], [ %2, %204 ], [ %252, %219 ]
  %263 = phi i32 [ 0, %130 ], [ %206, %204 ], [ %222, %219 ]
  %264 = shl nuw nsw i32 %15, 1
  %265 = lshr i32 %15, 6
  %266 = mul nsw i32 %265, -127
  %267 = add nsw i32 %266, %264
  %268 = trunc i32 %267 to i16
  %269 = add nsw i16 %268, 2
  %270 = sdiv i16 %269, 2
  %271 = sext i16 %270 to i32
  %272 = and i32 %267, 1
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, i32 0, i32 728
  %275 = add nsw i32 %274, %271
  %276 = add i32 %267, %22
  %277 = icmp slt i32 %276, %2
  br i1 %277, label %278, label %308

278:                                              ; preds = %256
  %279 = sdiv i32 %276, 2
  %280 = and i32 %276, 1
  %281 = icmp eq i32 %280, 0
  %282 = sdiv i32 %2, 2
  %283 = and i32 %2, 1
  %284 = add nsw i32 %282, %283
  %285 = sdiv i32 %3, 2
  %286 = and i32 %3, 1
  %287 = add nsw i32 %285, %286
  br i1 %281, label %293, label %288

288:                                              ; preds = %278
  %289 = mul nsw i32 %287, %284
  %290 = add nsw i32 %289, %279
  %291 = mul nsw i32 %3, %2
  %292 = sdiv i32 %291, 2
  br label %295

293:                                              ; preds = %278
  %294 = mul nsw i32 %287, %2
  br label %295

295:                                              ; preds = %293, %288
  %296 = phi i32 [ %294, %293 ], [ %292, %288 ]
  %297 = phi i32 [ %279, %293 ], [ %290, %288 ]
  %298 = phi i32 [ %284, %293 ], [ %282, %288 ]
  %299 = sub nsw i32 %298, %296
  %300 = mul nsw i32 %298, %285
  %301 = icmp eq i32 %286, 0
  %302 = select i1 %301, i32 0, i32 %296
  %303 = add i32 %302, %297
  %304 = add i32 %303, %300
  %305 = sdiv i32 %14, 2
  %306 = mul nsw i32 %298, %305
  %307 = add i32 %306, %297
  br label %308

308:                                              ; preds = %295, %256
  %309 = phi i32 [ %296, %295 ], [ 0, %256 ]
  %310 = phi i32 [ %299, %295 ], [ 0, %256 ]
  %311 = phi i32 [ %304, %295 ], [ 0, %256 ]
  %312 = phi i32 [ %307, %295 ], [ 0, %256 ]
  %313 = icmp sgt i32 %4, 0
  br i1 %313, label %314, label %1916

314:                                              ; preds = %308
  %315 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %21
  %316 = add nuw nsw i32 %21, 66
  %317 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %316
  %318 = add nuw nsw i32 %21, 132
  %319 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %318
  %320 = add nuw nsw i32 %21, 198
  %321 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %320
  %322 = add nuw nsw i32 %21, 264
  %323 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %322
  %324 = add nuw nsw i32 %21, 330
  %325 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %324
  %326 = add nuw nsw i32 %21, 396
  %327 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %326
  %328 = add nuw nsw i32 %21, 462
  %329 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %328
  %330 = add nuw nsw i32 %21, 528
  %331 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %330
  %332 = add nuw nsw i32 %21, 594
  %333 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %332
  %334 = add nuw nsw i32 %21, 660
  %335 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %334
  %336 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %260
  %337 = add nuw nsw i32 %260, 66
  %338 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %337
  %339 = add nuw nsw i32 %260, 132
  %340 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %339
  %341 = add nuw nsw i32 %260, 198
  %342 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %341
  %343 = add nuw nsw i32 %260, 264
  %344 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %343
  %345 = add nuw nsw i32 %260, 330
  %346 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %345
  %347 = add nuw nsw i32 %260, 396
  %348 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %347
  %349 = add nuw nsw i32 %260, 462
  %350 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %349
  %351 = add nuw nsw i32 %260, 528
  %352 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %351
  %353 = add nuw nsw i32 %260, 594
  %354 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %353
  %355 = add nuw nsw i32 %260, 660
  %356 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %355
  %357 = add nuw nsw i32 %15, 132
  %358 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %357
  %359 = add nuw nsw i32 %15, 133
  %360 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %359
  %361 = add nuw nsw i32 %15, 860
  %362 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %361
  %363 = add nuw nsw i32 %15, 260
  %364 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %363
  %365 = add nuw nsw i32 %15, 261
  %366 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %365
  %367 = add nuw nsw i32 %15, 988
  %368 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %367
  %369 = add nuw nsw i32 %15, 388
  %370 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %369
  %371 = add nuw nsw i32 %15, 389
  %372 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %371
  %373 = add nuw nsw i32 %15, 1116
  %374 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %373
  %375 = add nuw nsw i32 %15, 516
  %376 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %375
  %377 = add nuw nsw i32 %15, 517
  %378 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %377
  %379 = add nuw nsw i32 %15, 1244
  %380 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %379
  %381 = icmp ult i32 %15, 15
  %382 = add nuw nsw i32 %15, 644
  %383 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %382
  %384 = add nuw nsw i32 %15, 645
  %385 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %384
  %386 = add nuw nsw i32 %15, 1372
  %387 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %386
  %388 = add nuw nsw i32 %15, 861
  %389 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %388
  %390 = add nuw nsw i32 %15, 989
  %391 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %390
  %392 = add nuw nsw i32 %15, 1117
  %393 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %392
  %394 = add nuw nsw i32 %15, 1245
  %395 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %394
  %396 = add nuw nsw i32 %15, 1373
  %397 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %396
  %398 = add nsw i32 %275, 132
  %399 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %398
  %400 = add nsw i32 %275, 198
  %401 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %400
  %402 = add nsw i32 %275, 264
  %403 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %402
  %404 = add nsw i32 %275, 330
  %405 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %404
  %406 = add nsw i32 %275, 396
  %407 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %406
  %408 = add nsw i32 %275, 462
  %409 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %408
  %410 = add nsw i32 %275, 528
  %411 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %410
  %412 = add nsw i32 %275, 594
  %413 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %412
  br label %414

414:                                              ; preds = %783, %314
  %415 = phi i32 [ 0, %314 ], [ %785, %783 ]
  %416 = phi i32 [ %312, %314 ], [ %784, %783 ]
  %417 = phi i32 [ %262, %314 ], [ %651, %783 ]
  %418 = phi i32 [ %261, %314 ], [ %650, %783 ]
  %419 = phi i32 [ %259, %314 ], [ %649, %783 ]
  %420 = phi i32 [ %258, %314 ], [ %648, %783 ]
  %421 = phi i32 [ %257, %314 ], [ %647, %783 ]
  %422 = phi i32 [ %135, %314 ], [ %503, %783 ]
  %423 = phi i32 [ %134, %314 ], [ %502, %783 ]
  %424 = phi i32 [ %133, %314 ], [ %506, %783 ]
  %425 = phi i32 [ %132, %314 ], [ %486, %783 ]
  %426 = phi i32 [ %131, %314 ], [ %496, %783 ]
  store i32 %425, i32 addrspace(3)* %315, align 4, !tbaa !6
  %427 = add nsw i32 %423, %422
  %428 = icmp eq i32 %427, %136
  %429 = mul i32 %422, -2
  %430 = sub nsw i32 0, %422
  %431 = select i1 %428, i32 %429, i32 0
  %432 = add i32 %431, %427
  %433 = select i1 %428, i32 %430, i32 %422
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %434
  %436 = load i32, i32 addrspace(1)* %435, align 4, !tbaa !6
  %437 = add nsw i32 %432, %433
  %438 = icmp eq i32 %437, %136
  %439 = mul i32 %433, -2
  %440 = sub nsw i32 0, %433
  %441 = select i1 %438, i32 %439, i32 0
  %442 = add i32 %441, %437
  %443 = select i1 %438, i32 %440, i32 %433
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %444
  %446 = load i32, i32 addrspace(1)* %445, align 4, !tbaa !6
  %447 = add nsw i32 %442, %443
  %448 = icmp eq i32 %447, %136
  %449 = mul i32 %443, -2
  %450 = sub nsw i32 0, %443
  %451 = select i1 %448, i32 %449, i32 0
  %452 = add i32 %451, %447
  %453 = select i1 %448, i32 %450, i32 %443
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %454
  %456 = load i32, i32 addrspace(1)* %455, align 4, !tbaa !6
  %457 = add nsw i32 %452, %453
  %458 = icmp eq i32 %457, %136
  %459 = mul i32 %453, -2
  %460 = sub nsw i32 0, %453
  %461 = select i1 %458, i32 %459, i32 0
  %462 = add i32 %461, %457
  %463 = select i1 %458, i32 %460, i32 %453
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %464
  %466 = load i32, i32 addrspace(1)* %465, align 4, !tbaa !6
  %467 = add nsw i32 %462, %463
  %468 = icmp eq i32 %467, %136
  %469 = mul i32 %463, -2
  %470 = sub nsw i32 0, %463
  %471 = select i1 %468, i32 %469, i32 0
  %472 = add i32 %471, %467
  %473 = select i1 %468, i32 %470, i32 %463
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %474
  %476 = load i32, i32 addrspace(1)* %475, align 4, !tbaa !6
  %477 = add nsw i32 %472, %473
  %478 = icmp eq i32 %477, %136
  %479 = mul i32 %473, -2
  %480 = sub nsw i32 0, %473
  %481 = select i1 %478, i32 %479, i32 0
  %482 = add i32 %481, %477
  %483 = select i1 %478, i32 %480, i32 %473
  %484 = sext i32 %482 to i64
  %485 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %484
  %486 = load i32, i32 addrspace(1)* %485, align 4, !tbaa !6
  %487 = add nsw i32 %482, %483
  %488 = icmp eq i32 %487, %136
  %489 = mul i32 %483, -2
  %490 = sub nsw i32 0, %483
  %491 = select i1 %488, i32 %489, i32 0
  %492 = add i32 %491, %487
  %493 = select i1 %488, i32 %490, i32 %483
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %494
  %496 = load i32, i32 addrspace(1)* %495, align 4, !tbaa !6
  %497 = add nsw i32 %492, %493
  %498 = icmp eq i32 %497, %136
  %499 = mul i32 %493, -2
  %500 = sub nsw i32 0, %493
  %501 = select i1 %498, i32 %499, i32 0
  %502 = add i32 %501, %497
  %503 = select i1 %498, i32 %500, i32 %493
  %504 = sext i32 %502 to i64
  %505 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %504
  %506 = load i32, i32 addrspace(1)* %505, align 4, !tbaa !6
  store i32 %506, i32 addrspace(3)* %335, align 4, !tbaa !6
  %507 = add nsw i32 %425, %424
  %508 = sdiv i32 %507, -2
  %509 = add i32 %508, %426
  store i32 %509, i32 addrspace(3)* %317, align 4, !tbaa !6
  %510 = add nsw i32 %446, %424
  %511 = sdiv i32 %510, -2
  %512 = add i32 %511, %436
  store i32 %512, i32 addrspace(3)* %321, align 4, !tbaa !6
  %513 = add nsw i32 %466, %446
  %514 = sdiv i32 %513, -2
  %515 = add i32 %514, %456
  store i32 %515, i32 addrspace(3)* %325, align 4, !tbaa !6
  %516 = add nsw i32 %486, %466
  %517 = sdiv i32 %516, -2
  %518 = add i32 %517, %476
  store i32 %518, i32 addrspace(3)* %329, align 4, !tbaa !6
  %519 = add nsw i32 %506, %486
  %520 = sdiv i32 %519, -2
  %521 = add i32 %520, %496
  store i32 %521, i32 addrspace(3)* %333, align 4, !tbaa !6
  %522 = add i32 %512, 2
  %523 = add i32 %522, %509
  %524 = sdiv i32 %523, 4
  %525 = add nsw i32 %524, %424
  store i32 %525, i32 addrspace(3)* %319, align 4, !tbaa !6
  %526 = add i32 %515, %522
  %527 = sdiv i32 %526, 4
  %528 = add nsw i32 %527, %446
  store i32 %528, i32 addrspace(3)* %323, align 4, !tbaa !6
  %529 = add i32 %518, 2
  %530 = add i32 %529, %515
  %531 = sdiv i32 %530, 4
  %532 = add nsw i32 %531, %466
  store i32 %532, i32 addrspace(3)* %327, align 4, !tbaa !6
  %533 = add i32 %521, %529
  %534 = sdiv i32 %533, 4
  %535 = add nsw i32 %534, %486
  store i32 %535, i32 addrspace(3)* %331, align 4, !tbaa !6
  br i1 %137, label %536, label %646

536:                                              ; preds = %414
  store i32 %419, i32 addrspace(3)* %336, align 4, !tbaa !6
  %537 = add nsw i32 %418, %417
  %538 = icmp eq i32 %537, %263
  %539 = mul i32 %417, -2
  %540 = sub nsw i32 0, %417
  %541 = select i1 %538, i32 %539, i32 0
  %542 = add i32 %541, %537
  %543 = select i1 %538, i32 %540, i32 %417
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %544
  %546 = load i32, i32 addrspace(1)* %545, align 4, !tbaa !6
  %547 = add nsw i32 %542, %543
  %548 = icmp eq i32 %547, %263
  %549 = mul i32 %543, -2
  %550 = sub nsw i32 0, %543
  %551 = select i1 %548, i32 %549, i32 0
  %552 = add i32 %551, %547
  %553 = select i1 %548, i32 %550, i32 %543
  %554 = sext i32 %552 to i64
  %555 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %554
  %556 = load i32, i32 addrspace(1)* %555, align 4, !tbaa !6
  %557 = add nsw i32 %552, %553
  %558 = icmp eq i32 %557, %263
  %559 = mul i32 %553, -2
  %560 = sub nsw i32 0, %553
  %561 = select i1 %558, i32 %559, i32 0
  %562 = add i32 %561, %557
  %563 = select i1 %558, i32 %560, i32 %553
  %564 = sext i32 %562 to i64
  %565 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %564
  %566 = load i32, i32 addrspace(1)* %565, align 4, !tbaa !6
  %567 = add nsw i32 %562, %563
  %568 = icmp eq i32 %567, %263
  %569 = mul i32 %563, -2
  %570 = sub nsw i32 0, %563
  %571 = select i1 %568, i32 %569, i32 0
  %572 = add i32 %571, %567
  %573 = select i1 %568, i32 %570, i32 %563
  %574 = sext i32 %572 to i64
  %575 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %574
  %576 = load i32, i32 addrspace(1)* %575, align 4, !tbaa !6
  %577 = add nsw i32 %572, %573
  %578 = icmp eq i32 %577, %263
  %579 = mul i32 %573, -2
  %580 = sub nsw i32 0, %573
  %581 = select i1 %578, i32 %579, i32 0
  %582 = add i32 %581, %577
  %583 = select i1 %578, i32 %580, i32 %573
  %584 = sext i32 %582 to i64
  %585 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %584
  %586 = load i32, i32 addrspace(1)* %585, align 4, !tbaa !6
  %587 = add nsw i32 %582, %583
  %588 = icmp eq i32 %587, %263
  %589 = mul i32 %583, -2
  %590 = sub nsw i32 0, %583
  %591 = select i1 %588, i32 %589, i32 0
  %592 = add i32 %591, %587
  %593 = select i1 %588, i32 %590, i32 %583
  %594 = sext i32 %592 to i64
  %595 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %594
  %596 = load i32, i32 addrspace(1)* %595, align 4, !tbaa !6
  %597 = add nsw i32 %592, %593
  %598 = icmp eq i32 %597, %263
  %599 = mul i32 %593, -2
  %600 = sub nsw i32 0, %593
  %601 = select i1 %598, i32 %599, i32 0
  %602 = add i32 %601, %597
  %603 = select i1 %598, i32 %600, i32 %593
  %604 = sext i32 %602 to i64
  %605 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %604
  %606 = load i32, i32 addrspace(1)* %605, align 4, !tbaa !6
  %607 = add nsw i32 %602, %603
  %608 = icmp eq i32 %607, %263
  %609 = mul i32 %603, -2
  %610 = sub nsw i32 0, %603
  %611 = select i1 %608, i32 %609, i32 0
  %612 = add i32 %611, %607
  %613 = select i1 %608, i32 %610, i32 %603
  %614 = sext i32 %612 to i64
  %615 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %614
  %616 = load i32, i32 addrspace(1)* %615, align 4, !tbaa !6
  store i32 %616, i32 addrspace(3)* %356, align 4, !tbaa !6
  %617 = add nsw i32 %421, %419
  %618 = sdiv i32 %617, -2
  %619 = add i32 %618, %420
  store i32 %619, i32 addrspace(3)* %338, align 4, !tbaa !6
  %620 = add nsw i32 %556, %421
  %621 = sdiv i32 %620, -2
  %622 = add i32 %621, %546
  store i32 %622, i32 addrspace(3)* %342, align 4, !tbaa !6
  %623 = add nsw i32 %576, %556
  %624 = sdiv i32 %623, -2
  %625 = add i32 %624, %566
  store i32 %625, i32 addrspace(3)* %346, align 4, !tbaa !6
  %626 = add nsw i32 %596, %576
  %627 = sdiv i32 %626, -2
  %628 = add i32 %627, %586
  store i32 %628, i32 addrspace(3)* %350, align 4, !tbaa !6
  %629 = add nsw i32 %616, %596
  %630 = sdiv i32 %629, -2
  %631 = add i32 %630, %606
  store i32 %631, i32 addrspace(3)* %354, align 4, !tbaa !6
  %632 = add i32 %622, 2
  %633 = add i32 %632, %619
  %634 = sdiv i32 %633, 4
  %635 = add nsw i32 %634, %421
  store i32 %635, i32 addrspace(3)* %340, align 4, !tbaa !6
  %636 = add i32 %625, %632
  %637 = sdiv i32 %636, 4
  %638 = add nsw i32 %637, %556
  store i32 %638, i32 addrspace(3)* %344, align 4, !tbaa !6
  %639 = add i32 %628, 2
  %640 = add i32 %639, %625
  %641 = sdiv i32 %640, 4
  %642 = add nsw i32 %641, %576
  store i32 %642, i32 addrspace(3)* %348, align 4, !tbaa !6
  %643 = add i32 %631, %639
  %644 = sdiv i32 %643, 4
  %645 = add nsw i32 %644, %596
  store i32 %645, i32 addrspace(3)* %352, align 4, !tbaa !6
  br label %646

646:                                              ; preds = %536, %414
  %647 = phi i32 [ %616, %536 ], [ %421, %414 ]
  %648 = phi i32 [ %606, %536 ], [ %420, %414 ]
  %649 = phi i32 [ %596, %536 ], [ %419, %414 ]
  %650 = phi i32 [ %612, %536 ], [ %418, %414 ]
  %651 = phi i32 [ %613, %536 ], [ %417, %414 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %652 = load i32, i32 addrspace(3)* %358, align 4, !tbaa !6
  %653 = load i32, i32 addrspace(3)* %360, align 4, !tbaa !6
  %654 = add nsw i32 %653, %652
  %655 = sdiv i32 %654, -2
  %656 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %657 = add i32 %655, %656
  store i32 %657, i32 addrspace(3)* %362, align 4, !tbaa !6
  %658 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !6
  %659 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !6
  %660 = add nsw i32 %659, %658
  %661 = sdiv i32 %660, -2
  %662 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %663 = add i32 %661, %662
  store i32 %663, i32 addrspace(3)* %368, align 4, !tbaa !6
  %664 = load i32, i32 addrspace(3)* %370, align 4, !tbaa !6
  %665 = load i32, i32 addrspace(3)* %372, align 4, !tbaa !6
  %666 = add nsw i32 %665, %664
  %667 = sdiv i32 %666, -2
  %668 = load i32, i32 addrspace(3)* %374, align 4, !tbaa !6
  %669 = add i32 %667, %668
  store i32 %669, i32 addrspace(3)* %374, align 4, !tbaa !6
  %670 = load i32, i32 addrspace(3)* %376, align 4, !tbaa !6
  %671 = load i32, i32 addrspace(3)* %378, align 4, !tbaa !6
  %672 = add nsw i32 %671, %670
  %673 = sdiv i32 %672, -2
  %674 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %675 = add i32 %673, %674
  store i32 %675, i32 addrspace(3)* %380, align 4, !tbaa !6
  br i1 %381, label %676, label %683

676:                                              ; preds = %646
  %677 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !6
  %678 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !6
  %679 = add nsw i32 %678, %677
  %680 = sdiv i32 %679, -2
  %681 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %682 = add i32 %680, %681
  store i32 %682, i32 addrspace(3)* %387, align 4, !tbaa !6
  br label %683

683:                                              ; preds = %676, %646
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %684 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %685 = load i32, i32 addrspace(3)* %389, align 4, !tbaa !6
  %686 = add i32 %684, 2
  %687 = add i32 %686, %685
  %688 = sdiv i32 %687, 4
  %689 = load i32, i32 addrspace(3)* %360, align 4, !tbaa !6
  %690 = add nsw i32 %688, %689
  store i32 %690, i32 addrspace(3)* %360, align 4, !tbaa !6
  %691 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %692 = load i32, i32 addrspace(3)* %391, align 4, !tbaa !6
  %693 = add i32 %691, 2
  %694 = add i32 %693, %692
  %695 = sdiv i32 %694, 4
  %696 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !6
  %697 = add nsw i32 %695, %696
  store i32 %697, i32 addrspace(3)* %366, align 4, !tbaa !6
  %698 = load i32, i32 addrspace(3)* %374, align 4, !tbaa !6
  %699 = load i32, i32 addrspace(3)* %393, align 4, !tbaa !6
  %700 = add i32 %698, 2
  %701 = add i32 %700, %699
  %702 = sdiv i32 %701, 4
  %703 = load i32, i32 addrspace(3)* %372, align 4, !tbaa !6
  %704 = add nsw i32 %702, %703
  store i32 %704, i32 addrspace(3)* %372, align 4, !tbaa !6
  %705 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %706 = load i32, i32 addrspace(3)* %395, align 4, !tbaa !6
  %707 = add i32 %705, 2
  %708 = add i32 %707, %706
  %709 = sdiv i32 %708, 4
  %710 = load i32, i32 addrspace(3)* %378, align 4, !tbaa !6
  %711 = add nsw i32 %709, %710
  store i32 %711, i32 addrspace(3)* %378, align 4, !tbaa !6
  br i1 %381, label %712, label %720

712:                                              ; preds = %683
  %713 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %714 = load i32, i32 addrspace(3)* %397, align 4, !tbaa !6
  %715 = add i32 %713, 2
  %716 = add i32 %715, %714
  %717 = sdiv i32 %716, 4
  %718 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !6
  %719 = add nsw i32 %717, %718
  store i32 %719, i32 addrspace(3)* %385, align 4, !tbaa !6
  br label %720

720:                                              ; preds = %712, %683
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %721 = icmp eq i32 %416, %311
  br i1 %721, label %727, label %722

722:                                              ; preds = %720
  %723 = add nsw i32 %416, %309
  %724 = sext i32 %416 to i64
  %725 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %724
  %726 = load i32, i32 addrspace(3)* %399, align 4
  store i32 %726, i32 addrspace(1)* %725, align 4, !tbaa !6
  br label %727

727:                                              ; preds = %722, %720
  %728 = phi i32 [ %311, %720 ], [ %723, %722 ]
  %729 = icmp eq i32 %728, %311
  br i1 %729, label %735, label %730

730:                                              ; preds = %727
  %731 = add nsw i32 %728, %310
  %732 = sext i32 %728 to i64
  %733 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %732
  %734 = load i32, i32 addrspace(3)* %401, align 4
  store i32 %734, i32 addrspace(1)* %733, align 4, !tbaa !6
  br label %735

735:                                              ; preds = %730, %727
  %736 = phi i32 [ %311, %727 ], [ %731, %730 ]
  %737 = icmp eq i32 %736, %311
  br i1 %737, label %743, label %738

738:                                              ; preds = %735
  %739 = add nsw i32 %736, %309
  %740 = sext i32 %736 to i64
  %741 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %740
  %742 = load i32, i32 addrspace(3)* %403, align 4
  store i32 %742, i32 addrspace(1)* %741, align 4, !tbaa !6
  br label %743

743:                                              ; preds = %738, %735
  %744 = phi i32 [ %311, %735 ], [ %739, %738 ]
  %745 = icmp eq i32 %744, %311
  br i1 %745, label %751, label %746

746:                                              ; preds = %743
  %747 = add nsw i32 %744, %310
  %748 = sext i32 %744 to i64
  %749 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %748
  %750 = load i32, i32 addrspace(3)* %405, align 4
  store i32 %750, i32 addrspace(1)* %749, align 4, !tbaa !6
  br label %751

751:                                              ; preds = %746, %743
  %752 = phi i32 [ %311, %743 ], [ %747, %746 ]
  %753 = icmp eq i32 %752, %311
  br i1 %753, label %759, label %754

754:                                              ; preds = %751
  %755 = add nsw i32 %752, %309
  %756 = sext i32 %752 to i64
  %757 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %756
  %758 = load i32, i32 addrspace(3)* %407, align 4
  store i32 %758, i32 addrspace(1)* %757, align 4, !tbaa !6
  br label %759

759:                                              ; preds = %754, %751
  %760 = phi i32 [ %311, %751 ], [ %755, %754 ]
  %761 = icmp eq i32 %760, %311
  br i1 %761, label %767, label %762

762:                                              ; preds = %759
  %763 = add nsw i32 %760, %310
  %764 = sext i32 %760 to i64
  %765 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %764
  %766 = load i32, i32 addrspace(3)* %409, align 4
  store i32 %766, i32 addrspace(1)* %765, align 4, !tbaa !6
  br label %767

767:                                              ; preds = %762, %759
  %768 = phi i32 [ %311, %759 ], [ %763, %762 ]
  %769 = icmp eq i32 %768, %311
  br i1 %769, label %775, label %770

770:                                              ; preds = %767
  %771 = add nsw i32 %768, %309
  %772 = sext i32 %768 to i64
  %773 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %772
  %774 = load i32, i32 addrspace(3)* %411, align 4
  store i32 %774, i32 addrspace(1)* %773, align 4, !tbaa !6
  br label %775

775:                                              ; preds = %770, %767
  %776 = phi i32 [ %311, %767 ], [ %771, %770 ]
  %777 = icmp eq i32 %776, %311
  br i1 %777, label %783, label %778

778:                                              ; preds = %775
  %779 = add nsw i32 %776, %310
  %780 = sext i32 %776 to i64
  %781 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %780
  %782 = load i32, i32 addrspace(3)* %413, align 4
  store i32 %782, i32 addrspace(1)* %781, align 4, !tbaa !6
  br label %783

783:                                              ; preds = %778, %775
  %784 = phi i32 [ %311, %775 ], [ %779, %778 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %785 = add nuw nsw i32 %415, 1
  %786 = icmp eq i32 %785, %4
  br i1 %786, label %1916, label %414, !llvm.loop !15

787:                                              ; preds = %5
  %788 = shl i32 %6, 7
  %789 = add i32 %788, 129
  %790 = icmp slt i32 %789, %2
  %791 = mul i32 %8, %4
  %792 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %793 = add nuw nsw i32 %792, 2
  %794 = lshr i32 %793, 1
  %795 = and i32 %792, 1
  %796 = icmp eq i32 %795, 0
  %797 = select i1 %796, i32 0, i32 728
  %798 = add nuw nsw i32 %797, %794
  %799 = add i32 %788, %792
  %800 = sub i32 0, %799
  %801 = icmp eq i32 %7, 0
  br i1 %790, label %1378, label %802

802:                                              ; preds = %787
  br i1 %801, label %803, label %839

803:                                              ; preds = %802
  %804 = icmp slt i32 %799, %2
  br i1 %804, label %809, label %805

805:                                              ; preds = %803
  %806 = shl nsw i32 %2, 1
  %807 = sub i32 -2, %799
  %808 = add i32 %807, %806
  br label %811

809:                                              ; preds = %803
  %810 = icmp slt i32 %799, 0
  br i1 %810, label %811, label %813

811:                                              ; preds = %809, %805
  %812 = phi i32 [ %808, %805 ], [ %800, %809 ]
  br label %813

813:                                              ; preds = %811, %809
  %814 = phi i32 [ %812, %811 ], [ %799, %809 ]
  %815 = mul i32 %791, %2
  %816 = add i32 %814, %815
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %817
  %819 = load i32, i32 addrspace(1)* %818, align 4, !tbaa !6, !amdgpu.noclobber !10
  %820 = add nsw i32 %816, %2
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %821
  %823 = load i32, i32 addrspace(1)* %822, align 4, !tbaa !6, !amdgpu.noclobber !10
  %824 = add nsw i32 %820, %2
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %825
  %827 = load i32, i32 addrspace(1)* %826, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %804, label %832, label %828

828:                                              ; preds = %813
  %829 = shl nsw i32 %2, 1
  %830 = sub i32 -2, %799
  %831 = add i32 %830, %829
  br label %834

832:                                              ; preds = %813
  %833 = icmp slt i32 %799, 0
  br i1 %833, label %834, label %836

834:                                              ; preds = %832, %828
  %835 = phi i32 [ %831, %828 ], [ %800, %832 ]
  br label %836

836:                                              ; preds = %834, %832
  %837 = phi i32 [ %835, %834 ], [ %799, %832 ]
  %838 = add i32 %837, %815
  br label %865

839:                                              ; preds = %802
  %840 = add nsw i32 %791, -2
  %841 = icmp slt i32 %799, %2
  br i1 %841, label %846, label %842

842:                                              ; preds = %839
  %843 = shl nsw i32 %2, 1
  %844 = sub i32 -2, %799
  %845 = add i32 %844, %843
  br label %848

846:                                              ; preds = %839
  %847 = icmp slt i32 %799, 0
  br i1 %847, label %848, label %850

848:                                              ; preds = %846, %842
  %849 = phi i32 [ %845, %842 ], [ %800, %846 ]
  br label %850

850:                                              ; preds = %848, %846
  %851 = phi i32 [ %849, %848 ], [ %799, %846 ]
  %852 = mul nsw i32 %840, %2
  %853 = add i32 %851, %852
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %854
  %856 = load i32, i32 addrspace(1)* %855, align 4, !tbaa !6, !amdgpu.noclobber !10
  %857 = add nsw i32 %853, %2
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %858
  %860 = load i32, i32 addrspace(1)* %859, align 4, !tbaa !6, !amdgpu.noclobber !10
  %861 = add nsw i32 %857, %2
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %862
  %864 = load i32, i32 addrspace(1)* %863, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %865

865:                                              ; preds = %850, %836
  %866 = phi i32 [ %823, %836 ], [ %860, %850 ]
  %867 = phi i32 [ %827, %836 ], [ %856, %850 ]
  %868 = phi i32 [ %819, %836 ], [ %864, %850 ]
  %869 = phi i32 [ %838, %836 ], [ %861, %850 ]
  %870 = icmp ult i32 %792, 3
  br i1 %870, label %871, label %947

871:                                              ; preds = %865
  %872 = icmp eq i32 %792, 0
  %873 = select i1 %872, i32 128, i32 -3
  %874 = add nsw i32 %873, %792
  %875 = trunc i32 %874 to i16
  %876 = add nsw i16 %875, 2
  %877 = sdiv i16 %876, 2
  %878 = zext i16 %877 to i32
  %879 = and i32 %874, 1
  %880 = icmp eq i32 %879, 0
  %881 = select i1 %880, i32 0, i32 728
  %882 = add nuw nsw i32 %881, %878
  %883 = add i32 %874, %788
  %884 = sub i32 0, %883
  br i1 %801, label %885, label %921

885:                                              ; preds = %871
  %886 = icmp slt i32 %883, %2
  br i1 %886, label %891, label %887

887:                                              ; preds = %885
  %888 = shl nsw i32 %2, 1
  %889 = sub i32 -2, %883
  %890 = add i32 %889, %888
  br label %893

891:                                              ; preds = %885
  %892 = icmp slt i32 %883, 0
  br i1 %892, label %893, label %895

893:                                              ; preds = %891, %887
  %894 = phi i32 [ %890, %887 ], [ %884, %891 ]
  br label %895

895:                                              ; preds = %893, %891
  %896 = phi i32 [ %894, %893 ], [ %883, %891 ]
  %897 = mul i32 %791, %2
  %898 = add i32 %896, %897
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %899
  %901 = load i32, i32 addrspace(1)* %900, align 4, !tbaa !6, !amdgpu.noclobber !10
  %902 = add nsw i32 %898, %2
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %903
  %905 = load i32, i32 addrspace(1)* %904, align 4, !tbaa !6, !amdgpu.noclobber !10
  %906 = add nsw i32 %902, %2
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %907
  %909 = load i32, i32 addrspace(1)* %908, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %886, label %914, label %910

910:                                              ; preds = %895
  %911 = shl nsw i32 %2, 1
  %912 = sub i32 -2, %883
  %913 = add i32 %912, %911
  br label %916

914:                                              ; preds = %895
  %915 = icmp slt i32 %883, 0
  br i1 %915, label %916, label %918

916:                                              ; preds = %914, %910
  %917 = phi i32 [ %913, %910 ], [ %884, %914 ]
  br label %918

918:                                              ; preds = %916, %914
  %919 = phi i32 [ %917, %916 ], [ %883, %914 ]
  %920 = add i32 %919, %897
  br label %947

921:                                              ; preds = %871
  %922 = add nsw i32 %791, -2
  %923 = icmp slt i32 %883, %2
  br i1 %923, label %928, label %924

924:                                              ; preds = %921
  %925 = shl nsw i32 %2, 1
  %926 = sub i32 -2, %883
  %927 = add i32 %926, %925
  br label %930

928:                                              ; preds = %921
  %929 = icmp slt i32 %883, 0
  br i1 %929, label %930, label %932

930:                                              ; preds = %928, %924
  %931 = phi i32 [ %927, %924 ], [ %884, %928 ]
  br label %932

932:                                              ; preds = %930, %928
  %933 = phi i32 [ %931, %930 ], [ %883, %928 ]
  %934 = mul nsw i32 %922, %2
  %935 = add i32 %933, %934
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %936
  %938 = load i32, i32 addrspace(1)* %937, align 4, !tbaa !6, !amdgpu.noclobber !10
  %939 = add nsw i32 %935, %2
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %940
  %942 = load i32, i32 addrspace(1)* %941, align 4, !tbaa !6, !amdgpu.noclobber !10
  %943 = add nsw i32 %939, %2
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %944
  %946 = load i32, i32 addrspace(1)* %945, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %947

947:                                              ; preds = %932, %918, %865
  %948 = phi i32 [ 0, %865 ], [ %901, %918 ], [ %946, %932 ]
  %949 = phi i32 [ 0, %865 ], [ %905, %918 ], [ %942, %932 ]
  %950 = phi i32 [ 0, %865 ], [ %909, %918 ], [ %938, %932 ]
  %951 = phi i32 [ 0, %865 ], [ %882, %918 ], [ %882, %932 ]
  %952 = phi i32 [ 0, %865 ], [ %920, %918 ], [ %943, %932 ]
  %953 = phi i32 [ 0, %865 ], [ %2, %918 ], [ %2, %932 ]
  %954 = shl nuw nsw i32 %792, 1
  %955 = lshr i32 %792, 6
  %956 = mul nsw i32 %955, -127
  %957 = add nsw i32 %956, %954
  %958 = trunc i32 %957 to i16
  %959 = add nsw i16 %958, 2
  %960 = sdiv i16 %959, 2
  %961 = sext i16 %960 to i32
  %962 = and i32 %957, 1
  %963 = icmp eq i32 %962, 0
  %964 = select i1 %963, i32 0, i32 728
  %965 = add nsw i32 %964, %961
  %966 = add i32 %957, %788
  %967 = icmp slt i32 %966, %2
  br i1 %967, label %968, label %998

968:                                              ; preds = %947
  %969 = sdiv i32 %966, 2
  %970 = and i32 %966, 1
  %971 = icmp eq i32 %970, 0
  %972 = sdiv i32 %2, 2
  %973 = and i32 %2, 1
  %974 = add nsw i32 %972, %973
  %975 = sdiv i32 %3, 2
  %976 = and i32 %3, 1
  %977 = add nsw i32 %975, %976
  br i1 %971, label %983, label %978

978:                                              ; preds = %968
  %979 = mul nsw i32 %977, %974
  %980 = add nsw i32 %979, %969
  %981 = mul nsw i32 %3, %2
  %982 = sdiv i32 %981, 2
  br label %985

983:                                              ; preds = %968
  %984 = mul nsw i32 %977, %2
  br label %985

985:                                              ; preds = %983, %978
  %986 = phi i32 [ %984, %983 ], [ %982, %978 ]
  %987 = phi i32 [ %969, %983 ], [ %980, %978 ]
  %988 = phi i32 [ %974, %983 ], [ %972, %978 ]
  %989 = sub nsw i32 %988, %986
  %990 = mul nsw i32 %988, %975
  %991 = icmp eq i32 %976, 0
  %992 = select i1 %991, i32 0, i32 %986
  %993 = add i32 %992, %987
  %994 = add i32 %993, %990
  %995 = sdiv i32 %791, 2
  %996 = mul nsw i32 %988, %995
  %997 = add i32 %996, %987
  br label %998

998:                                              ; preds = %985, %947
  %999 = phi i32 [ %986, %985 ], [ 0, %947 ]
  %1000 = phi i32 [ %989, %985 ], [ 0, %947 ]
  %1001 = phi i32 [ %994, %985 ], [ 0, %947 ]
  %1002 = phi i32 [ %997, %985 ], [ 0, %947 ]
  %1003 = icmp sgt i32 %4, 0
  br i1 %1003, label %1004, label %1916

1004:                                             ; preds = %998
  %1005 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %798
  %1006 = add nuw nsw i32 %798, 66
  %1007 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1006
  %1008 = add nuw nsw i32 %798, 132
  %1009 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1008
  %1010 = add nuw nsw i32 %798, 198
  %1011 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1010
  %1012 = add nuw nsw i32 %798, 264
  %1013 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1012
  %1014 = add nuw nsw i32 %798, 330
  %1015 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1014
  %1016 = add nuw nsw i32 %798, 396
  %1017 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1016
  %1018 = add nuw nsw i32 %798, 462
  %1019 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1018
  %1020 = add nuw nsw i32 %798, 528
  %1021 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1020
  %1022 = add nuw nsw i32 %798, 594
  %1023 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1022
  %1024 = add nuw nsw i32 %798, 660
  %1025 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1024
  %1026 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %951
  %1027 = add nuw nsw i32 %951, 66
  %1028 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1027
  %1029 = add nuw nsw i32 %951, 132
  %1030 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1029
  %1031 = add nuw nsw i32 %951, 198
  %1032 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1031
  %1033 = add nuw nsw i32 %951, 264
  %1034 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1033
  %1035 = add nuw nsw i32 %951, 330
  %1036 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1035
  %1037 = add nuw nsw i32 %951, 396
  %1038 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1037
  %1039 = add nuw nsw i32 %951, 462
  %1040 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1039
  %1041 = add nuw nsw i32 %951, 528
  %1042 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1041
  %1043 = add nuw nsw i32 %951, 594
  %1044 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1043
  %1045 = add nuw nsw i32 %951, 660
  %1046 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1045
  %1047 = add nuw nsw i32 %792, 132
  %1048 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1047
  %1049 = add nuw nsw i32 %792, 133
  %1050 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1049
  %1051 = add nuw nsw i32 %792, 860
  %1052 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1051
  %1053 = add nuw nsw i32 %792, 260
  %1054 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1053
  %1055 = add nuw nsw i32 %792, 261
  %1056 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1055
  %1057 = add nuw nsw i32 %792, 988
  %1058 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1057
  %1059 = add nuw nsw i32 %792, 388
  %1060 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1059
  %1061 = add nuw nsw i32 %792, 389
  %1062 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1061
  %1063 = add nuw nsw i32 %792, 1116
  %1064 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1063
  %1065 = add nuw nsw i32 %792, 516
  %1066 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1065
  %1067 = add nuw nsw i32 %792, 517
  %1068 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1067
  %1069 = add nuw nsw i32 %792, 1244
  %1070 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1069
  %1071 = icmp ult i32 %792, 15
  %1072 = add nuw nsw i32 %792, 644
  %1073 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1072
  %1074 = add nuw nsw i32 %792, 645
  %1075 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1074
  %1076 = add nuw nsw i32 %792, 1372
  %1077 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1076
  %1078 = add nuw nsw i32 %792, 861
  %1079 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1078
  %1080 = add nuw nsw i32 %792, 989
  %1081 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1080
  %1082 = add nuw nsw i32 %792, 1117
  %1083 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1082
  %1084 = add nuw nsw i32 %792, 1245
  %1085 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1084
  %1086 = add nuw nsw i32 %792, 1373
  %1087 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1086
  %1088 = add nsw i32 %965, 132
  %1089 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1088
  %1090 = add nsw i32 %965, 198
  %1091 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1090
  %1092 = add nsw i32 %965, 264
  %1093 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1092
  %1094 = add nsw i32 %965, 330
  %1095 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1094
  %1096 = add nsw i32 %965, 396
  %1097 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1096
  %1098 = add nsw i32 %965, 462
  %1099 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1098
  %1100 = add nsw i32 %965, 528
  %1101 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1100
  %1102 = add nsw i32 %965, 594
  %1103 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1102
  br label %1104

1104:                                             ; preds = %1374, %1004
  %1105 = phi i32 [ 0, %1004 ], [ %1376, %1374 ]
  %1106 = phi i32 [ %1002, %1004 ], [ %1375, %1374 ]
  %1107 = phi i32 [ %952, %1004 ], [ %1242, %1374 ]
  %1108 = phi i32 [ %950, %1004 ], [ %1241, %1374 ]
  %1109 = phi i32 [ %949, %1004 ], [ %1240, %1374 ]
  %1110 = phi i32 [ %948, %1004 ], [ %1239, %1374 ]
  %1111 = phi i32 [ %869, %1004 ], [ %1143, %1374 ]
  %1112 = phi i32 [ %868, %1004 ], [ %1146, %1374 ]
  %1113 = phi i32 [ %867, %1004 ], [ %1138, %1374 ]
  %1114 = phi i32 [ %866, %1004 ], [ %1142, %1374 ]
  store i32 %1113, i32 addrspace(3)* %1005, align 4, !tbaa !6
  %1115 = add nsw i32 %1111, %2
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1116
  %1118 = load i32, i32 addrspace(1)* %1117, align 4, !tbaa !6
  %1119 = add nsw i32 %1115, %2
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1120
  %1122 = load i32, i32 addrspace(1)* %1121, align 4, !tbaa !6
  %1123 = add nsw i32 %1119, %2
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1124
  %1126 = load i32, i32 addrspace(1)* %1125, align 4, !tbaa !6
  %1127 = add nsw i32 %1123, %2
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1128
  %1130 = load i32, i32 addrspace(1)* %1129, align 4, !tbaa !6
  %1131 = add nsw i32 %1127, %2
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1132
  %1134 = load i32, i32 addrspace(1)* %1133, align 4, !tbaa !6
  %1135 = add nsw i32 %1131, %2
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1136
  %1138 = load i32, i32 addrspace(1)* %1137, align 4, !tbaa !6
  %1139 = add nsw i32 %1135, %2
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1140
  %1142 = load i32, i32 addrspace(1)* %1141, align 4, !tbaa !6
  %1143 = add nsw i32 %1139, %2
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1144
  %1146 = load i32, i32 addrspace(1)* %1145, align 4, !tbaa !6
  store i32 %1146, i32 addrspace(3)* %1025, align 4, !tbaa !6
  %1147 = add nsw i32 %1113, %1112
  %1148 = sdiv i32 %1147, -2
  %1149 = add i32 %1148, %1114
  store i32 %1149, i32 addrspace(3)* %1007, align 4, !tbaa !6
  %1150 = add nsw i32 %1122, %1112
  %1151 = sdiv i32 %1150, -2
  %1152 = add i32 %1151, %1118
  store i32 %1152, i32 addrspace(3)* %1011, align 4, !tbaa !6
  %1153 = add nsw i32 %1130, %1122
  %1154 = sdiv i32 %1153, -2
  %1155 = add i32 %1154, %1126
  store i32 %1155, i32 addrspace(3)* %1015, align 4, !tbaa !6
  %1156 = add nsw i32 %1138, %1130
  %1157 = sdiv i32 %1156, -2
  %1158 = add i32 %1157, %1134
  store i32 %1158, i32 addrspace(3)* %1019, align 4, !tbaa !6
  %1159 = add nsw i32 %1146, %1138
  %1160 = sdiv i32 %1159, -2
  %1161 = add i32 %1160, %1142
  store i32 %1161, i32 addrspace(3)* %1023, align 4, !tbaa !6
  %1162 = add i32 %1152, 2
  %1163 = add i32 %1162, %1149
  %1164 = sdiv i32 %1163, 4
  %1165 = add nsw i32 %1164, %1112
  store i32 %1165, i32 addrspace(3)* %1009, align 4, !tbaa !6
  %1166 = add i32 %1155, %1162
  %1167 = sdiv i32 %1166, 4
  %1168 = add nsw i32 %1167, %1122
  store i32 %1168, i32 addrspace(3)* %1013, align 4, !tbaa !6
  %1169 = add i32 %1158, 2
  %1170 = add i32 %1169, %1155
  %1171 = sdiv i32 %1170, 4
  %1172 = add nsw i32 %1171, %1130
  store i32 %1172, i32 addrspace(3)* %1017, align 4, !tbaa !6
  %1173 = add i32 %1161, %1169
  %1174 = sdiv i32 %1173, 4
  %1175 = add nsw i32 %1174, %1138
  store i32 %1175, i32 addrspace(3)* %1021, align 4, !tbaa !6
  br i1 %870, label %1176, label %1238

1176:                                             ; preds = %1104
  store i32 %1108, i32 addrspace(3)* %1026, align 4, !tbaa !6
  %1177 = add nsw i32 %1107, %953
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1178
  %1180 = load i32, i32 addrspace(1)* %1179, align 4, !tbaa !6
  %1181 = add nsw i32 %1177, %953
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1182
  %1184 = load i32, i32 addrspace(1)* %1183, align 4, !tbaa !6
  %1185 = add nsw i32 %1181, %953
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1186
  %1188 = load i32, i32 addrspace(1)* %1187, align 4, !tbaa !6
  %1189 = add nsw i32 %1185, %953
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1190
  %1192 = load i32, i32 addrspace(1)* %1191, align 4, !tbaa !6
  %1193 = add nsw i32 %1189, %953
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1194
  %1196 = load i32, i32 addrspace(1)* %1195, align 4, !tbaa !6
  %1197 = add nsw i32 %1193, %953
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1198
  %1200 = load i32, i32 addrspace(1)* %1199, align 4, !tbaa !6
  %1201 = add nsw i32 %1197, %953
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1202
  %1204 = load i32, i32 addrspace(1)* %1203, align 4, !tbaa !6
  %1205 = add nsw i32 %1201, %953
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1206
  %1208 = load i32, i32 addrspace(1)* %1207, align 4, !tbaa !6
  store i32 %1208, i32 addrspace(3)* %1046, align 4, !tbaa !6
  %1209 = add nsw i32 %1110, %1108
  %1210 = sdiv i32 %1209, -2
  %1211 = add i32 %1210, %1109
  store i32 %1211, i32 addrspace(3)* %1028, align 4, !tbaa !6
  %1212 = add nsw i32 %1184, %1110
  %1213 = sdiv i32 %1212, -2
  %1214 = add i32 %1213, %1180
  store i32 %1214, i32 addrspace(3)* %1032, align 4, !tbaa !6
  %1215 = add nsw i32 %1192, %1184
  %1216 = sdiv i32 %1215, -2
  %1217 = add i32 %1216, %1188
  store i32 %1217, i32 addrspace(3)* %1036, align 4, !tbaa !6
  %1218 = add nsw i32 %1200, %1192
  %1219 = sdiv i32 %1218, -2
  %1220 = add i32 %1219, %1196
  store i32 %1220, i32 addrspace(3)* %1040, align 4, !tbaa !6
  %1221 = add nsw i32 %1208, %1200
  %1222 = sdiv i32 %1221, -2
  %1223 = add i32 %1222, %1204
  store i32 %1223, i32 addrspace(3)* %1044, align 4, !tbaa !6
  %1224 = add i32 %1214, 2
  %1225 = add i32 %1224, %1211
  %1226 = sdiv i32 %1225, 4
  %1227 = add nsw i32 %1226, %1110
  store i32 %1227, i32 addrspace(3)* %1030, align 4, !tbaa !6
  %1228 = add i32 %1217, %1224
  %1229 = sdiv i32 %1228, 4
  %1230 = add nsw i32 %1229, %1184
  store i32 %1230, i32 addrspace(3)* %1034, align 4, !tbaa !6
  %1231 = add i32 %1220, 2
  %1232 = add i32 %1231, %1217
  %1233 = sdiv i32 %1232, 4
  %1234 = add nsw i32 %1233, %1192
  store i32 %1234, i32 addrspace(3)* %1038, align 4, !tbaa !6
  %1235 = add i32 %1223, %1231
  %1236 = sdiv i32 %1235, 4
  %1237 = add nsw i32 %1236, %1200
  store i32 %1237, i32 addrspace(3)* %1042, align 4, !tbaa !6
  br label %1238

1238:                                             ; preds = %1176, %1104
  %1239 = phi i32 [ %1208, %1176 ], [ %1110, %1104 ]
  %1240 = phi i32 [ %1204, %1176 ], [ %1109, %1104 ]
  %1241 = phi i32 [ %1200, %1176 ], [ %1108, %1104 ]
  %1242 = phi i32 [ %1205, %1176 ], [ %1107, %1104 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1243 = load i32, i32 addrspace(3)* %1048, align 4, !tbaa !6
  %1244 = load i32, i32 addrspace(3)* %1050, align 4, !tbaa !6
  %1245 = add nsw i32 %1244, %1243
  %1246 = sdiv i32 %1245, -2
  %1247 = load i32, i32 addrspace(3)* %1052, align 4, !tbaa !6
  %1248 = add i32 %1246, %1247
  store i32 %1248, i32 addrspace(3)* %1052, align 4, !tbaa !6
  %1249 = load i32, i32 addrspace(3)* %1054, align 4, !tbaa !6
  %1250 = load i32, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1251 = add nsw i32 %1250, %1249
  %1252 = sdiv i32 %1251, -2
  %1253 = load i32, i32 addrspace(3)* %1058, align 4, !tbaa !6
  %1254 = add i32 %1252, %1253
  store i32 %1254, i32 addrspace(3)* %1058, align 4, !tbaa !6
  %1255 = load i32, i32 addrspace(3)* %1060, align 4, !tbaa !6
  %1256 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1257 = add nsw i32 %1256, %1255
  %1258 = sdiv i32 %1257, -2
  %1259 = load i32, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1260 = add i32 %1258, %1259
  store i32 %1260, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1261 = load i32, i32 addrspace(3)* %1066, align 4, !tbaa !6
  %1262 = load i32, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1263 = add nsw i32 %1262, %1261
  %1264 = sdiv i32 %1263, -2
  %1265 = load i32, i32 addrspace(3)* %1070, align 4, !tbaa !6
  %1266 = add i32 %1264, %1265
  store i32 %1266, i32 addrspace(3)* %1070, align 4, !tbaa !6
  br i1 %1071, label %1267, label %1274

1267:                                             ; preds = %1238
  %1268 = load i32, i32 addrspace(3)* %1073, align 4, !tbaa !6
  %1269 = load i32, i32 addrspace(3)* %1075, align 4, !tbaa !6
  %1270 = add nsw i32 %1269, %1268
  %1271 = sdiv i32 %1270, -2
  %1272 = load i32, i32 addrspace(3)* %1077, align 4, !tbaa !6
  %1273 = add i32 %1271, %1272
  store i32 %1273, i32 addrspace(3)* %1077, align 4, !tbaa !6
  br label %1274

1274:                                             ; preds = %1267, %1238
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1275 = load i32, i32 addrspace(3)* %1052, align 4, !tbaa !6
  %1276 = load i32, i32 addrspace(3)* %1079, align 4, !tbaa !6
  %1277 = add i32 %1275, 2
  %1278 = add i32 %1277, %1276
  %1279 = sdiv i32 %1278, 4
  %1280 = load i32, i32 addrspace(3)* %1050, align 4, !tbaa !6
  %1281 = add nsw i32 %1279, %1280
  store i32 %1281, i32 addrspace(3)* %1050, align 4, !tbaa !6
  %1282 = load i32, i32 addrspace(3)* %1058, align 4, !tbaa !6
  %1283 = load i32, i32 addrspace(3)* %1081, align 4, !tbaa !6
  %1284 = add i32 %1282, 2
  %1285 = add i32 %1284, %1283
  %1286 = sdiv i32 %1285, 4
  %1287 = load i32, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1288 = add nsw i32 %1286, %1287
  store i32 %1288, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1289 = load i32, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1290 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !6
  %1291 = add i32 %1289, 2
  %1292 = add i32 %1291, %1290
  %1293 = sdiv i32 %1292, 4
  %1294 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1295 = add nsw i32 %1293, %1294
  store i32 %1295, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1296 = load i32, i32 addrspace(3)* %1070, align 4, !tbaa !6
  %1297 = load i32, i32 addrspace(3)* %1085, align 4, !tbaa !6
  %1298 = add i32 %1296, 2
  %1299 = add i32 %1298, %1297
  %1300 = sdiv i32 %1299, 4
  %1301 = load i32, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1302 = add nsw i32 %1300, %1301
  store i32 %1302, i32 addrspace(3)* %1068, align 4, !tbaa !6
  br i1 %1071, label %1303, label %1311

1303:                                             ; preds = %1274
  %1304 = load i32, i32 addrspace(3)* %1077, align 4, !tbaa !6
  %1305 = load i32, i32 addrspace(3)* %1087, align 4, !tbaa !6
  %1306 = add i32 %1304, 2
  %1307 = add i32 %1306, %1305
  %1308 = sdiv i32 %1307, 4
  %1309 = load i32, i32 addrspace(3)* %1075, align 4, !tbaa !6
  %1310 = add nsw i32 %1308, %1309
  store i32 %1310, i32 addrspace(3)* %1075, align 4, !tbaa !6
  br label %1311

1311:                                             ; preds = %1303, %1274
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1312 = icmp eq i32 %1106, %1001
  br i1 %1312, label %1318, label %1313

1313:                                             ; preds = %1311
  %1314 = add nsw i32 %1106, %999
  %1315 = sext i32 %1106 to i64
  %1316 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1315
  %1317 = load i32, i32 addrspace(3)* %1089, align 4
  store i32 %1317, i32 addrspace(1)* %1316, align 4, !tbaa !6
  br label %1318

1318:                                             ; preds = %1313, %1311
  %1319 = phi i32 [ %1001, %1311 ], [ %1314, %1313 ]
  %1320 = icmp eq i32 %1319, %1001
  br i1 %1320, label %1326, label %1321

1321:                                             ; preds = %1318
  %1322 = add nsw i32 %1319, %1000
  %1323 = sext i32 %1319 to i64
  %1324 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1323
  %1325 = load i32, i32 addrspace(3)* %1091, align 4
  store i32 %1325, i32 addrspace(1)* %1324, align 4, !tbaa !6
  br label %1326

1326:                                             ; preds = %1321, %1318
  %1327 = phi i32 [ %1001, %1318 ], [ %1322, %1321 ]
  %1328 = icmp eq i32 %1327, %1001
  br i1 %1328, label %1334, label %1329

1329:                                             ; preds = %1326
  %1330 = add nsw i32 %1327, %999
  %1331 = sext i32 %1327 to i64
  %1332 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1331
  %1333 = load i32, i32 addrspace(3)* %1093, align 4
  store i32 %1333, i32 addrspace(1)* %1332, align 4, !tbaa !6
  br label %1334

1334:                                             ; preds = %1329, %1326
  %1335 = phi i32 [ %1001, %1326 ], [ %1330, %1329 ]
  %1336 = icmp eq i32 %1335, %1001
  br i1 %1336, label %1342, label %1337

1337:                                             ; preds = %1334
  %1338 = add nsw i32 %1335, %1000
  %1339 = sext i32 %1335 to i64
  %1340 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1339
  %1341 = load i32, i32 addrspace(3)* %1095, align 4
  store i32 %1341, i32 addrspace(1)* %1340, align 4, !tbaa !6
  br label %1342

1342:                                             ; preds = %1337, %1334
  %1343 = phi i32 [ %1001, %1334 ], [ %1338, %1337 ]
  %1344 = icmp eq i32 %1343, %1001
  br i1 %1344, label %1350, label %1345

1345:                                             ; preds = %1342
  %1346 = add nsw i32 %1343, %999
  %1347 = sext i32 %1343 to i64
  %1348 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1347
  %1349 = load i32, i32 addrspace(3)* %1097, align 4
  store i32 %1349, i32 addrspace(1)* %1348, align 4, !tbaa !6
  br label %1350

1350:                                             ; preds = %1345, %1342
  %1351 = phi i32 [ %1001, %1342 ], [ %1346, %1345 ]
  %1352 = icmp eq i32 %1351, %1001
  br i1 %1352, label %1358, label %1353

1353:                                             ; preds = %1350
  %1354 = add nsw i32 %1351, %1000
  %1355 = sext i32 %1351 to i64
  %1356 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1355
  %1357 = load i32, i32 addrspace(3)* %1099, align 4
  store i32 %1357, i32 addrspace(1)* %1356, align 4, !tbaa !6
  br label %1358

1358:                                             ; preds = %1353, %1350
  %1359 = phi i32 [ %1001, %1350 ], [ %1354, %1353 ]
  %1360 = icmp eq i32 %1359, %1001
  br i1 %1360, label %1366, label %1361

1361:                                             ; preds = %1358
  %1362 = add nsw i32 %1359, %999
  %1363 = sext i32 %1359 to i64
  %1364 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1363
  %1365 = load i32, i32 addrspace(3)* %1101, align 4
  store i32 %1365, i32 addrspace(1)* %1364, align 4, !tbaa !6
  br label %1366

1366:                                             ; preds = %1361, %1358
  %1367 = phi i32 [ %1001, %1358 ], [ %1362, %1361 ]
  %1368 = icmp eq i32 %1367, %1001
  br i1 %1368, label %1374, label %1369

1369:                                             ; preds = %1366
  %1370 = add nsw i32 %1367, %1000
  %1371 = sext i32 %1367 to i64
  %1372 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1371
  %1373 = load i32, i32 addrspace(3)* %1103, align 4
  store i32 %1373, i32 addrspace(1)* %1372, align 4, !tbaa !6
  br label %1374

1374:                                             ; preds = %1369, %1366
  %1375 = phi i32 [ %1001, %1366 ], [ %1370, %1369 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1376 = add nuw nsw i32 %1105, 1
  %1377 = icmp eq i32 %1376, %4
  br i1 %1377, label %1916, label %1104, !llvm.loop !16

1378:                                             ; preds = %787
  br i1 %801, label %1379, label %1415

1379:                                             ; preds = %1378
  %1380 = icmp slt i32 %799, %2
  br i1 %1380, label %1385, label %1381

1381:                                             ; preds = %1379
  %1382 = shl nsw i32 %2, 1
  %1383 = sub i32 -2, %799
  %1384 = add i32 %1383, %1382
  br label %1387

1385:                                             ; preds = %1379
  %1386 = icmp slt i32 %799, 0
  br i1 %1386, label %1387, label %1389

1387:                                             ; preds = %1385, %1381
  %1388 = phi i32 [ %1384, %1381 ], [ %800, %1385 ]
  br label %1389

1389:                                             ; preds = %1387, %1385
  %1390 = phi i32 [ %1388, %1387 ], [ %799, %1385 ]
  %1391 = mul i32 %791, %2
  %1392 = add i32 %1390, %1391
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1393
  %1395 = load i32, i32 addrspace(1)* %1394, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1396 = add nsw i32 %1392, %2
  %1397 = sext i32 %1396 to i64
  %1398 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1397
  %1399 = load i32, i32 addrspace(1)* %1398, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1400 = add nsw i32 %1396, %2
  %1401 = sext i32 %1400 to i64
  %1402 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1401
  %1403 = load i32, i32 addrspace(1)* %1402, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %1380, label %1408, label %1404

1404:                                             ; preds = %1389
  %1405 = shl nsw i32 %2, 1
  %1406 = sub i32 -2, %799
  %1407 = add i32 %1406, %1405
  br label %1410

1408:                                             ; preds = %1389
  %1409 = icmp slt i32 %799, 0
  br i1 %1409, label %1410, label %1412

1410:                                             ; preds = %1408, %1404
  %1411 = phi i32 [ %1407, %1404 ], [ %800, %1408 ]
  br label %1412

1412:                                             ; preds = %1410, %1408
  %1413 = phi i32 [ %1411, %1410 ], [ %799, %1408 ]
  %1414 = add i32 %1413, %1391
  br label %1441

1415:                                             ; preds = %1378
  %1416 = add nsw i32 %791, -2
  %1417 = icmp slt i32 %799, %2
  br i1 %1417, label %1422, label %1418

1418:                                             ; preds = %1415
  %1419 = shl nsw i32 %2, 1
  %1420 = sub i32 -2, %799
  %1421 = add i32 %1420, %1419
  br label %1424

1422:                                             ; preds = %1415
  %1423 = icmp slt i32 %799, 0
  br i1 %1423, label %1424, label %1426

1424:                                             ; preds = %1422, %1418
  %1425 = phi i32 [ %1421, %1418 ], [ %800, %1422 ]
  br label %1426

1426:                                             ; preds = %1424, %1422
  %1427 = phi i32 [ %1425, %1424 ], [ %799, %1422 ]
  %1428 = mul nsw i32 %1416, %2
  %1429 = add i32 %1427, %1428
  %1430 = sext i32 %1429 to i64
  %1431 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1430
  %1432 = load i32, i32 addrspace(1)* %1431, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1433 = add nsw i32 %1429, %2
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1434
  %1436 = load i32, i32 addrspace(1)* %1435, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1437 = add nsw i32 %1433, %2
  %1438 = sext i32 %1437 to i64
  %1439 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1438
  %1440 = load i32, i32 addrspace(1)* %1439, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1441

1441:                                             ; preds = %1426, %1412
  %1442 = phi i32 [ %1399, %1412 ], [ %1436, %1426 ]
  %1443 = phi i32 [ %1403, %1412 ], [ %1432, %1426 ]
  %1444 = phi i32 [ %1395, %1412 ], [ %1440, %1426 ]
  %1445 = phi i32 [ %1414, %1412 ], [ %1437, %1426 ]
  %1446 = icmp ult i32 %792, 3
  br i1 %1446, label %1447, label %1523

1447:                                             ; preds = %1441
  %1448 = icmp eq i32 %792, 0
  %1449 = select i1 %1448, i32 128, i32 -3
  %1450 = add nsw i32 %1449, %792
  %1451 = trunc i32 %1450 to i16
  %1452 = add nsw i16 %1451, 2
  %1453 = sdiv i16 %1452, 2
  %1454 = zext i16 %1453 to i32
  %1455 = and i32 %1450, 1
  %1456 = icmp eq i32 %1455, 0
  %1457 = select i1 %1456, i32 0, i32 728
  %1458 = add nuw nsw i32 %1457, %1454
  %1459 = add i32 %1450, %788
  %1460 = sub i32 0, %1459
  br i1 %801, label %1461, label %1497

1461:                                             ; preds = %1447
  %1462 = icmp slt i32 %1459, %2
  br i1 %1462, label %1467, label %1463

1463:                                             ; preds = %1461
  %1464 = shl nsw i32 %2, 1
  %1465 = sub i32 -2, %1459
  %1466 = add i32 %1465, %1464
  br label %1469

1467:                                             ; preds = %1461
  %1468 = icmp slt i32 %1459, 0
  br i1 %1468, label %1469, label %1471

1469:                                             ; preds = %1467, %1463
  %1470 = phi i32 [ %1466, %1463 ], [ %1460, %1467 ]
  br label %1471

1471:                                             ; preds = %1469, %1467
  %1472 = phi i32 [ %1470, %1469 ], [ %1459, %1467 ]
  %1473 = mul i32 %791, %2
  %1474 = add i32 %1472, %1473
  %1475 = sext i32 %1474 to i64
  %1476 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1475
  %1477 = load i32, i32 addrspace(1)* %1476, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1478 = add nsw i32 %1474, %2
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1479
  %1481 = load i32, i32 addrspace(1)* %1480, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1482 = add nsw i32 %1478, %2
  %1483 = sext i32 %1482 to i64
  %1484 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1483
  %1485 = load i32, i32 addrspace(1)* %1484, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %1462, label %1490, label %1486

1486:                                             ; preds = %1471
  %1487 = shl nsw i32 %2, 1
  %1488 = sub i32 -2, %1459
  %1489 = add i32 %1488, %1487
  br label %1492

1490:                                             ; preds = %1471
  %1491 = icmp slt i32 %1459, 0
  br i1 %1491, label %1492, label %1494

1492:                                             ; preds = %1490, %1486
  %1493 = phi i32 [ %1489, %1486 ], [ %1460, %1490 ]
  br label %1494

1494:                                             ; preds = %1492, %1490
  %1495 = phi i32 [ %1493, %1492 ], [ %1459, %1490 ]
  %1496 = add i32 %1495, %1473
  br label %1523

1497:                                             ; preds = %1447
  %1498 = add nsw i32 %791, -2
  %1499 = icmp slt i32 %1459, %2
  br i1 %1499, label %1504, label %1500

1500:                                             ; preds = %1497
  %1501 = shl nsw i32 %2, 1
  %1502 = sub i32 -2, %1459
  %1503 = add i32 %1502, %1501
  br label %1506

1504:                                             ; preds = %1497
  %1505 = icmp slt i32 %1459, 0
  br i1 %1505, label %1506, label %1508

1506:                                             ; preds = %1504, %1500
  %1507 = phi i32 [ %1503, %1500 ], [ %1460, %1504 ]
  br label %1508

1508:                                             ; preds = %1506, %1504
  %1509 = phi i32 [ %1507, %1506 ], [ %1459, %1504 ]
  %1510 = mul nsw i32 %1498, %2
  %1511 = add i32 %1509, %1510
  %1512 = sext i32 %1511 to i64
  %1513 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1512
  %1514 = load i32, i32 addrspace(1)* %1513, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1515 = add nsw i32 %1511, %2
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1516
  %1518 = load i32, i32 addrspace(1)* %1517, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1519 = add nsw i32 %1515, %2
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1520
  %1522 = load i32, i32 addrspace(1)* %1521, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1523

1523:                                             ; preds = %1508, %1494, %1441
  %1524 = phi i32 [ 0, %1441 ], [ %1477, %1494 ], [ %1522, %1508 ]
  %1525 = phi i32 [ 0, %1441 ], [ %1481, %1494 ], [ %1518, %1508 ]
  %1526 = phi i32 [ 0, %1441 ], [ %1485, %1494 ], [ %1514, %1508 ]
  %1527 = phi i32 [ 0, %1441 ], [ %1458, %1494 ], [ %1458, %1508 ]
  %1528 = phi i32 [ 0, %1441 ], [ %1496, %1494 ], [ %1519, %1508 ]
  %1529 = phi i32 [ 0, %1441 ], [ %2, %1494 ], [ %2, %1508 ]
  %1530 = shl nuw nsw i32 %792, 1
  %1531 = lshr i32 %792, 6
  %1532 = mul nsw i32 %1531, -127
  %1533 = add nsw i32 %1532, %1530
  %1534 = trunc i32 %1533 to i16
  %1535 = add nsw i16 %1534, 2
  %1536 = sdiv i16 %1535, 2
  %1537 = sext i16 %1536 to i32
  %1538 = and i32 %1533, 1
  %1539 = icmp eq i32 %1538, 0
  %1540 = select i1 %1539, i32 0, i32 728
  %1541 = add nsw i32 %1540, %1537
  %1542 = add i32 %1533, %788
  %1543 = icmp slt i32 %1542, %2
  br i1 %1543, label %1544, label %1569

1544:                                             ; preds = %1523
  %1545 = sdiv i32 %1542, 2
  %1546 = and i32 %1542, 1
  %1547 = icmp eq i32 %1546, 0
  %1548 = sdiv i32 %2, 2
  %1549 = and i32 %2, 1
  %1550 = add nsw i32 %1548, %1549
  %1551 = sdiv i32 %3, 2
  %1552 = and i32 %3, 1
  %1553 = add nsw i32 %1551, %1552
  br i1 %1547, label %1559, label %1554

1554:                                             ; preds = %1544
  %1555 = mul nsw i32 %1553, %1550
  %1556 = add nsw i32 %1555, %1545
  %1557 = mul nsw i32 %3, %2
  %1558 = sdiv i32 %1557, 2
  br label %1561

1559:                                             ; preds = %1544
  %1560 = mul nsw i32 %1553, %2
  br label %1561

1561:                                             ; preds = %1559, %1554
  %1562 = phi i32 [ %1560, %1559 ], [ %1558, %1554 ]
  %1563 = phi i32 [ %1545, %1559 ], [ %1556, %1554 ]
  %1564 = phi i32 [ %1550, %1559 ], [ %1548, %1554 ]
  %1565 = sub nsw i32 %1564, %1562
  %1566 = sdiv i32 %791, 2
  %1567 = mul nsw i32 %1564, %1566
  %1568 = add i32 %1567, %1563
  br label %1569

1569:                                             ; preds = %1561, %1523
  %1570 = phi i32 [ %1562, %1561 ], [ 0, %1523 ]
  %1571 = phi i32 [ %1565, %1561 ], [ 0, %1523 ]
  %1572 = phi i32 [ %1568, %1561 ], [ 0, %1523 ]
  %1573 = icmp sgt i32 %4, 0
  br i1 %1573, label %1574, label %1916

1574:                                             ; preds = %1569
  %1575 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %798
  %1576 = add nuw nsw i32 %798, 66
  %1577 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1576
  %1578 = add nuw nsw i32 %798, 132
  %1579 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1578
  %1580 = add nuw nsw i32 %798, 198
  %1581 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1580
  %1582 = add nuw nsw i32 %798, 264
  %1583 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1582
  %1584 = add nuw nsw i32 %798, 330
  %1585 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1584
  %1586 = add nuw nsw i32 %798, 396
  %1587 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1586
  %1588 = add nuw nsw i32 %798, 462
  %1589 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1588
  %1590 = add nuw nsw i32 %798, 528
  %1591 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1590
  %1592 = add nuw nsw i32 %798, 594
  %1593 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1592
  %1594 = add nuw nsw i32 %798, 660
  %1595 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1594
  %1596 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1527
  %1597 = add nuw nsw i32 %1527, 66
  %1598 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1597
  %1599 = add nuw nsw i32 %1527, 132
  %1600 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1599
  %1601 = add nuw nsw i32 %1527, 198
  %1602 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1601
  %1603 = add nuw nsw i32 %1527, 264
  %1604 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1603
  %1605 = add nuw nsw i32 %1527, 330
  %1606 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1605
  %1607 = add nuw nsw i32 %1527, 396
  %1608 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1607
  %1609 = add nuw nsw i32 %1527, 462
  %1610 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1609
  %1611 = add nuw nsw i32 %1527, 528
  %1612 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1611
  %1613 = add nuw nsw i32 %1527, 594
  %1614 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1613
  %1615 = add nuw nsw i32 %1527, 660
  %1616 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1615
  %1617 = add nuw nsw i32 %792, 132
  %1618 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1617
  %1619 = add nuw nsw i32 %792, 133
  %1620 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1619
  %1621 = add nuw nsw i32 %792, 860
  %1622 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1621
  %1623 = add nuw nsw i32 %792, 260
  %1624 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1623
  %1625 = add nuw nsw i32 %792, 261
  %1626 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1625
  %1627 = add nuw nsw i32 %792, 988
  %1628 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1627
  %1629 = add nuw nsw i32 %792, 388
  %1630 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1629
  %1631 = add nuw nsw i32 %792, 389
  %1632 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1631
  %1633 = add nuw nsw i32 %792, 1116
  %1634 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1633
  %1635 = add nuw nsw i32 %792, 516
  %1636 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1635
  %1637 = add nuw nsw i32 %792, 517
  %1638 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1637
  %1639 = add nuw nsw i32 %792, 1244
  %1640 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1639
  %1641 = icmp ult i32 %792, 15
  %1642 = add nuw nsw i32 %792, 644
  %1643 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1642
  %1644 = add nuw nsw i32 %792, 645
  %1645 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1644
  %1646 = add nuw nsw i32 %792, 1372
  %1647 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1646
  %1648 = add nuw nsw i32 %792, 861
  %1649 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1648
  %1650 = add nuw nsw i32 %792, 989
  %1651 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1650
  %1652 = add nuw nsw i32 %792, 1117
  %1653 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1652
  %1654 = add nuw nsw i32 %792, 1245
  %1655 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1654
  %1656 = add nuw nsw i32 %792, 1373
  %1657 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1656
  %1658 = add nsw i32 %1541, 132
  %1659 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1658
  %1660 = add nsw i32 %1541, 198
  %1661 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1660
  %1662 = add nsw i32 %1541, 264
  %1663 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1662
  %1664 = add nsw i32 %1541, 330
  %1665 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1664
  %1666 = add nsw i32 %1541, 396
  %1667 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1666
  %1668 = add nsw i32 %1541, 462
  %1669 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1668
  %1670 = add nsw i32 %1541, 528
  %1671 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1670
  %1672 = add nsw i32 %1541, 594
  %1673 = getelementptr inbounds %"class.dwt_cuda::FDWT53.5", %"class.dwt_cuda::FDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi128ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1672
  br label %1674

1674:                                             ; preds = %1881, %1574
  %1675 = phi i32 [ 0, %1574 ], [ %1914, %1881 ]
  %1676 = phi i32 [ %1572, %1574 ], [ %1913, %1881 ]
  %1677 = phi i32 [ %1528, %1574 ], [ %1812, %1881 ]
  %1678 = phi i32 [ %1526, %1574 ], [ %1811, %1881 ]
  %1679 = phi i32 [ %1525, %1574 ], [ %1810, %1881 ]
  %1680 = phi i32 [ %1524, %1574 ], [ %1809, %1881 ]
  %1681 = phi i32 [ %1445, %1574 ], [ %1713, %1881 ]
  %1682 = phi i32 [ %1444, %1574 ], [ %1716, %1881 ]
  %1683 = phi i32 [ %1443, %1574 ], [ %1708, %1881 ]
  %1684 = phi i32 [ %1442, %1574 ], [ %1712, %1881 ]
  store i32 %1683, i32 addrspace(3)* %1575, align 4, !tbaa !6
  %1685 = add nsw i32 %1681, %2
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1686
  %1688 = load i32, i32 addrspace(1)* %1687, align 4, !tbaa !6
  %1689 = add nsw i32 %1685, %2
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1690
  %1692 = load i32, i32 addrspace(1)* %1691, align 4, !tbaa !6
  %1693 = add nsw i32 %1689, %2
  %1694 = sext i32 %1693 to i64
  %1695 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1694
  %1696 = load i32, i32 addrspace(1)* %1695, align 4, !tbaa !6
  %1697 = add nsw i32 %1693, %2
  %1698 = sext i32 %1697 to i64
  %1699 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1698
  %1700 = load i32, i32 addrspace(1)* %1699, align 4, !tbaa !6
  %1701 = add nsw i32 %1697, %2
  %1702 = sext i32 %1701 to i64
  %1703 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1702
  %1704 = load i32, i32 addrspace(1)* %1703, align 4, !tbaa !6
  %1705 = add nsw i32 %1701, %2
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1706
  %1708 = load i32, i32 addrspace(1)* %1707, align 4, !tbaa !6
  %1709 = add nsw i32 %1705, %2
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1710
  %1712 = load i32, i32 addrspace(1)* %1711, align 4, !tbaa !6
  %1713 = add nsw i32 %1709, %2
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1714
  %1716 = load i32, i32 addrspace(1)* %1715, align 4, !tbaa !6
  store i32 %1716, i32 addrspace(3)* %1595, align 4, !tbaa !6
  %1717 = add nsw i32 %1683, %1682
  %1718 = sdiv i32 %1717, -2
  %1719 = add i32 %1718, %1684
  store i32 %1719, i32 addrspace(3)* %1577, align 4, !tbaa !6
  %1720 = add nsw i32 %1692, %1682
  %1721 = sdiv i32 %1720, -2
  %1722 = add i32 %1721, %1688
  store i32 %1722, i32 addrspace(3)* %1581, align 4, !tbaa !6
  %1723 = add nsw i32 %1700, %1692
  %1724 = sdiv i32 %1723, -2
  %1725 = add i32 %1724, %1696
  store i32 %1725, i32 addrspace(3)* %1585, align 4, !tbaa !6
  %1726 = add nsw i32 %1708, %1700
  %1727 = sdiv i32 %1726, -2
  %1728 = add i32 %1727, %1704
  store i32 %1728, i32 addrspace(3)* %1589, align 4, !tbaa !6
  %1729 = add nsw i32 %1716, %1708
  %1730 = sdiv i32 %1729, -2
  %1731 = add i32 %1730, %1712
  store i32 %1731, i32 addrspace(3)* %1593, align 4, !tbaa !6
  %1732 = add i32 %1722, 2
  %1733 = add i32 %1732, %1719
  %1734 = sdiv i32 %1733, 4
  %1735 = add nsw i32 %1734, %1682
  store i32 %1735, i32 addrspace(3)* %1579, align 4, !tbaa !6
  %1736 = add i32 %1725, %1732
  %1737 = sdiv i32 %1736, 4
  %1738 = add nsw i32 %1737, %1692
  store i32 %1738, i32 addrspace(3)* %1583, align 4, !tbaa !6
  %1739 = add i32 %1728, 2
  %1740 = add i32 %1739, %1725
  %1741 = sdiv i32 %1740, 4
  %1742 = add nsw i32 %1741, %1700
  store i32 %1742, i32 addrspace(3)* %1587, align 4, !tbaa !6
  %1743 = add i32 %1731, %1739
  %1744 = sdiv i32 %1743, 4
  %1745 = add nsw i32 %1744, %1708
  store i32 %1745, i32 addrspace(3)* %1591, align 4, !tbaa !6
  br i1 %1446, label %1746, label %1808

1746:                                             ; preds = %1674
  store i32 %1678, i32 addrspace(3)* %1596, align 4, !tbaa !6
  %1747 = add nsw i32 %1677, %1529
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1748
  %1750 = load i32, i32 addrspace(1)* %1749, align 4, !tbaa !6
  %1751 = add nsw i32 %1747, %1529
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1752
  %1754 = load i32, i32 addrspace(1)* %1753, align 4, !tbaa !6
  %1755 = add nsw i32 %1751, %1529
  %1756 = sext i32 %1755 to i64
  %1757 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1756
  %1758 = load i32, i32 addrspace(1)* %1757, align 4, !tbaa !6
  %1759 = add nsw i32 %1755, %1529
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1760
  %1762 = load i32, i32 addrspace(1)* %1761, align 4, !tbaa !6
  %1763 = add nsw i32 %1759, %1529
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1764
  %1766 = load i32, i32 addrspace(1)* %1765, align 4, !tbaa !6
  %1767 = add nsw i32 %1763, %1529
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1768
  %1770 = load i32, i32 addrspace(1)* %1769, align 4, !tbaa !6
  %1771 = add nsw i32 %1767, %1529
  %1772 = sext i32 %1771 to i64
  %1773 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1772
  %1774 = load i32, i32 addrspace(1)* %1773, align 4, !tbaa !6
  %1775 = add nsw i32 %1771, %1529
  %1776 = sext i32 %1775 to i64
  %1777 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1776
  %1778 = load i32, i32 addrspace(1)* %1777, align 4, !tbaa !6
  store i32 %1778, i32 addrspace(3)* %1616, align 4, !tbaa !6
  %1779 = add nsw i32 %1680, %1678
  %1780 = sdiv i32 %1779, -2
  %1781 = add i32 %1780, %1679
  store i32 %1781, i32 addrspace(3)* %1598, align 4, !tbaa !6
  %1782 = add nsw i32 %1754, %1680
  %1783 = sdiv i32 %1782, -2
  %1784 = add i32 %1783, %1750
  store i32 %1784, i32 addrspace(3)* %1602, align 4, !tbaa !6
  %1785 = add nsw i32 %1762, %1754
  %1786 = sdiv i32 %1785, -2
  %1787 = add i32 %1786, %1758
  store i32 %1787, i32 addrspace(3)* %1606, align 4, !tbaa !6
  %1788 = add nsw i32 %1770, %1762
  %1789 = sdiv i32 %1788, -2
  %1790 = add i32 %1789, %1766
  store i32 %1790, i32 addrspace(3)* %1610, align 4, !tbaa !6
  %1791 = add nsw i32 %1778, %1770
  %1792 = sdiv i32 %1791, -2
  %1793 = add i32 %1792, %1774
  store i32 %1793, i32 addrspace(3)* %1614, align 4, !tbaa !6
  %1794 = add i32 %1784, 2
  %1795 = add i32 %1794, %1781
  %1796 = sdiv i32 %1795, 4
  %1797 = add nsw i32 %1796, %1680
  store i32 %1797, i32 addrspace(3)* %1600, align 4, !tbaa !6
  %1798 = add i32 %1787, %1794
  %1799 = sdiv i32 %1798, 4
  %1800 = add nsw i32 %1799, %1754
  store i32 %1800, i32 addrspace(3)* %1604, align 4, !tbaa !6
  %1801 = add i32 %1790, 2
  %1802 = add i32 %1801, %1787
  %1803 = sdiv i32 %1802, 4
  %1804 = add nsw i32 %1803, %1762
  store i32 %1804, i32 addrspace(3)* %1608, align 4, !tbaa !6
  %1805 = add i32 %1793, %1801
  %1806 = sdiv i32 %1805, 4
  %1807 = add nsw i32 %1806, %1770
  store i32 %1807, i32 addrspace(3)* %1612, align 4, !tbaa !6
  br label %1808

1808:                                             ; preds = %1746, %1674
  %1809 = phi i32 [ %1778, %1746 ], [ %1680, %1674 ]
  %1810 = phi i32 [ %1774, %1746 ], [ %1679, %1674 ]
  %1811 = phi i32 [ %1770, %1746 ], [ %1678, %1674 ]
  %1812 = phi i32 [ %1775, %1746 ], [ %1677, %1674 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1813 = load i32, i32 addrspace(3)* %1618, align 4, !tbaa !6
  %1814 = load i32, i32 addrspace(3)* %1620, align 4, !tbaa !6
  %1815 = add nsw i32 %1814, %1813
  %1816 = sdiv i32 %1815, -2
  %1817 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !6
  %1818 = add i32 %1816, %1817
  store i32 %1818, i32 addrspace(3)* %1622, align 4, !tbaa !6
  %1819 = load i32, i32 addrspace(3)* %1624, align 4, !tbaa !6
  %1820 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1821 = add nsw i32 %1820, %1819
  %1822 = sdiv i32 %1821, -2
  %1823 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1824 = add i32 %1822, %1823
  store i32 %1824, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1825 = load i32, i32 addrspace(3)* %1630, align 4, !tbaa !6
  %1826 = load i32, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1827 = add nsw i32 %1826, %1825
  %1828 = sdiv i32 %1827, -2
  %1829 = load i32, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1830 = add i32 %1828, %1829
  store i32 %1830, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1831 = load i32, i32 addrspace(3)* %1636, align 4, !tbaa !6
  %1832 = load i32, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1833 = add nsw i32 %1832, %1831
  %1834 = sdiv i32 %1833, -2
  %1835 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !6
  %1836 = add i32 %1834, %1835
  store i32 %1836, i32 addrspace(3)* %1640, align 4, !tbaa !6
  br i1 %1641, label %1837, label %1844

1837:                                             ; preds = %1808
  %1838 = load i32, i32 addrspace(3)* %1643, align 4, !tbaa !6
  %1839 = load i32, i32 addrspace(3)* %1645, align 4, !tbaa !6
  %1840 = add nsw i32 %1839, %1838
  %1841 = sdiv i32 %1840, -2
  %1842 = load i32, i32 addrspace(3)* %1647, align 4, !tbaa !6
  %1843 = add i32 %1841, %1842
  store i32 %1843, i32 addrspace(3)* %1647, align 4, !tbaa !6
  br label %1844

1844:                                             ; preds = %1837, %1808
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1845 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !6
  %1846 = load i32, i32 addrspace(3)* %1649, align 4, !tbaa !6
  %1847 = add i32 %1845, 2
  %1848 = add i32 %1847, %1846
  %1849 = sdiv i32 %1848, 4
  %1850 = load i32, i32 addrspace(3)* %1620, align 4, !tbaa !6
  %1851 = add nsw i32 %1849, %1850
  store i32 %1851, i32 addrspace(3)* %1620, align 4, !tbaa !6
  %1852 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1853 = load i32, i32 addrspace(3)* %1651, align 4, !tbaa !6
  %1854 = add i32 %1852, 2
  %1855 = add i32 %1854, %1853
  %1856 = sdiv i32 %1855, 4
  %1857 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1858 = add nsw i32 %1856, %1857
  store i32 %1858, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1859 = load i32, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1860 = load i32, i32 addrspace(3)* %1653, align 4, !tbaa !6
  %1861 = add i32 %1859, 2
  %1862 = add i32 %1861, %1860
  %1863 = sdiv i32 %1862, 4
  %1864 = load i32, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1865 = add nsw i32 %1863, %1864
  store i32 %1865, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1866 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !6
  %1867 = load i32, i32 addrspace(3)* %1655, align 4, !tbaa !6
  %1868 = add i32 %1866, 2
  %1869 = add i32 %1868, %1867
  %1870 = sdiv i32 %1869, 4
  %1871 = load i32, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1872 = add nsw i32 %1870, %1871
  store i32 %1872, i32 addrspace(3)* %1638, align 4, !tbaa !6
  br i1 %1641, label %1873, label %1881

1873:                                             ; preds = %1844
  %1874 = load i32, i32 addrspace(3)* %1647, align 4, !tbaa !6
  %1875 = load i32, i32 addrspace(3)* %1657, align 4, !tbaa !6
  %1876 = add i32 %1874, 2
  %1877 = add i32 %1876, %1875
  %1878 = sdiv i32 %1877, 4
  %1879 = load i32, i32 addrspace(3)* %1645, align 4, !tbaa !6
  %1880 = add nsw i32 %1878, %1879
  store i32 %1880, i32 addrspace(3)* %1645, align 4, !tbaa !6
  br label %1881

1881:                                             ; preds = %1873, %1844
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1882 = load i32, i32 addrspace(3)* %1659, align 4, !tbaa !6
  %1883 = sext i32 %1676 to i64
  %1884 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1883
  store i32 %1882, i32 addrspace(1)* %1884, align 4, !tbaa !6
  %1885 = add nsw i32 %1676, %1570
  %1886 = load i32, i32 addrspace(3)* %1661, align 4, !tbaa !6
  %1887 = sext i32 %1885 to i64
  %1888 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1887
  store i32 %1886, i32 addrspace(1)* %1888, align 4, !tbaa !6
  %1889 = add nsw i32 %1885, %1571
  %1890 = load i32, i32 addrspace(3)* %1663, align 4, !tbaa !6
  %1891 = sext i32 %1889 to i64
  %1892 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1891
  store i32 %1890, i32 addrspace(1)* %1892, align 4, !tbaa !6
  %1893 = add nsw i32 %1889, %1570
  %1894 = load i32, i32 addrspace(3)* %1665, align 4, !tbaa !6
  %1895 = sext i32 %1893 to i64
  %1896 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1895
  store i32 %1894, i32 addrspace(1)* %1896, align 4, !tbaa !6
  %1897 = add nsw i32 %1893, %1571
  %1898 = load i32, i32 addrspace(3)* %1667, align 4, !tbaa !6
  %1899 = sext i32 %1897 to i64
  %1900 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1899
  store i32 %1898, i32 addrspace(1)* %1900, align 4, !tbaa !6
  %1901 = add nsw i32 %1897, %1570
  %1902 = load i32, i32 addrspace(3)* %1669, align 4, !tbaa !6
  %1903 = sext i32 %1901 to i64
  %1904 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1903
  store i32 %1902, i32 addrspace(1)* %1904, align 4, !tbaa !6
  %1905 = add nsw i32 %1901, %1571
  %1906 = load i32, i32 addrspace(3)* %1671, align 4, !tbaa !6
  %1907 = sext i32 %1905 to i64
  %1908 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1907
  store i32 %1906, i32 addrspace(1)* %1908, align 4, !tbaa !6
  %1909 = add nsw i32 %1905, %1570
  %1910 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !6
  %1911 = sext i32 %1909 to i64
  %1912 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1911
  store i32 %1910, i32 addrspace(1)* %1912, align 4, !tbaa !6
  %1913 = add nsw i32 %1909, %1571
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1914 = add nuw nsw i32 %1675, 1
  %1915 = icmp eq i32 %1914, %4
  br i1 %1915, label %1916, label %1674, !llvm.loop !17

1916:                                             ; preds = %783, %1374, %1881, %308, %998, %1569
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12fdwt53KernelILi64ELi8EEEvPKiPiiii(i32 addrspace(1)* readonly %0, i32 addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = shl i32 %7, 3
  %9 = add i32 %8, 8
  %10 = mul i32 %9, %4
  %11 = or i32 %10, 1
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %787, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = add nuw nsw i32 %15, 2
  %17 = lshr i32 %16, 1
  %18 = and i32 %15, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 376
  %21 = add nuw nsw i32 %20, %17
  %22 = shl i32 %6, 6
  %23 = add i32 %22, %15
  %24 = sub i32 0, %23
  %25 = icmp eq i32 %7, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %13
  %27 = icmp slt i32 %23, %2
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = shl nsw i32 %2, 1
  %30 = sub i32 -2, %23
  %31 = add i32 %30, %29
  br label %34

32:                                               ; preds = %26
  %33 = icmp slt i32 %23, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ %24, %32 ]
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %35, %34 ], [ %23, %32 ]
  %38 = mul nsw i32 %3, %2
  %39 = add nsw i32 %37, %38
  %40 = mul i32 %14, %2
  %41 = icmp eq i32 %40, %38
  %42 = mul i32 %2, -2
  %43 = sub nsw i32 0, %2
  %44 = shl i32 %2, 1
  %45 = select i1 %41, i32 %44, i32 %42
  %46 = select i1 %41, i32 %43, i32 %2
  %47 = select i1 %41, i32 %42, i32 0
  %48 = add i32 %47, %40
  %49 = add i32 %48, %37
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %50
  %52 = load i32, i32 addrspace(1)* %51, align 4, !tbaa !6, !amdgpu.noclobber !10
  %53 = add nsw i32 %49, %46
  %54 = icmp eq i32 %53, %39
  %55 = sub nsw i32 0, %46
  %56 = shl i32 %46, 1
  %57 = select i1 %54, i32 %56, i32 %45
  %58 = select i1 %54, i32 %55, i32 %46
  %59 = select i1 %54, i32 %45, i32 0
  %60 = add i32 %59, %53
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %61
  %63 = load i32, i32 addrspace(1)* %62, align 4, !tbaa !6, !amdgpu.noclobber !10
  %64 = add nsw i32 %60, %58
  %65 = icmp eq i32 %64, %39
  %66 = select i1 %65, i32 %57, i32 0
  %67 = add i32 %66, %64
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %68
  %70 = load i32, i32 addrspace(1)* %69, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %27, label %74, label %71

71:                                               ; preds = %36
  %72 = sub i32 -2, %23
  %73 = add i32 %72, %44
  br label %76

74:                                               ; preds = %36
  %75 = icmp slt i32 %23, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %24, %74 ]
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %77, %76 ], [ %23, %74 ]
  %80 = add nsw i32 %79, %38
  %81 = add i32 %79, %40
  br label %130

82:                                               ; preds = %13
  %83 = add nsw i32 %14, -2
  %84 = icmp slt i32 %23, %2
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = shl nsw i32 %2, 1
  %87 = sub i32 -2, %23
  %88 = add i32 %87, %86
  br label %91

89:                                               ; preds = %82
  %90 = icmp slt i32 %23, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %88, %85 ], [ %24, %89 ]
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %92, %91 ], [ %23, %89 ]
  %95 = mul nsw i32 %3, %2
  %96 = add nsw i32 %94, %95
  %97 = mul nsw i32 %83, %2
  %98 = icmp eq i32 %97, %95
  %99 = mul i32 %2, -2
  %100 = sub nsw i32 0, %2
  %101 = shl i32 %2, 1
  %102 = select i1 %98, i32 %100, i32 %2
  %103 = select i1 %98, i32 %101, i32 %99
  %104 = select i1 %98, i32 %99, i32 0
  %105 = add i32 %104, %97
  %106 = add i32 %105, %94
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %107
  %109 = load i32, i32 addrspace(1)* %108, align 4, !tbaa !6, !amdgpu.noclobber !10
  %110 = add nsw i32 %106, %102
  %111 = icmp eq i32 %110, %96
  %112 = sub nsw i32 0, %102
  %113 = shl i32 %102, 1
  %114 = select i1 %111, i32 %112, i32 %102
  %115 = select i1 %111, i32 %113, i32 %103
  %116 = select i1 %111, i32 %103, i32 0
  %117 = add i32 %116, %110
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %118
  %120 = load i32, i32 addrspace(1)* %119, align 4, !tbaa !6, !amdgpu.noclobber !10
  %121 = add nsw i32 %117, %114
  %122 = icmp eq i32 %121, %96
  %123 = sub nsw i32 0, %114
  %124 = select i1 %122, i32 %115, i32 0
  %125 = add i32 %124, %121
  %126 = select i1 %122, i32 %123, i32 %114
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %127
  %129 = load i32, i32 addrspace(1)* %128, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %130

130:                                              ; preds = %93, %78
  %131 = phi i32 [ %63, %78 ], [ %120, %93 ]
  %132 = phi i32 [ %70, %78 ], [ %109, %93 ]
  %133 = phi i32 [ %52, %78 ], [ %129, %93 ]
  %134 = phi i32 [ %81, %78 ], [ %125, %93 ]
  %135 = phi i32 [ %2, %78 ], [ %126, %93 ]
  %136 = phi i32 [ %80, %78 ], [ %96, %93 ]
  %137 = icmp ult i32 %15, 3
  br i1 %137, label %138, label %256

138:                                              ; preds = %130
  %139 = icmp eq i32 %15, 0
  %140 = select i1 %139, i32 64, i32 -3
  %141 = add nsw i32 %140, %15
  %142 = trunc i32 %141 to i8
  %143 = add nsw i8 %142, 2
  %144 = sdiv i8 %143, 2
  %145 = zext i8 %144 to i32
  %146 = and i32 %141, 1
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 0, i32 376
  %149 = add nuw nsw i32 %148, %145
  %150 = add i32 %141, %22
  %151 = sub i32 0, %150
  br i1 %25, label %152, label %208

152:                                              ; preds = %138
  %153 = icmp slt i32 %150, %2
  br i1 %153, label %158, label %154

154:                                              ; preds = %152
  %155 = shl nsw i32 %2, 1
  %156 = sub i32 -2, %150
  %157 = add i32 %156, %155
  br label %160

158:                                              ; preds = %152
  %159 = icmp slt i32 %150, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %158, %154
  %161 = phi i32 [ %157, %154 ], [ %151, %158 ]
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %161, %160 ], [ %150, %158 ]
  %164 = mul nsw i32 %3, %2
  %165 = add nsw i32 %163, %164
  %166 = mul i32 %14, %2
  %167 = icmp eq i32 %166, %164
  %168 = mul i32 %2, -2
  %169 = sub nsw i32 0, %2
  %170 = shl i32 %2, 1
  %171 = select i1 %167, i32 %170, i32 %168
  %172 = select i1 %167, i32 %169, i32 %2
  %173 = select i1 %167, i32 %168, i32 0
  %174 = add i32 %173, %166
  %175 = add i32 %174, %163
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %176
  %178 = load i32, i32 addrspace(1)* %177, align 4, !tbaa !6, !amdgpu.noclobber !10
  %179 = add nsw i32 %175, %172
  %180 = icmp eq i32 %179, %165
  %181 = sub nsw i32 0, %172
  %182 = shl i32 %172, 1
  %183 = select i1 %180, i32 %182, i32 %171
  %184 = select i1 %180, i32 %181, i32 %172
  %185 = select i1 %180, i32 %171, i32 0
  %186 = add i32 %185, %179
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %187
  %189 = load i32, i32 addrspace(1)* %188, align 4, !tbaa !6, !amdgpu.noclobber !10
  %190 = add nsw i32 %186, %184
  %191 = icmp eq i32 %190, %165
  %192 = select i1 %191, i32 %183, i32 0
  %193 = add i32 %192, %190
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %194
  %196 = load i32, i32 addrspace(1)* %195, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %153, label %200, label %197

197:                                              ; preds = %162
  %198 = sub i32 -2, %150
  %199 = add i32 %198, %170
  br label %202

200:                                              ; preds = %162
  %201 = icmp slt i32 %150, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %199, %197 ], [ %151, %200 ]
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %203, %202 ], [ %150, %200 ]
  %206 = add nsw i32 %205, %164
  %207 = add i32 %205, %166
  br label %256

208:                                              ; preds = %138
  %209 = add nsw i32 %14, -2
  %210 = icmp slt i32 %150, %2
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = shl nsw i32 %2, 1
  %213 = sub i32 -2, %150
  %214 = add i32 %213, %212
  br label %217

215:                                              ; preds = %208
  %216 = icmp slt i32 %150, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %215, %211
  %218 = phi i32 [ %214, %211 ], [ %151, %215 ]
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %218, %217 ], [ %150, %215 ]
  %221 = mul nsw i32 %3, %2
  %222 = add nsw i32 %220, %221
  %223 = mul nsw i32 %209, %2
  %224 = icmp eq i32 %223, %221
  %225 = mul i32 %2, -2
  %226 = sub nsw i32 0, %2
  %227 = shl i32 %2, 1
  %228 = select i1 %224, i32 %226, i32 %2
  %229 = select i1 %224, i32 %227, i32 %225
  %230 = select i1 %224, i32 %225, i32 0
  %231 = add i32 %230, %223
  %232 = add i32 %231, %220
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %233
  %235 = load i32, i32 addrspace(1)* %234, align 4, !tbaa !6, !amdgpu.noclobber !10
  %236 = add nsw i32 %232, %228
  %237 = icmp eq i32 %236, %222
  %238 = sub nsw i32 0, %228
  %239 = shl i32 %228, 1
  %240 = select i1 %237, i32 %238, i32 %228
  %241 = select i1 %237, i32 %239, i32 %229
  %242 = select i1 %237, i32 %229, i32 0
  %243 = add i32 %242, %236
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %244
  %246 = load i32, i32 addrspace(1)* %245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %247 = add nsw i32 %243, %240
  %248 = icmp eq i32 %247, %222
  %249 = sub nsw i32 0, %240
  %250 = select i1 %248, i32 %241, i32 0
  %251 = add i32 %250, %247
  %252 = select i1 %248, i32 %249, i32 %240
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %253
  %255 = load i32, i32 addrspace(1)* %254, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %256

256:                                              ; preds = %219, %204, %130
  %257 = phi i32 [ 0, %130 ], [ %178, %204 ], [ %255, %219 ]
  %258 = phi i32 [ 0, %130 ], [ %189, %204 ], [ %246, %219 ]
  %259 = phi i32 [ 0, %130 ], [ %196, %204 ], [ %235, %219 ]
  %260 = phi i32 [ 0, %130 ], [ %149, %204 ], [ %149, %219 ]
  %261 = phi i32 [ 0, %130 ], [ %207, %204 ], [ %251, %219 ]
  %262 = phi i32 [ 0, %130 ], [ %2, %204 ], [ %252, %219 ]
  %263 = phi i32 [ 0, %130 ], [ %206, %204 ], [ %222, %219 ]
  %264 = shl nuw nsw i32 %15, 1
  %265 = lshr i32 %15, 5
  %266 = mul nsw i32 %265, -63
  %267 = add nsw i32 %266, %264
  %268 = trunc i32 %267 to i16
  %269 = add nsw i16 %268, 2
  %270 = sdiv i16 %269, 2
  %271 = sext i16 %270 to i32
  %272 = and i32 %267, 1
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, i32 0, i32 376
  %275 = add nsw i32 %274, %271
  %276 = add i32 %267, %22
  %277 = icmp slt i32 %276, %2
  br i1 %277, label %278, label %308

278:                                              ; preds = %256
  %279 = sdiv i32 %276, 2
  %280 = and i32 %276, 1
  %281 = icmp eq i32 %280, 0
  %282 = sdiv i32 %2, 2
  %283 = and i32 %2, 1
  %284 = add nsw i32 %282, %283
  %285 = sdiv i32 %3, 2
  %286 = and i32 %3, 1
  %287 = add nsw i32 %285, %286
  br i1 %281, label %293, label %288

288:                                              ; preds = %278
  %289 = mul nsw i32 %287, %284
  %290 = add nsw i32 %289, %279
  %291 = mul nsw i32 %3, %2
  %292 = sdiv i32 %291, 2
  br label %295

293:                                              ; preds = %278
  %294 = mul nsw i32 %287, %2
  br label %295

295:                                              ; preds = %293, %288
  %296 = phi i32 [ %294, %293 ], [ %292, %288 ]
  %297 = phi i32 [ %279, %293 ], [ %290, %288 ]
  %298 = phi i32 [ %284, %293 ], [ %282, %288 ]
  %299 = sub nsw i32 %298, %296
  %300 = mul nsw i32 %298, %285
  %301 = icmp eq i32 %286, 0
  %302 = select i1 %301, i32 0, i32 %296
  %303 = add i32 %302, %297
  %304 = add i32 %303, %300
  %305 = sdiv i32 %14, 2
  %306 = mul nsw i32 %298, %305
  %307 = add i32 %306, %297
  br label %308

308:                                              ; preds = %295, %256
  %309 = phi i32 [ %296, %295 ], [ 0, %256 ]
  %310 = phi i32 [ %299, %295 ], [ 0, %256 ]
  %311 = phi i32 [ %304, %295 ], [ 0, %256 ]
  %312 = phi i32 [ %307, %295 ], [ 0, %256 ]
  %313 = icmp sgt i32 %4, 0
  br i1 %313, label %314, label %1916

314:                                              ; preds = %308
  %315 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %21
  %316 = add nuw nsw i32 %21, 34
  %317 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %316
  %318 = add nuw nsw i32 %21, 68
  %319 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %318
  %320 = add nuw nsw i32 %21, 102
  %321 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %320
  %322 = add nuw nsw i32 %21, 136
  %323 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %322
  %324 = add nuw nsw i32 %21, 170
  %325 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %324
  %326 = add nuw nsw i32 %21, 204
  %327 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %326
  %328 = add nuw nsw i32 %21, 238
  %329 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %328
  %330 = add nuw nsw i32 %21, 272
  %331 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %330
  %332 = add nuw nsw i32 %21, 306
  %333 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %332
  %334 = add nuw nsw i32 %21, 340
  %335 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %334
  %336 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %260
  %337 = add nuw nsw i32 %260, 34
  %338 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %337
  %339 = add nuw nsw i32 %260, 68
  %340 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %339
  %341 = add nuw nsw i32 %260, 102
  %342 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %341
  %343 = add nuw nsw i32 %260, 136
  %344 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %343
  %345 = add nuw nsw i32 %260, 170
  %346 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %345
  %347 = add nuw nsw i32 %260, 204
  %348 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %347
  %349 = add nuw nsw i32 %260, 238
  %350 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %349
  %351 = add nuw nsw i32 %260, 272
  %352 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %351
  %353 = add nuw nsw i32 %260, 306
  %354 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %353
  %355 = add nuw nsw i32 %260, 340
  %356 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %355
  %357 = add nuw nsw i32 %15, 68
  %358 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %357
  %359 = add nuw nsw i32 %15, 69
  %360 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %359
  %361 = add nuw nsw i32 %15, 444
  %362 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %361
  %363 = add nuw nsw i32 %15, 132
  %364 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %363
  %365 = add nuw nsw i32 %15, 133
  %366 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %365
  %367 = add nuw nsw i32 %15, 508
  %368 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %367
  %369 = add nuw nsw i32 %15, 196
  %370 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %369
  %371 = add nuw nsw i32 %15, 197
  %372 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %371
  %373 = add nuw nsw i32 %15, 572
  %374 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %373
  %375 = add nuw nsw i32 %15, 260
  %376 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %375
  %377 = add nuw nsw i32 %15, 261
  %378 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %377
  %379 = add nuw nsw i32 %15, 636
  %380 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %379
  %381 = icmp ult i32 %15, 15
  %382 = add nuw nsw i32 %15, 324
  %383 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %382
  %384 = add nuw nsw i32 %15, 325
  %385 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %384
  %386 = add nuw nsw i32 %15, 700
  %387 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %386
  %388 = add nuw nsw i32 %15, 445
  %389 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %388
  %390 = add nuw nsw i32 %15, 509
  %391 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %390
  %392 = add nuw nsw i32 %15, 573
  %393 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %392
  %394 = add nuw nsw i32 %15, 637
  %395 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %394
  %396 = add nuw nsw i32 %15, 701
  %397 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %396
  %398 = add nsw i32 %275, 68
  %399 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %398
  %400 = add nsw i32 %275, 102
  %401 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %400
  %402 = add nsw i32 %275, 136
  %403 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %402
  %404 = add nsw i32 %275, 170
  %405 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %404
  %406 = add nsw i32 %275, 204
  %407 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %406
  %408 = add nsw i32 %275, 238
  %409 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %408
  %410 = add nsw i32 %275, 272
  %411 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %410
  %412 = add nsw i32 %275, 306
  %413 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %412
  br label %414

414:                                              ; preds = %783, %314
  %415 = phi i32 [ 0, %314 ], [ %785, %783 ]
  %416 = phi i32 [ %312, %314 ], [ %784, %783 ]
  %417 = phi i32 [ %262, %314 ], [ %651, %783 ]
  %418 = phi i32 [ %261, %314 ], [ %650, %783 ]
  %419 = phi i32 [ %259, %314 ], [ %649, %783 ]
  %420 = phi i32 [ %258, %314 ], [ %648, %783 ]
  %421 = phi i32 [ %257, %314 ], [ %647, %783 ]
  %422 = phi i32 [ %135, %314 ], [ %503, %783 ]
  %423 = phi i32 [ %134, %314 ], [ %502, %783 ]
  %424 = phi i32 [ %133, %314 ], [ %506, %783 ]
  %425 = phi i32 [ %132, %314 ], [ %486, %783 ]
  %426 = phi i32 [ %131, %314 ], [ %496, %783 ]
  store i32 %425, i32 addrspace(3)* %315, align 4, !tbaa !6
  %427 = add nsw i32 %423, %422
  %428 = icmp eq i32 %427, %136
  %429 = mul i32 %422, -2
  %430 = sub nsw i32 0, %422
  %431 = select i1 %428, i32 %429, i32 0
  %432 = add i32 %431, %427
  %433 = select i1 %428, i32 %430, i32 %422
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %434
  %436 = load i32, i32 addrspace(1)* %435, align 4, !tbaa !6
  %437 = add nsw i32 %432, %433
  %438 = icmp eq i32 %437, %136
  %439 = mul i32 %433, -2
  %440 = sub nsw i32 0, %433
  %441 = select i1 %438, i32 %439, i32 0
  %442 = add i32 %441, %437
  %443 = select i1 %438, i32 %440, i32 %433
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %444
  %446 = load i32, i32 addrspace(1)* %445, align 4, !tbaa !6
  %447 = add nsw i32 %442, %443
  %448 = icmp eq i32 %447, %136
  %449 = mul i32 %443, -2
  %450 = sub nsw i32 0, %443
  %451 = select i1 %448, i32 %449, i32 0
  %452 = add i32 %451, %447
  %453 = select i1 %448, i32 %450, i32 %443
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %454
  %456 = load i32, i32 addrspace(1)* %455, align 4, !tbaa !6
  %457 = add nsw i32 %452, %453
  %458 = icmp eq i32 %457, %136
  %459 = mul i32 %453, -2
  %460 = sub nsw i32 0, %453
  %461 = select i1 %458, i32 %459, i32 0
  %462 = add i32 %461, %457
  %463 = select i1 %458, i32 %460, i32 %453
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %464
  %466 = load i32, i32 addrspace(1)* %465, align 4, !tbaa !6
  %467 = add nsw i32 %462, %463
  %468 = icmp eq i32 %467, %136
  %469 = mul i32 %463, -2
  %470 = sub nsw i32 0, %463
  %471 = select i1 %468, i32 %469, i32 0
  %472 = add i32 %471, %467
  %473 = select i1 %468, i32 %470, i32 %463
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %474
  %476 = load i32, i32 addrspace(1)* %475, align 4, !tbaa !6
  %477 = add nsw i32 %472, %473
  %478 = icmp eq i32 %477, %136
  %479 = mul i32 %473, -2
  %480 = sub nsw i32 0, %473
  %481 = select i1 %478, i32 %479, i32 0
  %482 = add i32 %481, %477
  %483 = select i1 %478, i32 %480, i32 %473
  %484 = sext i32 %482 to i64
  %485 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %484
  %486 = load i32, i32 addrspace(1)* %485, align 4, !tbaa !6
  %487 = add nsw i32 %482, %483
  %488 = icmp eq i32 %487, %136
  %489 = mul i32 %483, -2
  %490 = sub nsw i32 0, %483
  %491 = select i1 %488, i32 %489, i32 0
  %492 = add i32 %491, %487
  %493 = select i1 %488, i32 %490, i32 %483
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %494
  %496 = load i32, i32 addrspace(1)* %495, align 4, !tbaa !6
  %497 = add nsw i32 %492, %493
  %498 = icmp eq i32 %497, %136
  %499 = mul i32 %493, -2
  %500 = sub nsw i32 0, %493
  %501 = select i1 %498, i32 %499, i32 0
  %502 = add i32 %501, %497
  %503 = select i1 %498, i32 %500, i32 %493
  %504 = sext i32 %502 to i64
  %505 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %504
  %506 = load i32, i32 addrspace(1)* %505, align 4, !tbaa !6
  store i32 %506, i32 addrspace(3)* %335, align 4, !tbaa !6
  %507 = add nsw i32 %425, %424
  %508 = sdiv i32 %507, -2
  %509 = add i32 %508, %426
  store i32 %509, i32 addrspace(3)* %317, align 4, !tbaa !6
  %510 = add nsw i32 %446, %424
  %511 = sdiv i32 %510, -2
  %512 = add i32 %511, %436
  store i32 %512, i32 addrspace(3)* %321, align 4, !tbaa !6
  %513 = add nsw i32 %466, %446
  %514 = sdiv i32 %513, -2
  %515 = add i32 %514, %456
  store i32 %515, i32 addrspace(3)* %325, align 4, !tbaa !6
  %516 = add nsw i32 %486, %466
  %517 = sdiv i32 %516, -2
  %518 = add i32 %517, %476
  store i32 %518, i32 addrspace(3)* %329, align 4, !tbaa !6
  %519 = add nsw i32 %506, %486
  %520 = sdiv i32 %519, -2
  %521 = add i32 %520, %496
  store i32 %521, i32 addrspace(3)* %333, align 4, !tbaa !6
  %522 = add i32 %512, 2
  %523 = add i32 %522, %509
  %524 = sdiv i32 %523, 4
  %525 = add nsw i32 %524, %424
  store i32 %525, i32 addrspace(3)* %319, align 4, !tbaa !6
  %526 = add i32 %515, %522
  %527 = sdiv i32 %526, 4
  %528 = add nsw i32 %527, %446
  store i32 %528, i32 addrspace(3)* %323, align 4, !tbaa !6
  %529 = add i32 %518, 2
  %530 = add i32 %529, %515
  %531 = sdiv i32 %530, 4
  %532 = add nsw i32 %531, %466
  store i32 %532, i32 addrspace(3)* %327, align 4, !tbaa !6
  %533 = add i32 %521, %529
  %534 = sdiv i32 %533, 4
  %535 = add nsw i32 %534, %486
  store i32 %535, i32 addrspace(3)* %331, align 4, !tbaa !6
  br i1 %137, label %536, label %646

536:                                              ; preds = %414
  store i32 %419, i32 addrspace(3)* %336, align 4, !tbaa !6
  %537 = add nsw i32 %418, %417
  %538 = icmp eq i32 %537, %263
  %539 = mul i32 %417, -2
  %540 = sub nsw i32 0, %417
  %541 = select i1 %538, i32 %539, i32 0
  %542 = add i32 %541, %537
  %543 = select i1 %538, i32 %540, i32 %417
  %544 = sext i32 %542 to i64
  %545 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %544
  %546 = load i32, i32 addrspace(1)* %545, align 4, !tbaa !6
  %547 = add nsw i32 %542, %543
  %548 = icmp eq i32 %547, %263
  %549 = mul i32 %543, -2
  %550 = sub nsw i32 0, %543
  %551 = select i1 %548, i32 %549, i32 0
  %552 = add i32 %551, %547
  %553 = select i1 %548, i32 %550, i32 %543
  %554 = sext i32 %552 to i64
  %555 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %554
  %556 = load i32, i32 addrspace(1)* %555, align 4, !tbaa !6
  %557 = add nsw i32 %552, %553
  %558 = icmp eq i32 %557, %263
  %559 = mul i32 %553, -2
  %560 = sub nsw i32 0, %553
  %561 = select i1 %558, i32 %559, i32 0
  %562 = add i32 %561, %557
  %563 = select i1 %558, i32 %560, i32 %553
  %564 = sext i32 %562 to i64
  %565 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %564
  %566 = load i32, i32 addrspace(1)* %565, align 4, !tbaa !6
  %567 = add nsw i32 %562, %563
  %568 = icmp eq i32 %567, %263
  %569 = mul i32 %563, -2
  %570 = sub nsw i32 0, %563
  %571 = select i1 %568, i32 %569, i32 0
  %572 = add i32 %571, %567
  %573 = select i1 %568, i32 %570, i32 %563
  %574 = sext i32 %572 to i64
  %575 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %574
  %576 = load i32, i32 addrspace(1)* %575, align 4, !tbaa !6
  %577 = add nsw i32 %572, %573
  %578 = icmp eq i32 %577, %263
  %579 = mul i32 %573, -2
  %580 = sub nsw i32 0, %573
  %581 = select i1 %578, i32 %579, i32 0
  %582 = add i32 %581, %577
  %583 = select i1 %578, i32 %580, i32 %573
  %584 = sext i32 %582 to i64
  %585 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %584
  %586 = load i32, i32 addrspace(1)* %585, align 4, !tbaa !6
  %587 = add nsw i32 %582, %583
  %588 = icmp eq i32 %587, %263
  %589 = mul i32 %583, -2
  %590 = sub nsw i32 0, %583
  %591 = select i1 %588, i32 %589, i32 0
  %592 = add i32 %591, %587
  %593 = select i1 %588, i32 %590, i32 %583
  %594 = sext i32 %592 to i64
  %595 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %594
  %596 = load i32, i32 addrspace(1)* %595, align 4, !tbaa !6
  %597 = add nsw i32 %592, %593
  %598 = icmp eq i32 %597, %263
  %599 = mul i32 %593, -2
  %600 = sub nsw i32 0, %593
  %601 = select i1 %598, i32 %599, i32 0
  %602 = add i32 %601, %597
  %603 = select i1 %598, i32 %600, i32 %593
  %604 = sext i32 %602 to i64
  %605 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %604
  %606 = load i32, i32 addrspace(1)* %605, align 4, !tbaa !6
  %607 = add nsw i32 %602, %603
  %608 = icmp eq i32 %607, %263
  %609 = mul i32 %603, -2
  %610 = sub nsw i32 0, %603
  %611 = select i1 %608, i32 %609, i32 0
  %612 = add i32 %611, %607
  %613 = select i1 %608, i32 %610, i32 %603
  %614 = sext i32 %612 to i64
  %615 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %614
  %616 = load i32, i32 addrspace(1)* %615, align 4, !tbaa !6
  store i32 %616, i32 addrspace(3)* %356, align 4, !tbaa !6
  %617 = add nsw i32 %421, %419
  %618 = sdiv i32 %617, -2
  %619 = add i32 %618, %420
  store i32 %619, i32 addrspace(3)* %338, align 4, !tbaa !6
  %620 = add nsw i32 %556, %421
  %621 = sdiv i32 %620, -2
  %622 = add i32 %621, %546
  store i32 %622, i32 addrspace(3)* %342, align 4, !tbaa !6
  %623 = add nsw i32 %576, %556
  %624 = sdiv i32 %623, -2
  %625 = add i32 %624, %566
  store i32 %625, i32 addrspace(3)* %346, align 4, !tbaa !6
  %626 = add nsw i32 %596, %576
  %627 = sdiv i32 %626, -2
  %628 = add i32 %627, %586
  store i32 %628, i32 addrspace(3)* %350, align 4, !tbaa !6
  %629 = add nsw i32 %616, %596
  %630 = sdiv i32 %629, -2
  %631 = add i32 %630, %606
  store i32 %631, i32 addrspace(3)* %354, align 4, !tbaa !6
  %632 = add i32 %622, 2
  %633 = add i32 %632, %619
  %634 = sdiv i32 %633, 4
  %635 = add nsw i32 %634, %421
  store i32 %635, i32 addrspace(3)* %340, align 4, !tbaa !6
  %636 = add i32 %625, %632
  %637 = sdiv i32 %636, 4
  %638 = add nsw i32 %637, %556
  store i32 %638, i32 addrspace(3)* %344, align 4, !tbaa !6
  %639 = add i32 %628, 2
  %640 = add i32 %639, %625
  %641 = sdiv i32 %640, 4
  %642 = add nsw i32 %641, %576
  store i32 %642, i32 addrspace(3)* %348, align 4, !tbaa !6
  %643 = add i32 %631, %639
  %644 = sdiv i32 %643, 4
  %645 = add nsw i32 %644, %596
  store i32 %645, i32 addrspace(3)* %352, align 4, !tbaa !6
  br label %646

646:                                              ; preds = %536, %414
  %647 = phi i32 [ %616, %536 ], [ %421, %414 ]
  %648 = phi i32 [ %606, %536 ], [ %420, %414 ]
  %649 = phi i32 [ %596, %536 ], [ %419, %414 ]
  %650 = phi i32 [ %612, %536 ], [ %418, %414 ]
  %651 = phi i32 [ %613, %536 ], [ %417, %414 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %652 = load i32, i32 addrspace(3)* %358, align 4, !tbaa !6
  %653 = load i32, i32 addrspace(3)* %360, align 4, !tbaa !6
  %654 = add nsw i32 %653, %652
  %655 = sdiv i32 %654, -2
  %656 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %657 = add i32 %655, %656
  store i32 %657, i32 addrspace(3)* %362, align 4, !tbaa !6
  %658 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !6
  %659 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !6
  %660 = add nsw i32 %659, %658
  %661 = sdiv i32 %660, -2
  %662 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %663 = add i32 %661, %662
  store i32 %663, i32 addrspace(3)* %368, align 4, !tbaa !6
  %664 = load i32, i32 addrspace(3)* %370, align 4, !tbaa !6
  %665 = load i32, i32 addrspace(3)* %372, align 4, !tbaa !6
  %666 = add nsw i32 %665, %664
  %667 = sdiv i32 %666, -2
  %668 = load i32, i32 addrspace(3)* %374, align 4, !tbaa !6
  %669 = add i32 %667, %668
  store i32 %669, i32 addrspace(3)* %374, align 4, !tbaa !6
  %670 = load i32, i32 addrspace(3)* %376, align 4, !tbaa !6
  %671 = load i32, i32 addrspace(3)* %378, align 4, !tbaa !6
  %672 = add nsw i32 %671, %670
  %673 = sdiv i32 %672, -2
  %674 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %675 = add i32 %673, %674
  store i32 %675, i32 addrspace(3)* %380, align 4, !tbaa !6
  br i1 %381, label %676, label %683

676:                                              ; preds = %646
  %677 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !6
  %678 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !6
  %679 = add nsw i32 %678, %677
  %680 = sdiv i32 %679, -2
  %681 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %682 = add i32 %680, %681
  store i32 %682, i32 addrspace(3)* %387, align 4, !tbaa !6
  br label %683

683:                                              ; preds = %676, %646
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %684 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %685 = load i32, i32 addrspace(3)* %389, align 4, !tbaa !6
  %686 = add i32 %684, 2
  %687 = add i32 %686, %685
  %688 = sdiv i32 %687, 4
  %689 = load i32, i32 addrspace(3)* %360, align 4, !tbaa !6
  %690 = add nsw i32 %688, %689
  store i32 %690, i32 addrspace(3)* %360, align 4, !tbaa !6
  %691 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %692 = load i32, i32 addrspace(3)* %391, align 4, !tbaa !6
  %693 = add i32 %691, 2
  %694 = add i32 %693, %692
  %695 = sdiv i32 %694, 4
  %696 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !6
  %697 = add nsw i32 %695, %696
  store i32 %697, i32 addrspace(3)* %366, align 4, !tbaa !6
  %698 = load i32, i32 addrspace(3)* %374, align 4, !tbaa !6
  %699 = load i32, i32 addrspace(3)* %393, align 4, !tbaa !6
  %700 = add i32 %698, 2
  %701 = add i32 %700, %699
  %702 = sdiv i32 %701, 4
  %703 = load i32, i32 addrspace(3)* %372, align 4, !tbaa !6
  %704 = add nsw i32 %702, %703
  store i32 %704, i32 addrspace(3)* %372, align 4, !tbaa !6
  %705 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %706 = load i32, i32 addrspace(3)* %395, align 4, !tbaa !6
  %707 = add i32 %705, 2
  %708 = add i32 %707, %706
  %709 = sdiv i32 %708, 4
  %710 = load i32, i32 addrspace(3)* %378, align 4, !tbaa !6
  %711 = add nsw i32 %709, %710
  store i32 %711, i32 addrspace(3)* %378, align 4, !tbaa !6
  br i1 %381, label %712, label %720

712:                                              ; preds = %683
  %713 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %714 = load i32, i32 addrspace(3)* %397, align 4, !tbaa !6
  %715 = add i32 %713, 2
  %716 = add i32 %715, %714
  %717 = sdiv i32 %716, 4
  %718 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !6
  %719 = add nsw i32 %717, %718
  store i32 %719, i32 addrspace(3)* %385, align 4, !tbaa !6
  br label %720

720:                                              ; preds = %712, %683
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %721 = icmp eq i32 %416, %311
  br i1 %721, label %727, label %722

722:                                              ; preds = %720
  %723 = add nsw i32 %416, %309
  %724 = sext i32 %416 to i64
  %725 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %724
  %726 = load i32, i32 addrspace(3)* %399, align 4
  store i32 %726, i32 addrspace(1)* %725, align 4, !tbaa !6
  br label %727

727:                                              ; preds = %722, %720
  %728 = phi i32 [ %311, %720 ], [ %723, %722 ]
  %729 = icmp eq i32 %728, %311
  br i1 %729, label %735, label %730

730:                                              ; preds = %727
  %731 = add nsw i32 %728, %310
  %732 = sext i32 %728 to i64
  %733 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %732
  %734 = load i32, i32 addrspace(3)* %401, align 4
  store i32 %734, i32 addrspace(1)* %733, align 4, !tbaa !6
  br label %735

735:                                              ; preds = %730, %727
  %736 = phi i32 [ %311, %727 ], [ %731, %730 ]
  %737 = icmp eq i32 %736, %311
  br i1 %737, label %743, label %738

738:                                              ; preds = %735
  %739 = add nsw i32 %736, %309
  %740 = sext i32 %736 to i64
  %741 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %740
  %742 = load i32, i32 addrspace(3)* %403, align 4
  store i32 %742, i32 addrspace(1)* %741, align 4, !tbaa !6
  br label %743

743:                                              ; preds = %738, %735
  %744 = phi i32 [ %311, %735 ], [ %739, %738 ]
  %745 = icmp eq i32 %744, %311
  br i1 %745, label %751, label %746

746:                                              ; preds = %743
  %747 = add nsw i32 %744, %310
  %748 = sext i32 %744 to i64
  %749 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %748
  %750 = load i32, i32 addrspace(3)* %405, align 4
  store i32 %750, i32 addrspace(1)* %749, align 4, !tbaa !6
  br label %751

751:                                              ; preds = %746, %743
  %752 = phi i32 [ %311, %743 ], [ %747, %746 ]
  %753 = icmp eq i32 %752, %311
  br i1 %753, label %759, label %754

754:                                              ; preds = %751
  %755 = add nsw i32 %752, %309
  %756 = sext i32 %752 to i64
  %757 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %756
  %758 = load i32, i32 addrspace(3)* %407, align 4
  store i32 %758, i32 addrspace(1)* %757, align 4, !tbaa !6
  br label %759

759:                                              ; preds = %754, %751
  %760 = phi i32 [ %311, %751 ], [ %755, %754 ]
  %761 = icmp eq i32 %760, %311
  br i1 %761, label %767, label %762

762:                                              ; preds = %759
  %763 = add nsw i32 %760, %310
  %764 = sext i32 %760 to i64
  %765 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %764
  %766 = load i32, i32 addrspace(3)* %409, align 4
  store i32 %766, i32 addrspace(1)* %765, align 4, !tbaa !6
  br label %767

767:                                              ; preds = %762, %759
  %768 = phi i32 [ %311, %759 ], [ %763, %762 ]
  %769 = icmp eq i32 %768, %311
  br i1 %769, label %775, label %770

770:                                              ; preds = %767
  %771 = add nsw i32 %768, %309
  %772 = sext i32 %768 to i64
  %773 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %772
  %774 = load i32, i32 addrspace(3)* %411, align 4
  store i32 %774, i32 addrspace(1)* %773, align 4, !tbaa !6
  br label %775

775:                                              ; preds = %770, %767
  %776 = phi i32 [ %311, %767 ], [ %771, %770 ]
  %777 = icmp eq i32 %776, %311
  br i1 %777, label %783, label %778

778:                                              ; preds = %775
  %779 = add nsw i32 %776, %310
  %780 = sext i32 %776 to i64
  %781 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %780
  %782 = load i32, i32 addrspace(3)* %413, align 4
  store i32 %782, i32 addrspace(1)* %781, align 4, !tbaa !6
  br label %783

783:                                              ; preds = %778, %775
  %784 = phi i32 [ %311, %775 ], [ %779, %778 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %785 = add nuw nsw i32 %415, 1
  %786 = icmp eq i32 %785, %4
  br i1 %786, label %1916, label %414, !llvm.loop !18

787:                                              ; preds = %5
  %788 = shl i32 %6, 6
  %789 = add i32 %788, 65
  %790 = icmp slt i32 %789, %2
  %791 = mul i32 %8, %4
  %792 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %793 = add nuw nsw i32 %792, 2
  %794 = lshr i32 %793, 1
  %795 = and i32 %792, 1
  %796 = icmp eq i32 %795, 0
  %797 = select i1 %796, i32 0, i32 376
  %798 = add nuw nsw i32 %797, %794
  %799 = add i32 %788, %792
  %800 = sub i32 0, %799
  %801 = icmp eq i32 %7, 0
  br i1 %790, label %1378, label %802

802:                                              ; preds = %787
  br i1 %801, label %803, label %839

803:                                              ; preds = %802
  %804 = icmp slt i32 %799, %2
  br i1 %804, label %809, label %805

805:                                              ; preds = %803
  %806 = shl nsw i32 %2, 1
  %807 = sub i32 -2, %799
  %808 = add i32 %807, %806
  br label %811

809:                                              ; preds = %803
  %810 = icmp slt i32 %799, 0
  br i1 %810, label %811, label %813

811:                                              ; preds = %809, %805
  %812 = phi i32 [ %808, %805 ], [ %800, %809 ]
  br label %813

813:                                              ; preds = %811, %809
  %814 = phi i32 [ %812, %811 ], [ %799, %809 ]
  %815 = mul i32 %791, %2
  %816 = add i32 %814, %815
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %817
  %819 = load i32, i32 addrspace(1)* %818, align 4, !tbaa !6, !amdgpu.noclobber !10
  %820 = add nsw i32 %816, %2
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %821
  %823 = load i32, i32 addrspace(1)* %822, align 4, !tbaa !6, !amdgpu.noclobber !10
  %824 = add nsw i32 %820, %2
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %825
  %827 = load i32, i32 addrspace(1)* %826, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %804, label %832, label %828

828:                                              ; preds = %813
  %829 = shl nsw i32 %2, 1
  %830 = sub i32 -2, %799
  %831 = add i32 %830, %829
  br label %834

832:                                              ; preds = %813
  %833 = icmp slt i32 %799, 0
  br i1 %833, label %834, label %836

834:                                              ; preds = %832, %828
  %835 = phi i32 [ %831, %828 ], [ %800, %832 ]
  br label %836

836:                                              ; preds = %834, %832
  %837 = phi i32 [ %835, %834 ], [ %799, %832 ]
  %838 = add i32 %837, %815
  br label %865

839:                                              ; preds = %802
  %840 = add nsw i32 %791, -2
  %841 = icmp slt i32 %799, %2
  br i1 %841, label %846, label %842

842:                                              ; preds = %839
  %843 = shl nsw i32 %2, 1
  %844 = sub i32 -2, %799
  %845 = add i32 %844, %843
  br label %848

846:                                              ; preds = %839
  %847 = icmp slt i32 %799, 0
  br i1 %847, label %848, label %850

848:                                              ; preds = %846, %842
  %849 = phi i32 [ %845, %842 ], [ %800, %846 ]
  br label %850

850:                                              ; preds = %848, %846
  %851 = phi i32 [ %849, %848 ], [ %799, %846 ]
  %852 = mul nsw i32 %840, %2
  %853 = add i32 %851, %852
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %854
  %856 = load i32, i32 addrspace(1)* %855, align 4, !tbaa !6, !amdgpu.noclobber !10
  %857 = add nsw i32 %853, %2
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %858
  %860 = load i32, i32 addrspace(1)* %859, align 4, !tbaa !6, !amdgpu.noclobber !10
  %861 = add nsw i32 %857, %2
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %862
  %864 = load i32, i32 addrspace(1)* %863, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %865

865:                                              ; preds = %850, %836
  %866 = phi i32 [ %823, %836 ], [ %860, %850 ]
  %867 = phi i32 [ %827, %836 ], [ %856, %850 ]
  %868 = phi i32 [ %819, %836 ], [ %864, %850 ]
  %869 = phi i32 [ %838, %836 ], [ %861, %850 ]
  %870 = icmp ult i32 %792, 3
  br i1 %870, label %871, label %947

871:                                              ; preds = %865
  %872 = icmp eq i32 %792, 0
  %873 = select i1 %872, i32 64, i32 -3
  %874 = add nsw i32 %873, %792
  %875 = trunc i32 %874 to i8
  %876 = add nsw i8 %875, 2
  %877 = sdiv i8 %876, 2
  %878 = zext i8 %877 to i32
  %879 = and i32 %874, 1
  %880 = icmp eq i32 %879, 0
  %881 = select i1 %880, i32 0, i32 376
  %882 = add nuw nsw i32 %881, %878
  %883 = add i32 %874, %788
  %884 = sub i32 0, %883
  br i1 %801, label %885, label %921

885:                                              ; preds = %871
  %886 = icmp slt i32 %883, %2
  br i1 %886, label %891, label %887

887:                                              ; preds = %885
  %888 = shl nsw i32 %2, 1
  %889 = sub i32 -2, %883
  %890 = add i32 %889, %888
  br label %893

891:                                              ; preds = %885
  %892 = icmp slt i32 %883, 0
  br i1 %892, label %893, label %895

893:                                              ; preds = %891, %887
  %894 = phi i32 [ %890, %887 ], [ %884, %891 ]
  br label %895

895:                                              ; preds = %893, %891
  %896 = phi i32 [ %894, %893 ], [ %883, %891 ]
  %897 = mul i32 %791, %2
  %898 = add i32 %896, %897
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %899
  %901 = load i32, i32 addrspace(1)* %900, align 4, !tbaa !6, !amdgpu.noclobber !10
  %902 = add nsw i32 %898, %2
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %903
  %905 = load i32, i32 addrspace(1)* %904, align 4, !tbaa !6, !amdgpu.noclobber !10
  %906 = add nsw i32 %902, %2
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %907
  %909 = load i32, i32 addrspace(1)* %908, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %886, label %914, label %910

910:                                              ; preds = %895
  %911 = shl nsw i32 %2, 1
  %912 = sub i32 -2, %883
  %913 = add i32 %912, %911
  br label %916

914:                                              ; preds = %895
  %915 = icmp slt i32 %883, 0
  br i1 %915, label %916, label %918

916:                                              ; preds = %914, %910
  %917 = phi i32 [ %913, %910 ], [ %884, %914 ]
  br label %918

918:                                              ; preds = %916, %914
  %919 = phi i32 [ %917, %916 ], [ %883, %914 ]
  %920 = add i32 %919, %897
  br label %947

921:                                              ; preds = %871
  %922 = add nsw i32 %791, -2
  %923 = icmp slt i32 %883, %2
  br i1 %923, label %928, label %924

924:                                              ; preds = %921
  %925 = shl nsw i32 %2, 1
  %926 = sub i32 -2, %883
  %927 = add i32 %926, %925
  br label %930

928:                                              ; preds = %921
  %929 = icmp slt i32 %883, 0
  br i1 %929, label %930, label %932

930:                                              ; preds = %928, %924
  %931 = phi i32 [ %927, %924 ], [ %884, %928 ]
  br label %932

932:                                              ; preds = %930, %928
  %933 = phi i32 [ %931, %930 ], [ %883, %928 ]
  %934 = mul nsw i32 %922, %2
  %935 = add i32 %933, %934
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %936
  %938 = load i32, i32 addrspace(1)* %937, align 4, !tbaa !6, !amdgpu.noclobber !10
  %939 = add nsw i32 %935, %2
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %940
  %942 = load i32, i32 addrspace(1)* %941, align 4, !tbaa !6, !amdgpu.noclobber !10
  %943 = add nsw i32 %939, %2
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %944
  %946 = load i32, i32 addrspace(1)* %945, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %947

947:                                              ; preds = %932, %918, %865
  %948 = phi i32 [ 0, %865 ], [ %901, %918 ], [ %946, %932 ]
  %949 = phi i32 [ 0, %865 ], [ %905, %918 ], [ %942, %932 ]
  %950 = phi i32 [ 0, %865 ], [ %909, %918 ], [ %938, %932 ]
  %951 = phi i32 [ 0, %865 ], [ %882, %918 ], [ %882, %932 ]
  %952 = phi i32 [ 0, %865 ], [ %920, %918 ], [ %943, %932 ]
  %953 = phi i32 [ 0, %865 ], [ %2, %918 ], [ %2, %932 ]
  %954 = shl nuw nsw i32 %792, 1
  %955 = lshr i32 %792, 5
  %956 = mul nsw i32 %955, -63
  %957 = add nsw i32 %956, %954
  %958 = trunc i32 %957 to i16
  %959 = add nsw i16 %958, 2
  %960 = sdiv i16 %959, 2
  %961 = sext i16 %960 to i32
  %962 = and i32 %957, 1
  %963 = icmp eq i32 %962, 0
  %964 = select i1 %963, i32 0, i32 376
  %965 = add nsw i32 %964, %961
  %966 = add i32 %957, %788
  %967 = icmp slt i32 %966, %2
  br i1 %967, label %968, label %998

968:                                              ; preds = %947
  %969 = sdiv i32 %966, 2
  %970 = and i32 %966, 1
  %971 = icmp eq i32 %970, 0
  %972 = sdiv i32 %2, 2
  %973 = and i32 %2, 1
  %974 = add nsw i32 %972, %973
  %975 = sdiv i32 %3, 2
  %976 = and i32 %3, 1
  %977 = add nsw i32 %975, %976
  br i1 %971, label %983, label %978

978:                                              ; preds = %968
  %979 = mul nsw i32 %977, %974
  %980 = add nsw i32 %979, %969
  %981 = mul nsw i32 %3, %2
  %982 = sdiv i32 %981, 2
  br label %985

983:                                              ; preds = %968
  %984 = mul nsw i32 %977, %2
  br label %985

985:                                              ; preds = %983, %978
  %986 = phi i32 [ %984, %983 ], [ %982, %978 ]
  %987 = phi i32 [ %969, %983 ], [ %980, %978 ]
  %988 = phi i32 [ %974, %983 ], [ %972, %978 ]
  %989 = sub nsw i32 %988, %986
  %990 = mul nsw i32 %988, %975
  %991 = icmp eq i32 %976, 0
  %992 = select i1 %991, i32 0, i32 %986
  %993 = add i32 %992, %987
  %994 = add i32 %993, %990
  %995 = sdiv i32 %791, 2
  %996 = mul nsw i32 %988, %995
  %997 = add i32 %996, %987
  br label %998

998:                                              ; preds = %985, %947
  %999 = phi i32 [ %986, %985 ], [ 0, %947 ]
  %1000 = phi i32 [ %989, %985 ], [ 0, %947 ]
  %1001 = phi i32 [ %994, %985 ], [ 0, %947 ]
  %1002 = phi i32 [ %997, %985 ], [ 0, %947 ]
  %1003 = icmp sgt i32 %4, 0
  br i1 %1003, label %1004, label %1916

1004:                                             ; preds = %998
  %1005 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %798
  %1006 = add nuw nsw i32 %798, 34
  %1007 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1006
  %1008 = add nuw nsw i32 %798, 68
  %1009 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1008
  %1010 = add nuw nsw i32 %798, 102
  %1011 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1010
  %1012 = add nuw nsw i32 %798, 136
  %1013 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1012
  %1014 = add nuw nsw i32 %798, 170
  %1015 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1014
  %1016 = add nuw nsw i32 %798, 204
  %1017 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1016
  %1018 = add nuw nsw i32 %798, 238
  %1019 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1018
  %1020 = add nuw nsw i32 %798, 272
  %1021 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1020
  %1022 = add nuw nsw i32 %798, 306
  %1023 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1022
  %1024 = add nuw nsw i32 %798, 340
  %1025 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1024
  %1026 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %951
  %1027 = add nuw nsw i32 %951, 34
  %1028 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1027
  %1029 = add nuw nsw i32 %951, 68
  %1030 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1029
  %1031 = add nuw nsw i32 %951, 102
  %1032 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1031
  %1033 = add nuw nsw i32 %951, 136
  %1034 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1033
  %1035 = add nuw nsw i32 %951, 170
  %1036 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1035
  %1037 = add nuw nsw i32 %951, 204
  %1038 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1037
  %1039 = add nuw nsw i32 %951, 238
  %1040 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1039
  %1041 = add nuw nsw i32 %951, 272
  %1042 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1041
  %1043 = add nuw nsw i32 %951, 306
  %1044 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1043
  %1045 = add nuw nsw i32 %951, 340
  %1046 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1045
  %1047 = add nuw nsw i32 %792, 68
  %1048 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1047
  %1049 = add nuw nsw i32 %792, 69
  %1050 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1049
  %1051 = add nuw nsw i32 %792, 444
  %1052 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1051
  %1053 = add nuw nsw i32 %792, 132
  %1054 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1053
  %1055 = add nuw nsw i32 %792, 133
  %1056 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1055
  %1057 = add nuw nsw i32 %792, 508
  %1058 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1057
  %1059 = add nuw nsw i32 %792, 196
  %1060 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1059
  %1061 = add nuw nsw i32 %792, 197
  %1062 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1061
  %1063 = add nuw nsw i32 %792, 572
  %1064 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1063
  %1065 = add nuw nsw i32 %792, 260
  %1066 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1065
  %1067 = add nuw nsw i32 %792, 261
  %1068 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1067
  %1069 = add nuw nsw i32 %792, 636
  %1070 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1069
  %1071 = icmp ult i32 %792, 15
  %1072 = add nuw nsw i32 %792, 324
  %1073 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1072
  %1074 = add nuw nsw i32 %792, 325
  %1075 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1074
  %1076 = add nuw nsw i32 %792, 700
  %1077 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1076
  %1078 = add nuw nsw i32 %792, 445
  %1079 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1078
  %1080 = add nuw nsw i32 %792, 509
  %1081 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1080
  %1082 = add nuw nsw i32 %792, 573
  %1083 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1082
  %1084 = add nuw nsw i32 %792, 637
  %1085 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1084
  %1086 = add nuw nsw i32 %792, 701
  %1087 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1086
  %1088 = add nsw i32 %965, 68
  %1089 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1088
  %1090 = add nsw i32 %965, 102
  %1091 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1090
  %1092 = add nsw i32 %965, 136
  %1093 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1092
  %1094 = add nsw i32 %965, 170
  %1095 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1094
  %1096 = add nsw i32 %965, 204
  %1097 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1096
  %1098 = add nsw i32 %965, 238
  %1099 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1098
  %1100 = add nsw i32 %965, 272
  %1101 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1100
  %1102 = add nsw i32 %965, 306
  %1103 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1102
  br label %1104

1104:                                             ; preds = %1374, %1004
  %1105 = phi i32 [ 0, %1004 ], [ %1376, %1374 ]
  %1106 = phi i32 [ %1002, %1004 ], [ %1375, %1374 ]
  %1107 = phi i32 [ %952, %1004 ], [ %1242, %1374 ]
  %1108 = phi i32 [ %950, %1004 ], [ %1241, %1374 ]
  %1109 = phi i32 [ %949, %1004 ], [ %1240, %1374 ]
  %1110 = phi i32 [ %948, %1004 ], [ %1239, %1374 ]
  %1111 = phi i32 [ %869, %1004 ], [ %1143, %1374 ]
  %1112 = phi i32 [ %868, %1004 ], [ %1146, %1374 ]
  %1113 = phi i32 [ %867, %1004 ], [ %1138, %1374 ]
  %1114 = phi i32 [ %866, %1004 ], [ %1142, %1374 ]
  store i32 %1113, i32 addrspace(3)* %1005, align 4, !tbaa !6
  %1115 = add nsw i32 %1111, %2
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1116
  %1118 = load i32, i32 addrspace(1)* %1117, align 4, !tbaa !6
  %1119 = add nsw i32 %1115, %2
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1120
  %1122 = load i32, i32 addrspace(1)* %1121, align 4, !tbaa !6
  %1123 = add nsw i32 %1119, %2
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1124
  %1126 = load i32, i32 addrspace(1)* %1125, align 4, !tbaa !6
  %1127 = add nsw i32 %1123, %2
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1128
  %1130 = load i32, i32 addrspace(1)* %1129, align 4, !tbaa !6
  %1131 = add nsw i32 %1127, %2
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1132
  %1134 = load i32, i32 addrspace(1)* %1133, align 4, !tbaa !6
  %1135 = add nsw i32 %1131, %2
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1136
  %1138 = load i32, i32 addrspace(1)* %1137, align 4, !tbaa !6
  %1139 = add nsw i32 %1135, %2
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1140
  %1142 = load i32, i32 addrspace(1)* %1141, align 4, !tbaa !6
  %1143 = add nsw i32 %1139, %2
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1144
  %1146 = load i32, i32 addrspace(1)* %1145, align 4, !tbaa !6
  store i32 %1146, i32 addrspace(3)* %1025, align 4, !tbaa !6
  %1147 = add nsw i32 %1113, %1112
  %1148 = sdiv i32 %1147, -2
  %1149 = add i32 %1148, %1114
  store i32 %1149, i32 addrspace(3)* %1007, align 4, !tbaa !6
  %1150 = add nsw i32 %1122, %1112
  %1151 = sdiv i32 %1150, -2
  %1152 = add i32 %1151, %1118
  store i32 %1152, i32 addrspace(3)* %1011, align 4, !tbaa !6
  %1153 = add nsw i32 %1130, %1122
  %1154 = sdiv i32 %1153, -2
  %1155 = add i32 %1154, %1126
  store i32 %1155, i32 addrspace(3)* %1015, align 4, !tbaa !6
  %1156 = add nsw i32 %1138, %1130
  %1157 = sdiv i32 %1156, -2
  %1158 = add i32 %1157, %1134
  store i32 %1158, i32 addrspace(3)* %1019, align 4, !tbaa !6
  %1159 = add nsw i32 %1146, %1138
  %1160 = sdiv i32 %1159, -2
  %1161 = add i32 %1160, %1142
  store i32 %1161, i32 addrspace(3)* %1023, align 4, !tbaa !6
  %1162 = add i32 %1152, 2
  %1163 = add i32 %1162, %1149
  %1164 = sdiv i32 %1163, 4
  %1165 = add nsw i32 %1164, %1112
  store i32 %1165, i32 addrspace(3)* %1009, align 4, !tbaa !6
  %1166 = add i32 %1155, %1162
  %1167 = sdiv i32 %1166, 4
  %1168 = add nsw i32 %1167, %1122
  store i32 %1168, i32 addrspace(3)* %1013, align 4, !tbaa !6
  %1169 = add i32 %1158, 2
  %1170 = add i32 %1169, %1155
  %1171 = sdiv i32 %1170, 4
  %1172 = add nsw i32 %1171, %1130
  store i32 %1172, i32 addrspace(3)* %1017, align 4, !tbaa !6
  %1173 = add i32 %1161, %1169
  %1174 = sdiv i32 %1173, 4
  %1175 = add nsw i32 %1174, %1138
  store i32 %1175, i32 addrspace(3)* %1021, align 4, !tbaa !6
  br i1 %870, label %1176, label %1238

1176:                                             ; preds = %1104
  store i32 %1108, i32 addrspace(3)* %1026, align 4, !tbaa !6
  %1177 = add nsw i32 %1107, %953
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1178
  %1180 = load i32, i32 addrspace(1)* %1179, align 4, !tbaa !6
  %1181 = add nsw i32 %1177, %953
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1182
  %1184 = load i32, i32 addrspace(1)* %1183, align 4, !tbaa !6
  %1185 = add nsw i32 %1181, %953
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1186
  %1188 = load i32, i32 addrspace(1)* %1187, align 4, !tbaa !6
  %1189 = add nsw i32 %1185, %953
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1190
  %1192 = load i32, i32 addrspace(1)* %1191, align 4, !tbaa !6
  %1193 = add nsw i32 %1189, %953
  %1194 = sext i32 %1193 to i64
  %1195 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1194
  %1196 = load i32, i32 addrspace(1)* %1195, align 4, !tbaa !6
  %1197 = add nsw i32 %1193, %953
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1198
  %1200 = load i32, i32 addrspace(1)* %1199, align 4, !tbaa !6
  %1201 = add nsw i32 %1197, %953
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1202
  %1204 = load i32, i32 addrspace(1)* %1203, align 4, !tbaa !6
  %1205 = add nsw i32 %1201, %953
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1206
  %1208 = load i32, i32 addrspace(1)* %1207, align 4, !tbaa !6
  store i32 %1208, i32 addrspace(3)* %1046, align 4, !tbaa !6
  %1209 = add nsw i32 %1110, %1108
  %1210 = sdiv i32 %1209, -2
  %1211 = add i32 %1210, %1109
  store i32 %1211, i32 addrspace(3)* %1028, align 4, !tbaa !6
  %1212 = add nsw i32 %1184, %1110
  %1213 = sdiv i32 %1212, -2
  %1214 = add i32 %1213, %1180
  store i32 %1214, i32 addrspace(3)* %1032, align 4, !tbaa !6
  %1215 = add nsw i32 %1192, %1184
  %1216 = sdiv i32 %1215, -2
  %1217 = add i32 %1216, %1188
  store i32 %1217, i32 addrspace(3)* %1036, align 4, !tbaa !6
  %1218 = add nsw i32 %1200, %1192
  %1219 = sdiv i32 %1218, -2
  %1220 = add i32 %1219, %1196
  store i32 %1220, i32 addrspace(3)* %1040, align 4, !tbaa !6
  %1221 = add nsw i32 %1208, %1200
  %1222 = sdiv i32 %1221, -2
  %1223 = add i32 %1222, %1204
  store i32 %1223, i32 addrspace(3)* %1044, align 4, !tbaa !6
  %1224 = add i32 %1214, 2
  %1225 = add i32 %1224, %1211
  %1226 = sdiv i32 %1225, 4
  %1227 = add nsw i32 %1226, %1110
  store i32 %1227, i32 addrspace(3)* %1030, align 4, !tbaa !6
  %1228 = add i32 %1217, %1224
  %1229 = sdiv i32 %1228, 4
  %1230 = add nsw i32 %1229, %1184
  store i32 %1230, i32 addrspace(3)* %1034, align 4, !tbaa !6
  %1231 = add i32 %1220, 2
  %1232 = add i32 %1231, %1217
  %1233 = sdiv i32 %1232, 4
  %1234 = add nsw i32 %1233, %1192
  store i32 %1234, i32 addrspace(3)* %1038, align 4, !tbaa !6
  %1235 = add i32 %1223, %1231
  %1236 = sdiv i32 %1235, 4
  %1237 = add nsw i32 %1236, %1200
  store i32 %1237, i32 addrspace(3)* %1042, align 4, !tbaa !6
  br label %1238

1238:                                             ; preds = %1176, %1104
  %1239 = phi i32 [ %1208, %1176 ], [ %1110, %1104 ]
  %1240 = phi i32 [ %1204, %1176 ], [ %1109, %1104 ]
  %1241 = phi i32 [ %1200, %1176 ], [ %1108, %1104 ]
  %1242 = phi i32 [ %1205, %1176 ], [ %1107, %1104 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1243 = load i32, i32 addrspace(3)* %1048, align 4, !tbaa !6
  %1244 = load i32, i32 addrspace(3)* %1050, align 4, !tbaa !6
  %1245 = add nsw i32 %1244, %1243
  %1246 = sdiv i32 %1245, -2
  %1247 = load i32, i32 addrspace(3)* %1052, align 4, !tbaa !6
  %1248 = add i32 %1246, %1247
  store i32 %1248, i32 addrspace(3)* %1052, align 4, !tbaa !6
  %1249 = load i32, i32 addrspace(3)* %1054, align 4, !tbaa !6
  %1250 = load i32, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1251 = add nsw i32 %1250, %1249
  %1252 = sdiv i32 %1251, -2
  %1253 = load i32, i32 addrspace(3)* %1058, align 4, !tbaa !6
  %1254 = add i32 %1252, %1253
  store i32 %1254, i32 addrspace(3)* %1058, align 4, !tbaa !6
  %1255 = load i32, i32 addrspace(3)* %1060, align 4, !tbaa !6
  %1256 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1257 = add nsw i32 %1256, %1255
  %1258 = sdiv i32 %1257, -2
  %1259 = load i32, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1260 = add i32 %1258, %1259
  store i32 %1260, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1261 = load i32, i32 addrspace(3)* %1066, align 4, !tbaa !6
  %1262 = load i32, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1263 = add nsw i32 %1262, %1261
  %1264 = sdiv i32 %1263, -2
  %1265 = load i32, i32 addrspace(3)* %1070, align 4, !tbaa !6
  %1266 = add i32 %1264, %1265
  store i32 %1266, i32 addrspace(3)* %1070, align 4, !tbaa !6
  br i1 %1071, label %1267, label %1274

1267:                                             ; preds = %1238
  %1268 = load i32, i32 addrspace(3)* %1073, align 4, !tbaa !6
  %1269 = load i32, i32 addrspace(3)* %1075, align 4, !tbaa !6
  %1270 = add nsw i32 %1269, %1268
  %1271 = sdiv i32 %1270, -2
  %1272 = load i32, i32 addrspace(3)* %1077, align 4, !tbaa !6
  %1273 = add i32 %1271, %1272
  store i32 %1273, i32 addrspace(3)* %1077, align 4, !tbaa !6
  br label %1274

1274:                                             ; preds = %1267, %1238
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1275 = load i32, i32 addrspace(3)* %1052, align 4, !tbaa !6
  %1276 = load i32, i32 addrspace(3)* %1079, align 4, !tbaa !6
  %1277 = add i32 %1275, 2
  %1278 = add i32 %1277, %1276
  %1279 = sdiv i32 %1278, 4
  %1280 = load i32, i32 addrspace(3)* %1050, align 4, !tbaa !6
  %1281 = add nsw i32 %1279, %1280
  store i32 %1281, i32 addrspace(3)* %1050, align 4, !tbaa !6
  %1282 = load i32, i32 addrspace(3)* %1058, align 4, !tbaa !6
  %1283 = load i32, i32 addrspace(3)* %1081, align 4, !tbaa !6
  %1284 = add i32 %1282, 2
  %1285 = add i32 %1284, %1283
  %1286 = sdiv i32 %1285, 4
  %1287 = load i32, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1288 = add nsw i32 %1286, %1287
  store i32 %1288, i32 addrspace(3)* %1056, align 4, !tbaa !6
  %1289 = load i32, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1290 = load i32, i32 addrspace(3)* %1083, align 4, !tbaa !6
  %1291 = add i32 %1289, 2
  %1292 = add i32 %1291, %1290
  %1293 = sdiv i32 %1292, 4
  %1294 = load i32, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1295 = add nsw i32 %1293, %1294
  store i32 %1295, i32 addrspace(3)* %1062, align 4, !tbaa !6
  %1296 = load i32, i32 addrspace(3)* %1070, align 4, !tbaa !6
  %1297 = load i32, i32 addrspace(3)* %1085, align 4, !tbaa !6
  %1298 = add i32 %1296, 2
  %1299 = add i32 %1298, %1297
  %1300 = sdiv i32 %1299, 4
  %1301 = load i32, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1302 = add nsw i32 %1300, %1301
  store i32 %1302, i32 addrspace(3)* %1068, align 4, !tbaa !6
  br i1 %1071, label %1303, label %1311

1303:                                             ; preds = %1274
  %1304 = load i32, i32 addrspace(3)* %1077, align 4, !tbaa !6
  %1305 = load i32, i32 addrspace(3)* %1087, align 4, !tbaa !6
  %1306 = add i32 %1304, 2
  %1307 = add i32 %1306, %1305
  %1308 = sdiv i32 %1307, 4
  %1309 = load i32, i32 addrspace(3)* %1075, align 4, !tbaa !6
  %1310 = add nsw i32 %1308, %1309
  store i32 %1310, i32 addrspace(3)* %1075, align 4, !tbaa !6
  br label %1311

1311:                                             ; preds = %1303, %1274
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1312 = icmp eq i32 %1106, %1001
  br i1 %1312, label %1318, label %1313

1313:                                             ; preds = %1311
  %1314 = add nsw i32 %1106, %999
  %1315 = sext i32 %1106 to i64
  %1316 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1315
  %1317 = load i32, i32 addrspace(3)* %1089, align 4
  store i32 %1317, i32 addrspace(1)* %1316, align 4, !tbaa !6
  br label %1318

1318:                                             ; preds = %1313, %1311
  %1319 = phi i32 [ %1001, %1311 ], [ %1314, %1313 ]
  %1320 = icmp eq i32 %1319, %1001
  br i1 %1320, label %1326, label %1321

1321:                                             ; preds = %1318
  %1322 = add nsw i32 %1319, %1000
  %1323 = sext i32 %1319 to i64
  %1324 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1323
  %1325 = load i32, i32 addrspace(3)* %1091, align 4
  store i32 %1325, i32 addrspace(1)* %1324, align 4, !tbaa !6
  br label %1326

1326:                                             ; preds = %1321, %1318
  %1327 = phi i32 [ %1001, %1318 ], [ %1322, %1321 ]
  %1328 = icmp eq i32 %1327, %1001
  br i1 %1328, label %1334, label %1329

1329:                                             ; preds = %1326
  %1330 = add nsw i32 %1327, %999
  %1331 = sext i32 %1327 to i64
  %1332 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1331
  %1333 = load i32, i32 addrspace(3)* %1093, align 4
  store i32 %1333, i32 addrspace(1)* %1332, align 4, !tbaa !6
  br label %1334

1334:                                             ; preds = %1329, %1326
  %1335 = phi i32 [ %1001, %1326 ], [ %1330, %1329 ]
  %1336 = icmp eq i32 %1335, %1001
  br i1 %1336, label %1342, label %1337

1337:                                             ; preds = %1334
  %1338 = add nsw i32 %1335, %1000
  %1339 = sext i32 %1335 to i64
  %1340 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1339
  %1341 = load i32, i32 addrspace(3)* %1095, align 4
  store i32 %1341, i32 addrspace(1)* %1340, align 4, !tbaa !6
  br label %1342

1342:                                             ; preds = %1337, %1334
  %1343 = phi i32 [ %1001, %1334 ], [ %1338, %1337 ]
  %1344 = icmp eq i32 %1343, %1001
  br i1 %1344, label %1350, label %1345

1345:                                             ; preds = %1342
  %1346 = add nsw i32 %1343, %999
  %1347 = sext i32 %1343 to i64
  %1348 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1347
  %1349 = load i32, i32 addrspace(3)* %1097, align 4
  store i32 %1349, i32 addrspace(1)* %1348, align 4, !tbaa !6
  br label %1350

1350:                                             ; preds = %1345, %1342
  %1351 = phi i32 [ %1001, %1342 ], [ %1346, %1345 ]
  %1352 = icmp eq i32 %1351, %1001
  br i1 %1352, label %1358, label %1353

1353:                                             ; preds = %1350
  %1354 = add nsw i32 %1351, %1000
  %1355 = sext i32 %1351 to i64
  %1356 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1355
  %1357 = load i32, i32 addrspace(3)* %1099, align 4
  store i32 %1357, i32 addrspace(1)* %1356, align 4, !tbaa !6
  br label %1358

1358:                                             ; preds = %1353, %1350
  %1359 = phi i32 [ %1001, %1350 ], [ %1354, %1353 ]
  %1360 = icmp eq i32 %1359, %1001
  br i1 %1360, label %1366, label %1361

1361:                                             ; preds = %1358
  %1362 = add nsw i32 %1359, %999
  %1363 = sext i32 %1359 to i64
  %1364 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1363
  %1365 = load i32, i32 addrspace(3)* %1101, align 4
  store i32 %1365, i32 addrspace(1)* %1364, align 4, !tbaa !6
  br label %1366

1366:                                             ; preds = %1361, %1358
  %1367 = phi i32 [ %1001, %1358 ], [ %1362, %1361 ]
  %1368 = icmp eq i32 %1367, %1001
  br i1 %1368, label %1374, label %1369

1369:                                             ; preds = %1366
  %1370 = add nsw i32 %1367, %1000
  %1371 = sext i32 %1367 to i64
  %1372 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1371
  %1373 = load i32, i32 addrspace(3)* %1103, align 4
  store i32 %1373, i32 addrspace(1)* %1372, align 4, !tbaa !6
  br label %1374

1374:                                             ; preds = %1369, %1366
  %1375 = phi i32 [ %1001, %1366 ], [ %1370, %1369 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1376 = add nuw nsw i32 %1105, 1
  %1377 = icmp eq i32 %1376, %4
  br i1 %1377, label %1916, label %1104, !llvm.loop !19

1378:                                             ; preds = %787
  br i1 %801, label %1379, label %1415

1379:                                             ; preds = %1378
  %1380 = icmp slt i32 %799, %2
  br i1 %1380, label %1385, label %1381

1381:                                             ; preds = %1379
  %1382 = shl nsw i32 %2, 1
  %1383 = sub i32 -2, %799
  %1384 = add i32 %1383, %1382
  br label %1387

1385:                                             ; preds = %1379
  %1386 = icmp slt i32 %799, 0
  br i1 %1386, label %1387, label %1389

1387:                                             ; preds = %1385, %1381
  %1388 = phi i32 [ %1384, %1381 ], [ %800, %1385 ]
  br label %1389

1389:                                             ; preds = %1387, %1385
  %1390 = phi i32 [ %1388, %1387 ], [ %799, %1385 ]
  %1391 = mul i32 %791, %2
  %1392 = add i32 %1390, %1391
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1393
  %1395 = load i32, i32 addrspace(1)* %1394, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1396 = add nsw i32 %1392, %2
  %1397 = sext i32 %1396 to i64
  %1398 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1397
  %1399 = load i32, i32 addrspace(1)* %1398, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1400 = add nsw i32 %1396, %2
  %1401 = sext i32 %1400 to i64
  %1402 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1401
  %1403 = load i32, i32 addrspace(1)* %1402, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %1380, label %1408, label %1404

1404:                                             ; preds = %1389
  %1405 = shl nsw i32 %2, 1
  %1406 = sub i32 -2, %799
  %1407 = add i32 %1406, %1405
  br label %1410

1408:                                             ; preds = %1389
  %1409 = icmp slt i32 %799, 0
  br i1 %1409, label %1410, label %1412

1410:                                             ; preds = %1408, %1404
  %1411 = phi i32 [ %1407, %1404 ], [ %800, %1408 ]
  br label %1412

1412:                                             ; preds = %1410, %1408
  %1413 = phi i32 [ %1411, %1410 ], [ %799, %1408 ]
  %1414 = add i32 %1413, %1391
  br label %1441

1415:                                             ; preds = %1378
  %1416 = add nsw i32 %791, -2
  %1417 = icmp slt i32 %799, %2
  br i1 %1417, label %1422, label %1418

1418:                                             ; preds = %1415
  %1419 = shl nsw i32 %2, 1
  %1420 = sub i32 -2, %799
  %1421 = add i32 %1420, %1419
  br label %1424

1422:                                             ; preds = %1415
  %1423 = icmp slt i32 %799, 0
  br i1 %1423, label %1424, label %1426

1424:                                             ; preds = %1422, %1418
  %1425 = phi i32 [ %1421, %1418 ], [ %800, %1422 ]
  br label %1426

1426:                                             ; preds = %1424, %1422
  %1427 = phi i32 [ %1425, %1424 ], [ %799, %1422 ]
  %1428 = mul nsw i32 %1416, %2
  %1429 = add i32 %1427, %1428
  %1430 = sext i32 %1429 to i64
  %1431 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1430
  %1432 = load i32, i32 addrspace(1)* %1431, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1433 = add nsw i32 %1429, %2
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1434
  %1436 = load i32, i32 addrspace(1)* %1435, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1437 = add nsw i32 %1433, %2
  %1438 = sext i32 %1437 to i64
  %1439 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1438
  %1440 = load i32, i32 addrspace(1)* %1439, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1441

1441:                                             ; preds = %1426, %1412
  %1442 = phi i32 [ %1399, %1412 ], [ %1436, %1426 ]
  %1443 = phi i32 [ %1403, %1412 ], [ %1432, %1426 ]
  %1444 = phi i32 [ %1395, %1412 ], [ %1440, %1426 ]
  %1445 = phi i32 [ %1414, %1412 ], [ %1437, %1426 ]
  %1446 = icmp ult i32 %792, 3
  br i1 %1446, label %1447, label %1523

1447:                                             ; preds = %1441
  %1448 = icmp eq i32 %792, 0
  %1449 = select i1 %1448, i32 64, i32 -3
  %1450 = add nsw i32 %1449, %792
  %1451 = trunc i32 %1450 to i8
  %1452 = add nsw i8 %1451, 2
  %1453 = sdiv i8 %1452, 2
  %1454 = zext i8 %1453 to i32
  %1455 = and i32 %1450, 1
  %1456 = icmp eq i32 %1455, 0
  %1457 = select i1 %1456, i32 0, i32 376
  %1458 = add nuw nsw i32 %1457, %1454
  %1459 = add i32 %1450, %788
  %1460 = sub i32 0, %1459
  br i1 %801, label %1461, label %1497

1461:                                             ; preds = %1447
  %1462 = icmp slt i32 %1459, %2
  br i1 %1462, label %1467, label %1463

1463:                                             ; preds = %1461
  %1464 = shl nsw i32 %2, 1
  %1465 = sub i32 -2, %1459
  %1466 = add i32 %1465, %1464
  br label %1469

1467:                                             ; preds = %1461
  %1468 = icmp slt i32 %1459, 0
  br i1 %1468, label %1469, label %1471

1469:                                             ; preds = %1467, %1463
  %1470 = phi i32 [ %1466, %1463 ], [ %1460, %1467 ]
  br label %1471

1471:                                             ; preds = %1469, %1467
  %1472 = phi i32 [ %1470, %1469 ], [ %1459, %1467 ]
  %1473 = mul i32 %791, %2
  %1474 = add i32 %1472, %1473
  %1475 = sext i32 %1474 to i64
  %1476 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1475
  %1477 = load i32, i32 addrspace(1)* %1476, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1478 = add nsw i32 %1474, %2
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1479
  %1481 = load i32, i32 addrspace(1)* %1480, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1482 = add nsw i32 %1478, %2
  %1483 = sext i32 %1482 to i64
  %1484 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1483
  %1485 = load i32, i32 addrspace(1)* %1484, align 4, !tbaa !6, !amdgpu.noclobber !10
  br i1 %1462, label %1490, label %1486

1486:                                             ; preds = %1471
  %1487 = shl nsw i32 %2, 1
  %1488 = sub i32 -2, %1459
  %1489 = add i32 %1488, %1487
  br label %1492

1490:                                             ; preds = %1471
  %1491 = icmp slt i32 %1459, 0
  br i1 %1491, label %1492, label %1494

1492:                                             ; preds = %1490, %1486
  %1493 = phi i32 [ %1489, %1486 ], [ %1460, %1490 ]
  br label %1494

1494:                                             ; preds = %1492, %1490
  %1495 = phi i32 [ %1493, %1492 ], [ %1459, %1490 ]
  %1496 = add i32 %1495, %1473
  br label %1523

1497:                                             ; preds = %1447
  %1498 = add nsw i32 %791, -2
  %1499 = icmp slt i32 %1459, %2
  br i1 %1499, label %1504, label %1500

1500:                                             ; preds = %1497
  %1501 = shl nsw i32 %2, 1
  %1502 = sub i32 -2, %1459
  %1503 = add i32 %1502, %1501
  br label %1506

1504:                                             ; preds = %1497
  %1505 = icmp slt i32 %1459, 0
  br i1 %1505, label %1506, label %1508

1506:                                             ; preds = %1504, %1500
  %1507 = phi i32 [ %1503, %1500 ], [ %1460, %1504 ]
  br label %1508

1508:                                             ; preds = %1506, %1504
  %1509 = phi i32 [ %1507, %1506 ], [ %1459, %1504 ]
  %1510 = mul nsw i32 %1498, %2
  %1511 = add i32 %1509, %1510
  %1512 = sext i32 %1511 to i64
  %1513 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1512
  %1514 = load i32, i32 addrspace(1)* %1513, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1515 = add nsw i32 %1511, %2
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1516
  %1518 = load i32, i32 addrspace(1)* %1517, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1519 = add nsw i32 %1515, %2
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1520
  %1522 = load i32, i32 addrspace(1)* %1521, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1523

1523:                                             ; preds = %1508, %1494, %1441
  %1524 = phi i32 [ 0, %1441 ], [ %1477, %1494 ], [ %1522, %1508 ]
  %1525 = phi i32 [ 0, %1441 ], [ %1481, %1494 ], [ %1518, %1508 ]
  %1526 = phi i32 [ 0, %1441 ], [ %1485, %1494 ], [ %1514, %1508 ]
  %1527 = phi i32 [ 0, %1441 ], [ %1458, %1494 ], [ %1458, %1508 ]
  %1528 = phi i32 [ 0, %1441 ], [ %1496, %1494 ], [ %1519, %1508 ]
  %1529 = phi i32 [ 0, %1441 ], [ %2, %1494 ], [ %2, %1508 ]
  %1530 = shl nuw nsw i32 %792, 1
  %1531 = lshr i32 %792, 5
  %1532 = mul nsw i32 %1531, -63
  %1533 = add nsw i32 %1532, %1530
  %1534 = trunc i32 %1533 to i16
  %1535 = add nsw i16 %1534, 2
  %1536 = sdiv i16 %1535, 2
  %1537 = sext i16 %1536 to i32
  %1538 = and i32 %1533, 1
  %1539 = icmp eq i32 %1538, 0
  %1540 = select i1 %1539, i32 0, i32 376
  %1541 = add nsw i32 %1540, %1537
  %1542 = add i32 %1533, %788
  %1543 = icmp slt i32 %1542, %2
  br i1 %1543, label %1544, label %1569

1544:                                             ; preds = %1523
  %1545 = sdiv i32 %1542, 2
  %1546 = and i32 %1542, 1
  %1547 = icmp eq i32 %1546, 0
  %1548 = sdiv i32 %2, 2
  %1549 = and i32 %2, 1
  %1550 = add nsw i32 %1548, %1549
  %1551 = sdiv i32 %3, 2
  %1552 = and i32 %3, 1
  %1553 = add nsw i32 %1551, %1552
  br i1 %1547, label %1559, label %1554

1554:                                             ; preds = %1544
  %1555 = mul nsw i32 %1553, %1550
  %1556 = add nsw i32 %1555, %1545
  %1557 = mul nsw i32 %3, %2
  %1558 = sdiv i32 %1557, 2
  br label %1561

1559:                                             ; preds = %1544
  %1560 = mul nsw i32 %1553, %2
  br label %1561

1561:                                             ; preds = %1559, %1554
  %1562 = phi i32 [ %1560, %1559 ], [ %1558, %1554 ]
  %1563 = phi i32 [ %1545, %1559 ], [ %1556, %1554 ]
  %1564 = phi i32 [ %1550, %1559 ], [ %1548, %1554 ]
  %1565 = sub nsw i32 %1564, %1562
  %1566 = sdiv i32 %791, 2
  %1567 = mul nsw i32 %1564, %1566
  %1568 = add i32 %1567, %1563
  br label %1569

1569:                                             ; preds = %1561, %1523
  %1570 = phi i32 [ %1562, %1561 ], [ 0, %1523 ]
  %1571 = phi i32 [ %1565, %1561 ], [ 0, %1523 ]
  %1572 = phi i32 [ %1568, %1561 ], [ 0, %1523 ]
  %1573 = icmp sgt i32 %4, 0
  br i1 %1573, label %1574, label %1916

1574:                                             ; preds = %1569
  %1575 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %798
  %1576 = add nuw nsw i32 %798, 34
  %1577 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1576
  %1578 = add nuw nsw i32 %798, 68
  %1579 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1578
  %1580 = add nuw nsw i32 %798, 102
  %1581 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1580
  %1582 = add nuw nsw i32 %798, 136
  %1583 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1582
  %1584 = add nuw nsw i32 %798, 170
  %1585 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1584
  %1586 = add nuw nsw i32 %798, 204
  %1587 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1586
  %1588 = add nuw nsw i32 %798, 238
  %1589 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1588
  %1590 = add nuw nsw i32 %798, 272
  %1591 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1590
  %1592 = add nuw nsw i32 %798, 306
  %1593 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1592
  %1594 = add nuw nsw i32 %798, 340
  %1595 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1594
  %1596 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1527
  %1597 = add nuw nsw i32 %1527, 34
  %1598 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1597
  %1599 = add nuw nsw i32 %1527, 68
  %1600 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1599
  %1601 = add nuw nsw i32 %1527, 102
  %1602 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1601
  %1603 = add nuw nsw i32 %1527, 136
  %1604 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1603
  %1605 = add nuw nsw i32 %1527, 170
  %1606 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1605
  %1607 = add nuw nsw i32 %1527, 204
  %1608 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1607
  %1609 = add nuw nsw i32 %1527, 238
  %1610 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1609
  %1611 = add nuw nsw i32 %1527, 272
  %1612 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1611
  %1613 = add nuw nsw i32 %1527, 306
  %1614 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1613
  %1615 = add nuw nsw i32 %1527, 340
  %1616 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1615
  %1617 = add nuw nsw i32 %792, 68
  %1618 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1617
  %1619 = add nuw nsw i32 %792, 69
  %1620 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1619
  %1621 = add nuw nsw i32 %792, 444
  %1622 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1621
  %1623 = add nuw nsw i32 %792, 132
  %1624 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1623
  %1625 = add nuw nsw i32 %792, 133
  %1626 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1625
  %1627 = add nuw nsw i32 %792, 508
  %1628 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1627
  %1629 = add nuw nsw i32 %792, 196
  %1630 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1629
  %1631 = add nuw nsw i32 %792, 197
  %1632 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1631
  %1633 = add nuw nsw i32 %792, 572
  %1634 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1633
  %1635 = add nuw nsw i32 %792, 260
  %1636 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1635
  %1637 = add nuw nsw i32 %792, 261
  %1638 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1637
  %1639 = add nuw nsw i32 %792, 636
  %1640 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1639
  %1641 = icmp ult i32 %792, 15
  %1642 = add nuw nsw i32 %792, 324
  %1643 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1642
  %1644 = add nuw nsw i32 %792, 325
  %1645 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1644
  %1646 = add nuw nsw i32 %792, 700
  %1647 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1646
  %1648 = add nuw nsw i32 %792, 445
  %1649 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1648
  %1650 = add nuw nsw i32 %792, 509
  %1651 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1650
  %1652 = add nuw nsw i32 %792, 573
  %1653 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1652
  %1654 = add nuw nsw i32 %792, 637
  %1655 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1654
  %1656 = add nuw nsw i32 %792, 701
  %1657 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1656
  %1658 = add nsw i32 %1541, 68
  %1659 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1658
  %1660 = add nsw i32 %1541, 102
  %1661 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1660
  %1662 = add nsw i32 %1541, 136
  %1663 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1662
  %1664 = add nsw i32 %1541, 170
  %1665 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1664
  %1666 = add nsw i32 %1541, 204
  %1667 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1666
  %1668 = add nsw i32 %1541, 238
  %1669 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1668
  %1670 = add nsw i32 %1541, 272
  %1671 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1670
  %1672 = add nsw i32 %1541, 306
  %1673 = getelementptr inbounds %"class.dwt_cuda::FDWT53.8", %"class.dwt_cuda::FDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT53ILi64ELi8EE3runEPKiPiiiiE6fdwt53, i32 0, i32 0, i32 0, i32 %1672
  br label %1674

1674:                                             ; preds = %1881, %1574
  %1675 = phi i32 [ 0, %1574 ], [ %1914, %1881 ]
  %1676 = phi i32 [ %1572, %1574 ], [ %1913, %1881 ]
  %1677 = phi i32 [ %1528, %1574 ], [ %1812, %1881 ]
  %1678 = phi i32 [ %1526, %1574 ], [ %1811, %1881 ]
  %1679 = phi i32 [ %1525, %1574 ], [ %1810, %1881 ]
  %1680 = phi i32 [ %1524, %1574 ], [ %1809, %1881 ]
  %1681 = phi i32 [ %1445, %1574 ], [ %1713, %1881 ]
  %1682 = phi i32 [ %1444, %1574 ], [ %1716, %1881 ]
  %1683 = phi i32 [ %1443, %1574 ], [ %1708, %1881 ]
  %1684 = phi i32 [ %1442, %1574 ], [ %1712, %1881 ]
  store i32 %1683, i32 addrspace(3)* %1575, align 4, !tbaa !6
  %1685 = add nsw i32 %1681, %2
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1686
  %1688 = load i32, i32 addrspace(1)* %1687, align 4, !tbaa !6
  %1689 = add nsw i32 %1685, %2
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1690
  %1692 = load i32, i32 addrspace(1)* %1691, align 4, !tbaa !6
  %1693 = add nsw i32 %1689, %2
  %1694 = sext i32 %1693 to i64
  %1695 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1694
  %1696 = load i32, i32 addrspace(1)* %1695, align 4, !tbaa !6
  %1697 = add nsw i32 %1693, %2
  %1698 = sext i32 %1697 to i64
  %1699 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1698
  %1700 = load i32, i32 addrspace(1)* %1699, align 4, !tbaa !6
  %1701 = add nsw i32 %1697, %2
  %1702 = sext i32 %1701 to i64
  %1703 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1702
  %1704 = load i32, i32 addrspace(1)* %1703, align 4, !tbaa !6
  %1705 = add nsw i32 %1701, %2
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1706
  %1708 = load i32, i32 addrspace(1)* %1707, align 4, !tbaa !6
  %1709 = add nsw i32 %1705, %2
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1710
  %1712 = load i32, i32 addrspace(1)* %1711, align 4, !tbaa !6
  %1713 = add nsw i32 %1709, %2
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1714
  %1716 = load i32, i32 addrspace(1)* %1715, align 4, !tbaa !6
  store i32 %1716, i32 addrspace(3)* %1595, align 4, !tbaa !6
  %1717 = add nsw i32 %1683, %1682
  %1718 = sdiv i32 %1717, -2
  %1719 = add i32 %1718, %1684
  store i32 %1719, i32 addrspace(3)* %1577, align 4, !tbaa !6
  %1720 = add nsw i32 %1692, %1682
  %1721 = sdiv i32 %1720, -2
  %1722 = add i32 %1721, %1688
  store i32 %1722, i32 addrspace(3)* %1581, align 4, !tbaa !6
  %1723 = add nsw i32 %1700, %1692
  %1724 = sdiv i32 %1723, -2
  %1725 = add i32 %1724, %1696
  store i32 %1725, i32 addrspace(3)* %1585, align 4, !tbaa !6
  %1726 = add nsw i32 %1708, %1700
  %1727 = sdiv i32 %1726, -2
  %1728 = add i32 %1727, %1704
  store i32 %1728, i32 addrspace(3)* %1589, align 4, !tbaa !6
  %1729 = add nsw i32 %1716, %1708
  %1730 = sdiv i32 %1729, -2
  %1731 = add i32 %1730, %1712
  store i32 %1731, i32 addrspace(3)* %1593, align 4, !tbaa !6
  %1732 = add i32 %1722, 2
  %1733 = add i32 %1732, %1719
  %1734 = sdiv i32 %1733, 4
  %1735 = add nsw i32 %1734, %1682
  store i32 %1735, i32 addrspace(3)* %1579, align 4, !tbaa !6
  %1736 = add i32 %1725, %1732
  %1737 = sdiv i32 %1736, 4
  %1738 = add nsw i32 %1737, %1692
  store i32 %1738, i32 addrspace(3)* %1583, align 4, !tbaa !6
  %1739 = add i32 %1728, 2
  %1740 = add i32 %1739, %1725
  %1741 = sdiv i32 %1740, 4
  %1742 = add nsw i32 %1741, %1700
  store i32 %1742, i32 addrspace(3)* %1587, align 4, !tbaa !6
  %1743 = add i32 %1731, %1739
  %1744 = sdiv i32 %1743, 4
  %1745 = add nsw i32 %1744, %1708
  store i32 %1745, i32 addrspace(3)* %1591, align 4, !tbaa !6
  br i1 %1446, label %1746, label %1808

1746:                                             ; preds = %1674
  store i32 %1678, i32 addrspace(3)* %1596, align 4, !tbaa !6
  %1747 = add nsw i32 %1677, %1529
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1748
  %1750 = load i32, i32 addrspace(1)* %1749, align 4, !tbaa !6
  %1751 = add nsw i32 %1747, %1529
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1752
  %1754 = load i32, i32 addrspace(1)* %1753, align 4, !tbaa !6
  %1755 = add nsw i32 %1751, %1529
  %1756 = sext i32 %1755 to i64
  %1757 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1756
  %1758 = load i32, i32 addrspace(1)* %1757, align 4, !tbaa !6
  %1759 = add nsw i32 %1755, %1529
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1760
  %1762 = load i32, i32 addrspace(1)* %1761, align 4, !tbaa !6
  %1763 = add nsw i32 %1759, %1529
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1764
  %1766 = load i32, i32 addrspace(1)* %1765, align 4, !tbaa !6
  %1767 = add nsw i32 %1763, %1529
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1768
  %1770 = load i32, i32 addrspace(1)* %1769, align 4, !tbaa !6
  %1771 = add nsw i32 %1767, %1529
  %1772 = sext i32 %1771 to i64
  %1773 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1772
  %1774 = load i32, i32 addrspace(1)* %1773, align 4, !tbaa !6
  %1775 = add nsw i32 %1771, %1529
  %1776 = sext i32 %1775 to i64
  %1777 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1776
  %1778 = load i32, i32 addrspace(1)* %1777, align 4, !tbaa !6
  store i32 %1778, i32 addrspace(3)* %1616, align 4, !tbaa !6
  %1779 = add nsw i32 %1680, %1678
  %1780 = sdiv i32 %1779, -2
  %1781 = add i32 %1780, %1679
  store i32 %1781, i32 addrspace(3)* %1598, align 4, !tbaa !6
  %1782 = add nsw i32 %1754, %1680
  %1783 = sdiv i32 %1782, -2
  %1784 = add i32 %1783, %1750
  store i32 %1784, i32 addrspace(3)* %1602, align 4, !tbaa !6
  %1785 = add nsw i32 %1762, %1754
  %1786 = sdiv i32 %1785, -2
  %1787 = add i32 %1786, %1758
  store i32 %1787, i32 addrspace(3)* %1606, align 4, !tbaa !6
  %1788 = add nsw i32 %1770, %1762
  %1789 = sdiv i32 %1788, -2
  %1790 = add i32 %1789, %1766
  store i32 %1790, i32 addrspace(3)* %1610, align 4, !tbaa !6
  %1791 = add nsw i32 %1778, %1770
  %1792 = sdiv i32 %1791, -2
  %1793 = add i32 %1792, %1774
  store i32 %1793, i32 addrspace(3)* %1614, align 4, !tbaa !6
  %1794 = add i32 %1784, 2
  %1795 = add i32 %1794, %1781
  %1796 = sdiv i32 %1795, 4
  %1797 = add nsw i32 %1796, %1680
  store i32 %1797, i32 addrspace(3)* %1600, align 4, !tbaa !6
  %1798 = add i32 %1787, %1794
  %1799 = sdiv i32 %1798, 4
  %1800 = add nsw i32 %1799, %1754
  store i32 %1800, i32 addrspace(3)* %1604, align 4, !tbaa !6
  %1801 = add i32 %1790, 2
  %1802 = add i32 %1801, %1787
  %1803 = sdiv i32 %1802, 4
  %1804 = add nsw i32 %1803, %1762
  store i32 %1804, i32 addrspace(3)* %1608, align 4, !tbaa !6
  %1805 = add i32 %1793, %1801
  %1806 = sdiv i32 %1805, 4
  %1807 = add nsw i32 %1806, %1770
  store i32 %1807, i32 addrspace(3)* %1612, align 4, !tbaa !6
  br label %1808

1808:                                             ; preds = %1746, %1674
  %1809 = phi i32 [ %1778, %1746 ], [ %1680, %1674 ]
  %1810 = phi i32 [ %1774, %1746 ], [ %1679, %1674 ]
  %1811 = phi i32 [ %1770, %1746 ], [ %1678, %1674 ]
  %1812 = phi i32 [ %1775, %1746 ], [ %1677, %1674 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1813 = load i32, i32 addrspace(3)* %1618, align 4, !tbaa !6
  %1814 = load i32, i32 addrspace(3)* %1620, align 4, !tbaa !6
  %1815 = add nsw i32 %1814, %1813
  %1816 = sdiv i32 %1815, -2
  %1817 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !6
  %1818 = add i32 %1816, %1817
  store i32 %1818, i32 addrspace(3)* %1622, align 4, !tbaa !6
  %1819 = load i32, i32 addrspace(3)* %1624, align 4, !tbaa !6
  %1820 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1821 = add nsw i32 %1820, %1819
  %1822 = sdiv i32 %1821, -2
  %1823 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1824 = add i32 %1822, %1823
  store i32 %1824, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1825 = load i32, i32 addrspace(3)* %1630, align 4, !tbaa !6
  %1826 = load i32, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1827 = add nsw i32 %1826, %1825
  %1828 = sdiv i32 %1827, -2
  %1829 = load i32, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1830 = add i32 %1828, %1829
  store i32 %1830, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1831 = load i32, i32 addrspace(3)* %1636, align 4, !tbaa !6
  %1832 = load i32, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1833 = add nsw i32 %1832, %1831
  %1834 = sdiv i32 %1833, -2
  %1835 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !6
  %1836 = add i32 %1834, %1835
  store i32 %1836, i32 addrspace(3)* %1640, align 4, !tbaa !6
  br i1 %1641, label %1837, label %1844

1837:                                             ; preds = %1808
  %1838 = load i32, i32 addrspace(3)* %1643, align 4, !tbaa !6
  %1839 = load i32, i32 addrspace(3)* %1645, align 4, !tbaa !6
  %1840 = add nsw i32 %1839, %1838
  %1841 = sdiv i32 %1840, -2
  %1842 = load i32, i32 addrspace(3)* %1647, align 4, !tbaa !6
  %1843 = add i32 %1841, %1842
  store i32 %1843, i32 addrspace(3)* %1647, align 4, !tbaa !6
  br label %1844

1844:                                             ; preds = %1837, %1808
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1845 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !6
  %1846 = load i32, i32 addrspace(3)* %1649, align 4, !tbaa !6
  %1847 = add i32 %1845, 2
  %1848 = add i32 %1847, %1846
  %1849 = sdiv i32 %1848, 4
  %1850 = load i32, i32 addrspace(3)* %1620, align 4, !tbaa !6
  %1851 = add nsw i32 %1849, %1850
  store i32 %1851, i32 addrspace(3)* %1620, align 4, !tbaa !6
  %1852 = load i32, i32 addrspace(3)* %1628, align 4, !tbaa !6
  %1853 = load i32, i32 addrspace(3)* %1651, align 4, !tbaa !6
  %1854 = add i32 %1852, 2
  %1855 = add i32 %1854, %1853
  %1856 = sdiv i32 %1855, 4
  %1857 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1858 = add nsw i32 %1856, %1857
  store i32 %1858, i32 addrspace(3)* %1626, align 4, !tbaa !6
  %1859 = load i32, i32 addrspace(3)* %1634, align 4, !tbaa !6
  %1860 = load i32, i32 addrspace(3)* %1653, align 4, !tbaa !6
  %1861 = add i32 %1859, 2
  %1862 = add i32 %1861, %1860
  %1863 = sdiv i32 %1862, 4
  %1864 = load i32, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1865 = add nsw i32 %1863, %1864
  store i32 %1865, i32 addrspace(3)* %1632, align 4, !tbaa !6
  %1866 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !6
  %1867 = load i32, i32 addrspace(3)* %1655, align 4, !tbaa !6
  %1868 = add i32 %1866, 2
  %1869 = add i32 %1868, %1867
  %1870 = sdiv i32 %1869, 4
  %1871 = load i32, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1872 = add nsw i32 %1870, %1871
  store i32 %1872, i32 addrspace(3)* %1638, align 4, !tbaa !6
  br i1 %1641, label %1873, label %1881

1873:                                             ; preds = %1844
  %1874 = load i32, i32 addrspace(3)* %1647, align 4, !tbaa !6
  %1875 = load i32, i32 addrspace(3)* %1657, align 4, !tbaa !6
  %1876 = add i32 %1874, 2
  %1877 = add i32 %1876, %1875
  %1878 = sdiv i32 %1877, 4
  %1879 = load i32, i32 addrspace(3)* %1645, align 4, !tbaa !6
  %1880 = add nsw i32 %1878, %1879
  store i32 %1880, i32 addrspace(3)* %1645, align 4, !tbaa !6
  br label %1881

1881:                                             ; preds = %1873, %1844
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1882 = load i32, i32 addrspace(3)* %1659, align 4, !tbaa !6
  %1883 = sext i32 %1676 to i64
  %1884 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1883
  store i32 %1882, i32 addrspace(1)* %1884, align 4, !tbaa !6
  %1885 = add nsw i32 %1676, %1570
  %1886 = load i32, i32 addrspace(3)* %1661, align 4, !tbaa !6
  %1887 = sext i32 %1885 to i64
  %1888 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1887
  store i32 %1886, i32 addrspace(1)* %1888, align 4, !tbaa !6
  %1889 = add nsw i32 %1885, %1571
  %1890 = load i32, i32 addrspace(3)* %1663, align 4, !tbaa !6
  %1891 = sext i32 %1889 to i64
  %1892 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1891
  store i32 %1890, i32 addrspace(1)* %1892, align 4, !tbaa !6
  %1893 = add nsw i32 %1889, %1570
  %1894 = load i32, i32 addrspace(3)* %1665, align 4, !tbaa !6
  %1895 = sext i32 %1893 to i64
  %1896 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1895
  store i32 %1894, i32 addrspace(1)* %1896, align 4, !tbaa !6
  %1897 = add nsw i32 %1893, %1571
  %1898 = load i32, i32 addrspace(3)* %1667, align 4, !tbaa !6
  %1899 = sext i32 %1897 to i64
  %1900 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1899
  store i32 %1898, i32 addrspace(1)* %1900, align 4, !tbaa !6
  %1901 = add nsw i32 %1897, %1570
  %1902 = load i32, i32 addrspace(3)* %1669, align 4, !tbaa !6
  %1903 = sext i32 %1901 to i64
  %1904 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1903
  store i32 %1902, i32 addrspace(1)* %1904, align 4, !tbaa !6
  %1905 = add nsw i32 %1901, %1571
  %1906 = load i32, i32 addrspace(3)* %1671, align 4, !tbaa !6
  %1907 = sext i32 %1905 to i64
  %1908 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1907
  store i32 %1906, i32 addrspace(1)* %1908, align 4, !tbaa !6
  %1909 = add nsw i32 %1905, %1570
  %1910 = load i32, i32 addrspace(3)* %1673, align 4, !tbaa !6
  %1911 = sext i32 %1909 to i64
  %1912 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1911
  store i32 %1910, i32 addrspace(1)* %1912, align 4, !tbaa !6
  %1913 = add nsw i32 %1909, %1571
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1914 = add nuw nsw i32 %1675, 1
  %1915 = icmp eq i32 %1914, %4
  br i1 %1915, label %1916, label %1674, !llvm.loop !20

1916:                                             ; preds = %783, %1374, %1881, %308, %998, %1569
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #4

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,192" "amdgpu-waves-per-eu"="1" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,128" "amdgpu-waves-per-eu"="2" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #3 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,64" "amdgpu-waves-per-eu"="5" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
