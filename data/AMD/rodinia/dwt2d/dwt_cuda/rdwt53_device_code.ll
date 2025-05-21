; ModuleID = 'hip/dwt2d/dwt_cuda/rdwt53.cu'
source_filename = "hip/dwt2d/dwt_cuda/rdwt53.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"class.dwt_cuda::RDWT53" = type { %"class.dwt_cuda::TransformBuffer" }
%"class.dwt_cuda::TransformBuffer" = type { [2158 x i32] }
%"class.dwt_cuda::RDWT53.5" = type { %"class.dwt_cuda::TransformBuffer.6" }
%"class.dwt_cuda::TransformBuffer.6" = type { [1454 x i32] }
%"class.dwt_cuda::RDWT53.8" = type { %"class.dwt_cuda::TransformBuffer.9" }
%"class.dwt_cuda::TransformBuffer.9" = type { [750 x i32] }

$_ZN8dwt_cuda12rdwt53KernelILi192ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda12rdwt53KernelILi128ELi8EEEvPKiPiiii = comdat any

$_ZN8dwt_cuda12rdwt53KernelILi64ELi8EEEvPKiPiiii = comdat any

$_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53 = comdat any

$_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53 = comdat any

$_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53 = comdat any

@_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::RDWT53" undef, comdat, align 4
@_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::RDWT53.5" undef, comdat, align 4
@_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::RDWT53.8" undef, comdat, align 4

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12rdwt53KernelILi192ELi8EEEvPKiPiiii(i32 addrspace(1)* readonly %0, i32 addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = shl i32 %7, 3
  %9 = add i32 %8, 8
  %10 = mul i32 %9, %4
  %11 = or i32 %10, 1
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %876, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = mul i32 %6, 192
  br label %187

19:                                               ; preds = %13
  %20 = icmp eq i32 %15, 2
  %21 = select i1 %20, i32 -3, i32 192
  %22 = add nsw i32 %21, %15
  %23 = mul i32 %6, 192
  %24 = add i32 %22, %23
  %25 = sub i32 0, %24
  %26 = trunc i32 %22 to i16
  %27 = add nsw i16 %26, 2
  %28 = sdiv i16 %27, 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %22, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 1080
  %33 = add nuw nsw i32 %32, %29
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %19
  %36 = icmp slt i32 %24, %2
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = shl nsw i32 %2, 1
  %39 = sub i32 -2, %24
  %40 = add i32 %39, %38
  br label %43

41:                                               ; preds = %35
  %42 = icmp slt i32 %24, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %40, %37 ], [ %25, %41 ]
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %44, %43 ], [ %24, %41 ]
  %47 = sdiv i32 %46, 2
  %48 = and i32 %46, 1
  %49 = icmp eq i32 %48, 0
  %50 = sdiv i32 %2, 2
  %51 = and i32 %2, 1
  %52 = add nsw i32 %50, %51
  %53 = sdiv i32 %3, 2
  %54 = and i32 %3, 1
  %55 = add nsw i32 %53, %54
  br i1 %49, label %61, label %56

56:                                               ; preds = %45
  %57 = mul nsw i32 %55, %52
  %58 = add nsw i32 %47, %57
  %59 = mul nsw i32 %3, %2
  %60 = sdiv i32 %59, 2
  br label %63

61:                                               ; preds = %45
  %62 = mul nsw i32 %55, %2
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ %60, %56 ]
  %65 = phi i32 [ %47, %61 ], [ %58, %56 ]
  %66 = phi i32 [ %52, %61 ], [ %50, %56 ]
  %67 = sub nsw i32 %66, %64
  %68 = mul nsw i32 %66, %53
  %69 = icmp eq i32 %54, 0
  %70 = select i1 %69, i32 0, i32 %64
  %71 = add i32 %70, %65
  %72 = add i32 %71, %68
  %73 = sdiv i32 %14, 2
  %74 = mul nsw i32 %66, %73
  %75 = add i32 %74, %65
  %76 = icmp eq i32 %75, %72
  %77 = sub i32 0, %64
  %78 = sub i32 0, %67
  %79 = select i1 %76, i32 %66, i32 0
  %80 = sub i32 %75, %79
  %81 = select i1 %76, i32 %78, i32 %64
  %82 = select i1 %76, i32 %77, i32 %67
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %83
  %85 = load i32, i32 addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = add nuw nsw i32 %33, 98
  %87 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %86
  store i32 %85, i32 addrspace(3)* %87, align 4, !tbaa !6
  %88 = add nsw i32 %80, %81
  %89 = icmp eq i32 %88, %72
  %90 = sub i32 0, %81
  %91 = sub i32 0, %82
  %92 = sub i32 %80, %82
  %93 = select i1 %89, i32 %92, i32 %88
  %94 = select i1 %89, i32 %91, i32 %81
  %95 = select i1 %89, i32 %90, i32 %82
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %96
  %98 = load i32, i32 addrspace(1)* %97, align 4, !tbaa !6, !amdgpu.noclobber !10
  %99 = add nuw nsw i32 %33, 196
  %100 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %99
  store i32 %98, i32 addrspace(3)* %100, align 4, !tbaa !6
  br label %179

101:                                              ; preds = %19
  %102 = add nsw i32 %14, -1
  %103 = icmp slt i32 %24, %2
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = shl nsw i32 %2, 1
  %106 = sub i32 -2, %24
  %107 = add i32 %106, %105
  br label %110

108:                                              ; preds = %101
  %109 = icmp slt i32 %24, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %108, %104
  %111 = phi i32 [ %107, %104 ], [ %25, %108 ]
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %111, %110 ], [ %24, %108 ]
  %114 = sdiv i32 %113, 2
  %115 = and i32 %113, 1
  %116 = icmp eq i32 %115, 0
  %117 = sdiv i32 %2, 2
  %118 = and i32 %2, 1
  %119 = add nsw i32 %117, %118
  %120 = sdiv i32 %3, 2
  %121 = and i32 %3, 1
  %122 = add nsw i32 %120, %121
  br i1 %116, label %128, label %123

123:                                              ; preds = %112
  %124 = mul nsw i32 %122, %119
  %125 = add nsw i32 %114, %124
  %126 = mul nsw i32 %3, %2
  %127 = sdiv i32 %126, 2
  br label %130

128:                                              ; preds = %112
  %129 = mul nsw i32 %122, %2
  br label %130

130:                                              ; preds = %128, %123
  %131 = phi i32 [ %129, %128 ], [ %127, %123 ]
  %132 = phi i32 [ %114, %128 ], [ %125, %123 ]
  %133 = phi i32 [ %119, %128 ], [ %117, %123 ]
  %134 = sub nsw i32 %133, %131
  %135 = mul nsw i32 %133, %120
  %136 = icmp eq i32 %121, 0
  %137 = select i1 %136, i32 0, i32 %131
  %138 = add i32 %137, %132
  %139 = add i32 %138, %135
  %140 = sdiv i32 %102, 2
  %141 = mul nsw i32 %133, %140
  %142 = add i32 %132, %131
  %143 = add i32 %142, %141
  %144 = icmp eq i32 %143, %139
  %145 = sub i32 0, %134
  %146 = sub i32 0, %131
  %147 = select i1 %144, i32 %133, i32 0
  %148 = sub i32 %143, %147
  %149 = select i1 %144, i32 %145, i32 %131
  %150 = select i1 %144, i32 %146, i32 %134
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %151
  %153 = load i32, i32 addrspace(1)* %152, align 4, !tbaa !6, !amdgpu.noclobber !10
  %154 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %33
  store i32 %153, i32 addrspace(3)* %154, align 4, !tbaa !6
  %155 = add nsw i32 %148, %150
  %156 = icmp eq i32 %155, %139
  %157 = sub i32 0, %150
  %158 = sub i32 0, %149
  %159 = sub i32 %148, %149
  %160 = select i1 %156, i32 %159, i32 %155
  %161 = select i1 %156, i32 %157, i32 %149
  %162 = select i1 %156, i32 %158, i32 %150
  %163 = sext i32 %160 to i64
  %164 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %163
  %165 = load i32, i32 addrspace(1)* %164, align 4, !tbaa !6, !amdgpu.noclobber !10
  %166 = add nuw nsw i32 %33, 98
  %167 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %166
  store i32 %165, i32 addrspace(3)* %167, align 4, !tbaa !6
  %168 = add nsw i32 %160, %161
  %169 = icmp eq i32 %168, %139
  %170 = sub i32 0, %161
  %171 = sub i32 0, %162
  %172 = select i1 %169, i32 %148, i32 %168
  %173 = select i1 %169, i32 %171, i32 %161
  %174 = select i1 %169, i32 %170, i32 %162
  %175 = sext i32 %172 to i64
  %176 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %175
  %177 = load i32, i32 addrspace(1)* %176, align 4, !tbaa !6, !amdgpu.noclobber !10
  %178 = add nuw nsw i32 %33, 196
  br label %179

179:                                              ; preds = %130, %63
  %180 = phi i32 [ %93, %63 ], [ %172, %130 ]
  %181 = phi i32 [ %94, %63 ], [ %173, %130 ]
  %182 = phi i32 [ %95, %63 ], [ %174, %130 ]
  %183 = phi i32 [ %72, %63 ], [ %139, %130 ]
  %184 = phi i32 [ %33, %63 ], [ %178, %130 ]
  %185 = phi i32 [ %98, %63 ], [ %177, %130 ]
  %186 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %184
  store i32 %185, i32 addrspace(3)* %186, align 4, !tbaa !6
  br label %187

187:                                              ; preds = %179, %17
  %188 = phi i32 [ %18, %17 ], [ %23, %179 ]
  %189 = phi i32 [ 0, %17 ], [ %33, %179 ]
  %190 = phi i32 [ 0, %17 ], [ %180, %179 ]
  %191 = phi i32 [ 0, %17 ], [ %181, %179 ]
  %192 = phi i32 [ 0, %17 ], [ %182, %179 ]
  %193 = phi i32 [ 0, %17 ], [ %183, %179 ]
  %194 = shl nuw nsw i32 %15, 1
  %195 = trunc i32 %15 to i16
  %196 = udiv i16 %195, 96
  %197 = zext i16 %196 to i32
  %198 = mul nsw i32 %197, -191
  %199 = add nsw i32 %198, %194
  %200 = add i32 %188, %199
  %201 = sub i32 0, %200
  %202 = trunc i32 %199 to i16
  %203 = add nsw i16 %202, 2
  %204 = sdiv i16 %203, 2
  %205 = sext i16 %204 to i32
  %206 = and i32 %199, 1
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 0, i32 1080
  %209 = add nsw i32 %208, %205
  %210 = icmp eq i32 %7, 0
  br i1 %210, label %211, label %277

211:                                              ; preds = %187
  %212 = icmp slt i32 %200, %2
  br i1 %212, label %217, label %213

213:                                              ; preds = %211
  %214 = shl nsw i32 %2, 1
  %215 = sub i32 %214, %200
  %216 = add i32 %215, -2
  br label %219

217:                                              ; preds = %211
  %218 = icmp slt i32 %200, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %217, %213
  %220 = phi i32 [ %216, %213 ], [ %201, %217 ]
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %220, %219 ], [ %200, %217 ]
  %223 = sdiv i32 %222, 2
  %224 = and i32 %222, 1
  %225 = icmp eq i32 %224, 0
  %226 = sdiv i32 %2, 2
  %227 = and i32 %2, 1
  %228 = add nsw i32 %226, %227
  %229 = sdiv i32 %3, 2
  %230 = and i32 %3, 1
  %231 = add nsw i32 %229, %230
  br i1 %225, label %237, label %232

232:                                              ; preds = %221
  %233 = mul nsw i32 %231, %228
  %234 = add nsw i32 %223, %233
  %235 = mul nsw i32 %3, %2
  %236 = sdiv i32 %235, 2
  br label %239

237:                                              ; preds = %221
  %238 = mul nsw i32 %231, %2
  br label %239

239:                                              ; preds = %237, %232
  %240 = phi i32 [ %238, %237 ], [ %236, %232 ]
  %241 = phi i32 [ %223, %237 ], [ %234, %232 ]
  %242 = phi i32 [ %228, %237 ], [ %226, %232 ]
  %243 = sub nsw i32 %242, %240
  %244 = mul nsw i32 %242, %229
  %245 = icmp eq i32 %230, 0
  %246 = select i1 %245, i32 0, i32 %240
  %247 = add i32 %246, %241
  %248 = add i32 %247, %244
  %249 = sdiv i32 %14, 2
  %250 = mul nsw i32 %242, %249
  %251 = add i32 %250, %241
  %252 = icmp eq i32 %251, %248
  %253 = sub i32 0, %240
  %254 = sub i32 0, %243
  %255 = select i1 %252, i32 %253, i32 %243
  %256 = select i1 %252, i32 %254, i32 %240
  %257 = select i1 %252, i32 %242, i32 0
  %258 = sub i32 %251, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %259
  %261 = load i32, i32 addrspace(1)* %260, align 4, !tbaa !6, !amdgpu.noclobber !10
  %262 = add nsw i32 %209, 98
  %263 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %262
  store i32 %261, i32 addrspace(3)* %263, align 4, !tbaa !6
  %264 = add nsw i32 %258, %256
  %265 = icmp eq i32 %264, %248
  %266 = sub i32 0, %256
  %267 = sub i32 0, %255
  %268 = sub i32 %258, %255
  %269 = select i1 %265, i32 %266, i32 %255
  %270 = select i1 %265, i32 %267, i32 %256
  %271 = select i1 %265, i32 %268, i32 %264
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %272
  %274 = load i32, i32 addrspace(1)* %273, align 4, !tbaa !6, !amdgpu.noclobber !10
  %275 = add nsw i32 %209, 196
  %276 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %275
  store i32 %274, i32 addrspace(3)* %276, align 4, !tbaa !6
  br label %355

277:                                              ; preds = %187
  %278 = add nsw i32 %14, -1
  %279 = icmp slt i32 %200, %2
  br i1 %279, label %284, label %280

280:                                              ; preds = %277
  %281 = shl nsw i32 %2, 1
  %282 = sub i32 %281, %200
  %283 = add i32 %282, -2
  br label %286

284:                                              ; preds = %277
  %285 = icmp slt i32 %200, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %284, %280
  %287 = phi i32 [ %283, %280 ], [ %201, %284 ]
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i32 [ %287, %286 ], [ %200, %284 ]
  %290 = sdiv i32 %289, 2
  %291 = and i32 %289, 1
  %292 = icmp eq i32 %291, 0
  %293 = sdiv i32 %2, 2
  %294 = and i32 %2, 1
  %295 = add nsw i32 %293, %294
  %296 = sdiv i32 %3, 2
  %297 = and i32 %3, 1
  %298 = add nsw i32 %296, %297
  br i1 %292, label %304, label %299

299:                                              ; preds = %288
  %300 = mul nsw i32 %298, %295
  %301 = add nsw i32 %290, %300
  %302 = mul nsw i32 %3, %2
  %303 = sdiv i32 %302, 2
  br label %306

304:                                              ; preds = %288
  %305 = mul nsw i32 %298, %2
  br label %306

306:                                              ; preds = %304, %299
  %307 = phi i32 [ %305, %304 ], [ %303, %299 ]
  %308 = phi i32 [ %290, %304 ], [ %301, %299 ]
  %309 = phi i32 [ %295, %304 ], [ %293, %299 ]
  %310 = sub nsw i32 %309, %307
  %311 = mul nsw i32 %309, %296
  %312 = icmp eq i32 %297, 0
  %313 = select i1 %312, i32 0, i32 %307
  %314 = add i32 %313, %308
  %315 = add i32 %314, %311
  %316 = sdiv i32 %278, 2
  %317 = mul nsw i32 %309, %316
  %318 = add i32 %308, %307
  %319 = add i32 %318, %317
  %320 = icmp eq i32 %319, %315
  %321 = sub i32 0, %310
  %322 = sub i32 0, %307
  %323 = select i1 %320, i32 %322, i32 %310
  %324 = select i1 %320, i32 %321, i32 %307
  %325 = select i1 %320, i32 %309, i32 0
  %326 = sub i32 %319, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %327
  %329 = load i32, i32 addrspace(1)* %328, align 4, !tbaa !6, !amdgpu.noclobber !10
  %330 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %209
  store i32 %329, i32 addrspace(3)* %330, align 4, !tbaa !6
  %331 = add nsw i32 %326, %323
  %332 = icmp eq i32 %331, %315
  %333 = sub i32 0, %323
  %334 = sub i32 0, %324
  %335 = sub i32 %326, %324
  %336 = select i1 %332, i32 %334, i32 %323
  %337 = select i1 %332, i32 %333, i32 %324
  %338 = select i1 %332, i32 %335, i32 %331
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %339
  %341 = load i32, i32 addrspace(1)* %340, align 4, !tbaa !6, !amdgpu.noclobber !10
  %342 = add nsw i32 %209, 98
  %343 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %342
  store i32 %341, i32 addrspace(3)* %343, align 4, !tbaa !6
  %344 = add nsw i32 %338, %337
  %345 = icmp eq i32 %344, %315
  %346 = sub i32 0, %337
  %347 = sub i32 0, %336
  %348 = select i1 %345, i32 %346, i32 %336
  %349 = select i1 %345, i32 %347, i32 %337
  %350 = select i1 %345, i32 %326, i32 %344
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %351
  %353 = load i32, i32 addrspace(1)* %352, align 4, !tbaa !6, !amdgpu.noclobber !10
  %354 = add nsw i32 %209, 196
  br label %355

355:                                              ; preds = %306, %239
  %356 = phi i32 [ %269, %239 ], [ %348, %306 ]
  %357 = phi i32 [ %248, %239 ], [ %315, %306 ]
  %358 = phi i32 [ %270, %239 ], [ %349, %306 ]
  %359 = phi i32 [ %271, %239 ], [ %350, %306 ]
  %360 = phi i32 [ %209, %239 ], [ %354, %306 ]
  %361 = phi i32 [ %274, %239 ], [ %353, %306 ]
  %362 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %360
  store i32 %361, i32 addrspace(3)* %362, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %363 = add nuw nsw i32 %15, 1080
  %364 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %363
  %365 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !6
  %366 = add nuw nsw i32 %15, 1081
  %367 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %366
  %368 = load i32, i32 addrspace(3)* %367, align 4, !tbaa !6
  %369 = add nuw nsw i32 %15, 1
  %370 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %369
  %371 = add i32 %365, 2
  %372 = add i32 %371, %368
  %373 = sdiv i32 %372, -4
  %374 = load i32, i32 addrspace(3)* %370, align 4, !tbaa !6
  %375 = add i32 %373, %374
  store i32 %375, i32 addrspace(3)* %370, align 4, !tbaa !6
  %376 = icmp ult i32 %15, 101
  br i1 %376, label %377, label %391

377:                                              ; preds = %355
  %378 = add nuw nsw i32 %15, 1272
  %379 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %378
  %380 = load i32, i32 addrspace(3)* %379, align 4, !tbaa !6
  %381 = add nuw nsw i32 %15, 1273
  %382 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %381
  %383 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !6
  %384 = add nuw nsw i32 %15, 193
  %385 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %384
  %386 = add i32 %380, 2
  %387 = add i32 %386, %383
  %388 = sdiv i32 %387, -4
  %389 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !6
  %390 = add i32 %388, %389
  store i32 %390, i32 addrspace(3)* %385, align 4, !tbaa !6
  br label %391

391:                                              ; preds = %377, %355
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %392 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %15
  %393 = load i32, i32 addrspace(3)* %392, align 4, !tbaa !6
  %394 = load i32, i32 addrspace(3)* %370, align 4, !tbaa !6
  %395 = add nsw i32 %394, %393
  %396 = sdiv i32 %395, 2
  %397 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !6
  %398 = add nsw i32 %396, %397
  store i32 %398, i32 addrspace(3)* %364, align 4, !tbaa !6
  br i1 %376, label %399, label %412

399:                                              ; preds = %391
  %400 = add nuw nsw i32 %15, 192
  %401 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %400
  %402 = load i32, i32 addrspace(3)* %401, align 4, !tbaa !6
  %403 = add nuw nsw i32 %15, 193
  %404 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %403
  %405 = load i32, i32 addrspace(3)* %404, align 4, !tbaa !6
  %406 = add nuw nsw i32 %15, 1272
  %407 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %406
  %408 = add nsw i32 %405, %402
  %409 = sdiv i32 %408, 2
  %410 = load i32, i32 addrspace(3)* %407, align 4, !tbaa !6
  %411 = add nsw i32 %409, %410
  store i32 %411, i32 addrspace(3)* %407, align 4, !tbaa !6
  br label %412

412:                                              ; preds = %399, %391
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %413 = add i32 %188, %15
  %414 = icmp slt i32 %413, %2
  br i1 %414, label %415, label %420

415:                                              ; preds = %412
  %416 = mul nsw i32 %3, %2
  %417 = add nsw i32 %413, %416
  %418 = mul nsw i32 %14, %2
  %419 = add nsw i32 %413, %418
  br label %420

420:                                              ; preds = %415, %412
  %421 = phi i32 [ %417, %415 ], [ 0, %412 ]
  %422 = phi i32 [ %2, %415 ], [ 0, %412 ]
  %423 = phi i32 [ %419, %415 ], [ 0, %412 ]
  %424 = add nuw nsw i32 %15, 2
  %425 = lshr i32 %424, 1
  %426 = and i32 %15, 1
  %427 = icmp eq i32 %426, 0
  %428 = select i1 %427, i32 0, i32 1080
  %429 = add nuw nsw i32 %428, %425
  %430 = icmp sgt i32 %4, 0
  br i1 %430, label %431, label %2156

431:                                              ; preds = %420
  %432 = add nsw i32 %209, 294
  %433 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %432
  %434 = add nsw i32 %209, 392
  %435 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %434
  %436 = add nsw i32 %209, 490
  %437 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %436
  %438 = add nsw i32 %209, 588
  %439 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %438
  %440 = add nsw i32 %209, 686
  %441 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %440
  %442 = add nsw i32 %209, 784
  %443 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %442
  %444 = add nsw i32 %209, 882
  %445 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %444
  %446 = add nsw i32 %209, 980
  %447 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %446
  %448 = add nuw nsw i32 %189, 294
  %449 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %448
  %450 = add nuw nsw i32 %189, 392
  %451 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %450
  %452 = add nuw nsw i32 %189, 490
  %453 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %452
  %454 = add nuw nsw i32 %189, 588
  %455 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %454
  %456 = add nuw nsw i32 %189, 686
  %457 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %456
  %458 = add nuw nsw i32 %189, 784
  %459 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %458
  %460 = add nuw nsw i32 %189, 882
  %461 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %460
  %462 = add nuw nsw i32 %189, 980
  %463 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %462
  %464 = icmp ult i32 %15, 15
  %465 = add nuw nsw i32 %15, 2142
  %466 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %465
  %467 = add nuw nsw i32 %15, 2143
  %468 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %467
  %469 = add nuw nsw i32 %15, 1063
  %470 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %469
  %471 = add nuw nsw i32 %15, 1062
  %472 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %471
  %473 = add nuw nsw i32 %429, 784
  %474 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %473
  %475 = add nuw nsw i32 %429, 882
  %476 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %475
  %477 = add nuw nsw i32 %429, 980
  %478 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %477
  %479 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %429
  %480 = add nuw nsw i32 %429, 196
  %481 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %480
  %482 = add nuw nsw i32 %429, 98
  %483 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %482
  %484 = add nuw nsw i32 %429, 392
  %485 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %484
  %486 = add nuw nsw i32 %429, 294
  %487 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %486
  %488 = add nuw nsw i32 %429, 588
  %489 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %488
  %490 = add nuw nsw i32 %429, 490
  %491 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %490
  %492 = add nuw nsw i32 %429, 686
  %493 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %492
  %494 = add nuw nsw i32 %15, 1374
  %495 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %494
  %496 = add nuw nsw i32 %15, 1375
  %497 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %496
  %498 = add nuw nsw i32 %15, 295
  %499 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %498
  %500 = add nuw nsw i32 %15, 1566
  %501 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %500
  %502 = add nuw nsw i32 %15, 1567
  %503 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %502
  %504 = add nuw nsw i32 %15, 487
  %505 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %504
  %506 = add nuw nsw i32 %15, 1758
  %507 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %506
  %508 = add nuw nsw i32 %15, 1759
  %509 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %508
  %510 = add nuw nsw i32 %15, 679
  %511 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %510
  %512 = add nuw nsw i32 %15, 1950
  %513 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %512
  %514 = add nuw nsw i32 %15, 1951
  %515 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %514
  %516 = add nuw nsw i32 %15, 871
  %517 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %516
  %518 = add nuw nsw i32 %15, 294
  %519 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %518
  %520 = add nuw nsw i32 %15, 486
  %521 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %520
  %522 = add nuw nsw i32 %15, 678
  %523 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %522
  %524 = add nuw nsw i32 %15, 870
  %525 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %524
  br label %526

526:                                              ; preds = %872, %431
  %527 = phi i32 [ 0, %431 ], [ %874, %872 ]
  %528 = phi i32 [ %359, %431 ], [ %615, %872 ]
  %529 = phi i32 [ %358, %431 ], [ %614, %872 ]
  %530 = phi i32 [ %423, %431 ], [ %873, %872 ]
  %531 = phi i32 [ %192, %431 ], [ %707, %872 ]
  %532 = phi i32 [ %191, %431 ], [ %706, %872 ]
  %533 = phi i32 [ %190, %431 ], [ %705, %872 ]
  %534 = phi i32 [ %356, %431 ], [ %613, %872 ]
  %535 = add nsw i32 %534, %528
  %536 = icmp eq i32 %535, %357
  %537 = sub i32 0, %534
  %538 = sub i32 0, %529
  %539 = sub i32 %528, %529
  %540 = select i1 %536, i32 %538, i32 %534
  %541 = select i1 %536, i32 %537, i32 %529
  %542 = select i1 %536, i32 %539, i32 %535
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %543
  %545 = load i32, i32 addrspace(1)* %544, align 4, !tbaa !6
  store i32 %545, i32 addrspace(3)* %433, align 4, !tbaa !6
  %546 = add nsw i32 %542, %541
  %547 = icmp eq i32 %546, %357
  %548 = sub i32 0, %541
  %549 = sub i32 0, %540
  %550 = select i1 %547, i32 %548, i32 %540
  %551 = select i1 %547, i32 %549, i32 %541
  %552 = select i1 %547, i32 %528, i32 %546
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %553
  %555 = load i32, i32 addrspace(1)* %554, align 4, !tbaa !6
  store i32 %555, i32 addrspace(3)* %435, align 4, !tbaa !6
  %556 = add nsw i32 %552, %550
  %557 = icmp eq i32 %556, %357
  %558 = sub i32 0, %550
  %559 = sub i32 0, %551
  %560 = sub i32 %552, %551
  %561 = select i1 %557, i32 %559, i32 %550
  %562 = select i1 %557, i32 %558, i32 %551
  %563 = select i1 %557, i32 %560, i32 %556
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %564
  %566 = load i32, i32 addrspace(1)* %565, align 4, !tbaa !6
  store i32 %566, i32 addrspace(3)* %437, align 4, !tbaa !6
  %567 = add nsw i32 %563, %562
  %568 = icmp eq i32 %567, %357
  %569 = sub i32 0, %562
  %570 = sub i32 0, %561
  %571 = select i1 %568, i32 %569, i32 %561
  %572 = select i1 %568, i32 %570, i32 %562
  %573 = select i1 %568, i32 %552, i32 %567
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %574
  %576 = load i32, i32 addrspace(1)* %575, align 4, !tbaa !6
  store i32 %576, i32 addrspace(3)* %439, align 4, !tbaa !6
  %577 = add nsw i32 %573, %571
  %578 = icmp eq i32 %577, %357
  %579 = sub i32 0, %571
  %580 = sub i32 0, %572
  %581 = sub i32 %573, %572
  %582 = select i1 %578, i32 %580, i32 %571
  %583 = select i1 %578, i32 %579, i32 %572
  %584 = select i1 %578, i32 %581, i32 %577
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %585
  %587 = load i32, i32 addrspace(1)* %586, align 4, !tbaa !6
  store i32 %587, i32 addrspace(3)* %441, align 4, !tbaa !6
  %588 = add nsw i32 %584, %583
  %589 = icmp eq i32 %588, %357
  %590 = sub i32 0, %583
  %591 = sub i32 0, %582
  %592 = select i1 %589, i32 %590, i32 %582
  %593 = select i1 %589, i32 %591, i32 %583
  %594 = select i1 %589, i32 %573, i32 %588
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %595
  %597 = load i32, i32 addrspace(1)* %596, align 4, !tbaa !6
  store i32 %597, i32 addrspace(3)* %443, align 4, !tbaa !6
  %598 = add nsw i32 %594, %592
  %599 = icmp eq i32 %598, %357
  %600 = sub i32 0, %592
  %601 = sub i32 0, %593
  %602 = sub i32 %594, %593
  %603 = select i1 %599, i32 %601, i32 %592
  %604 = select i1 %599, i32 %600, i32 %593
  %605 = select i1 %599, i32 %602, i32 %598
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %606
  %608 = load i32, i32 addrspace(1)* %607, align 4, !tbaa !6
  store i32 %608, i32 addrspace(3)* %445, align 4, !tbaa !6
  %609 = add nsw i32 %605, %604
  %610 = icmp eq i32 %609, %357
  %611 = sub i32 0, %604
  %612 = sub i32 0, %603
  %613 = select i1 %610, i32 %611, i32 %603
  %614 = select i1 %610, i32 %612, i32 %604
  %615 = select i1 %610, i32 %594, i32 %609
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %616
  %618 = load i32, i32 addrspace(1)* %617, align 4, !tbaa !6
  store i32 %618, i32 addrspace(3)* %447, align 4, !tbaa !6
  br i1 %16, label %619, label %704

619:                                              ; preds = %526
  %620 = add nsw i32 %533, %531
  %621 = icmp eq i32 %620, %193
  %622 = sub i32 0, %531
  %623 = sub i32 0, %532
  %624 = sub i32 %533, %532
  %625 = select i1 %621, i32 %624, i32 %620
  %626 = select i1 %621, i32 %622, i32 %532
  %627 = select i1 %621, i32 %623, i32 %531
  %628 = sext i32 %625 to i64
  %629 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %628
  %630 = load i32, i32 addrspace(1)* %629, align 4, !tbaa !6
  store i32 %630, i32 addrspace(3)* %449, align 4, !tbaa !6
  %631 = add nsw i32 %625, %626
  %632 = icmp eq i32 %631, %193
  %633 = sub i32 0, %626
  %634 = sub i32 0, %627
  %635 = select i1 %632, i32 %533, i32 %631
  %636 = select i1 %632, i32 %634, i32 %626
  %637 = select i1 %632, i32 %633, i32 %627
  %638 = sext i32 %635 to i64
  %639 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %638
  %640 = load i32, i32 addrspace(1)* %639, align 4, !tbaa !6
  store i32 %640, i32 addrspace(3)* %451, align 4, !tbaa !6
  %641 = add nsw i32 %635, %637
  %642 = icmp eq i32 %641, %193
  %643 = sub i32 0, %637
  %644 = sub i32 0, %636
  %645 = sub i32 %635, %636
  %646 = select i1 %642, i32 %645, i32 %641
  %647 = select i1 %642, i32 %643, i32 %636
  %648 = select i1 %642, i32 %644, i32 %637
  %649 = sext i32 %646 to i64
  %650 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %649
  %651 = load i32, i32 addrspace(1)* %650, align 4, !tbaa !6
  store i32 %651, i32 addrspace(3)* %453, align 4, !tbaa !6
  %652 = add nsw i32 %646, %647
  %653 = icmp eq i32 %652, %193
  %654 = sub i32 0, %647
  %655 = sub i32 0, %648
  %656 = select i1 %653, i32 %635, i32 %652
  %657 = select i1 %653, i32 %655, i32 %647
  %658 = select i1 %653, i32 %654, i32 %648
  %659 = sext i32 %656 to i64
  %660 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %659
  %661 = load i32, i32 addrspace(1)* %660, align 4, !tbaa !6
  store i32 %661, i32 addrspace(3)* %455, align 4, !tbaa !6
  %662 = add nsw i32 %656, %658
  %663 = icmp eq i32 %662, %193
  %664 = sub i32 0, %658
  %665 = sub i32 0, %657
  %666 = sub i32 %656, %657
  %667 = select i1 %663, i32 %666, i32 %662
  %668 = select i1 %663, i32 %664, i32 %657
  %669 = select i1 %663, i32 %665, i32 %658
  %670 = sext i32 %667 to i64
  %671 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %670
  %672 = load i32, i32 addrspace(1)* %671, align 4, !tbaa !6
  store i32 %672, i32 addrspace(3)* %457, align 4, !tbaa !6
  %673 = add nsw i32 %667, %668
  %674 = icmp eq i32 %673, %193
  %675 = sub i32 0, %668
  %676 = sub i32 0, %669
  %677 = select i1 %674, i32 %656, i32 %673
  %678 = select i1 %674, i32 %676, i32 %668
  %679 = select i1 %674, i32 %675, i32 %669
  %680 = sext i32 %677 to i64
  %681 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %680
  %682 = load i32, i32 addrspace(1)* %681, align 4, !tbaa !6
  store i32 %682, i32 addrspace(3)* %459, align 4, !tbaa !6
  %683 = add nsw i32 %677, %679
  %684 = icmp eq i32 %683, %193
  %685 = sub i32 0, %679
  %686 = sub i32 0, %678
  %687 = sub i32 %677, %678
  %688 = select i1 %684, i32 %687, i32 %683
  %689 = select i1 %684, i32 %685, i32 %678
  %690 = select i1 %684, i32 %686, i32 %679
  %691 = sext i32 %688 to i64
  %692 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %691
  %693 = load i32, i32 addrspace(1)* %692, align 4, !tbaa !6
  store i32 %693, i32 addrspace(3)* %461, align 4, !tbaa !6
  %694 = add nsw i32 %688, %689
  %695 = icmp eq i32 %694, %193
  %696 = sub i32 0, %689
  %697 = sub i32 0, %690
  %698 = select i1 %695, i32 %677, i32 %694
  %699 = select i1 %695, i32 %697, i32 %689
  %700 = select i1 %695, i32 %696, i32 %690
  %701 = sext i32 %698 to i64
  %702 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %701
  %703 = load i32, i32 addrspace(1)* %702, align 4, !tbaa !6
  store i32 %703, i32 addrspace(3)* %463, align 4, !tbaa !6
  br label %704

704:                                              ; preds = %619, %526
  %705 = phi i32 [ %698, %619 ], [ %533, %526 ]
  %706 = phi i32 [ %699, %619 ], [ %532, %526 ]
  %707 = phi i32 [ %700, %619 ], [ %531, %526 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %708 = load i32, i32 addrspace(3)* %495, align 4, !tbaa !6
  %709 = load i32, i32 addrspace(3)* %497, align 4, !tbaa !6
  %710 = add i32 %708, 2
  %711 = add i32 %710, %709
  %712 = sdiv i32 %711, -4
  %713 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !6
  %714 = add i32 %712, %713
  store i32 %714, i32 addrspace(3)* %499, align 4, !tbaa !6
  %715 = load i32, i32 addrspace(3)* %501, align 4, !tbaa !6
  %716 = load i32, i32 addrspace(3)* %503, align 4, !tbaa !6
  %717 = add i32 %715, 2
  %718 = add i32 %717, %716
  %719 = sdiv i32 %718, -4
  %720 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !6
  %721 = add i32 %719, %720
  store i32 %721, i32 addrspace(3)* %505, align 4, !tbaa !6
  %722 = load i32, i32 addrspace(3)* %507, align 4, !tbaa !6
  %723 = load i32, i32 addrspace(3)* %509, align 4, !tbaa !6
  %724 = add i32 %722, 2
  %725 = add i32 %724, %723
  %726 = sdiv i32 %725, -4
  %727 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %728 = add i32 %726, %727
  store i32 %728, i32 addrspace(3)* %511, align 4, !tbaa !6
  %729 = load i32, i32 addrspace(3)* %513, align 4, !tbaa !6
  %730 = load i32, i32 addrspace(3)* %515, align 4, !tbaa !6
  %731 = add i32 %729, 2
  %732 = add i32 %731, %730
  %733 = sdiv i32 %732, -4
  %734 = load i32, i32 addrspace(3)* %517, align 4, !tbaa !6
  %735 = add i32 %733, %734
  store i32 %735, i32 addrspace(3)* %517, align 4, !tbaa !6
  br i1 %464, label %736, label %744

736:                                              ; preds = %704
  %737 = load i32, i32 addrspace(3)* %466, align 4, !tbaa !6
  %738 = load i32, i32 addrspace(3)* %468, align 4, !tbaa !6
  %739 = add i32 %737, 2
  %740 = add i32 %739, %738
  %741 = sdiv i32 %740, -4
  %742 = load i32, i32 addrspace(3)* %470, align 4, !tbaa !6
  %743 = add i32 %741, %742
  store i32 %743, i32 addrspace(3)* %470, align 4, !tbaa !6
  br label %744

744:                                              ; preds = %736, %704
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %745 = load i32, i32 addrspace(3)* %519, align 4, !tbaa !6
  %746 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !6
  %747 = add nsw i32 %746, %745
  %748 = sdiv i32 %747, 2
  %749 = load i32, i32 addrspace(3)* %495, align 4, !tbaa !6
  %750 = add nsw i32 %748, %749
  store i32 %750, i32 addrspace(3)* %495, align 4, !tbaa !6
  %751 = load i32, i32 addrspace(3)* %521, align 4, !tbaa !6
  %752 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !6
  %753 = add nsw i32 %752, %751
  %754 = sdiv i32 %753, 2
  %755 = load i32, i32 addrspace(3)* %501, align 4, !tbaa !6
  %756 = add nsw i32 %754, %755
  store i32 %756, i32 addrspace(3)* %501, align 4, !tbaa !6
  %757 = load i32, i32 addrspace(3)* %523, align 4, !tbaa !6
  %758 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %759 = add nsw i32 %758, %757
  %760 = sdiv i32 %759, 2
  %761 = load i32, i32 addrspace(3)* %507, align 4, !tbaa !6
  %762 = add nsw i32 %760, %761
  store i32 %762, i32 addrspace(3)* %507, align 4, !tbaa !6
  %763 = load i32, i32 addrspace(3)* %525, align 4, !tbaa !6
  %764 = load i32, i32 addrspace(3)* %517, align 4, !tbaa !6
  %765 = add nsw i32 %764, %763
  %766 = sdiv i32 %765, 2
  %767 = load i32, i32 addrspace(3)* %513, align 4, !tbaa !6
  %768 = add nsw i32 %766, %767
  store i32 %768, i32 addrspace(3)* %513, align 4, !tbaa !6
  br i1 %464, label %769, label %776

769:                                              ; preds = %744
  %770 = load i32, i32 addrspace(3)* %472, align 4, !tbaa !6
  %771 = load i32, i32 addrspace(3)* %470, align 4, !tbaa !6
  %772 = add nsw i32 %771, %770
  %773 = sdiv i32 %772, 2
  %774 = load i32, i32 addrspace(3)* %466, align 4, !tbaa !6
  %775 = add nsw i32 %773, %774
  store i32 %775, i32 addrspace(3)* %466, align 4, !tbaa !6
  br label %776

776:                                              ; preds = %769, %744
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %777 = load i32, i32 addrspace(3)* %474, align 4, !tbaa !6
  %778 = load i32, i32 addrspace(3)* %476, align 4, !tbaa !6
  %779 = load i32, i32 addrspace(3)* %478, align 4, !tbaa !6
  %780 = load i32, i32 addrspace(3)* %479, align 4, !tbaa !6
  %781 = load i32, i32 addrspace(3)* %481, align 4, !tbaa !6
  %782 = add i32 %781, 2
  %783 = add i32 %782, %780
  %784 = sdiv i32 %783, -4
  %785 = load i32, i32 addrspace(3)* %483, align 4, !tbaa !6
  %786 = add i32 %784, %785
  store i32 %786, i32 addrspace(3)* %483, align 4, !tbaa !6
  %787 = load i32, i32 addrspace(3)* %485, align 4, !tbaa !6
  %788 = add i32 %787, %782
  %789 = sdiv i32 %788, -4
  %790 = load i32, i32 addrspace(3)* %487, align 4, !tbaa !6
  %791 = add i32 %789, %790
  store i32 %791, i32 addrspace(3)* %487, align 4, !tbaa !6
  %792 = load i32, i32 addrspace(3)* %489, align 4, !tbaa !6
  %793 = add i32 %787, 2
  %794 = add i32 %793, %792
  %795 = sdiv i32 %794, -4
  %796 = load i32, i32 addrspace(3)* %491, align 4, !tbaa !6
  %797 = add i32 %795, %796
  store i32 %797, i32 addrspace(3)* %491, align 4, !tbaa !6
  %798 = add i32 %777, 2
  %799 = add i32 %792, %798
  %800 = sdiv i32 %799, -4
  %801 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !6
  %802 = add i32 %801, %800
  store i32 %802, i32 addrspace(3)* %493, align 4, !tbaa !6
  %803 = add i32 %779, %798
  %804 = sdiv i32 %803, -4
  %805 = add i32 %804, %778
  store i32 %805, i32 addrspace(3)* %476, align 4, !tbaa !6
  %806 = add nsw i32 %791, %786
  %807 = sdiv i32 %806, 2
  %808 = add nsw i32 %807, %781
  store i32 %808, i32 addrspace(3)* %481, align 4, !tbaa !6
  %809 = add nsw i32 %797, %791
  %810 = sdiv i32 %809, 2
  %811 = add nsw i32 %810, %787
  store i32 %811, i32 addrspace(3)* %485, align 4, !tbaa !6
  %812 = add nsw i32 %802, %797
  %813 = sdiv i32 %812, 2
  %814 = add nsw i32 %813, %792
  store i32 %814, i32 addrspace(3)* %489, align 4, !tbaa !6
  %815 = add nsw i32 %802, %805
  %816 = sdiv i32 %815, 2
  %817 = add nsw i32 %816, %777
  store i32 %817, i32 addrspace(3)* %474, align 4, !tbaa !6
  %818 = icmp eq i32 %530, %421
  br i1 %818, label %823, label %819

819:                                              ; preds = %776
  %820 = add nsw i32 %530, %422
  %821 = sext i32 %530 to i64
  %822 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %821
  store i32 %786, i32 addrspace(1)* %822, align 4, !tbaa !6
  br label %823

823:                                              ; preds = %819, %776
  %824 = phi i32 [ %421, %776 ], [ %820, %819 ]
  %825 = icmp eq i32 %824, %421
  br i1 %825, label %830, label %826

826:                                              ; preds = %823
  %827 = add nsw i32 %824, %422
  %828 = sext i32 %824 to i64
  %829 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %828
  store i32 %808, i32 addrspace(1)* %829, align 4, !tbaa !6
  br label %830

830:                                              ; preds = %826, %823
  %831 = phi i32 [ %421, %823 ], [ %827, %826 ]
  %832 = icmp eq i32 %831, %421
  br i1 %832, label %837, label %833

833:                                              ; preds = %830
  %834 = add nsw i32 %831, %422
  %835 = sext i32 %831 to i64
  %836 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %835
  store i32 %791, i32 addrspace(1)* %836, align 4, !tbaa !6
  br label %837

837:                                              ; preds = %833, %830
  %838 = phi i32 [ %421, %830 ], [ %834, %833 ]
  %839 = icmp eq i32 %838, %421
  br i1 %839, label %844, label %840

840:                                              ; preds = %837
  %841 = add nsw i32 %838, %422
  %842 = sext i32 %838 to i64
  %843 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %842
  store i32 %811, i32 addrspace(1)* %843, align 4, !tbaa !6
  br label %844

844:                                              ; preds = %840, %837
  %845 = phi i32 [ %421, %837 ], [ %841, %840 ]
  %846 = icmp eq i32 %845, %421
  br i1 %846, label %851, label %847

847:                                              ; preds = %844
  %848 = add nsw i32 %845, %422
  %849 = sext i32 %845 to i64
  %850 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %849
  store i32 %797, i32 addrspace(1)* %850, align 4, !tbaa !6
  br label %851

851:                                              ; preds = %847, %844
  %852 = phi i32 [ %421, %844 ], [ %848, %847 ]
  %853 = icmp eq i32 %852, %421
  br i1 %853, label %858, label %854

854:                                              ; preds = %851
  %855 = add nsw i32 %852, %422
  %856 = sext i32 %852 to i64
  %857 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %856
  store i32 %814, i32 addrspace(1)* %857, align 4, !tbaa !6
  br label %858

858:                                              ; preds = %854, %851
  %859 = phi i32 [ %421, %851 ], [ %855, %854 ]
  %860 = icmp eq i32 %859, %421
  br i1 %860, label %865, label %861

861:                                              ; preds = %858
  %862 = add nsw i32 %859, %422
  %863 = sext i32 %859 to i64
  %864 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %863
  store i32 %802, i32 addrspace(1)* %864, align 4, !tbaa !6
  br label %865

865:                                              ; preds = %861, %858
  %866 = phi i32 [ %421, %858 ], [ %862, %861 ]
  %867 = icmp eq i32 %866, %421
  br i1 %867, label %872, label %868

868:                                              ; preds = %865
  %869 = add nsw i32 %866, %422
  %870 = sext i32 %866 to i64
  %871 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %870
  store i32 %817, i32 addrspace(1)* %871, align 4, !tbaa !6
  br label %872

872:                                              ; preds = %868, %865
  %873 = phi i32 [ %421, %865 ], [ %869, %868 ]
  store i32 %777, i32 addrspace(3)* %479, align 4, !tbaa !6
  store i32 %778, i32 addrspace(3)* %483, align 4, !tbaa !6
  store i32 %779, i32 addrspace(3)* %481, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %874 = add nuw nsw i32 %527, 1
  %875 = icmp eq i32 %874, %4
  br i1 %875, label %2156, label %526, !llvm.loop !11

876:                                              ; preds = %5
  %877 = mul i32 %6, 192
  %878 = add i32 %877, 193
  %879 = icmp slt i32 %878, %2
  %880 = mul i32 %8, %4
  %881 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %882 = icmp ult i32 %881, 3
  br i1 %879, label %1538, label %883

883:                                              ; preds = %876
  br i1 %882, label %884, label %1006

884:                                              ; preds = %883
  %885 = icmp eq i32 %881, 2
  %886 = select i1 %885, i32 -3, i32 192
  %887 = add nsw i32 %886, %881
  %888 = add i32 %887, %877
  %889 = sub i32 0, %888
  %890 = trunc i32 %887 to i16
  %891 = add nsw i16 %890, 2
  %892 = sdiv i16 %891, 2
  %893 = zext i16 %892 to i32
  %894 = and i32 %887, 1
  %895 = icmp eq i32 %894, 0
  %896 = select i1 %895, i32 0, i32 1080
  %897 = add nuw nsw i32 %896, %893
  %898 = icmp eq i32 %7, 0
  br i1 %898, label %899, label %946

899:                                              ; preds = %884
  %900 = icmp slt i32 %888, %2
  br i1 %900, label %905, label %901

901:                                              ; preds = %899
  %902 = shl nsw i32 %2, 1
  %903 = sub i32 -2, %888
  %904 = add i32 %903, %902
  br label %907

905:                                              ; preds = %899
  %906 = icmp slt i32 %888, 0
  br i1 %906, label %907, label %909

907:                                              ; preds = %905, %901
  %908 = phi i32 [ %904, %901 ], [ %889, %905 ]
  br label %909

909:                                              ; preds = %907, %905
  %910 = phi i32 [ %908, %907 ], [ %888, %905 ]
  %911 = sdiv i32 %910, 2
  %912 = and i32 %910, 1
  %913 = icmp eq i32 %912, 0
  %914 = sdiv i32 %2, 2
  %915 = and i32 %2, 1
  %916 = add nsw i32 %914, %915
  %917 = sdiv i32 %3, 2
  %918 = and i32 %3, 1
  %919 = add nsw i32 %917, %918
  br i1 %913, label %925, label %920

920:                                              ; preds = %909
  %921 = mul nsw i32 %919, %916
  %922 = add nsw i32 %911, %921
  %923 = mul nsw i32 %3, %2
  %924 = sdiv i32 %923, 2
  br label %927

925:                                              ; preds = %909
  %926 = mul nsw i32 %919, %2
  br label %927

927:                                              ; preds = %925, %920
  %928 = phi i32 [ %926, %925 ], [ %924, %920 ]
  %929 = phi i32 [ %911, %925 ], [ %922, %920 ]
  %930 = phi i32 [ %916, %925 ], [ %914, %920 ]
  %931 = sub nsw i32 %930, %928
  %932 = sdiv i32 %880, 2
  %933 = mul nsw i32 %930, %932
  %934 = add i32 %933, %929
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %935
  %937 = load i32, i32 addrspace(1)* %936, align 4, !tbaa !6, !amdgpu.noclobber !10
  %938 = add nuw nsw i32 %897, 98
  %939 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %938
  store i32 %937, i32 addrspace(3)* %939, align 4, !tbaa !6
  %940 = add nsw i32 %934, %928
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %941
  %943 = load i32, i32 addrspace(1)* %942, align 4, !tbaa !6, !amdgpu.noclobber !10
  %944 = add nuw nsw i32 %897, 196
  %945 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %944
  store i32 %943, i32 addrspace(3)* %945, align 4, !tbaa !6
  br label %999

946:                                              ; preds = %884
  %947 = add nsw i32 %880, -1
  %948 = icmp slt i32 %888, %2
  br i1 %948, label %953, label %949

949:                                              ; preds = %946
  %950 = shl nsw i32 %2, 1
  %951 = sub i32 -2, %888
  %952 = add i32 %951, %950
  br label %955

953:                                              ; preds = %946
  %954 = icmp slt i32 %888, 0
  br i1 %954, label %955, label %957

955:                                              ; preds = %953, %949
  %956 = phi i32 [ %952, %949 ], [ %889, %953 ]
  br label %957

957:                                              ; preds = %955, %953
  %958 = phi i32 [ %956, %955 ], [ %888, %953 ]
  %959 = sdiv i32 %958, 2
  %960 = and i32 %958, 1
  %961 = icmp eq i32 %960, 0
  %962 = sdiv i32 %2, 2
  %963 = and i32 %2, 1
  %964 = add nsw i32 %962, %963
  %965 = sdiv i32 %3, 2
  %966 = and i32 %3, 1
  %967 = add nsw i32 %965, %966
  br i1 %961, label %973, label %968

968:                                              ; preds = %957
  %969 = mul nsw i32 %967, %964
  %970 = add nsw i32 %959, %969
  %971 = mul nsw i32 %3, %2
  %972 = sdiv i32 %971, 2
  br label %975

973:                                              ; preds = %957
  %974 = mul nsw i32 %967, %2
  br label %975

975:                                              ; preds = %973, %968
  %976 = phi i32 [ %974, %973 ], [ %972, %968 ]
  %977 = phi i32 [ %959, %973 ], [ %970, %968 ]
  %978 = phi i32 [ %964, %973 ], [ %962, %968 ]
  %979 = sub nsw i32 %978, %976
  %980 = sdiv i32 %947, 2
  %981 = mul nsw i32 %978, %980
  %982 = add i32 %977, %976
  %983 = add i32 %982, %981
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %984
  %986 = load i32, i32 addrspace(1)* %985, align 4, !tbaa !6, !amdgpu.noclobber !10
  %987 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %897
  store i32 %986, i32 addrspace(3)* %987, align 4, !tbaa !6
  %988 = add nsw i32 %983, %979
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %989
  %991 = load i32, i32 addrspace(1)* %990, align 4, !tbaa !6, !amdgpu.noclobber !10
  %992 = add nuw nsw i32 %897, 98
  %993 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %992
  store i32 %991, i32 addrspace(3)* %993, align 4, !tbaa !6
  %994 = add i32 %983, %978
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %995
  %997 = load i32, i32 addrspace(1)* %996, align 4, !tbaa !6, !amdgpu.noclobber !10
  %998 = add nuw nsw i32 %897, 196
  br label %999

999:                                              ; preds = %975, %927
  %1000 = phi i32 [ %940, %927 ], [ %994, %975 ]
  %1001 = phi i32 [ %928, %927 ], [ %976, %975 ]
  %1002 = phi i32 [ %931, %927 ], [ %979, %975 ]
  %1003 = phi i32 [ %897, %927 ], [ %998, %975 ]
  %1004 = phi i32 [ %943, %927 ], [ %997, %975 ]
  %1005 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1003
  store i32 %1004, i32 addrspace(3)* %1005, align 4, !tbaa !6
  br label %1006

1006:                                             ; preds = %999, %883
  %1007 = phi i32 [ %897, %999 ], [ 0, %883 ]
  %1008 = phi i32 [ %1000, %999 ], [ 0, %883 ]
  %1009 = phi i32 [ %1001, %999 ], [ 0, %883 ]
  %1010 = phi i32 [ %1002, %999 ], [ 0, %883 ]
  %1011 = shl nuw nsw i32 %881, 1
  %1012 = trunc i32 %881 to i16
  %1013 = udiv i16 %1012, 96
  %1014 = zext i16 %1013 to i32
  %1015 = mul nsw i32 %1014, -191
  %1016 = add nsw i32 %1015, %1011
  %1017 = add i32 %1016, %877
  %1018 = sub i32 0, %1017
  %1019 = trunc i32 %1016 to i16
  %1020 = add nsw i16 %1019, 2
  %1021 = sdiv i16 %1020, 2
  %1022 = sext i16 %1021 to i32
  %1023 = and i32 %1016, 1
  %1024 = icmp eq i32 %1023, 0
  %1025 = select i1 %1024, i32 0, i32 1080
  %1026 = add nsw i32 %1025, %1022
  %1027 = icmp eq i32 %7, 0
  br i1 %1027, label %1028, label %1075

1028:                                             ; preds = %1006
  %1029 = icmp slt i32 %1017, %2
  br i1 %1029, label %1034, label %1030

1030:                                             ; preds = %1028
  %1031 = shl nsw i32 %2, 1
  %1032 = sub i32 %1031, %1017
  %1033 = add i32 %1032, -2
  br label %1036

1034:                                             ; preds = %1028
  %1035 = icmp slt i32 %1017, 0
  br i1 %1035, label %1036, label %1038

1036:                                             ; preds = %1034, %1030
  %1037 = phi i32 [ %1033, %1030 ], [ %1018, %1034 ]
  br label %1038

1038:                                             ; preds = %1036, %1034
  %1039 = phi i32 [ %1037, %1036 ], [ %1017, %1034 ]
  %1040 = sdiv i32 %1039, 2
  %1041 = and i32 %1039, 1
  %1042 = icmp eq i32 %1041, 0
  %1043 = sdiv i32 %2, 2
  %1044 = and i32 %2, 1
  %1045 = add nsw i32 %1043, %1044
  %1046 = sdiv i32 %3, 2
  %1047 = and i32 %3, 1
  %1048 = add nsw i32 %1046, %1047
  br i1 %1042, label %1054, label %1049

1049:                                             ; preds = %1038
  %1050 = mul nsw i32 %1048, %1045
  %1051 = add nsw i32 %1040, %1050
  %1052 = mul nsw i32 %3, %2
  %1053 = sdiv i32 %1052, 2
  br label %1056

1054:                                             ; preds = %1038
  %1055 = mul nsw i32 %1048, %2
  br label %1056

1056:                                             ; preds = %1054, %1049
  %1057 = phi i32 [ %1055, %1054 ], [ %1053, %1049 ]
  %1058 = phi i32 [ %1040, %1054 ], [ %1051, %1049 ]
  %1059 = phi i32 [ %1045, %1054 ], [ %1043, %1049 ]
  %1060 = sub nsw i32 %1059, %1057
  %1061 = sdiv i32 %880, 2
  %1062 = mul nsw i32 %1059, %1061
  %1063 = add i32 %1062, %1058
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1064
  %1066 = load i32, i32 addrspace(1)* %1065, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1067 = add nsw i32 %1026, 98
  %1068 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1067
  store i32 %1066, i32 addrspace(3)* %1068, align 4, !tbaa !6
  %1069 = add nsw i32 %1063, %1057
  %1070 = sext i32 %1069 to i64
  %1071 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1070
  %1072 = load i32, i32 addrspace(1)* %1071, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1073 = add nsw i32 %1026, 196
  %1074 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1073
  store i32 %1072, i32 addrspace(3)* %1074, align 4, !tbaa !6
  br label %1128

1075:                                             ; preds = %1006
  %1076 = add nsw i32 %880, -1
  %1077 = icmp slt i32 %1017, %2
  br i1 %1077, label %1082, label %1078

1078:                                             ; preds = %1075
  %1079 = shl nsw i32 %2, 1
  %1080 = sub i32 %1079, %1017
  %1081 = add i32 %1080, -2
  br label %1084

1082:                                             ; preds = %1075
  %1083 = icmp slt i32 %1017, 0
  br i1 %1083, label %1084, label %1086

1084:                                             ; preds = %1082, %1078
  %1085 = phi i32 [ %1081, %1078 ], [ %1018, %1082 ]
  br label %1086

1086:                                             ; preds = %1084, %1082
  %1087 = phi i32 [ %1085, %1084 ], [ %1017, %1082 ]
  %1088 = sdiv i32 %1087, 2
  %1089 = and i32 %1087, 1
  %1090 = icmp eq i32 %1089, 0
  %1091 = sdiv i32 %2, 2
  %1092 = and i32 %2, 1
  %1093 = add nsw i32 %1091, %1092
  %1094 = sdiv i32 %3, 2
  %1095 = and i32 %3, 1
  %1096 = add nsw i32 %1094, %1095
  br i1 %1090, label %1102, label %1097

1097:                                             ; preds = %1086
  %1098 = mul nsw i32 %1096, %1093
  %1099 = add nsw i32 %1088, %1098
  %1100 = mul nsw i32 %3, %2
  %1101 = sdiv i32 %1100, 2
  br label %1104

1102:                                             ; preds = %1086
  %1103 = mul nsw i32 %1096, %2
  br label %1104

1104:                                             ; preds = %1102, %1097
  %1105 = phi i32 [ %1103, %1102 ], [ %1101, %1097 ]
  %1106 = phi i32 [ %1088, %1102 ], [ %1099, %1097 ]
  %1107 = phi i32 [ %1093, %1102 ], [ %1091, %1097 ]
  %1108 = sub nsw i32 %1107, %1105
  %1109 = sdiv i32 %1076, 2
  %1110 = mul nsw i32 %1107, %1109
  %1111 = add i32 %1106, %1105
  %1112 = add i32 %1111, %1110
  %1113 = sext i32 %1112 to i64
  %1114 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1113
  %1115 = load i32, i32 addrspace(1)* %1114, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1116 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1026
  store i32 %1115, i32 addrspace(3)* %1116, align 4, !tbaa !6
  %1117 = add nsw i32 %1112, %1108
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1118
  %1120 = load i32, i32 addrspace(1)* %1119, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1121 = add nsw i32 %1026, 98
  %1122 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1121
  store i32 %1120, i32 addrspace(3)* %1122, align 4, !tbaa !6
  %1123 = add i32 %1112, %1107
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1124
  %1126 = load i32, i32 addrspace(1)* %1125, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1127 = add nsw i32 %1026, 196
  br label %1128

1128:                                             ; preds = %1104, %1056
  %1129 = phi i32 [ %1060, %1056 ], [ %1108, %1104 ]
  %1130 = phi i32 [ %1057, %1056 ], [ %1105, %1104 ]
  %1131 = phi i32 [ %1069, %1056 ], [ %1123, %1104 ]
  %1132 = phi i32 [ %1026, %1056 ], [ %1127, %1104 ]
  %1133 = phi i32 [ %1072, %1056 ], [ %1126, %1104 ]
  %1134 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1132
  store i32 %1133, i32 addrspace(3)* %1134, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1135 = add nuw nsw i32 %881, 1080
  %1136 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1135
  %1137 = load i32, i32 addrspace(3)* %1136, align 4, !tbaa !6
  %1138 = add nuw nsw i32 %881, 1081
  %1139 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1138
  %1140 = load i32, i32 addrspace(3)* %1139, align 4, !tbaa !6
  %1141 = add nuw nsw i32 %881, 1
  %1142 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1141
  %1143 = add i32 %1137, 2
  %1144 = add i32 %1143, %1140
  %1145 = sdiv i32 %1144, -4
  %1146 = load i32, i32 addrspace(3)* %1142, align 4, !tbaa !6
  %1147 = add i32 %1145, %1146
  store i32 %1147, i32 addrspace(3)* %1142, align 4, !tbaa !6
  %1148 = icmp ult i32 %881, 101
  br i1 %1148, label %1149, label %1163

1149:                                             ; preds = %1128
  %1150 = add nuw nsw i32 %881, 1272
  %1151 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1150
  %1152 = load i32, i32 addrspace(3)* %1151, align 4, !tbaa !6
  %1153 = add nuw nsw i32 %881, 1273
  %1154 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1153
  %1155 = load i32, i32 addrspace(3)* %1154, align 4, !tbaa !6
  %1156 = add nuw nsw i32 %881, 193
  %1157 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1156
  %1158 = add i32 %1152, 2
  %1159 = add i32 %1158, %1155
  %1160 = sdiv i32 %1159, -4
  %1161 = load i32, i32 addrspace(3)* %1157, align 4, !tbaa !6
  %1162 = add i32 %1160, %1161
  store i32 %1162, i32 addrspace(3)* %1157, align 4, !tbaa !6
  br label %1163

1163:                                             ; preds = %1149, %1128
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1164 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %881
  %1165 = load i32, i32 addrspace(3)* %1164, align 4, !tbaa !6
  %1166 = load i32, i32 addrspace(3)* %1142, align 4, !tbaa !6
  %1167 = add nsw i32 %1166, %1165
  %1168 = sdiv i32 %1167, 2
  %1169 = load i32, i32 addrspace(3)* %1136, align 4, !tbaa !6
  %1170 = add nsw i32 %1168, %1169
  store i32 %1170, i32 addrspace(3)* %1136, align 4, !tbaa !6
  br i1 %1148, label %1171, label %1184

1171:                                             ; preds = %1163
  %1172 = add nuw nsw i32 %881, 192
  %1173 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1172
  %1174 = load i32, i32 addrspace(3)* %1173, align 4, !tbaa !6
  %1175 = add nuw nsw i32 %881, 193
  %1176 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1175
  %1177 = load i32, i32 addrspace(3)* %1176, align 4, !tbaa !6
  %1178 = add nuw nsw i32 %881, 1272
  %1179 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1178
  %1180 = add nsw i32 %1177, %1174
  %1181 = sdiv i32 %1180, 2
  %1182 = load i32, i32 addrspace(3)* %1179, align 4, !tbaa !6
  %1183 = add nsw i32 %1181, %1182
  store i32 %1183, i32 addrspace(3)* %1179, align 4, !tbaa !6
  br label %1184

1184:                                             ; preds = %1171, %1163
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1185 = add i32 %877, %881
  %1186 = icmp slt i32 %1185, %2
  br i1 %1186, label %1187, label %1192

1187:                                             ; preds = %1184
  %1188 = mul nsw i32 %3, %2
  %1189 = add nsw i32 %1188, %1185
  %1190 = mul nsw i32 %880, %2
  %1191 = add nsw i32 %1190, %1185
  br label %1192

1192:                                             ; preds = %1187, %1184
  %1193 = phi i32 [ %1189, %1187 ], [ 0, %1184 ]
  %1194 = phi i32 [ %2, %1187 ], [ 0, %1184 ]
  %1195 = phi i32 [ %1191, %1187 ], [ 0, %1184 ]
  %1196 = add nuw nsw i32 %881, 2
  %1197 = lshr i32 %1196, 1
  %1198 = and i32 %881, 1
  %1199 = icmp eq i32 %1198, 0
  %1200 = select i1 %1199, i32 0, i32 1080
  %1201 = add nuw nsw i32 %1200, %1197
  %1202 = icmp sgt i32 %4, 0
  br i1 %1202, label %1203, label %2156

1203:                                             ; preds = %1192
  %1204 = add nsw i32 %1026, 294
  %1205 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1204
  %1206 = add nsw i32 %1026, 392
  %1207 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1206
  %1208 = add nsw i32 %1026, 490
  %1209 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1208
  %1210 = add nsw i32 %1026, 588
  %1211 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1210
  %1212 = add nsw i32 %1026, 686
  %1213 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1212
  %1214 = add nsw i32 %1026, 784
  %1215 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1214
  %1216 = add nsw i32 %1026, 882
  %1217 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1216
  %1218 = add nsw i32 %1026, 980
  %1219 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1218
  %1220 = add nuw nsw i32 %1007, 294
  %1221 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1220
  %1222 = add nuw nsw i32 %1007, 392
  %1223 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1222
  %1224 = add nuw nsw i32 %1007, 490
  %1225 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1224
  %1226 = add nuw nsw i32 %1007, 588
  %1227 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1226
  %1228 = add nuw nsw i32 %1007, 686
  %1229 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1228
  %1230 = add nuw nsw i32 %1007, 784
  %1231 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1230
  %1232 = add nuw nsw i32 %1007, 882
  %1233 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1232
  %1234 = add nuw nsw i32 %1007, 980
  %1235 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1234
  %1236 = icmp ult i32 %881, 15
  %1237 = add nuw nsw i32 %881, 2142
  %1238 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1237
  %1239 = add nuw nsw i32 %881, 2143
  %1240 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1239
  %1241 = add nuw nsw i32 %881, 1063
  %1242 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1241
  %1243 = add nuw nsw i32 %881, 1062
  %1244 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1243
  %1245 = add nuw nsw i32 %1201, 784
  %1246 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1245
  %1247 = add nuw nsw i32 %1201, 882
  %1248 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1247
  %1249 = add nuw nsw i32 %1201, 980
  %1250 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1249
  %1251 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1201
  %1252 = add nuw nsw i32 %1201, 196
  %1253 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1252
  %1254 = add nuw nsw i32 %1201, 98
  %1255 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1254
  %1256 = add nuw nsw i32 %1201, 392
  %1257 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1256
  %1258 = add nuw nsw i32 %1201, 294
  %1259 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1258
  %1260 = add nuw nsw i32 %1201, 588
  %1261 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1260
  %1262 = add nuw nsw i32 %1201, 490
  %1263 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1262
  %1264 = add nuw nsw i32 %1201, 686
  %1265 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1264
  %1266 = add nuw nsw i32 %881, 1374
  %1267 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1266
  %1268 = add nuw nsw i32 %881, 1375
  %1269 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1268
  %1270 = add nuw nsw i32 %881, 295
  %1271 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1270
  %1272 = add nuw nsw i32 %881, 1566
  %1273 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1272
  %1274 = add nuw nsw i32 %881, 1567
  %1275 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1274
  %1276 = add nuw nsw i32 %881, 487
  %1277 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1276
  %1278 = add nuw nsw i32 %881, 1758
  %1279 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1278
  %1280 = add nuw nsw i32 %881, 1759
  %1281 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1280
  %1282 = add nuw nsw i32 %881, 679
  %1283 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1282
  %1284 = add nuw nsw i32 %881, 1950
  %1285 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1284
  %1286 = add nuw nsw i32 %881, 1951
  %1287 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1286
  %1288 = add nuw nsw i32 %881, 871
  %1289 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1288
  %1290 = add nuw nsw i32 %881, 294
  %1291 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1290
  %1292 = add nuw nsw i32 %881, 486
  %1293 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1292
  %1294 = add nuw nsw i32 %881, 678
  %1295 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1294
  %1296 = add nuw nsw i32 %881, 870
  %1297 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1296
  br label %1298

1298:                                             ; preds = %1534, %1203
  %1299 = phi i32 [ 0, %1203 ], [ %1536, %1534 ]
  %1300 = phi i32 [ %1131, %1203 ], [ %1331, %1534 ]
  %1301 = phi i32 [ %1195, %1203 ], [ %1535, %1534 ]
  %1302 = phi i32 [ %1008, %1203 ], [ %1369, %1534 ]
  %1303 = add nsw i32 %1300, %1129
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1304
  %1306 = load i32, i32 addrspace(1)* %1305, align 4, !tbaa !6
  store i32 %1306, i32 addrspace(3)* %1205, align 4, !tbaa !6
  %1307 = add nsw i32 %1303, %1130
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1308
  %1310 = load i32, i32 addrspace(1)* %1309, align 4, !tbaa !6
  store i32 %1310, i32 addrspace(3)* %1207, align 4, !tbaa !6
  %1311 = add nsw i32 %1307, %1129
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1312
  %1314 = load i32, i32 addrspace(1)* %1313, align 4, !tbaa !6
  store i32 %1314, i32 addrspace(3)* %1209, align 4, !tbaa !6
  %1315 = add nsw i32 %1311, %1130
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1316
  %1318 = load i32, i32 addrspace(1)* %1317, align 4, !tbaa !6
  store i32 %1318, i32 addrspace(3)* %1211, align 4, !tbaa !6
  %1319 = add nsw i32 %1315, %1129
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1320
  %1322 = load i32, i32 addrspace(1)* %1321, align 4, !tbaa !6
  store i32 %1322, i32 addrspace(3)* %1213, align 4, !tbaa !6
  %1323 = add nsw i32 %1319, %1130
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1324
  %1326 = load i32, i32 addrspace(1)* %1325, align 4, !tbaa !6
  store i32 %1326, i32 addrspace(3)* %1215, align 4, !tbaa !6
  %1327 = add nsw i32 %1323, %1129
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1328
  %1330 = load i32, i32 addrspace(1)* %1329, align 4, !tbaa !6
  store i32 %1330, i32 addrspace(3)* %1217, align 4, !tbaa !6
  %1331 = add nsw i32 %1327, %1130
  %1332 = sext i32 %1331 to i64
  %1333 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1332
  %1334 = load i32, i32 addrspace(1)* %1333, align 4, !tbaa !6
  store i32 %1334, i32 addrspace(3)* %1219, align 4, !tbaa !6
  br i1 %882, label %1335, label %1368

1335:                                             ; preds = %1298
  %1336 = add nsw i32 %1302, %1010
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1337
  %1339 = load i32, i32 addrspace(1)* %1338, align 4, !tbaa !6
  store i32 %1339, i32 addrspace(3)* %1221, align 4, !tbaa !6
  %1340 = add nsw i32 %1336, %1009
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1341
  %1343 = load i32, i32 addrspace(1)* %1342, align 4, !tbaa !6
  store i32 %1343, i32 addrspace(3)* %1223, align 4, !tbaa !6
  %1344 = add nsw i32 %1340, %1010
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1345
  %1347 = load i32, i32 addrspace(1)* %1346, align 4, !tbaa !6
  store i32 %1347, i32 addrspace(3)* %1225, align 4, !tbaa !6
  %1348 = add nsw i32 %1344, %1009
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1349
  %1351 = load i32, i32 addrspace(1)* %1350, align 4, !tbaa !6
  store i32 %1351, i32 addrspace(3)* %1227, align 4, !tbaa !6
  %1352 = add nsw i32 %1348, %1010
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1353
  %1355 = load i32, i32 addrspace(1)* %1354, align 4, !tbaa !6
  store i32 %1355, i32 addrspace(3)* %1229, align 4, !tbaa !6
  %1356 = add nsw i32 %1352, %1009
  %1357 = sext i32 %1356 to i64
  %1358 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1357
  %1359 = load i32, i32 addrspace(1)* %1358, align 4, !tbaa !6
  store i32 %1359, i32 addrspace(3)* %1231, align 4, !tbaa !6
  %1360 = add nsw i32 %1356, %1010
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1361
  %1363 = load i32, i32 addrspace(1)* %1362, align 4, !tbaa !6
  store i32 %1363, i32 addrspace(3)* %1233, align 4, !tbaa !6
  %1364 = add nsw i32 %1360, %1009
  %1365 = sext i32 %1364 to i64
  %1366 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1365
  %1367 = load i32, i32 addrspace(1)* %1366, align 4, !tbaa !6
  store i32 %1367, i32 addrspace(3)* %1235, align 4, !tbaa !6
  br label %1368

1368:                                             ; preds = %1335, %1298
  %1369 = phi i32 [ %1364, %1335 ], [ %1302, %1298 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1370 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1371 = load i32, i32 addrspace(3)* %1269, align 4, !tbaa !6
  %1372 = add i32 %1370, 2
  %1373 = add i32 %1372, %1371
  %1374 = sdiv i32 %1373, -4
  %1375 = load i32, i32 addrspace(3)* %1271, align 4, !tbaa !6
  %1376 = add i32 %1374, %1375
  store i32 %1376, i32 addrspace(3)* %1271, align 4, !tbaa !6
  %1377 = load i32, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1378 = load i32, i32 addrspace(3)* %1275, align 4, !tbaa !6
  %1379 = add i32 %1377, 2
  %1380 = add i32 %1379, %1378
  %1381 = sdiv i32 %1380, -4
  %1382 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !6
  %1383 = add i32 %1381, %1382
  store i32 %1383, i32 addrspace(3)* %1277, align 4, !tbaa !6
  %1384 = load i32, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1385 = load i32, i32 addrspace(3)* %1281, align 4, !tbaa !6
  %1386 = add i32 %1384, 2
  %1387 = add i32 %1386, %1385
  %1388 = sdiv i32 %1387, -4
  %1389 = load i32, i32 addrspace(3)* %1283, align 4, !tbaa !6
  %1390 = add i32 %1388, %1389
  store i32 %1390, i32 addrspace(3)* %1283, align 4, !tbaa !6
  %1391 = load i32, i32 addrspace(3)* %1285, align 4, !tbaa !6
  %1392 = load i32, i32 addrspace(3)* %1287, align 4, !tbaa !6
  %1393 = add i32 %1391, 2
  %1394 = add i32 %1393, %1392
  %1395 = sdiv i32 %1394, -4
  %1396 = load i32, i32 addrspace(3)* %1289, align 4, !tbaa !6
  %1397 = add i32 %1395, %1396
  store i32 %1397, i32 addrspace(3)* %1289, align 4, !tbaa !6
  br i1 %1236, label %1398, label %1406

1398:                                             ; preds = %1368
  %1399 = load i32, i32 addrspace(3)* %1238, align 4, !tbaa !6
  %1400 = load i32, i32 addrspace(3)* %1240, align 4, !tbaa !6
  %1401 = add i32 %1399, 2
  %1402 = add i32 %1401, %1400
  %1403 = sdiv i32 %1402, -4
  %1404 = load i32, i32 addrspace(3)* %1242, align 4, !tbaa !6
  %1405 = add i32 %1403, %1404
  store i32 %1405, i32 addrspace(3)* %1242, align 4, !tbaa !6
  br label %1406

1406:                                             ; preds = %1398, %1368
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1407 = load i32, i32 addrspace(3)* %1291, align 4, !tbaa !6
  %1408 = load i32, i32 addrspace(3)* %1271, align 4, !tbaa !6
  %1409 = add nsw i32 %1408, %1407
  %1410 = sdiv i32 %1409, 2
  %1411 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1412 = add nsw i32 %1410, %1411
  store i32 %1412, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1413 = load i32, i32 addrspace(3)* %1293, align 4, !tbaa !6
  %1414 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !6
  %1415 = add nsw i32 %1414, %1413
  %1416 = sdiv i32 %1415, 2
  %1417 = load i32, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1418 = add nsw i32 %1416, %1417
  store i32 %1418, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1419 = load i32, i32 addrspace(3)* %1295, align 4, !tbaa !6
  %1420 = load i32, i32 addrspace(3)* %1283, align 4, !tbaa !6
  %1421 = add nsw i32 %1420, %1419
  %1422 = sdiv i32 %1421, 2
  %1423 = load i32, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1424 = add nsw i32 %1422, %1423
  store i32 %1424, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1425 = load i32, i32 addrspace(3)* %1297, align 4, !tbaa !6
  %1426 = load i32, i32 addrspace(3)* %1289, align 4, !tbaa !6
  %1427 = add nsw i32 %1426, %1425
  %1428 = sdiv i32 %1427, 2
  %1429 = load i32, i32 addrspace(3)* %1285, align 4, !tbaa !6
  %1430 = add nsw i32 %1428, %1429
  store i32 %1430, i32 addrspace(3)* %1285, align 4, !tbaa !6
  br i1 %1236, label %1431, label %1438

1431:                                             ; preds = %1406
  %1432 = load i32, i32 addrspace(3)* %1244, align 4, !tbaa !6
  %1433 = load i32, i32 addrspace(3)* %1242, align 4, !tbaa !6
  %1434 = add nsw i32 %1433, %1432
  %1435 = sdiv i32 %1434, 2
  %1436 = load i32, i32 addrspace(3)* %1238, align 4, !tbaa !6
  %1437 = add nsw i32 %1435, %1436
  store i32 %1437, i32 addrspace(3)* %1238, align 4, !tbaa !6
  br label %1438

1438:                                             ; preds = %1431, %1406
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1439 = load i32, i32 addrspace(3)* %1246, align 4, !tbaa !6
  %1440 = load i32, i32 addrspace(3)* %1248, align 4, !tbaa !6
  %1441 = load i32, i32 addrspace(3)* %1250, align 4, !tbaa !6
  %1442 = load i32, i32 addrspace(3)* %1251, align 4, !tbaa !6
  %1443 = load i32, i32 addrspace(3)* %1253, align 4, !tbaa !6
  %1444 = add i32 %1443, 2
  %1445 = add i32 %1444, %1442
  %1446 = sdiv i32 %1445, -4
  %1447 = load i32, i32 addrspace(3)* %1255, align 4, !tbaa !6
  %1448 = add i32 %1446, %1447
  store i32 %1448, i32 addrspace(3)* %1255, align 4, !tbaa !6
  %1449 = load i32, i32 addrspace(3)* %1257, align 4, !tbaa !6
  %1450 = add i32 %1449, %1444
  %1451 = sdiv i32 %1450, -4
  %1452 = load i32, i32 addrspace(3)* %1259, align 4, !tbaa !6
  %1453 = add i32 %1451, %1452
  store i32 %1453, i32 addrspace(3)* %1259, align 4, !tbaa !6
  %1454 = load i32, i32 addrspace(3)* %1261, align 4, !tbaa !6
  %1455 = add i32 %1449, 2
  %1456 = add i32 %1455, %1454
  %1457 = sdiv i32 %1456, -4
  %1458 = load i32, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1459 = add i32 %1457, %1458
  store i32 %1459, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1460 = add i32 %1439, 2
  %1461 = add i32 %1454, %1460
  %1462 = sdiv i32 %1461, -4
  %1463 = load i32, i32 addrspace(3)* %1265, align 4, !tbaa !6
  %1464 = add i32 %1463, %1462
  store i32 %1464, i32 addrspace(3)* %1265, align 4, !tbaa !6
  %1465 = add i32 %1441, %1460
  %1466 = sdiv i32 %1465, -4
  %1467 = add i32 %1466, %1440
  store i32 %1467, i32 addrspace(3)* %1248, align 4, !tbaa !6
  %1468 = add nsw i32 %1453, %1448
  %1469 = sdiv i32 %1468, 2
  %1470 = add nsw i32 %1469, %1443
  store i32 %1470, i32 addrspace(3)* %1253, align 4, !tbaa !6
  %1471 = add nsw i32 %1459, %1453
  %1472 = sdiv i32 %1471, 2
  %1473 = add nsw i32 %1472, %1449
  store i32 %1473, i32 addrspace(3)* %1257, align 4, !tbaa !6
  %1474 = add nsw i32 %1464, %1459
  %1475 = sdiv i32 %1474, 2
  %1476 = add nsw i32 %1475, %1454
  store i32 %1476, i32 addrspace(3)* %1261, align 4, !tbaa !6
  %1477 = add nsw i32 %1464, %1467
  %1478 = sdiv i32 %1477, 2
  %1479 = add nsw i32 %1478, %1439
  store i32 %1479, i32 addrspace(3)* %1246, align 4, !tbaa !6
  %1480 = icmp eq i32 %1301, %1193
  br i1 %1480, label %1485, label %1481

1481:                                             ; preds = %1438
  %1482 = add nsw i32 %1301, %1194
  %1483 = sext i32 %1301 to i64
  %1484 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1483
  store i32 %1448, i32 addrspace(1)* %1484, align 4, !tbaa !6
  br label %1485

1485:                                             ; preds = %1481, %1438
  %1486 = phi i32 [ %1193, %1438 ], [ %1482, %1481 ]
  %1487 = icmp eq i32 %1486, %1193
  br i1 %1487, label %1492, label %1488

1488:                                             ; preds = %1485
  %1489 = add nsw i32 %1486, %1194
  %1490 = sext i32 %1486 to i64
  %1491 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1490
  store i32 %1470, i32 addrspace(1)* %1491, align 4, !tbaa !6
  br label %1492

1492:                                             ; preds = %1488, %1485
  %1493 = phi i32 [ %1193, %1485 ], [ %1489, %1488 ]
  %1494 = icmp eq i32 %1493, %1193
  br i1 %1494, label %1499, label %1495

1495:                                             ; preds = %1492
  %1496 = add nsw i32 %1493, %1194
  %1497 = sext i32 %1493 to i64
  %1498 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1497
  store i32 %1453, i32 addrspace(1)* %1498, align 4, !tbaa !6
  br label %1499

1499:                                             ; preds = %1495, %1492
  %1500 = phi i32 [ %1193, %1492 ], [ %1496, %1495 ]
  %1501 = icmp eq i32 %1500, %1193
  br i1 %1501, label %1506, label %1502

1502:                                             ; preds = %1499
  %1503 = add nsw i32 %1500, %1194
  %1504 = sext i32 %1500 to i64
  %1505 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1504
  store i32 %1473, i32 addrspace(1)* %1505, align 4, !tbaa !6
  br label %1506

1506:                                             ; preds = %1502, %1499
  %1507 = phi i32 [ %1193, %1499 ], [ %1503, %1502 ]
  %1508 = icmp eq i32 %1507, %1193
  br i1 %1508, label %1513, label %1509

1509:                                             ; preds = %1506
  %1510 = add nsw i32 %1507, %1194
  %1511 = sext i32 %1507 to i64
  %1512 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1511
  store i32 %1459, i32 addrspace(1)* %1512, align 4, !tbaa !6
  br label %1513

1513:                                             ; preds = %1509, %1506
  %1514 = phi i32 [ %1193, %1506 ], [ %1510, %1509 ]
  %1515 = icmp eq i32 %1514, %1193
  br i1 %1515, label %1520, label %1516

1516:                                             ; preds = %1513
  %1517 = add nsw i32 %1514, %1194
  %1518 = sext i32 %1514 to i64
  %1519 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1518
  store i32 %1476, i32 addrspace(1)* %1519, align 4, !tbaa !6
  br label %1520

1520:                                             ; preds = %1516, %1513
  %1521 = phi i32 [ %1193, %1513 ], [ %1517, %1516 ]
  %1522 = icmp eq i32 %1521, %1193
  br i1 %1522, label %1527, label %1523

1523:                                             ; preds = %1520
  %1524 = add nsw i32 %1521, %1194
  %1525 = sext i32 %1521 to i64
  %1526 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1525
  store i32 %1464, i32 addrspace(1)* %1526, align 4, !tbaa !6
  br label %1527

1527:                                             ; preds = %1523, %1520
  %1528 = phi i32 [ %1193, %1520 ], [ %1524, %1523 ]
  %1529 = icmp eq i32 %1528, %1193
  br i1 %1529, label %1534, label %1530

1530:                                             ; preds = %1527
  %1531 = add nsw i32 %1528, %1194
  %1532 = sext i32 %1528 to i64
  %1533 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1532
  store i32 %1479, i32 addrspace(1)* %1533, align 4, !tbaa !6
  br label %1534

1534:                                             ; preds = %1530, %1527
  %1535 = phi i32 [ %1193, %1527 ], [ %1531, %1530 ]
  store i32 %1439, i32 addrspace(3)* %1251, align 4, !tbaa !6
  store i32 %1440, i32 addrspace(3)* %1255, align 4, !tbaa !6
  store i32 %1441, i32 addrspace(3)* %1253, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1536 = add nuw nsw i32 %1299, 1
  %1537 = icmp eq i32 %1536, %4
  br i1 %1537, label %2156, label %1298, !llvm.loop !13

1538:                                             ; preds = %876
  br i1 %882, label %1539, label %1661

1539:                                             ; preds = %1538
  %1540 = icmp eq i32 %881, 2
  %1541 = select i1 %1540, i32 -3, i32 192
  %1542 = add nsw i32 %1541, %881
  %1543 = add i32 %1542, %877
  %1544 = sub i32 0, %1543
  %1545 = trunc i32 %1542 to i16
  %1546 = add nsw i16 %1545, 2
  %1547 = sdiv i16 %1546, 2
  %1548 = zext i16 %1547 to i32
  %1549 = and i32 %1542, 1
  %1550 = icmp eq i32 %1549, 0
  %1551 = select i1 %1550, i32 0, i32 1080
  %1552 = add nuw nsw i32 %1551, %1548
  %1553 = icmp eq i32 %7, 0
  br i1 %1553, label %1554, label %1601

1554:                                             ; preds = %1539
  %1555 = icmp slt i32 %1543, %2
  br i1 %1555, label %1560, label %1556

1556:                                             ; preds = %1554
  %1557 = shl nsw i32 %2, 1
  %1558 = sub i32 -2, %1543
  %1559 = add i32 %1558, %1557
  br label %1562

1560:                                             ; preds = %1554
  %1561 = icmp slt i32 %1543, 0
  br i1 %1561, label %1562, label %1564

1562:                                             ; preds = %1560, %1556
  %1563 = phi i32 [ %1559, %1556 ], [ %1544, %1560 ]
  br label %1564

1564:                                             ; preds = %1562, %1560
  %1565 = phi i32 [ %1563, %1562 ], [ %1543, %1560 ]
  %1566 = sdiv i32 %1565, 2
  %1567 = and i32 %1565, 1
  %1568 = icmp eq i32 %1567, 0
  %1569 = sdiv i32 %2, 2
  %1570 = and i32 %2, 1
  %1571 = add nsw i32 %1569, %1570
  %1572 = sdiv i32 %3, 2
  %1573 = and i32 %3, 1
  %1574 = add nsw i32 %1572, %1573
  br i1 %1568, label %1580, label %1575

1575:                                             ; preds = %1564
  %1576 = mul nsw i32 %1574, %1571
  %1577 = add nsw i32 %1566, %1576
  %1578 = mul nsw i32 %3, %2
  %1579 = sdiv i32 %1578, 2
  br label %1582

1580:                                             ; preds = %1564
  %1581 = mul nsw i32 %1574, %2
  br label %1582

1582:                                             ; preds = %1580, %1575
  %1583 = phi i32 [ %1581, %1580 ], [ %1579, %1575 ]
  %1584 = phi i32 [ %1566, %1580 ], [ %1577, %1575 ]
  %1585 = phi i32 [ %1571, %1580 ], [ %1569, %1575 ]
  %1586 = sub nsw i32 %1585, %1583
  %1587 = sdiv i32 %880, 2
  %1588 = mul nsw i32 %1585, %1587
  %1589 = add i32 %1588, %1584
  %1590 = sext i32 %1589 to i64
  %1591 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1590
  %1592 = load i32, i32 addrspace(1)* %1591, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1593 = add nuw nsw i32 %1552, 98
  %1594 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1593
  store i32 %1592, i32 addrspace(3)* %1594, align 4, !tbaa !6
  %1595 = add nsw i32 %1589, %1583
  %1596 = sext i32 %1595 to i64
  %1597 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1596
  %1598 = load i32, i32 addrspace(1)* %1597, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1599 = add nuw nsw i32 %1552, 196
  %1600 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1599
  store i32 %1598, i32 addrspace(3)* %1600, align 4, !tbaa !6
  br label %1654

1601:                                             ; preds = %1539
  %1602 = add nsw i32 %880, -1
  %1603 = icmp slt i32 %1543, %2
  br i1 %1603, label %1608, label %1604

1604:                                             ; preds = %1601
  %1605 = shl nsw i32 %2, 1
  %1606 = sub i32 -2, %1543
  %1607 = add i32 %1606, %1605
  br label %1610

1608:                                             ; preds = %1601
  %1609 = icmp slt i32 %1543, 0
  br i1 %1609, label %1610, label %1612

1610:                                             ; preds = %1608, %1604
  %1611 = phi i32 [ %1607, %1604 ], [ %1544, %1608 ]
  br label %1612

1612:                                             ; preds = %1610, %1608
  %1613 = phi i32 [ %1611, %1610 ], [ %1543, %1608 ]
  %1614 = sdiv i32 %1613, 2
  %1615 = and i32 %1613, 1
  %1616 = icmp eq i32 %1615, 0
  %1617 = sdiv i32 %2, 2
  %1618 = and i32 %2, 1
  %1619 = add nsw i32 %1617, %1618
  %1620 = sdiv i32 %3, 2
  %1621 = and i32 %3, 1
  %1622 = add nsw i32 %1620, %1621
  br i1 %1616, label %1628, label %1623

1623:                                             ; preds = %1612
  %1624 = mul nsw i32 %1622, %1619
  %1625 = add nsw i32 %1614, %1624
  %1626 = mul nsw i32 %3, %2
  %1627 = sdiv i32 %1626, 2
  br label %1630

1628:                                             ; preds = %1612
  %1629 = mul nsw i32 %1622, %2
  br label %1630

1630:                                             ; preds = %1628, %1623
  %1631 = phi i32 [ %1629, %1628 ], [ %1627, %1623 ]
  %1632 = phi i32 [ %1614, %1628 ], [ %1625, %1623 ]
  %1633 = phi i32 [ %1619, %1628 ], [ %1617, %1623 ]
  %1634 = sub nsw i32 %1633, %1631
  %1635 = sdiv i32 %1602, 2
  %1636 = mul nsw i32 %1633, %1635
  %1637 = add i32 %1632, %1631
  %1638 = add i32 %1637, %1636
  %1639 = sext i32 %1638 to i64
  %1640 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1639
  %1641 = load i32, i32 addrspace(1)* %1640, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1642 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1552
  store i32 %1641, i32 addrspace(3)* %1642, align 4, !tbaa !6
  %1643 = add nsw i32 %1638, %1634
  %1644 = sext i32 %1643 to i64
  %1645 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1644
  %1646 = load i32, i32 addrspace(1)* %1645, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1647 = add nuw nsw i32 %1552, 98
  %1648 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1647
  store i32 %1646, i32 addrspace(3)* %1648, align 4, !tbaa !6
  %1649 = add i32 %1638, %1633
  %1650 = sext i32 %1649 to i64
  %1651 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1650
  %1652 = load i32, i32 addrspace(1)* %1651, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1653 = add nuw nsw i32 %1552, 196
  br label %1654

1654:                                             ; preds = %1630, %1582
  %1655 = phi i32 [ %1595, %1582 ], [ %1649, %1630 ]
  %1656 = phi i32 [ %1583, %1582 ], [ %1631, %1630 ]
  %1657 = phi i32 [ %1586, %1582 ], [ %1634, %1630 ]
  %1658 = phi i32 [ %1552, %1582 ], [ %1653, %1630 ]
  %1659 = phi i32 [ %1598, %1582 ], [ %1652, %1630 ]
  %1660 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1658
  store i32 %1659, i32 addrspace(3)* %1660, align 4, !tbaa !6
  br label %1661

1661:                                             ; preds = %1654, %1538
  %1662 = phi i32 [ %1552, %1654 ], [ 0, %1538 ]
  %1663 = phi i32 [ %1655, %1654 ], [ 0, %1538 ]
  %1664 = phi i32 [ %1656, %1654 ], [ 0, %1538 ]
  %1665 = phi i32 [ %1657, %1654 ], [ 0, %1538 ]
  %1666 = shl nuw nsw i32 %881, 1
  %1667 = trunc i32 %881 to i16
  %1668 = udiv i16 %1667, 96
  %1669 = zext i16 %1668 to i32
  %1670 = mul nsw i32 %1669, -191
  %1671 = add nsw i32 %1670, %1666
  %1672 = add i32 %1671, %877
  %1673 = sub i32 0, %1672
  %1674 = trunc i32 %1671 to i16
  %1675 = add nsw i16 %1674, 2
  %1676 = sdiv i16 %1675, 2
  %1677 = sext i16 %1676 to i32
  %1678 = and i32 %1671, 1
  %1679 = icmp eq i32 %1678, 0
  %1680 = select i1 %1679, i32 0, i32 1080
  %1681 = add nsw i32 %1680, %1677
  %1682 = icmp eq i32 %7, 0
  br i1 %1682, label %1683, label %1730

1683:                                             ; preds = %1661
  %1684 = icmp slt i32 %1672, %2
  br i1 %1684, label %1689, label %1685

1685:                                             ; preds = %1683
  %1686 = shl nsw i32 %2, 1
  %1687 = sub i32 %1686, %1672
  %1688 = add i32 %1687, -2
  br label %1691

1689:                                             ; preds = %1683
  %1690 = icmp slt i32 %1672, 0
  br i1 %1690, label %1691, label %1693

1691:                                             ; preds = %1689, %1685
  %1692 = phi i32 [ %1688, %1685 ], [ %1673, %1689 ]
  br label %1693

1693:                                             ; preds = %1691, %1689
  %1694 = phi i32 [ %1692, %1691 ], [ %1672, %1689 ]
  %1695 = sdiv i32 %1694, 2
  %1696 = and i32 %1694, 1
  %1697 = icmp eq i32 %1696, 0
  %1698 = sdiv i32 %2, 2
  %1699 = and i32 %2, 1
  %1700 = add nsw i32 %1698, %1699
  %1701 = sdiv i32 %3, 2
  %1702 = and i32 %3, 1
  %1703 = add nsw i32 %1701, %1702
  br i1 %1697, label %1709, label %1704

1704:                                             ; preds = %1693
  %1705 = mul nsw i32 %1703, %1700
  %1706 = add nsw i32 %1695, %1705
  %1707 = mul nsw i32 %3, %2
  %1708 = sdiv i32 %1707, 2
  br label %1711

1709:                                             ; preds = %1693
  %1710 = mul nsw i32 %1703, %2
  br label %1711

1711:                                             ; preds = %1709, %1704
  %1712 = phi i32 [ %1710, %1709 ], [ %1708, %1704 ]
  %1713 = phi i32 [ %1695, %1709 ], [ %1706, %1704 ]
  %1714 = phi i32 [ %1700, %1709 ], [ %1698, %1704 ]
  %1715 = sub nsw i32 %1714, %1712
  %1716 = sdiv i32 %880, 2
  %1717 = mul nsw i32 %1714, %1716
  %1718 = add i32 %1717, %1713
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1719
  %1721 = load i32, i32 addrspace(1)* %1720, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1722 = add nsw i32 %1681, 98
  %1723 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1722
  store i32 %1721, i32 addrspace(3)* %1723, align 4, !tbaa !6
  %1724 = add nsw i32 %1718, %1712
  %1725 = sext i32 %1724 to i64
  %1726 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1725
  %1727 = load i32, i32 addrspace(1)* %1726, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1728 = add nsw i32 %1681, 196
  %1729 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1728
  store i32 %1727, i32 addrspace(3)* %1729, align 4, !tbaa !6
  br label %1783

1730:                                             ; preds = %1661
  %1731 = add nsw i32 %880, -1
  %1732 = icmp slt i32 %1672, %2
  br i1 %1732, label %1737, label %1733

1733:                                             ; preds = %1730
  %1734 = shl nsw i32 %2, 1
  %1735 = sub i32 %1734, %1672
  %1736 = add i32 %1735, -2
  br label %1739

1737:                                             ; preds = %1730
  %1738 = icmp slt i32 %1672, 0
  br i1 %1738, label %1739, label %1741

1739:                                             ; preds = %1737, %1733
  %1740 = phi i32 [ %1736, %1733 ], [ %1673, %1737 ]
  br label %1741

1741:                                             ; preds = %1739, %1737
  %1742 = phi i32 [ %1740, %1739 ], [ %1672, %1737 ]
  %1743 = sdiv i32 %1742, 2
  %1744 = and i32 %1742, 1
  %1745 = icmp eq i32 %1744, 0
  %1746 = sdiv i32 %2, 2
  %1747 = and i32 %2, 1
  %1748 = add nsw i32 %1746, %1747
  %1749 = sdiv i32 %3, 2
  %1750 = and i32 %3, 1
  %1751 = add nsw i32 %1749, %1750
  br i1 %1745, label %1757, label %1752

1752:                                             ; preds = %1741
  %1753 = mul nsw i32 %1751, %1748
  %1754 = add nsw i32 %1743, %1753
  %1755 = mul nsw i32 %3, %2
  %1756 = sdiv i32 %1755, 2
  br label %1759

1757:                                             ; preds = %1741
  %1758 = mul nsw i32 %1751, %2
  br label %1759

1759:                                             ; preds = %1757, %1752
  %1760 = phi i32 [ %1758, %1757 ], [ %1756, %1752 ]
  %1761 = phi i32 [ %1743, %1757 ], [ %1754, %1752 ]
  %1762 = phi i32 [ %1748, %1757 ], [ %1746, %1752 ]
  %1763 = sub nsw i32 %1762, %1760
  %1764 = sdiv i32 %1731, 2
  %1765 = mul nsw i32 %1762, %1764
  %1766 = add i32 %1761, %1760
  %1767 = add i32 %1766, %1765
  %1768 = sext i32 %1767 to i64
  %1769 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1768
  %1770 = load i32, i32 addrspace(1)* %1769, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1771 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1681
  store i32 %1770, i32 addrspace(3)* %1771, align 4, !tbaa !6
  %1772 = add nsw i32 %1767, %1763
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1773
  %1775 = load i32, i32 addrspace(1)* %1774, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1776 = add nsw i32 %1681, 98
  %1777 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1776
  store i32 %1775, i32 addrspace(3)* %1777, align 4, !tbaa !6
  %1778 = add i32 %1767, %1762
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1779
  %1781 = load i32, i32 addrspace(1)* %1780, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1782 = add nsw i32 %1681, 196
  br label %1783

1783:                                             ; preds = %1759, %1711
  %1784 = phi i32 [ %1715, %1711 ], [ %1763, %1759 ]
  %1785 = phi i32 [ %1712, %1711 ], [ %1760, %1759 ]
  %1786 = phi i32 [ %1724, %1711 ], [ %1778, %1759 ]
  %1787 = phi i32 [ %1681, %1711 ], [ %1782, %1759 ]
  %1788 = phi i32 [ %1727, %1711 ], [ %1781, %1759 ]
  %1789 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1787
  store i32 %1788, i32 addrspace(3)* %1789, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1790 = add nuw nsw i32 %881, 1080
  %1791 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1790
  %1792 = load i32, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1793 = add nuw nsw i32 %881, 1081
  %1794 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1793
  %1795 = load i32, i32 addrspace(3)* %1794, align 4, !tbaa !6
  %1796 = add nuw nsw i32 %881, 1
  %1797 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1796
  %1798 = add i32 %1792, 2
  %1799 = add i32 %1798, %1795
  %1800 = sdiv i32 %1799, -4
  %1801 = load i32, i32 addrspace(3)* %1797, align 4, !tbaa !6
  %1802 = add i32 %1800, %1801
  store i32 %1802, i32 addrspace(3)* %1797, align 4, !tbaa !6
  %1803 = icmp ult i32 %881, 101
  br i1 %1803, label %1804, label %1818

1804:                                             ; preds = %1783
  %1805 = add nuw nsw i32 %881, 1272
  %1806 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1805
  %1807 = load i32, i32 addrspace(3)* %1806, align 4, !tbaa !6
  %1808 = add nuw nsw i32 %881, 1273
  %1809 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1808
  %1810 = load i32, i32 addrspace(3)* %1809, align 4, !tbaa !6
  %1811 = add nuw nsw i32 %881, 193
  %1812 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1811
  %1813 = add i32 %1807, 2
  %1814 = add i32 %1813, %1810
  %1815 = sdiv i32 %1814, -4
  %1816 = load i32, i32 addrspace(3)* %1812, align 4, !tbaa !6
  %1817 = add i32 %1815, %1816
  store i32 %1817, i32 addrspace(3)* %1812, align 4, !tbaa !6
  br label %1818

1818:                                             ; preds = %1804, %1783
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1819 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %881
  %1820 = load i32, i32 addrspace(3)* %1819, align 4, !tbaa !6
  %1821 = load i32, i32 addrspace(3)* %1797, align 4, !tbaa !6
  %1822 = add nsw i32 %1821, %1820
  %1823 = sdiv i32 %1822, 2
  %1824 = load i32, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1825 = add nsw i32 %1823, %1824
  store i32 %1825, i32 addrspace(3)* %1791, align 4, !tbaa !6
  br i1 %1803, label %1826, label %1839

1826:                                             ; preds = %1818
  %1827 = add nuw nsw i32 %881, 192
  %1828 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1827
  %1829 = load i32, i32 addrspace(3)* %1828, align 4, !tbaa !6
  %1830 = add nuw nsw i32 %881, 193
  %1831 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1830
  %1832 = load i32, i32 addrspace(3)* %1831, align 4, !tbaa !6
  %1833 = add nuw nsw i32 %881, 1272
  %1834 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1833
  %1835 = add nsw i32 %1832, %1829
  %1836 = sdiv i32 %1835, 2
  %1837 = load i32, i32 addrspace(3)* %1834, align 4, !tbaa !6
  %1838 = add nsw i32 %1836, %1837
  store i32 %1838, i32 addrspace(3)* %1834, align 4, !tbaa !6
  br label %1839

1839:                                             ; preds = %1826, %1818
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1840 = add i32 %877, %881
  %1841 = icmp slt i32 %1840, %2
  %1842 = select i1 %1841, i32 %2, i32 0
  %1843 = add nuw nsw i32 %881, 2
  %1844 = lshr i32 %1843, 1
  %1845 = and i32 %881, 1
  %1846 = icmp eq i32 %1845, 0
  %1847 = select i1 %1846, i32 0, i32 1080
  %1848 = add nuw nsw i32 %1847, %1844
  %1849 = icmp sgt i32 %4, 0
  br i1 %1849, label %1850, label %2156

1850:                                             ; preds = %1839
  %1851 = mul nsw i32 %880, %2
  %1852 = add nsw i32 %1851, %1840
  %1853 = select i1 %1841, i32 %1852, i32 0
  %1854 = add nsw i32 %1681, 294
  %1855 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1854
  %1856 = add nsw i32 %1681, 392
  %1857 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1856
  %1858 = add nsw i32 %1681, 490
  %1859 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1858
  %1860 = add nsw i32 %1681, 588
  %1861 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1860
  %1862 = add nsw i32 %1681, 686
  %1863 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1862
  %1864 = add nsw i32 %1681, 784
  %1865 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1864
  %1866 = add nsw i32 %1681, 882
  %1867 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1866
  %1868 = add nsw i32 %1681, 980
  %1869 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1868
  %1870 = add nuw nsw i32 %1662, 294
  %1871 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1870
  %1872 = add nuw nsw i32 %1662, 392
  %1873 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1872
  %1874 = add nuw nsw i32 %1662, 490
  %1875 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1874
  %1876 = add nuw nsw i32 %1662, 588
  %1877 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1876
  %1878 = add nuw nsw i32 %1662, 686
  %1879 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1878
  %1880 = add nuw nsw i32 %1662, 784
  %1881 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1880
  %1882 = add nuw nsw i32 %1662, 882
  %1883 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1882
  %1884 = add nuw nsw i32 %1662, 980
  %1885 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1884
  %1886 = icmp ult i32 %881, 15
  %1887 = add nuw nsw i32 %881, 2142
  %1888 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1887
  %1889 = add nuw nsw i32 %881, 2143
  %1890 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1889
  %1891 = add nuw nsw i32 %881, 1063
  %1892 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1891
  %1893 = add nuw nsw i32 %881, 1062
  %1894 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1893
  %1895 = add nuw nsw i32 %1848, 784
  %1896 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1895
  %1897 = add nuw nsw i32 %1848, 882
  %1898 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1897
  %1899 = add nuw nsw i32 %1848, 980
  %1900 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1899
  %1901 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1848
  %1902 = add nuw nsw i32 %1848, 196
  %1903 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1902
  %1904 = add nuw nsw i32 %1848, 98
  %1905 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1904
  %1906 = add nuw nsw i32 %1848, 392
  %1907 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1906
  %1908 = add nuw nsw i32 %1848, 294
  %1909 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1908
  %1910 = add nuw nsw i32 %1848, 588
  %1911 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1910
  %1912 = add nuw nsw i32 %1848, 490
  %1913 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1912
  %1914 = add nuw nsw i32 %1848, 686
  %1915 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1914
  %1916 = add nuw nsw i32 %881, 1374
  %1917 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1916
  %1918 = add nuw nsw i32 %881, 1375
  %1919 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1918
  %1920 = add nuw nsw i32 %881, 295
  %1921 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1920
  %1922 = add nuw nsw i32 %881, 1566
  %1923 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1922
  %1924 = add nuw nsw i32 %881, 1567
  %1925 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1924
  %1926 = add nuw nsw i32 %881, 487
  %1927 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1926
  %1928 = add nuw nsw i32 %881, 1758
  %1929 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1928
  %1930 = add nuw nsw i32 %881, 1759
  %1931 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1930
  %1932 = add nuw nsw i32 %881, 679
  %1933 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1932
  %1934 = add nuw nsw i32 %881, 1950
  %1935 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1934
  %1936 = add nuw nsw i32 %881, 1951
  %1937 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1936
  %1938 = add nuw nsw i32 %881, 871
  %1939 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1938
  %1940 = add nuw nsw i32 %881, 294
  %1941 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1940
  %1942 = add nuw nsw i32 %881, 486
  %1943 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1942
  %1944 = add nuw nsw i32 %881, 678
  %1945 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1944
  %1946 = add nuw nsw i32 %881, 870
  %1947 = getelementptr inbounds %"class.dwt_cuda::RDWT53", %"class.dwt_cuda::RDWT53" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi192ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1946
  br label %1948

1948:                                             ; preds = %2088, %1850
  %1949 = phi i32 [ 0, %1850 ], [ %2154, %2088 ]
  %1950 = phi i32 [ %1786, %1850 ], [ %1981, %2088 ]
  %1951 = phi i32 [ %1853, %1850 ], [ %2153, %2088 ]
  %1952 = phi i32 [ %1663, %1850 ], [ %2019, %2088 ]
  %1953 = add nsw i32 %1950, %1784
  %1954 = sext i32 %1953 to i64
  %1955 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1954
  %1956 = load i32, i32 addrspace(1)* %1955, align 4, !tbaa !6
  store i32 %1956, i32 addrspace(3)* %1855, align 4, !tbaa !6
  %1957 = add nsw i32 %1953, %1785
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1958
  %1960 = load i32, i32 addrspace(1)* %1959, align 4, !tbaa !6
  store i32 %1960, i32 addrspace(3)* %1857, align 4, !tbaa !6
  %1961 = add nsw i32 %1957, %1784
  %1962 = sext i32 %1961 to i64
  %1963 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1962
  %1964 = load i32, i32 addrspace(1)* %1963, align 4, !tbaa !6
  store i32 %1964, i32 addrspace(3)* %1859, align 4, !tbaa !6
  %1965 = add nsw i32 %1961, %1785
  %1966 = sext i32 %1965 to i64
  %1967 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1966
  %1968 = load i32, i32 addrspace(1)* %1967, align 4, !tbaa !6
  store i32 %1968, i32 addrspace(3)* %1861, align 4, !tbaa !6
  %1969 = add nsw i32 %1965, %1784
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1970
  %1972 = load i32, i32 addrspace(1)* %1971, align 4, !tbaa !6
  store i32 %1972, i32 addrspace(3)* %1863, align 4, !tbaa !6
  %1973 = add nsw i32 %1969, %1785
  %1974 = sext i32 %1973 to i64
  %1975 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1974
  %1976 = load i32, i32 addrspace(1)* %1975, align 4, !tbaa !6
  store i32 %1976, i32 addrspace(3)* %1865, align 4, !tbaa !6
  %1977 = add nsw i32 %1973, %1784
  %1978 = sext i32 %1977 to i64
  %1979 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1978
  %1980 = load i32, i32 addrspace(1)* %1979, align 4, !tbaa !6
  store i32 %1980, i32 addrspace(3)* %1867, align 4, !tbaa !6
  %1981 = add nsw i32 %1977, %1785
  %1982 = sext i32 %1981 to i64
  %1983 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1982
  %1984 = load i32, i32 addrspace(1)* %1983, align 4, !tbaa !6
  store i32 %1984, i32 addrspace(3)* %1869, align 4, !tbaa !6
  br i1 %882, label %1985, label %2018

1985:                                             ; preds = %1948
  %1986 = add nsw i32 %1952, %1665
  %1987 = sext i32 %1986 to i64
  %1988 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1987
  %1989 = load i32, i32 addrspace(1)* %1988, align 4, !tbaa !6
  store i32 %1989, i32 addrspace(3)* %1871, align 4, !tbaa !6
  %1990 = add nsw i32 %1986, %1664
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1991
  %1993 = load i32, i32 addrspace(1)* %1992, align 4, !tbaa !6
  store i32 %1993, i32 addrspace(3)* %1873, align 4, !tbaa !6
  %1994 = add nsw i32 %1990, %1665
  %1995 = sext i32 %1994 to i64
  %1996 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1995
  %1997 = load i32, i32 addrspace(1)* %1996, align 4, !tbaa !6
  store i32 %1997, i32 addrspace(3)* %1875, align 4, !tbaa !6
  %1998 = add nsw i32 %1994, %1664
  %1999 = sext i32 %1998 to i64
  %2000 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1999
  %2001 = load i32, i32 addrspace(1)* %2000, align 4, !tbaa !6
  store i32 %2001, i32 addrspace(3)* %1877, align 4, !tbaa !6
  %2002 = add nsw i32 %1998, %1665
  %2003 = sext i32 %2002 to i64
  %2004 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2003
  %2005 = load i32, i32 addrspace(1)* %2004, align 4, !tbaa !6
  store i32 %2005, i32 addrspace(3)* %1879, align 4, !tbaa !6
  %2006 = add nsw i32 %2002, %1664
  %2007 = sext i32 %2006 to i64
  %2008 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2007
  %2009 = load i32, i32 addrspace(1)* %2008, align 4, !tbaa !6
  store i32 %2009, i32 addrspace(3)* %1881, align 4, !tbaa !6
  %2010 = add nsw i32 %2006, %1665
  %2011 = sext i32 %2010 to i64
  %2012 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2011
  %2013 = load i32, i32 addrspace(1)* %2012, align 4, !tbaa !6
  store i32 %2013, i32 addrspace(3)* %1883, align 4, !tbaa !6
  %2014 = add nsw i32 %2010, %1664
  %2015 = sext i32 %2014 to i64
  %2016 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2015
  %2017 = load i32, i32 addrspace(1)* %2016, align 4, !tbaa !6
  store i32 %2017, i32 addrspace(3)* %1885, align 4, !tbaa !6
  br label %2018

2018:                                             ; preds = %1985, %1948
  %2019 = phi i32 [ %2014, %1985 ], [ %1952, %1948 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2020 = load i32, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2021 = load i32, i32 addrspace(3)* %1919, align 4, !tbaa !6
  %2022 = add i32 %2020, 2
  %2023 = add i32 %2022, %2021
  %2024 = sdiv i32 %2023, -4
  %2025 = load i32, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2026 = add i32 %2024, %2025
  store i32 %2026, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2027 = load i32, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2028 = load i32, i32 addrspace(3)* %1925, align 4, !tbaa !6
  %2029 = add i32 %2027, 2
  %2030 = add i32 %2029, %2028
  %2031 = sdiv i32 %2030, -4
  %2032 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2033 = add i32 %2031, %2032
  store i32 %2033, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2034 = load i32, i32 addrspace(3)* %1929, align 4, !tbaa !6
  %2035 = load i32, i32 addrspace(3)* %1931, align 4, !tbaa !6
  %2036 = add i32 %2034, 2
  %2037 = add i32 %2036, %2035
  %2038 = sdiv i32 %2037, -4
  %2039 = load i32, i32 addrspace(3)* %1933, align 4, !tbaa !6
  %2040 = add i32 %2038, %2039
  store i32 %2040, i32 addrspace(3)* %1933, align 4, !tbaa !6
  %2041 = load i32, i32 addrspace(3)* %1935, align 4, !tbaa !6
  %2042 = load i32, i32 addrspace(3)* %1937, align 4, !tbaa !6
  %2043 = add i32 %2041, 2
  %2044 = add i32 %2043, %2042
  %2045 = sdiv i32 %2044, -4
  %2046 = load i32, i32 addrspace(3)* %1939, align 4, !tbaa !6
  %2047 = add i32 %2045, %2046
  store i32 %2047, i32 addrspace(3)* %1939, align 4, !tbaa !6
  br i1 %1886, label %2048, label %2056

2048:                                             ; preds = %2018
  %2049 = load i32, i32 addrspace(3)* %1888, align 4, !tbaa !6
  %2050 = load i32, i32 addrspace(3)* %1890, align 4, !tbaa !6
  %2051 = add i32 %2049, 2
  %2052 = add i32 %2051, %2050
  %2053 = sdiv i32 %2052, -4
  %2054 = load i32, i32 addrspace(3)* %1892, align 4, !tbaa !6
  %2055 = add i32 %2053, %2054
  store i32 %2055, i32 addrspace(3)* %1892, align 4, !tbaa !6
  br label %2056

2056:                                             ; preds = %2048, %2018
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2057 = load i32, i32 addrspace(3)* %1941, align 4, !tbaa !6
  %2058 = load i32, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2059 = add nsw i32 %2058, %2057
  %2060 = sdiv i32 %2059, 2
  %2061 = load i32, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2062 = add nsw i32 %2060, %2061
  store i32 %2062, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2063 = load i32, i32 addrspace(3)* %1943, align 4, !tbaa !6
  %2064 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2065 = add nsw i32 %2064, %2063
  %2066 = sdiv i32 %2065, 2
  %2067 = load i32, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2068 = add nsw i32 %2066, %2067
  store i32 %2068, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2069 = load i32, i32 addrspace(3)* %1945, align 4, !tbaa !6
  %2070 = load i32, i32 addrspace(3)* %1933, align 4, !tbaa !6
  %2071 = add nsw i32 %2070, %2069
  %2072 = sdiv i32 %2071, 2
  %2073 = load i32, i32 addrspace(3)* %1929, align 4, !tbaa !6
  %2074 = add nsw i32 %2072, %2073
  store i32 %2074, i32 addrspace(3)* %1929, align 4, !tbaa !6
  %2075 = load i32, i32 addrspace(3)* %1947, align 4, !tbaa !6
  %2076 = load i32, i32 addrspace(3)* %1939, align 4, !tbaa !6
  %2077 = add nsw i32 %2076, %2075
  %2078 = sdiv i32 %2077, 2
  %2079 = load i32, i32 addrspace(3)* %1935, align 4, !tbaa !6
  %2080 = add nsw i32 %2078, %2079
  store i32 %2080, i32 addrspace(3)* %1935, align 4, !tbaa !6
  br i1 %1886, label %2081, label %2088

2081:                                             ; preds = %2056
  %2082 = load i32, i32 addrspace(3)* %1894, align 4, !tbaa !6
  %2083 = load i32, i32 addrspace(3)* %1892, align 4, !tbaa !6
  %2084 = add nsw i32 %2083, %2082
  %2085 = sdiv i32 %2084, 2
  %2086 = load i32, i32 addrspace(3)* %1888, align 4, !tbaa !6
  %2087 = add nsw i32 %2085, %2086
  store i32 %2087, i32 addrspace(3)* %1888, align 4, !tbaa !6
  br label %2088

2088:                                             ; preds = %2081, %2056
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2089 = load i32, i32 addrspace(3)* %1896, align 4, !tbaa !6
  %2090 = load i32, i32 addrspace(3)* %1898, align 4, !tbaa !6
  %2091 = load i32, i32 addrspace(3)* %1900, align 4, !tbaa !6
  %2092 = load i32, i32 addrspace(3)* %1901, align 4, !tbaa !6
  %2093 = load i32, i32 addrspace(3)* %1903, align 4, !tbaa !6
  %2094 = add i32 %2093, 2
  %2095 = add i32 %2094, %2092
  %2096 = sdiv i32 %2095, -4
  %2097 = load i32, i32 addrspace(3)* %1905, align 4, !tbaa !6
  %2098 = add i32 %2096, %2097
  %2099 = load i32, i32 addrspace(3)* %1907, align 4, !tbaa !6
  %2100 = add i32 %2099, %2094
  %2101 = sdiv i32 %2100, -4
  %2102 = load i32, i32 addrspace(3)* %1909, align 4, !tbaa !6
  %2103 = add i32 %2101, %2102
  store i32 %2103, i32 addrspace(3)* %1909, align 4, !tbaa !6
  %2104 = load i32, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2105 = add i32 %2099, 2
  %2106 = add i32 %2105, %2104
  %2107 = sdiv i32 %2106, -4
  %2108 = load i32, i32 addrspace(3)* %1913, align 4, !tbaa !6
  %2109 = add i32 %2107, %2108
  store i32 %2109, i32 addrspace(3)* %1913, align 4, !tbaa !6
  %2110 = add i32 %2089, 2
  %2111 = add i32 %2104, %2110
  %2112 = sdiv i32 %2111, -4
  %2113 = load i32, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2114 = add i32 %2113, %2112
  store i32 %2114, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2115 = add i32 %2091, %2110
  %2116 = sdiv i32 %2115, -4
  %2117 = add i32 %2116, %2090
  store i32 %2117, i32 addrspace(3)* %1898, align 4, !tbaa !6
  %2118 = add nsw i32 %2103, %2098
  %2119 = sdiv i32 %2118, 2
  %2120 = add nsw i32 %2119, %2093
  %2121 = add nsw i32 %2109, %2103
  %2122 = sdiv i32 %2121, 2
  %2123 = add nsw i32 %2122, %2099
  store i32 %2123, i32 addrspace(3)* %1907, align 4, !tbaa !6
  %2124 = add nsw i32 %2114, %2109
  %2125 = sdiv i32 %2124, 2
  %2126 = add nsw i32 %2125, %2104
  store i32 %2126, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2127 = add nsw i32 %2114, %2117
  %2128 = sdiv i32 %2127, 2
  %2129 = add nsw i32 %2128, %2089
  store i32 %2129, i32 addrspace(3)* %1896, align 4, !tbaa !6
  %2130 = sext i32 %1951 to i64
  %2131 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2130
  store i32 %2098, i32 addrspace(1)* %2131, align 4, !tbaa !6
  %2132 = add nsw i32 %1951, %1842
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2133
  store i32 %2120, i32 addrspace(1)* %2134, align 4, !tbaa !6
  %2135 = add nsw i32 %2132, %1842
  %2136 = sext i32 %2135 to i64
  %2137 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2136
  store i32 %2103, i32 addrspace(1)* %2137, align 4, !tbaa !6
  %2138 = add nsw i32 %2135, %1842
  %2139 = sext i32 %2138 to i64
  %2140 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2139
  store i32 %2123, i32 addrspace(1)* %2140, align 4, !tbaa !6
  %2141 = add nsw i32 %2138, %1842
  %2142 = sext i32 %2141 to i64
  %2143 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2142
  store i32 %2109, i32 addrspace(1)* %2143, align 4, !tbaa !6
  %2144 = add nsw i32 %2141, %1842
  %2145 = sext i32 %2144 to i64
  %2146 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2145
  store i32 %2126, i32 addrspace(1)* %2146, align 4, !tbaa !6
  %2147 = add nsw i32 %2144, %1842
  %2148 = sext i32 %2147 to i64
  %2149 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2148
  store i32 %2114, i32 addrspace(1)* %2149, align 4, !tbaa !6
  %2150 = add nsw i32 %2147, %1842
  %2151 = sext i32 %2150 to i64
  %2152 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2151
  store i32 %2129, i32 addrspace(1)* %2152, align 4, !tbaa !6
  %2153 = add nsw i32 %2150, %1842
  store i32 %2089, i32 addrspace(3)* %1901, align 4, !tbaa !6
  store i32 %2090, i32 addrspace(3)* %1905, align 4, !tbaa !6
  store i32 %2091, i32 addrspace(3)* %1903, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2154 = add nuw nsw i32 %1949, 1
  %2155 = icmp eq i32 %2154, %4
  br i1 %2155, label %2156, label %1948, !llvm.loop !14

2156:                                             ; preds = %872, %1534, %2088, %420, %1192, %1839
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12rdwt53KernelILi128ELi8EEEvPKiPiiii(i32 addrspace(1)* readonly %0, i32 addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #2 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = shl i32 %7, 3
  %9 = add i32 %8, 8
  %10 = mul i32 %9, %4
  %11 = or i32 %10, 1
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %874, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = shl i32 %6, 7
  br label %187

19:                                               ; preds = %13
  %20 = icmp eq i32 %15, 2
  %21 = select i1 %20, i32 -3, i32 128
  %22 = add nsw i32 %21, %15
  %23 = shl i32 %6, 7
  %24 = add i32 %22, %23
  %25 = sub i32 0, %24
  %26 = trunc i32 %22 to i16
  %27 = add nsw i16 %26, 2
  %28 = sdiv i16 %27, 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %22, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 728
  %33 = add nuw nsw i32 %32, %29
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %19
  %36 = icmp slt i32 %24, %2
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = shl nsw i32 %2, 1
  %39 = sub i32 -2, %24
  %40 = add i32 %39, %38
  br label %43

41:                                               ; preds = %35
  %42 = icmp slt i32 %24, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %40, %37 ], [ %25, %41 ]
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %44, %43 ], [ %24, %41 ]
  %47 = sdiv i32 %46, 2
  %48 = and i32 %46, 1
  %49 = icmp eq i32 %48, 0
  %50 = sdiv i32 %2, 2
  %51 = and i32 %2, 1
  %52 = add nsw i32 %50, %51
  %53 = sdiv i32 %3, 2
  %54 = and i32 %3, 1
  %55 = add nsw i32 %53, %54
  br i1 %49, label %61, label %56

56:                                               ; preds = %45
  %57 = mul nsw i32 %55, %52
  %58 = add nsw i32 %47, %57
  %59 = mul nsw i32 %3, %2
  %60 = sdiv i32 %59, 2
  br label %63

61:                                               ; preds = %45
  %62 = mul nsw i32 %55, %2
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ %60, %56 ]
  %65 = phi i32 [ %47, %61 ], [ %58, %56 ]
  %66 = phi i32 [ %52, %61 ], [ %50, %56 ]
  %67 = sub nsw i32 %66, %64
  %68 = mul nsw i32 %66, %53
  %69 = icmp eq i32 %54, 0
  %70 = select i1 %69, i32 0, i32 %64
  %71 = add i32 %70, %65
  %72 = add i32 %71, %68
  %73 = sdiv i32 %14, 2
  %74 = mul nsw i32 %66, %73
  %75 = add i32 %74, %65
  %76 = icmp eq i32 %75, %72
  %77 = sub i32 0, %64
  %78 = sub i32 0, %67
  %79 = select i1 %76, i32 %66, i32 0
  %80 = sub i32 %75, %79
  %81 = select i1 %76, i32 %78, i32 %64
  %82 = select i1 %76, i32 %77, i32 %67
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %83
  %85 = load i32, i32 addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = add nuw nsw i32 %33, 66
  %87 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %86
  store i32 %85, i32 addrspace(3)* %87, align 4, !tbaa !6
  %88 = add nsw i32 %80, %81
  %89 = icmp eq i32 %88, %72
  %90 = sub i32 0, %81
  %91 = sub i32 0, %82
  %92 = sub i32 %80, %82
  %93 = select i1 %89, i32 %92, i32 %88
  %94 = select i1 %89, i32 %91, i32 %81
  %95 = select i1 %89, i32 %90, i32 %82
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %96
  %98 = load i32, i32 addrspace(1)* %97, align 4, !tbaa !6, !amdgpu.noclobber !10
  %99 = add nuw nsw i32 %33, 132
  %100 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %99
  store i32 %98, i32 addrspace(3)* %100, align 4, !tbaa !6
  br label %179

101:                                              ; preds = %19
  %102 = add nsw i32 %14, -1
  %103 = icmp slt i32 %24, %2
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = shl nsw i32 %2, 1
  %106 = sub i32 -2, %24
  %107 = add i32 %106, %105
  br label %110

108:                                              ; preds = %101
  %109 = icmp slt i32 %24, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %108, %104
  %111 = phi i32 [ %107, %104 ], [ %25, %108 ]
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %111, %110 ], [ %24, %108 ]
  %114 = sdiv i32 %113, 2
  %115 = and i32 %113, 1
  %116 = icmp eq i32 %115, 0
  %117 = sdiv i32 %2, 2
  %118 = and i32 %2, 1
  %119 = add nsw i32 %117, %118
  %120 = sdiv i32 %3, 2
  %121 = and i32 %3, 1
  %122 = add nsw i32 %120, %121
  br i1 %116, label %128, label %123

123:                                              ; preds = %112
  %124 = mul nsw i32 %122, %119
  %125 = add nsw i32 %114, %124
  %126 = mul nsw i32 %3, %2
  %127 = sdiv i32 %126, 2
  br label %130

128:                                              ; preds = %112
  %129 = mul nsw i32 %122, %2
  br label %130

130:                                              ; preds = %128, %123
  %131 = phi i32 [ %129, %128 ], [ %127, %123 ]
  %132 = phi i32 [ %114, %128 ], [ %125, %123 ]
  %133 = phi i32 [ %119, %128 ], [ %117, %123 ]
  %134 = sub nsw i32 %133, %131
  %135 = mul nsw i32 %133, %120
  %136 = icmp eq i32 %121, 0
  %137 = select i1 %136, i32 0, i32 %131
  %138 = add i32 %137, %132
  %139 = add i32 %138, %135
  %140 = sdiv i32 %102, 2
  %141 = mul nsw i32 %133, %140
  %142 = add i32 %132, %131
  %143 = add i32 %142, %141
  %144 = icmp eq i32 %143, %139
  %145 = sub i32 0, %134
  %146 = sub i32 0, %131
  %147 = select i1 %144, i32 %133, i32 0
  %148 = sub i32 %143, %147
  %149 = select i1 %144, i32 %145, i32 %131
  %150 = select i1 %144, i32 %146, i32 %134
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %151
  %153 = load i32, i32 addrspace(1)* %152, align 4, !tbaa !6, !amdgpu.noclobber !10
  %154 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %33
  store i32 %153, i32 addrspace(3)* %154, align 4, !tbaa !6
  %155 = add nsw i32 %148, %150
  %156 = icmp eq i32 %155, %139
  %157 = sub i32 0, %150
  %158 = sub i32 0, %149
  %159 = sub i32 %148, %149
  %160 = select i1 %156, i32 %159, i32 %155
  %161 = select i1 %156, i32 %157, i32 %149
  %162 = select i1 %156, i32 %158, i32 %150
  %163 = sext i32 %160 to i64
  %164 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %163
  %165 = load i32, i32 addrspace(1)* %164, align 4, !tbaa !6, !amdgpu.noclobber !10
  %166 = add nuw nsw i32 %33, 66
  %167 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %166
  store i32 %165, i32 addrspace(3)* %167, align 4, !tbaa !6
  %168 = add nsw i32 %160, %161
  %169 = icmp eq i32 %168, %139
  %170 = sub i32 0, %161
  %171 = sub i32 0, %162
  %172 = select i1 %169, i32 %148, i32 %168
  %173 = select i1 %169, i32 %171, i32 %161
  %174 = select i1 %169, i32 %170, i32 %162
  %175 = sext i32 %172 to i64
  %176 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %175
  %177 = load i32, i32 addrspace(1)* %176, align 4, !tbaa !6, !amdgpu.noclobber !10
  %178 = add nuw nsw i32 %33, 132
  br label %179

179:                                              ; preds = %130, %63
  %180 = phi i32 [ %93, %63 ], [ %172, %130 ]
  %181 = phi i32 [ %94, %63 ], [ %173, %130 ]
  %182 = phi i32 [ %95, %63 ], [ %174, %130 ]
  %183 = phi i32 [ %72, %63 ], [ %139, %130 ]
  %184 = phi i32 [ %33, %63 ], [ %178, %130 ]
  %185 = phi i32 [ %98, %63 ], [ %177, %130 ]
  %186 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %184
  store i32 %185, i32 addrspace(3)* %186, align 4, !tbaa !6
  br label %187

187:                                              ; preds = %179, %17
  %188 = phi i32 [ %18, %17 ], [ %23, %179 ]
  %189 = phi i32 [ 0, %17 ], [ %33, %179 ]
  %190 = phi i32 [ 0, %17 ], [ %180, %179 ]
  %191 = phi i32 [ 0, %17 ], [ %181, %179 ]
  %192 = phi i32 [ 0, %17 ], [ %182, %179 ]
  %193 = phi i32 [ 0, %17 ], [ %183, %179 ]
  %194 = shl nuw nsw i32 %15, 1
  %195 = lshr i32 %15, 6
  %196 = mul nsw i32 %195, -127
  %197 = add nsw i32 %196, %194
  %198 = add i32 %188, %197
  %199 = sub i32 0, %198
  %200 = trunc i32 %197 to i16
  %201 = add nsw i16 %200, 2
  %202 = sdiv i16 %201, 2
  %203 = sext i16 %202 to i32
  %204 = and i32 %197, 1
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %205, i32 0, i32 728
  %207 = add nsw i32 %206, %203
  %208 = icmp eq i32 %7, 0
  br i1 %208, label %209, label %275

209:                                              ; preds = %187
  %210 = icmp slt i32 %198, %2
  br i1 %210, label %215, label %211

211:                                              ; preds = %209
  %212 = shl nsw i32 %2, 1
  %213 = sub i32 %212, %198
  %214 = add i32 %213, -2
  br label %217

215:                                              ; preds = %209
  %216 = icmp slt i32 %198, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %215, %211
  %218 = phi i32 [ %214, %211 ], [ %199, %215 ]
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %218, %217 ], [ %198, %215 ]
  %221 = sdiv i32 %220, 2
  %222 = and i32 %220, 1
  %223 = icmp eq i32 %222, 0
  %224 = sdiv i32 %2, 2
  %225 = and i32 %2, 1
  %226 = add nsw i32 %224, %225
  %227 = sdiv i32 %3, 2
  %228 = and i32 %3, 1
  %229 = add nsw i32 %227, %228
  br i1 %223, label %235, label %230

230:                                              ; preds = %219
  %231 = mul nsw i32 %229, %226
  %232 = add nsw i32 %221, %231
  %233 = mul nsw i32 %3, %2
  %234 = sdiv i32 %233, 2
  br label %237

235:                                              ; preds = %219
  %236 = mul nsw i32 %229, %2
  br label %237

237:                                              ; preds = %235, %230
  %238 = phi i32 [ %236, %235 ], [ %234, %230 ]
  %239 = phi i32 [ %221, %235 ], [ %232, %230 ]
  %240 = phi i32 [ %226, %235 ], [ %224, %230 ]
  %241 = sub nsw i32 %240, %238
  %242 = mul nsw i32 %240, %227
  %243 = icmp eq i32 %228, 0
  %244 = select i1 %243, i32 0, i32 %238
  %245 = add i32 %244, %239
  %246 = add i32 %245, %242
  %247 = sdiv i32 %14, 2
  %248 = mul nsw i32 %240, %247
  %249 = add i32 %248, %239
  %250 = icmp eq i32 %249, %246
  %251 = sub i32 0, %238
  %252 = sub i32 0, %241
  %253 = select i1 %250, i32 %251, i32 %241
  %254 = select i1 %250, i32 %252, i32 %238
  %255 = select i1 %250, i32 %240, i32 0
  %256 = sub i32 %249, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %257
  %259 = load i32, i32 addrspace(1)* %258, align 4, !tbaa !6, !amdgpu.noclobber !10
  %260 = add nsw i32 %207, 66
  %261 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %260
  store i32 %259, i32 addrspace(3)* %261, align 4, !tbaa !6
  %262 = add nsw i32 %256, %254
  %263 = icmp eq i32 %262, %246
  %264 = sub i32 0, %254
  %265 = sub i32 0, %253
  %266 = sub i32 %256, %253
  %267 = select i1 %263, i32 %264, i32 %253
  %268 = select i1 %263, i32 %265, i32 %254
  %269 = select i1 %263, i32 %266, i32 %262
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %270
  %272 = load i32, i32 addrspace(1)* %271, align 4, !tbaa !6, !amdgpu.noclobber !10
  %273 = add nsw i32 %207, 132
  %274 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %273
  store i32 %272, i32 addrspace(3)* %274, align 4, !tbaa !6
  br label %353

275:                                              ; preds = %187
  %276 = add nsw i32 %14, -1
  %277 = icmp slt i32 %198, %2
  br i1 %277, label %282, label %278

278:                                              ; preds = %275
  %279 = shl nsw i32 %2, 1
  %280 = sub i32 %279, %198
  %281 = add i32 %280, -2
  br label %284

282:                                              ; preds = %275
  %283 = icmp slt i32 %198, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %282, %278
  %285 = phi i32 [ %281, %278 ], [ %199, %282 ]
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %285, %284 ], [ %198, %282 ]
  %288 = sdiv i32 %287, 2
  %289 = and i32 %287, 1
  %290 = icmp eq i32 %289, 0
  %291 = sdiv i32 %2, 2
  %292 = and i32 %2, 1
  %293 = add nsw i32 %291, %292
  %294 = sdiv i32 %3, 2
  %295 = and i32 %3, 1
  %296 = add nsw i32 %294, %295
  br i1 %290, label %302, label %297

297:                                              ; preds = %286
  %298 = mul nsw i32 %296, %293
  %299 = add nsw i32 %288, %298
  %300 = mul nsw i32 %3, %2
  %301 = sdiv i32 %300, 2
  br label %304

302:                                              ; preds = %286
  %303 = mul nsw i32 %296, %2
  br label %304

304:                                              ; preds = %302, %297
  %305 = phi i32 [ %303, %302 ], [ %301, %297 ]
  %306 = phi i32 [ %288, %302 ], [ %299, %297 ]
  %307 = phi i32 [ %293, %302 ], [ %291, %297 ]
  %308 = sub nsw i32 %307, %305
  %309 = mul nsw i32 %307, %294
  %310 = icmp eq i32 %295, 0
  %311 = select i1 %310, i32 0, i32 %305
  %312 = add i32 %311, %306
  %313 = add i32 %312, %309
  %314 = sdiv i32 %276, 2
  %315 = mul nsw i32 %307, %314
  %316 = add i32 %306, %305
  %317 = add i32 %316, %315
  %318 = icmp eq i32 %317, %313
  %319 = sub i32 0, %308
  %320 = sub i32 0, %305
  %321 = select i1 %318, i32 %320, i32 %308
  %322 = select i1 %318, i32 %319, i32 %305
  %323 = select i1 %318, i32 %307, i32 0
  %324 = sub i32 %317, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %325
  %327 = load i32, i32 addrspace(1)* %326, align 4, !tbaa !6, !amdgpu.noclobber !10
  %328 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %207
  store i32 %327, i32 addrspace(3)* %328, align 4, !tbaa !6
  %329 = add nsw i32 %324, %321
  %330 = icmp eq i32 %329, %313
  %331 = sub i32 0, %321
  %332 = sub i32 0, %322
  %333 = sub i32 %324, %322
  %334 = select i1 %330, i32 %332, i32 %321
  %335 = select i1 %330, i32 %331, i32 %322
  %336 = select i1 %330, i32 %333, i32 %329
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %337
  %339 = load i32, i32 addrspace(1)* %338, align 4, !tbaa !6, !amdgpu.noclobber !10
  %340 = add nsw i32 %207, 66
  %341 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %340
  store i32 %339, i32 addrspace(3)* %341, align 4, !tbaa !6
  %342 = add nsw i32 %336, %335
  %343 = icmp eq i32 %342, %313
  %344 = sub i32 0, %335
  %345 = sub i32 0, %334
  %346 = select i1 %343, i32 %344, i32 %334
  %347 = select i1 %343, i32 %345, i32 %335
  %348 = select i1 %343, i32 %324, i32 %342
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %349
  %351 = load i32, i32 addrspace(1)* %350, align 4, !tbaa !6, !amdgpu.noclobber !10
  %352 = add nsw i32 %207, 132
  br label %353

353:                                              ; preds = %304, %237
  %354 = phi i32 [ %267, %237 ], [ %346, %304 ]
  %355 = phi i32 [ %246, %237 ], [ %313, %304 ]
  %356 = phi i32 [ %268, %237 ], [ %347, %304 ]
  %357 = phi i32 [ %269, %237 ], [ %348, %304 ]
  %358 = phi i32 [ %207, %237 ], [ %352, %304 ]
  %359 = phi i32 [ %272, %237 ], [ %351, %304 ]
  %360 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %358
  store i32 %359, i32 addrspace(3)* %360, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %361 = add nuw nsw i32 %15, 728
  %362 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %361
  %363 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %364 = add nuw nsw i32 %15, 729
  %365 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %364
  %366 = load i32, i32 addrspace(3)* %365, align 4, !tbaa !6
  %367 = add nuw nsw i32 %15, 1
  %368 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %367
  %369 = add i32 %363, 2
  %370 = add i32 %369, %366
  %371 = sdiv i32 %370, -4
  %372 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %373 = add i32 %371, %372
  store i32 %373, i32 addrspace(3)* %368, align 4, !tbaa !6
  %374 = icmp ult i32 %15, 69
  br i1 %374, label %375, label %389

375:                                              ; preds = %353
  %376 = add nuw nsw i32 %15, 856
  %377 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %376
  %378 = load i32, i32 addrspace(3)* %377, align 4, !tbaa !6
  %379 = add nuw nsw i32 %15, 857
  %380 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %379
  %381 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %382 = add nuw nsw i32 %15, 129
  %383 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %382
  %384 = add i32 %378, 2
  %385 = add i32 %384, %381
  %386 = sdiv i32 %385, -4
  %387 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !6
  %388 = add i32 %386, %387
  store i32 %388, i32 addrspace(3)* %383, align 4, !tbaa !6
  br label %389

389:                                              ; preds = %375, %353
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %390 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %15
  %391 = load i32, i32 addrspace(3)* %390, align 4, !tbaa !6
  %392 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %393 = add nsw i32 %392, %391
  %394 = sdiv i32 %393, 2
  %395 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %396 = add nsw i32 %394, %395
  store i32 %396, i32 addrspace(3)* %362, align 4, !tbaa !6
  br i1 %374, label %397, label %410

397:                                              ; preds = %389
  %398 = add nuw nsw i32 %15, 128
  %399 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %398
  %400 = load i32, i32 addrspace(3)* %399, align 4, !tbaa !6
  %401 = add nuw nsw i32 %15, 129
  %402 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %401
  %403 = load i32, i32 addrspace(3)* %402, align 4, !tbaa !6
  %404 = add nuw nsw i32 %15, 856
  %405 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %404
  %406 = add nsw i32 %403, %400
  %407 = sdiv i32 %406, 2
  %408 = load i32, i32 addrspace(3)* %405, align 4, !tbaa !6
  %409 = add nsw i32 %407, %408
  store i32 %409, i32 addrspace(3)* %405, align 4, !tbaa !6
  br label %410

410:                                              ; preds = %397, %389
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %411 = add i32 %188, %15
  %412 = icmp slt i32 %411, %2
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = mul nsw i32 %3, %2
  %415 = add nsw i32 %411, %414
  %416 = mul nsw i32 %14, %2
  %417 = add nsw i32 %411, %416
  br label %418

418:                                              ; preds = %413, %410
  %419 = phi i32 [ %415, %413 ], [ 0, %410 ]
  %420 = phi i32 [ %2, %413 ], [ 0, %410 ]
  %421 = phi i32 [ %417, %413 ], [ 0, %410 ]
  %422 = add nuw nsw i32 %15, 2
  %423 = lshr i32 %422, 1
  %424 = and i32 %15, 1
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, i32 0, i32 728
  %427 = add nuw nsw i32 %426, %423
  %428 = icmp sgt i32 %4, 0
  br i1 %428, label %429, label %2150

429:                                              ; preds = %418
  %430 = add nsw i32 %207, 198
  %431 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %430
  %432 = add nsw i32 %207, 264
  %433 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %432
  %434 = add nsw i32 %207, 330
  %435 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %434
  %436 = add nsw i32 %207, 396
  %437 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %436
  %438 = add nsw i32 %207, 462
  %439 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %438
  %440 = add nsw i32 %207, 528
  %441 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %440
  %442 = add nsw i32 %207, 594
  %443 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %442
  %444 = add nsw i32 %207, 660
  %445 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %444
  %446 = add nuw nsw i32 %189, 198
  %447 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %446
  %448 = add nuw nsw i32 %189, 264
  %449 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %448
  %450 = add nuw nsw i32 %189, 330
  %451 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %450
  %452 = add nuw nsw i32 %189, 396
  %453 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %452
  %454 = add nuw nsw i32 %189, 462
  %455 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %454
  %456 = add nuw nsw i32 %189, 528
  %457 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %456
  %458 = add nuw nsw i32 %189, 594
  %459 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %458
  %460 = add nuw nsw i32 %189, 660
  %461 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %460
  %462 = icmp ult i32 %15, 15
  %463 = add nuw nsw i32 %15, 1438
  %464 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %463
  %465 = add nuw nsw i32 %15, 1439
  %466 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %465
  %467 = add nuw nsw i32 %15, 711
  %468 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %467
  %469 = add nuw nsw i32 %15, 710
  %470 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %469
  %471 = add nuw nsw i32 %427, 528
  %472 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %471
  %473 = add nuw nsw i32 %427, 594
  %474 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %473
  %475 = add nuw nsw i32 %427, 660
  %476 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %475
  %477 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %427
  %478 = add nuw nsw i32 %427, 132
  %479 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %478
  %480 = add nuw nsw i32 %427, 66
  %481 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %480
  %482 = add nuw nsw i32 %427, 264
  %483 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %482
  %484 = add nuw nsw i32 %427, 198
  %485 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %484
  %486 = add nuw nsw i32 %427, 396
  %487 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %486
  %488 = add nuw nsw i32 %427, 330
  %489 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %488
  %490 = add nuw nsw i32 %427, 462
  %491 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %490
  %492 = add nuw nsw i32 %15, 926
  %493 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %492
  %494 = add nuw nsw i32 %15, 927
  %495 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %494
  %496 = add nuw nsw i32 %15, 199
  %497 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %496
  %498 = add nuw nsw i32 %15, 1054
  %499 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %498
  %500 = add nuw nsw i32 %15, 1055
  %501 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %500
  %502 = add nuw nsw i32 %15, 327
  %503 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %502
  %504 = add nuw nsw i32 %15, 1182
  %505 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %504
  %506 = add nuw nsw i32 %15, 1183
  %507 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %506
  %508 = add nuw nsw i32 %15, 455
  %509 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %508
  %510 = add nuw nsw i32 %15, 1310
  %511 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %510
  %512 = add nuw nsw i32 %15, 1311
  %513 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %512
  %514 = add nuw nsw i32 %15, 583
  %515 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %514
  %516 = add nuw nsw i32 %15, 198
  %517 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %516
  %518 = add nuw nsw i32 %15, 326
  %519 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %518
  %520 = add nuw nsw i32 %15, 454
  %521 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %520
  %522 = add nuw nsw i32 %15, 582
  %523 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %522
  br label %524

524:                                              ; preds = %870, %429
  %525 = phi i32 [ 0, %429 ], [ %872, %870 ]
  %526 = phi i32 [ %357, %429 ], [ %613, %870 ]
  %527 = phi i32 [ %356, %429 ], [ %612, %870 ]
  %528 = phi i32 [ %421, %429 ], [ %871, %870 ]
  %529 = phi i32 [ %192, %429 ], [ %705, %870 ]
  %530 = phi i32 [ %191, %429 ], [ %704, %870 ]
  %531 = phi i32 [ %190, %429 ], [ %703, %870 ]
  %532 = phi i32 [ %354, %429 ], [ %611, %870 ]
  %533 = add nsw i32 %532, %526
  %534 = icmp eq i32 %533, %355
  %535 = sub i32 0, %532
  %536 = sub i32 0, %527
  %537 = sub i32 %526, %527
  %538 = select i1 %534, i32 %536, i32 %532
  %539 = select i1 %534, i32 %535, i32 %527
  %540 = select i1 %534, i32 %537, i32 %533
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %541
  %543 = load i32, i32 addrspace(1)* %542, align 4, !tbaa !6
  store i32 %543, i32 addrspace(3)* %431, align 4, !tbaa !6
  %544 = add nsw i32 %540, %539
  %545 = icmp eq i32 %544, %355
  %546 = sub i32 0, %539
  %547 = sub i32 0, %538
  %548 = select i1 %545, i32 %546, i32 %538
  %549 = select i1 %545, i32 %547, i32 %539
  %550 = select i1 %545, i32 %526, i32 %544
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %551
  %553 = load i32, i32 addrspace(1)* %552, align 4, !tbaa !6
  store i32 %553, i32 addrspace(3)* %433, align 4, !tbaa !6
  %554 = add nsw i32 %550, %548
  %555 = icmp eq i32 %554, %355
  %556 = sub i32 0, %548
  %557 = sub i32 0, %549
  %558 = sub i32 %550, %549
  %559 = select i1 %555, i32 %557, i32 %548
  %560 = select i1 %555, i32 %556, i32 %549
  %561 = select i1 %555, i32 %558, i32 %554
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %562
  %564 = load i32, i32 addrspace(1)* %563, align 4, !tbaa !6
  store i32 %564, i32 addrspace(3)* %435, align 4, !tbaa !6
  %565 = add nsw i32 %561, %560
  %566 = icmp eq i32 %565, %355
  %567 = sub i32 0, %560
  %568 = sub i32 0, %559
  %569 = select i1 %566, i32 %567, i32 %559
  %570 = select i1 %566, i32 %568, i32 %560
  %571 = select i1 %566, i32 %550, i32 %565
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %572
  %574 = load i32, i32 addrspace(1)* %573, align 4, !tbaa !6
  store i32 %574, i32 addrspace(3)* %437, align 4, !tbaa !6
  %575 = add nsw i32 %571, %569
  %576 = icmp eq i32 %575, %355
  %577 = sub i32 0, %569
  %578 = sub i32 0, %570
  %579 = sub i32 %571, %570
  %580 = select i1 %576, i32 %578, i32 %569
  %581 = select i1 %576, i32 %577, i32 %570
  %582 = select i1 %576, i32 %579, i32 %575
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %583
  %585 = load i32, i32 addrspace(1)* %584, align 4, !tbaa !6
  store i32 %585, i32 addrspace(3)* %439, align 4, !tbaa !6
  %586 = add nsw i32 %582, %581
  %587 = icmp eq i32 %586, %355
  %588 = sub i32 0, %581
  %589 = sub i32 0, %580
  %590 = select i1 %587, i32 %588, i32 %580
  %591 = select i1 %587, i32 %589, i32 %581
  %592 = select i1 %587, i32 %571, i32 %586
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %593
  %595 = load i32, i32 addrspace(1)* %594, align 4, !tbaa !6
  store i32 %595, i32 addrspace(3)* %441, align 4, !tbaa !6
  %596 = add nsw i32 %592, %590
  %597 = icmp eq i32 %596, %355
  %598 = sub i32 0, %590
  %599 = sub i32 0, %591
  %600 = sub i32 %592, %591
  %601 = select i1 %597, i32 %599, i32 %590
  %602 = select i1 %597, i32 %598, i32 %591
  %603 = select i1 %597, i32 %600, i32 %596
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %604
  %606 = load i32, i32 addrspace(1)* %605, align 4, !tbaa !6
  store i32 %606, i32 addrspace(3)* %443, align 4, !tbaa !6
  %607 = add nsw i32 %603, %602
  %608 = icmp eq i32 %607, %355
  %609 = sub i32 0, %602
  %610 = sub i32 0, %601
  %611 = select i1 %608, i32 %609, i32 %601
  %612 = select i1 %608, i32 %610, i32 %602
  %613 = select i1 %608, i32 %592, i32 %607
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %614
  %616 = load i32, i32 addrspace(1)* %615, align 4, !tbaa !6
  store i32 %616, i32 addrspace(3)* %445, align 4, !tbaa !6
  br i1 %16, label %617, label %702

617:                                              ; preds = %524
  %618 = add nsw i32 %531, %529
  %619 = icmp eq i32 %618, %193
  %620 = sub i32 0, %529
  %621 = sub i32 0, %530
  %622 = sub i32 %531, %530
  %623 = select i1 %619, i32 %622, i32 %618
  %624 = select i1 %619, i32 %620, i32 %530
  %625 = select i1 %619, i32 %621, i32 %529
  %626 = sext i32 %623 to i64
  %627 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %626
  %628 = load i32, i32 addrspace(1)* %627, align 4, !tbaa !6
  store i32 %628, i32 addrspace(3)* %447, align 4, !tbaa !6
  %629 = add nsw i32 %623, %624
  %630 = icmp eq i32 %629, %193
  %631 = sub i32 0, %624
  %632 = sub i32 0, %625
  %633 = select i1 %630, i32 %531, i32 %629
  %634 = select i1 %630, i32 %632, i32 %624
  %635 = select i1 %630, i32 %631, i32 %625
  %636 = sext i32 %633 to i64
  %637 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %636
  %638 = load i32, i32 addrspace(1)* %637, align 4, !tbaa !6
  store i32 %638, i32 addrspace(3)* %449, align 4, !tbaa !6
  %639 = add nsw i32 %633, %635
  %640 = icmp eq i32 %639, %193
  %641 = sub i32 0, %635
  %642 = sub i32 0, %634
  %643 = sub i32 %633, %634
  %644 = select i1 %640, i32 %643, i32 %639
  %645 = select i1 %640, i32 %641, i32 %634
  %646 = select i1 %640, i32 %642, i32 %635
  %647 = sext i32 %644 to i64
  %648 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %647
  %649 = load i32, i32 addrspace(1)* %648, align 4, !tbaa !6
  store i32 %649, i32 addrspace(3)* %451, align 4, !tbaa !6
  %650 = add nsw i32 %644, %645
  %651 = icmp eq i32 %650, %193
  %652 = sub i32 0, %645
  %653 = sub i32 0, %646
  %654 = select i1 %651, i32 %633, i32 %650
  %655 = select i1 %651, i32 %653, i32 %645
  %656 = select i1 %651, i32 %652, i32 %646
  %657 = sext i32 %654 to i64
  %658 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %657
  %659 = load i32, i32 addrspace(1)* %658, align 4, !tbaa !6
  store i32 %659, i32 addrspace(3)* %453, align 4, !tbaa !6
  %660 = add nsw i32 %654, %656
  %661 = icmp eq i32 %660, %193
  %662 = sub i32 0, %656
  %663 = sub i32 0, %655
  %664 = sub i32 %654, %655
  %665 = select i1 %661, i32 %664, i32 %660
  %666 = select i1 %661, i32 %662, i32 %655
  %667 = select i1 %661, i32 %663, i32 %656
  %668 = sext i32 %665 to i64
  %669 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %668
  %670 = load i32, i32 addrspace(1)* %669, align 4, !tbaa !6
  store i32 %670, i32 addrspace(3)* %455, align 4, !tbaa !6
  %671 = add nsw i32 %665, %666
  %672 = icmp eq i32 %671, %193
  %673 = sub i32 0, %666
  %674 = sub i32 0, %667
  %675 = select i1 %672, i32 %654, i32 %671
  %676 = select i1 %672, i32 %674, i32 %666
  %677 = select i1 %672, i32 %673, i32 %667
  %678 = sext i32 %675 to i64
  %679 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %678
  %680 = load i32, i32 addrspace(1)* %679, align 4, !tbaa !6
  store i32 %680, i32 addrspace(3)* %457, align 4, !tbaa !6
  %681 = add nsw i32 %675, %677
  %682 = icmp eq i32 %681, %193
  %683 = sub i32 0, %677
  %684 = sub i32 0, %676
  %685 = sub i32 %675, %676
  %686 = select i1 %682, i32 %685, i32 %681
  %687 = select i1 %682, i32 %683, i32 %676
  %688 = select i1 %682, i32 %684, i32 %677
  %689 = sext i32 %686 to i64
  %690 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %689
  %691 = load i32, i32 addrspace(1)* %690, align 4, !tbaa !6
  store i32 %691, i32 addrspace(3)* %459, align 4, !tbaa !6
  %692 = add nsw i32 %686, %687
  %693 = icmp eq i32 %692, %193
  %694 = sub i32 0, %687
  %695 = sub i32 0, %688
  %696 = select i1 %693, i32 %675, i32 %692
  %697 = select i1 %693, i32 %695, i32 %687
  %698 = select i1 %693, i32 %694, i32 %688
  %699 = sext i32 %696 to i64
  %700 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %699
  %701 = load i32, i32 addrspace(1)* %700, align 4, !tbaa !6
  store i32 %701, i32 addrspace(3)* %461, align 4, !tbaa !6
  br label %702

702:                                              ; preds = %617, %524
  %703 = phi i32 [ %696, %617 ], [ %531, %524 ]
  %704 = phi i32 [ %697, %617 ], [ %530, %524 ]
  %705 = phi i32 [ %698, %617 ], [ %529, %524 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %706 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !6
  %707 = load i32, i32 addrspace(3)* %495, align 4, !tbaa !6
  %708 = add i32 %706, 2
  %709 = add i32 %708, %707
  %710 = sdiv i32 %709, -4
  %711 = load i32, i32 addrspace(3)* %497, align 4, !tbaa !6
  %712 = add i32 %710, %711
  store i32 %712, i32 addrspace(3)* %497, align 4, !tbaa !6
  %713 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !6
  %714 = load i32, i32 addrspace(3)* %501, align 4, !tbaa !6
  %715 = add i32 %713, 2
  %716 = add i32 %715, %714
  %717 = sdiv i32 %716, -4
  %718 = load i32, i32 addrspace(3)* %503, align 4, !tbaa !6
  %719 = add i32 %717, %718
  store i32 %719, i32 addrspace(3)* %503, align 4, !tbaa !6
  %720 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !6
  %721 = load i32, i32 addrspace(3)* %507, align 4, !tbaa !6
  %722 = add i32 %720, 2
  %723 = add i32 %722, %721
  %724 = sdiv i32 %723, -4
  %725 = load i32, i32 addrspace(3)* %509, align 4, !tbaa !6
  %726 = add i32 %724, %725
  store i32 %726, i32 addrspace(3)* %509, align 4, !tbaa !6
  %727 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %728 = load i32, i32 addrspace(3)* %513, align 4, !tbaa !6
  %729 = add i32 %727, 2
  %730 = add i32 %729, %728
  %731 = sdiv i32 %730, -4
  %732 = load i32, i32 addrspace(3)* %515, align 4, !tbaa !6
  %733 = add i32 %731, %732
  store i32 %733, i32 addrspace(3)* %515, align 4, !tbaa !6
  br i1 %462, label %734, label %742

734:                                              ; preds = %702
  %735 = load i32, i32 addrspace(3)* %464, align 4, !tbaa !6
  %736 = load i32, i32 addrspace(3)* %466, align 4, !tbaa !6
  %737 = add i32 %735, 2
  %738 = add i32 %737, %736
  %739 = sdiv i32 %738, -4
  %740 = load i32, i32 addrspace(3)* %468, align 4, !tbaa !6
  %741 = add i32 %739, %740
  store i32 %741, i32 addrspace(3)* %468, align 4, !tbaa !6
  br label %742

742:                                              ; preds = %734, %702
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %743 = load i32, i32 addrspace(3)* %517, align 4, !tbaa !6
  %744 = load i32, i32 addrspace(3)* %497, align 4, !tbaa !6
  %745 = add nsw i32 %744, %743
  %746 = sdiv i32 %745, 2
  %747 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !6
  %748 = add nsw i32 %746, %747
  store i32 %748, i32 addrspace(3)* %493, align 4, !tbaa !6
  %749 = load i32, i32 addrspace(3)* %519, align 4, !tbaa !6
  %750 = load i32, i32 addrspace(3)* %503, align 4, !tbaa !6
  %751 = add nsw i32 %750, %749
  %752 = sdiv i32 %751, 2
  %753 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !6
  %754 = add nsw i32 %752, %753
  store i32 %754, i32 addrspace(3)* %499, align 4, !tbaa !6
  %755 = load i32, i32 addrspace(3)* %521, align 4, !tbaa !6
  %756 = load i32, i32 addrspace(3)* %509, align 4, !tbaa !6
  %757 = add nsw i32 %756, %755
  %758 = sdiv i32 %757, 2
  %759 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !6
  %760 = add nsw i32 %758, %759
  store i32 %760, i32 addrspace(3)* %505, align 4, !tbaa !6
  %761 = load i32, i32 addrspace(3)* %523, align 4, !tbaa !6
  %762 = load i32, i32 addrspace(3)* %515, align 4, !tbaa !6
  %763 = add nsw i32 %762, %761
  %764 = sdiv i32 %763, 2
  %765 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %766 = add nsw i32 %764, %765
  store i32 %766, i32 addrspace(3)* %511, align 4, !tbaa !6
  br i1 %462, label %767, label %774

767:                                              ; preds = %742
  %768 = load i32, i32 addrspace(3)* %470, align 4, !tbaa !6
  %769 = load i32, i32 addrspace(3)* %468, align 4, !tbaa !6
  %770 = add nsw i32 %769, %768
  %771 = sdiv i32 %770, 2
  %772 = load i32, i32 addrspace(3)* %464, align 4, !tbaa !6
  %773 = add nsw i32 %771, %772
  store i32 %773, i32 addrspace(3)* %464, align 4, !tbaa !6
  br label %774

774:                                              ; preds = %767, %742
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %775 = load i32, i32 addrspace(3)* %472, align 4, !tbaa !6
  %776 = load i32, i32 addrspace(3)* %474, align 4, !tbaa !6
  %777 = load i32, i32 addrspace(3)* %476, align 4, !tbaa !6
  %778 = load i32, i32 addrspace(3)* %477, align 4, !tbaa !6
  %779 = load i32, i32 addrspace(3)* %479, align 4, !tbaa !6
  %780 = add i32 %779, 2
  %781 = add i32 %780, %778
  %782 = sdiv i32 %781, -4
  %783 = load i32, i32 addrspace(3)* %481, align 4, !tbaa !6
  %784 = add i32 %782, %783
  store i32 %784, i32 addrspace(3)* %481, align 4, !tbaa !6
  %785 = load i32, i32 addrspace(3)* %483, align 4, !tbaa !6
  %786 = add i32 %785, %780
  %787 = sdiv i32 %786, -4
  %788 = load i32, i32 addrspace(3)* %485, align 4, !tbaa !6
  %789 = add i32 %787, %788
  store i32 %789, i32 addrspace(3)* %485, align 4, !tbaa !6
  %790 = load i32, i32 addrspace(3)* %487, align 4, !tbaa !6
  %791 = add i32 %785, 2
  %792 = add i32 %791, %790
  %793 = sdiv i32 %792, -4
  %794 = load i32, i32 addrspace(3)* %489, align 4, !tbaa !6
  %795 = add i32 %793, %794
  store i32 %795, i32 addrspace(3)* %489, align 4, !tbaa !6
  %796 = add i32 %775, 2
  %797 = add i32 %790, %796
  %798 = sdiv i32 %797, -4
  %799 = load i32, i32 addrspace(3)* %491, align 4, !tbaa !6
  %800 = add i32 %799, %798
  store i32 %800, i32 addrspace(3)* %491, align 4, !tbaa !6
  %801 = add i32 %777, %796
  %802 = sdiv i32 %801, -4
  %803 = add i32 %802, %776
  store i32 %803, i32 addrspace(3)* %474, align 4, !tbaa !6
  %804 = add nsw i32 %789, %784
  %805 = sdiv i32 %804, 2
  %806 = add nsw i32 %805, %779
  store i32 %806, i32 addrspace(3)* %479, align 4, !tbaa !6
  %807 = add nsw i32 %795, %789
  %808 = sdiv i32 %807, 2
  %809 = add nsw i32 %808, %785
  store i32 %809, i32 addrspace(3)* %483, align 4, !tbaa !6
  %810 = add nsw i32 %800, %795
  %811 = sdiv i32 %810, 2
  %812 = add nsw i32 %811, %790
  store i32 %812, i32 addrspace(3)* %487, align 4, !tbaa !6
  %813 = add nsw i32 %800, %803
  %814 = sdiv i32 %813, 2
  %815 = add nsw i32 %814, %775
  store i32 %815, i32 addrspace(3)* %472, align 4, !tbaa !6
  %816 = icmp eq i32 %528, %419
  br i1 %816, label %821, label %817

817:                                              ; preds = %774
  %818 = add nsw i32 %528, %420
  %819 = sext i32 %528 to i64
  %820 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %819
  store i32 %784, i32 addrspace(1)* %820, align 4, !tbaa !6
  br label %821

821:                                              ; preds = %817, %774
  %822 = phi i32 [ %419, %774 ], [ %818, %817 ]
  %823 = icmp eq i32 %822, %419
  br i1 %823, label %828, label %824

824:                                              ; preds = %821
  %825 = add nsw i32 %822, %420
  %826 = sext i32 %822 to i64
  %827 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %826
  store i32 %806, i32 addrspace(1)* %827, align 4, !tbaa !6
  br label %828

828:                                              ; preds = %824, %821
  %829 = phi i32 [ %419, %821 ], [ %825, %824 ]
  %830 = icmp eq i32 %829, %419
  br i1 %830, label %835, label %831

831:                                              ; preds = %828
  %832 = add nsw i32 %829, %420
  %833 = sext i32 %829 to i64
  %834 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %833
  store i32 %789, i32 addrspace(1)* %834, align 4, !tbaa !6
  br label %835

835:                                              ; preds = %831, %828
  %836 = phi i32 [ %419, %828 ], [ %832, %831 ]
  %837 = icmp eq i32 %836, %419
  br i1 %837, label %842, label %838

838:                                              ; preds = %835
  %839 = add nsw i32 %836, %420
  %840 = sext i32 %836 to i64
  %841 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %840
  store i32 %809, i32 addrspace(1)* %841, align 4, !tbaa !6
  br label %842

842:                                              ; preds = %838, %835
  %843 = phi i32 [ %419, %835 ], [ %839, %838 ]
  %844 = icmp eq i32 %843, %419
  br i1 %844, label %849, label %845

845:                                              ; preds = %842
  %846 = add nsw i32 %843, %420
  %847 = sext i32 %843 to i64
  %848 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %847
  store i32 %795, i32 addrspace(1)* %848, align 4, !tbaa !6
  br label %849

849:                                              ; preds = %845, %842
  %850 = phi i32 [ %419, %842 ], [ %846, %845 ]
  %851 = icmp eq i32 %850, %419
  br i1 %851, label %856, label %852

852:                                              ; preds = %849
  %853 = add nsw i32 %850, %420
  %854 = sext i32 %850 to i64
  %855 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %854
  store i32 %812, i32 addrspace(1)* %855, align 4, !tbaa !6
  br label %856

856:                                              ; preds = %852, %849
  %857 = phi i32 [ %419, %849 ], [ %853, %852 ]
  %858 = icmp eq i32 %857, %419
  br i1 %858, label %863, label %859

859:                                              ; preds = %856
  %860 = add nsw i32 %857, %420
  %861 = sext i32 %857 to i64
  %862 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %861
  store i32 %800, i32 addrspace(1)* %862, align 4, !tbaa !6
  br label %863

863:                                              ; preds = %859, %856
  %864 = phi i32 [ %419, %856 ], [ %860, %859 ]
  %865 = icmp eq i32 %864, %419
  br i1 %865, label %870, label %866

866:                                              ; preds = %863
  %867 = add nsw i32 %864, %420
  %868 = sext i32 %864 to i64
  %869 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %868
  store i32 %815, i32 addrspace(1)* %869, align 4, !tbaa !6
  br label %870

870:                                              ; preds = %866, %863
  %871 = phi i32 [ %419, %863 ], [ %867, %866 ]
  store i32 %775, i32 addrspace(3)* %477, align 4, !tbaa !6
  store i32 %776, i32 addrspace(3)* %481, align 4, !tbaa !6
  store i32 %777, i32 addrspace(3)* %479, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %872 = add nuw nsw i32 %525, 1
  %873 = icmp eq i32 %872, %4
  br i1 %873, label %2150, label %524, !llvm.loop !15

874:                                              ; preds = %5
  %875 = shl i32 %6, 7
  %876 = add i32 %875, 129
  %877 = icmp slt i32 %876, %2
  %878 = mul i32 %8, %4
  %879 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %880 = icmp ult i32 %879, 3
  br i1 %877, label %1534, label %881

881:                                              ; preds = %874
  br i1 %880, label %882, label %1004

882:                                              ; preds = %881
  %883 = icmp eq i32 %879, 2
  %884 = select i1 %883, i32 -3, i32 128
  %885 = add nsw i32 %884, %879
  %886 = add i32 %885, %875
  %887 = sub i32 0, %886
  %888 = trunc i32 %885 to i16
  %889 = add nsw i16 %888, 2
  %890 = sdiv i16 %889, 2
  %891 = zext i16 %890 to i32
  %892 = and i32 %885, 1
  %893 = icmp eq i32 %892, 0
  %894 = select i1 %893, i32 0, i32 728
  %895 = add nuw nsw i32 %894, %891
  %896 = icmp eq i32 %7, 0
  br i1 %896, label %897, label %944

897:                                              ; preds = %882
  %898 = icmp slt i32 %886, %2
  br i1 %898, label %903, label %899

899:                                              ; preds = %897
  %900 = shl nsw i32 %2, 1
  %901 = sub i32 -2, %886
  %902 = add i32 %901, %900
  br label %905

903:                                              ; preds = %897
  %904 = icmp slt i32 %886, 0
  br i1 %904, label %905, label %907

905:                                              ; preds = %903, %899
  %906 = phi i32 [ %902, %899 ], [ %887, %903 ]
  br label %907

907:                                              ; preds = %905, %903
  %908 = phi i32 [ %906, %905 ], [ %886, %903 ]
  %909 = sdiv i32 %908, 2
  %910 = and i32 %908, 1
  %911 = icmp eq i32 %910, 0
  %912 = sdiv i32 %2, 2
  %913 = and i32 %2, 1
  %914 = add nsw i32 %912, %913
  %915 = sdiv i32 %3, 2
  %916 = and i32 %3, 1
  %917 = add nsw i32 %915, %916
  br i1 %911, label %923, label %918

918:                                              ; preds = %907
  %919 = mul nsw i32 %917, %914
  %920 = add nsw i32 %909, %919
  %921 = mul nsw i32 %3, %2
  %922 = sdiv i32 %921, 2
  br label %925

923:                                              ; preds = %907
  %924 = mul nsw i32 %917, %2
  br label %925

925:                                              ; preds = %923, %918
  %926 = phi i32 [ %924, %923 ], [ %922, %918 ]
  %927 = phi i32 [ %909, %923 ], [ %920, %918 ]
  %928 = phi i32 [ %914, %923 ], [ %912, %918 ]
  %929 = sub nsw i32 %928, %926
  %930 = sdiv i32 %878, 2
  %931 = mul nsw i32 %928, %930
  %932 = add i32 %931, %927
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %933
  %935 = load i32, i32 addrspace(1)* %934, align 4, !tbaa !6, !amdgpu.noclobber !10
  %936 = add nuw nsw i32 %895, 66
  %937 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %936
  store i32 %935, i32 addrspace(3)* %937, align 4, !tbaa !6
  %938 = add nsw i32 %932, %926
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %939
  %941 = load i32, i32 addrspace(1)* %940, align 4, !tbaa !6, !amdgpu.noclobber !10
  %942 = add nuw nsw i32 %895, 132
  %943 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %942
  store i32 %941, i32 addrspace(3)* %943, align 4, !tbaa !6
  br label %997

944:                                              ; preds = %882
  %945 = add nsw i32 %878, -1
  %946 = icmp slt i32 %886, %2
  br i1 %946, label %951, label %947

947:                                              ; preds = %944
  %948 = shl nsw i32 %2, 1
  %949 = sub i32 -2, %886
  %950 = add i32 %949, %948
  br label %953

951:                                              ; preds = %944
  %952 = icmp slt i32 %886, 0
  br i1 %952, label %953, label %955

953:                                              ; preds = %951, %947
  %954 = phi i32 [ %950, %947 ], [ %887, %951 ]
  br label %955

955:                                              ; preds = %953, %951
  %956 = phi i32 [ %954, %953 ], [ %886, %951 ]
  %957 = sdiv i32 %956, 2
  %958 = and i32 %956, 1
  %959 = icmp eq i32 %958, 0
  %960 = sdiv i32 %2, 2
  %961 = and i32 %2, 1
  %962 = add nsw i32 %960, %961
  %963 = sdiv i32 %3, 2
  %964 = and i32 %3, 1
  %965 = add nsw i32 %963, %964
  br i1 %959, label %971, label %966

966:                                              ; preds = %955
  %967 = mul nsw i32 %965, %962
  %968 = add nsw i32 %957, %967
  %969 = mul nsw i32 %3, %2
  %970 = sdiv i32 %969, 2
  br label %973

971:                                              ; preds = %955
  %972 = mul nsw i32 %965, %2
  br label %973

973:                                              ; preds = %971, %966
  %974 = phi i32 [ %972, %971 ], [ %970, %966 ]
  %975 = phi i32 [ %957, %971 ], [ %968, %966 ]
  %976 = phi i32 [ %962, %971 ], [ %960, %966 ]
  %977 = sub nsw i32 %976, %974
  %978 = sdiv i32 %945, 2
  %979 = mul nsw i32 %976, %978
  %980 = add i32 %975, %974
  %981 = add i32 %980, %979
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %982
  %984 = load i32, i32 addrspace(1)* %983, align 4, !tbaa !6, !amdgpu.noclobber !10
  %985 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %895
  store i32 %984, i32 addrspace(3)* %985, align 4, !tbaa !6
  %986 = add nsw i32 %981, %977
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %987
  %989 = load i32, i32 addrspace(1)* %988, align 4, !tbaa !6, !amdgpu.noclobber !10
  %990 = add nuw nsw i32 %895, 66
  %991 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %990
  store i32 %989, i32 addrspace(3)* %991, align 4, !tbaa !6
  %992 = add i32 %981, %976
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %993
  %995 = load i32, i32 addrspace(1)* %994, align 4, !tbaa !6, !amdgpu.noclobber !10
  %996 = add nuw nsw i32 %895, 132
  br label %997

997:                                              ; preds = %973, %925
  %998 = phi i32 [ %938, %925 ], [ %992, %973 ]
  %999 = phi i32 [ %926, %925 ], [ %974, %973 ]
  %1000 = phi i32 [ %929, %925 ], [ %977, %973 ]
  %1001 = phi i32 [ %895, %925 ], [ %996, %973 ]
  %1002 = phi i32 [ %941, %925 ], [ %995, %973 ]
  %1003 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1001
  store i32 %1002, i32 addrspace(3)* %1003, align 4, !tbaa !6
  br label %1004

1004:                                             ; preds = %997, %881
  %1005 = phi i32 [ %895, %997 ], [ 0, %881 ]
  %1006 = phi i32 [ %998, %997 ], [ 0, %881 ]
  %1007 = phi i32 [ %999, %997 ], [ 0, %881 ]
  %1008 = phi i32 [ %1000, %997 ], [ 0, %881 ]
  %1009 = shl nuw nsw i32 %879, 1
  %1010 = lshr i32 %879, 6
  %1011 = mul nsw i32 %1010, -127
  %1012 = add nsw i32 %1011, %1009
  %1013 = add i32 %1012, %875
  %1014 = sub i32 0, %1013
  %1015 = trunc i32 %1012 to i16
  %1016 = add nsw i16 %1015, 2
  %1017 = sdiv i16 %1016, 2
  %1018 = sext i16 %1017 to i32
  %1019 = and i32 %1012, 1
  %1020 = icmp eq i32 %1019, 0
  %1021 = select i1 %1020, i32 0, i32 728
  %1022 = add nsw i32 %1021, %1018
  %1023 = icmp eq i32 %7, 0
  br i1 %1023, label %1024, label %1071

1024:                                             ; preds = %1004
  %1025 = icmp slt i32 %1013, %2
  br i1 %1025, label %1030, label %1026

1026:                                             ; preds = %1024
  %1027 = shl nsw i32 %2, 1
  %1028 = sub i32 -2, %1013
  %1029 = add i32 %1028, %1027
  br label %1032

1030:                                             ; preds = %1024
  %1031 = icmp slt i32 %1013, 0
  br i1 %1031, label %1032, label %1034

1032:                                             ; preds = %1030, %1026
  %1033 = phi i32 [ %1029, %1026 ], [ %1014, %1030 ]
  br label %1034

1034:                                             ; preds = %1032, %1030
  %1035 = phi i32 [ %1033, %1032 ], [ %1013, %1030 ]
  %1036 = sdiv i32 %1035, 2
  %1037 = and i32 %1035, 1
  %1038 = icmp eq i32 %1037, 0
  %1039 = sdiv i32 %2, 2
  %1040 = and i32 %2, 1
  %1041 = add nsw i32 %1039, %1040
  %1042 = sdiv i32 %3, 2
  %1043 = and i32 %3, 1
  %1044 = add nsw i32 %1042, %1043
  br i1 %1038, label %1050, label %1045

1045:                                             ; preds = %1034
  %1046 = mul nsw i32 %1044, %1041
  %1047 = add nsw i32 %1036, %1046
  %1048 = mul nsw i32 %3, %2
  %1049 = sdiv i32 %1048, 2
  br label %1052

1050:                                             ; preds = %1034
  %1051 = mul nsw i32 %1044, %2
  br label %1052

1052:                                             ; preds = %1050, %1045
  %1053 = phi i32 [ %1051, %1050 ], [ %1049, %1045 ]
  %1054 = phi i32 [ %1036, %1050 ], [ %1047, %1045 ]
  %1055 = phi i32 [ %1041, %1050 ], [ %1039, %1045 ]
  %1056 = sub nsw i32 %1055, %1053
  %1057 = sdiv i32 %878, 2
  %1058 = mul nsw i32 %1055, %1057
  %1059 = add i32 %1058, %1054
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1060
  %1062 = load i32, i32 addrspace(1)* %1061, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1063 = add nsw i32 %1022, 66
  %1064 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1063
  store i32 %1062, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1065 = add nsw i32 %1059, %1053
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1066
  %1068 = load i32, i32 addrspace(1)* %1067, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1069 = add nsw i32 %1022, 132
  %1070 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1069
  store i32 %1068, i32 addrspace(3)* %1070, align 4, !tbaa !6
  br label %1124

1071:                                             ; preds = %1004
  %1072 = add nsw i32 %878, -1
  %1073 = icmp slt i32 %1013, %2
  br i1 %1073, label %1078, label %1074

1074:                                             ; preds = %1071
  %1075 = shl nsw i32 %2, 1
  %1076 = sub i32 -2, %1013
  %1077 = add i32 %1076, %1075
  br label %1080

1078:                                             ; preds = %1071
  %1079 = icmp slt i32 %1013, 0
  br i1 %1079, label %1080, label %1082

1080:                                             ; preds = %1078, %1074
  %1081 = phi i32 [ %1077, %1074 ], [ %1014, %1078 ]
  br label %1082

1082:                                             ; preds = %1080, %1078
  %1083 = phi i32 [ %1081, %1080 ], [ %1013, %1078 ]
  %1084 = sdiv i32 %1083, 2
  %1085 = and i32 %1083, 1
  %1086 = icmp eq i32 %1085, 0
  %1087 = sdiv i32 %2, 2
  %1088 = and i32 %2, 1
  %1089 = add nsw i32 %1087, %1088
  %1090 = sdiv i32 %3, 2
  %1091 = and i32 %3, 1
  %1092 = add nsw i32 %1090, %1091
  br i1 %1086, label %1098, label %1093

1093:                                             ; preds = %1082
  %1094 = mul nsw i32 %1092, %1089
  %1095 = add nsw i32 %1084, %1094
  %1096 = mul nsw i32 %3, %2
  %1097 = sdiv i32 %1096, 2
  br label %1100

1098:                                             ; preds = %1082
  %1099 = mul nsw i32 %1092, %2
  br label %1100

1100:                                             ; preds = %1098, %1093
  %1101 = phi i32 [ %1099, %1098 ], [ %1097, %1093 ]
  %1102 = phi i32 [ %1084, %1098 ], [ %1095, %1093 ]
  %1103 = phi i32 [ %1089, %1098 ], [ %1087, %1093 ]
  %1104 = sub nsw i32 %1103, %1101
  %1105 = sdiv i32 %1072, 2
  %1106 = mul nsw i32 %1103, %1105
  %1107 = add i32 %1102, %1101
  %1108 = add i32 %1107, %1106
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1109
  %1111 = load i32, i32 addrspace(1)* %1110, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1112 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1022
  store i32 %1111, i32 addrspace(3)* %1112, align 4, !tbaa !6
  %1113 = add nsw i32 %1108, %1104
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1114
  %1116 = load i32, i32 addrspace(1)* %1115, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1117 = add nsw i32 %1022, 66
  %1118 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1117
  store i32 %1116, i32 addrspace(3)* %1118, align 4, !tbaa !6
  %1119 = add i32 %1108, %1103
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1120
  %1122 = load i32, i32 addrspace(1)* %1121, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1123 = add nsw i32 %1022, 132
  br label %1124

1124:                                             ; preds = %1100, %1052
  %1125 = phi i32 [ %1056, %1052 ], [ %1104, %1100 ]
  %1126 = phi i32 [ %1053, %1052 ], [ %1101, %1100 ]
  %1127 = phi i32 [ %1065, %1052 ], [ %1119, %1100 ]
  %1128 = phi i32 [ %1022, %1052 ], [ %1123, %1100 ]
  %1129 = phi i32 [ %1068, %1052 ], [ %1122, %1100 ]
  %1130 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1128
  store i32 %1129, i32 addrspace(3)* %1130, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1131 = add nuw nsw i32 %879, 728
  %1132 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1131
  %1133 = load i32, i32 addrspace(3)* %1132, align 4, !tbaa !6
  %1134 = add nuw nsw i32 %879, 729
  %1135 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1134
  %1136 = load i32, i32 addrspace(3)* %1135, align 4, !tbaa !6
  %1137 = add nuw nsw i32 %879, 1
  %1138 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1137
  %1139 = add i32 %1133, 2
  %1140 = add i32 %1139, %1136
  %1141 = sdiv i32 %1140, -4
  %1142 = load i32, i32 addrspace(3)* %1138, align 4, !tbaa !6
  %1143 = add i32 %1141, %1142
  store i32 %1143, i32 addrspace(3)* %1138, align 4, !tbaa !6
  %1144 = icmp ult i32 %879, 69
  br i1 %1144, label %1145, label %1159

1145:                                             ; preds = %1124
  %1146 = add nuw nsw i32 %879, 856
  %1147 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1146
  %1148 = load i32, i32 addrspace(3)* %1147, align 4, !tbaa !6
  %1149 = add nuw nsw i32 %879, 857
  %1150 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1149
  %1151 = load i32, i32 addrspace(3)* %1150, align 4, !tbaa !6
  %1152 = add nuw nsw i32 %879, 129
  %1153 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1152
  %1154 = add i32 %1148, 2
  %1155 = add i32 %1154, %1151
  %1156 = sdiv i32 %1155, -4
  %1157 = load i32, i32 addrspace(3)* %1153, align 4, !tbaa !6
  %1158 = add i32 %1156, %1157
  store i32 %1158, i32 addrspace(3)* %1153, align 4, !tbaa !6
  br label %1159

1159:                                             ; preds = %1145, %1124
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1160 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %879
  %1161 = load i32, i32 addrspace(3)* %1160, align 4, !tbaa !6
  %1162 = load i32, i32 addrspace(3)* %1138, align 4, !tbaa !6
  %1163 = add nsw i32 %1162, %1161
  %1164 = sdiv i32 %1163, 2
  %1165 = load i32, i32 addrspace(3)* %1132, align 4, !tbaa !6
  %1166 = add nsw i32 %1164, %1165
  store i32 %1166, i32 addrspace(3)* %1132, align 4, !tbaa !6
  br i1 %1144, label %1167, label %1180

1167:                                             ; preds = %1159
  %1168 = add nuw nsw i32 %879, 128
  %1169 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1168
  %1170 = load i32, i32 addrspace(3)* %1169, align 4, !tbaa !6
  %1171 = add nuw nsw i32 %879, 129
  %1172 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1171
  %1173 = load i32, i32 addrspace(3)* %1172, align 4, !tbaa !6
  %1174 = add nuw nsw i32 %879, 856
  %1175 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1174
  %1176 = add nsw i32 %1173, %1170
  %1177 = sdiv i32 %1176, 2
  %1178 = load i32, i32 addrspace(3)* %1175, align 4, !tbaa !6
  %1179 = add nsw i32 %1177, %1178
  store i32 %1179, i32 addrspace(3)* %1175, align 4, !tbaa !6
  br label %1180

1180:                                             ; preds = %1167, %1159
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1181 = add i32 %875, %879
  %1182 = icmp slt i32 %1181, %2
  br i1 %1182, label %1183, label %1188

1183:                                             ; preds = %1180
  %1184 = mul nsw i32 %3, %2
  %1185 = add nsw i32 %1184, %1181
  %1186 = mul nsw i32 %878, %2
  %1187 = add nsw i32 %1186, %1181
  br label %1188

1188:                                             ; preds = %1183, %1180
  %1189 = phi i32 [ %1185, %1183 ], [ 0, %1180 ]
  %1190 = phi i32 [ %2, %1183 ], [ 0, %1180 ]
  %1191 = phi i32 [ %1187, %1183 ], [ 0, %1180 ]
  %1192 = add nuw nsw i32 %879, 2
  %1193 = lshr i32 %1192, 1
  %1194 = and i32 %879, 1
  %1195 = icmp eq i32 %1194, 0
  %1196 = select i1 %1195, i32 0, i32 728
  %1197 = add nuw nsw i32 %1196, %1193
  %1198 = icmp sgt i32 %4, 0
  br i1 %1198, label %1199, label %2150

1199:                                             ; preds = %1188
  %1200 = add nsw i32 %1022, 198
  %1201 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1200
  %1202 = add nsw i32 %1022, 264
  %1203 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1202
  %1204 = add nsw i32 %1022, 330
  %1205 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1204
  %1206 = add nsw i32 %1022, 396
  %1207 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1206
  %1208 = add nsw i32 %1022, 462
  %1209 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1208
  %1210 = add nsw i32 %1022, 528
  %1211 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1210
  %1212 = add nsw i32 %1022, 594
  %1213 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1212
  %1214 = add nsw i32 %1022, 660
  %1215 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1214
  %1216 = add nuw nsw i32 %1005, 198
  %1217 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1216
  %1218 = add nuw nsw i32 %1005, 264
  %1219 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1218
  %1220 = add nuw nsw i32 %1005, 330
  %1221 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1220
  %1222 = add nuw nsw i32 %1005, 396
  %1223 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1222
  %1224 = add nuw nsw i32 %1005, 462
  %1225 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1224
  %1226 = add nuw nsw i32 %1005, 528
  %1227 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1226
  %1228 = add nuw nsw i32 %1005, 594
  %1229 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1228
  %1230 = add nuw nsw i32 %1005, 660
  %1231 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1230
  %1232 = icmp ult i32 %879, 15
  %1233 = add nuw nsw i32 %879, 1438
  %1234 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1233
  %1235 = add nuw nsw i32 %879, 1439
  %1236 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1235
  %1237 = add nuw nsw i32 %879, 711
  %1238 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1237
  %1239 = add nuw nsw i32 %879, 710
  %1240 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1239
  %1241 = add nuw nsw i32 %1197, 528
  %1242 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1241
  %1243 = add nuw nsw i32 %1197, 594
  %1244 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1243
  %1245 = add nuw nsw i32 %1197, 660
  %1246 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1245
  %1247 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1197
  %1248 = add nuw nsw i32 %1197, 132
  %1249 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1248
  %1250 = add nuw nsw i32 %1197, 66
  %1251 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1250
  %1252 = add nuw nsw i32 %1197, 264
  %1253 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1252
  %1254 = add nuw nsw i32 %1197, 198
  %1255 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1254
  %1256 = add nuw nsw i32 %1197, 396
  %1257 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1256
  %1258 = add nuw nsw i32 %1197, 330
  %1259 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1258
  %1260 = add nuw nsw i32 %1197, 462
  %1261 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1260
  %1262 = add nuw nsw i32 %879, 926
  %1263 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1262
  %1264 = add nuw nsw i32 %879, 927
  %1265 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1264
  %1266 = add nuw nsw i32 %879, 199
  %1267 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1266
  %1268 = add nuw nsw i32 %879, 1054
  %1269 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1268
  %1270 = add nuw nsw i32 %879, 1055
  %1271 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1270
  %1272 = add nuw nsw i32 %879, 327
  %1273 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1272
  %1274 = add nuw nsw i32 %879, 1182
  %1275 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1274
  %1276 = add nuw nsw i32 %879, 1183
  %1277 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1276
  %1278 = add nuw nsw i32 %879, 455
  %1279 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1278
  %1280 = add nuw nsw i32 %879, 1310
  %1281 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1280
  %1282 = add nuw nsw i32 %879, 1311
  %1283 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1282
  %1284 = add nuw nsw i32 %879, 583
  %1285 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1284
  %1286 = add nuw nsw i32 %879, 198
  %1287 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1286
  %1288 = add nuw nsw i32 %879, 326
  %1289 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1288
  %1290 = add nuw nsw i32 %879, 454
  %1291 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1290
  %1292 = add nuw nsw i32 %879, 582
  %1293 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1292
  br label %1294

1294:                                             ; preds = %1530, %1199
  %1295 = phi i32 [ 0, %1199 ], [ %1532, %1530 ]
  %1296 = phi i32 [ %1127, %1199 ], [ %1327, %1530 ]
  %1297 = phi i32 [ %1191, %1199 ], [ %1531, %1530 ]
  %1298 = phi i32 [ %1006, %1199 ], [ %1365, %1530 ]
  %1299 = add nsw i32 %1296, %1125
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1300
  %1302 = load i32, i32 addrspace(1)* %1301, align 4, !tbaa !6
  store i32 %1302, i32 addrspace(3)* %1201, align 4, !tbaa !6
  %1303 = add nsw i32 %1299, %1126
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1304
  %1306 = load i32, i32 addrspace(1)* %1305, align 4, !tbaa !6
  store i32 %1306, i32 addrspace(3)* %1203, align 4, !tbaa !6
  %1307 = add nsw i32 %1303, %1125
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1308
  %1310 = load i32, i32 addrspace(1)* %1309, align 4, !tbaa !6
  store i32 %1310, i32 addrspace(3)* %1205, align 4, !tbaa !6
  %1311 = add nsw i32 %1307, %1126
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1312
  %1314 = load i32, i32 addrspace(1)* %1313, align 4, !tbaa !6
  store i32 %1314, i32 addrspace(3)* %1207, align 4, !tbaa !6
  %1315 = add nsw i32 %1311, %1125
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1316
  %1318 = load i32, i32 addrspace(1)* %1317, align 4, !tbaa !6
  store i32 %1318, i32 addrspace(3)* %1209, align 4, !tbaa !6
  %1319 = add nsw i32 %1315, %1126
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1320
  %1322 = load i32, i32 addrspace(1)* %1321, align 4, !tbaa !6
  store i32 %1322, i32 addrspace(3)* %1211, align 4, !tbaa !6
  %1323 = add nsw i32 %1319, %1125
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1324
  %1326 = load i32, i32 addrspace(1)* %1325, align 4, !tbaa !6
  store i32 %1326, i32 addrspace(3)* %1213, align 4, !tbaa !6
  %1327 = add nsw i32 %1323, %1126
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1328
  %1330 = load i32, i32 addrspace(1)* %1329, align 4, !tbaa !6
  store i32 %1330, i32 addrspace(3)* %1215, align 4, !tbaa !6
  br i1 %880, label %1331, label %1364

1331:                                             ; preds = %1294
  %1332 = add nsw i32 %1298, %1008
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1333
  %1335 = load i32, i32 addrspace(1)* %1334, align 4, !tbaa !6
  store i32 %1335, i32 addrspace(3)* %1217, align 4, !tbaa !6
  %1336 = add nsw i32 %1332, %1007
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1337
  %1339 = load i32, i32 addrspace(1)* %1338, align 4, !tbaa !6
  store i32 %1339, i32 addrspace(3)* %1219, align 4, !tbaa !6
  %1340 = add nsw i32 %1336, %1008
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1341
  %1343 = load i32, i32 addrspace(1)* %1342, align 4, !tbaa !6
  store i32 %1343, i32 addrspace(3)* %1221, align 4, !tbaa !6
  %1344 = add nsw i32 %1340, %1007
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1345
  %1347 = load i32, i32 addrspace(1)* %1346, align 4, !tbaa !6
  store i32 %1347, i32 addrspace(3)* %1223, align 4, !tbaa !6
  %1348 = add nsw i32 %1344, %1008
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1349
  %1351 = load i32, i32 addrspace(1)* %1350, align 4, !tbaa !6
  store i32 %1351, i32 addrspace(3)* %1225, align 4, !tbaa !6
  %1352 = add nsw i32 %1348, %1007
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1353
  %1355 = load i32, i32 addrspace(1)* %1354, align 4, !tbaa !6
  store i32 %1355, i32 addrspace(3)* %1227, align 4, !tbaa !6
  %1356 = add nsw i32 %1352, %1008
  %1357 = sext i32 %1356 to i64
  %1358 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1357
  %1359 = load i32, i32 addrspace(1)* %1358, align 4, !tbaa !6
  store i32 %1359, i32 addrspace(3)* %1229, align 4, !tbaa !6
  %1360 = add nsw i32 %1356, %1007
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1361
  %1363 = load i32, i32 addrspace(1)* %1362, align 4, !tbaa !6
  store i32 %1363, i32 addrspace(3)* %1231, align 4, !tbaa !6
  br label %1364

1364:                                             ; preds = %1331, %1294
  %1365 = phi i32 [ %1360, %1331 ], [ %1298, %1294 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1366 = load i32, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1367 = load i32, i32 addrspace(3)* %1265, align 4, !tbaa !6
  %1368 = add i32 %1366, 2
  %1369 = add i32 %1368, %1367
  %1370 = sdiv i32 %1369, -4
  %1371 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1372 = add i32 %1370, %1371
  store i32 %1372, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1373 = load i32, i32 addrspace(3)* %1269, align 4, !tbaa !6
  %1374 = load i32, i32 addrspace(3)* %1271, align 4, !tbaa !6
  %1375 = add i32 %1373, 2
  %1376 = add i32 %1375, %1374
  %1377 = sdiv i32 %1376, -4
  %1378 = load i32, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1379 = add i32 %1377, %1378
  store i32 %1379, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1380 = load i32, i32 addrspace(3)* %1275, align 4, !tbaa !6
  %1381 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !6
  %1382 = add i32 %1380, 2
  %1383 = add i32 %1382, %1381
  %1384 = sdiv i32 %1383, -4
  %1385 = load i32, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1386 = add i32 %1384, %1385
  store i32 %1386, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1387 = load i32, i32 addrspace(3)* %1281, align 4, !tbaa !6
  %1388 = load i32, i32 addrspace(3)* %1283, align 4, !tbaa !6
  %1389 = add i32 %1387, 2
  %1390 = add i32 %1389, %1388
  %1391 = sdiv i32 %1390, -4
  %1392 = load i32, i32 addrspace(3)* %1285, align 4, !tbaa !6
  %1393 = add i32 %1391, %1392
  store i32 %1393, i32 addrspace(3)* %1285, align 4, !tbaa !6
  br i1 %1232, label %1394, label %1402

1394:                                             ; preds = %1364
  %1395 = load i32, i32 addrspace(3)* %1234, align 4, !tbaa !6
  %1396 = load i32, i32 addrspace(3)* %1236, align 4, !tbaa !6
  %1397 = add i32 %1395, 2
  %1398 = add i32 %1397, %1396
  %1399 = sdiv i32 %1398, -4
  %1400 = load i32, i32 addrspace(3)* %1238, align 4, !tbaa !6
  %1401 = add i32 %1399, %1400
  store i32 %1401, i32 addrspace(3)* %1238, align 4, !tbaa !6
  br label %1402

1402:                                             ; preds = %1394, %1364
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1403 = load i32, i32 addrspace(3)* %1287, align 4, !tbaa !6
  %1404 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1405 = add nsw i32 %1404, %1403
  %1406 = sdiv i32 %1405, 2
  %1407 = load i32, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1408 = add nsw i32 %1406, %1407
  store i32 %1408, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1409 = load i32, i32 addrspace(3)* %1289, align 4, !tbaa !6
  %1410 = load i32, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1411 = add nsw i32 %1410, %1409
  %1412 = sdiv i32 %1411, 2
  %1413 = load i32, i32 addrspace(3)* %1269, align 4, !tbaa !6
  %1414 = add nsw i32 %1412, %1413
  store i32 %1414, i32 addrspace(3)* %1269, align 4, !tbaa !6
  %1415 = load i32, i32 addrspace(3)* %1291, align 4, !tbaa !6
  %1416 = load i32, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1417 = add nsw i32 %1416, %1415
  %1418 = sdiv i32 %1417, 2
  %1419 = load i32, i32 addrspace(3)* %1275, align 4, !tbaa !6
  %1420 = add nsw i32 %1418, %1419
  store i32 %1420, i32 addrspace(3)* %1275, align 4, !tbaa !6
  %1421 = load i32, i32 addrspace(3)* %1293, align 4, !tbaa !6
  %1422 = load i32, i32 addrspace(3)* %1285, align 4, !tbaa !6
  %1423 = add nsw i32 %1422, %1421
  %1424 = sdiv i32 %1423, 2
  %1425 = load i32, i32 addrspace(3)* %1281, align 4, !tbaa !6
  %1426 = add nsw i32 %1424, %1425
  store i32 %1426, i32 addrspace(3)* %1281, align 4, !tbaa !6
  br i1 %1232, label %1427, label %1434

1427:                                             ; preds = %1402
  %1428 = load i32, i32 addrspace(3)* %1240, align 4, !tbaa !6
  %1429 = load i32, i32 addrspace(3)* %1238, align 4, !tbaa !6
  %1430 = add nsw i32 %1429, %1428
  %1431 = sdiv i32 %1430, 2
  %1432 = load i32, i32 addrspace(3)* %1234, align 4, !tbaa !6
  %1433 = add nsw i32 %1431, %1432
  store i32 %1433, i32 addrspace(3)* %1234, align 4, !tbaa !6
  br label %1434

1434:                                             ; preds = %1427, %1402
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1435 = load i32, i32 addrspace(3)* %1242, align 4, !tbaa !6
  %1436 = load i32, i32 addrspace(3)* %1244, align 4, !tbaa !6
  %1437 = load i32, i32 addrspace(3)* %1246, align 4, !tbaa !6
  %1438 = load i32, i32 addrspace(3)* %1247, align 4, !tbaa !6
  %1439 = load i32, i32 addrspace(3)* %1249, align 4, !tbaa !6
  %1440 = add i32 %1439, 2
  %1441 = add i32 %1440, %1438
  %1442 = sdiv i32 %1441, -4
  %1443 = load i32, i32 addrspace(3)* %1251, align 4, !tbaa !6
  %1444 = add i32 %1442, %1443
  store i32 %1444, i32 addrspace(3)* %1251, align 4, !tbaa !6
  %1445 = load i32, i32 addrspace(3)* %1253, align 4, !tbaa !6
  %1446 = add i32 %1445, %1440
  %1447 = sdiv i32 %1446, -4
  %1448 = load i32, i32 addrspace(3)* %1255, align 4, !tbaa !6
  %1449 = add i32 %1447, %1448
  store i32 %1449, i32 addrspace(3)* %1255, align 4, !tbaa !6
  %1450 = load i32, i32 addrspace(3)* %1257, align 4, !tbaa !6
  %1451 = add i32 %1445, 2
  %1452 = add i32 %1451, %1450
  %1453 = sdiv i32 %1452, -4
  %1454 = load i32, i32 addrspace(3)* %1259, align 4, !tbaa !6
  %1455 = add i32 %1453, %1454
  store i32 %1455, i32 addrspace(3)* %1259, align 4, !tbaa !6
  %1456 = add i32 %1435, 2
  %1457 = add i32 %1450, %1456
  %1458 = sdiv i32 %1457, -4
  %1459 = load i32, i32 addrspace(3)* %1261, align 4, !tbaa !6
  %1460 = add i32 %1459, %1458
  store i32 %1460, i32 addrspace(3)* %1261, align 4, !tbaa !6
  %1461 = add i32 %1437, %1456
  %1462 = sdiv i32 %1461, -4
  %1463 = add i32 %1462, %1436
  store i32 %1463, i32 addrspace(3)* %1244, align 4, !tbaa !6
  %1464 = add nsw i32 %1449, %1444
  %1465 = sdiv i32 %1464, 2
  %1466 = add nsw i32 %1465, %1439
  store i32 %1466, i32 addrspace(3)* %1249, align 4, !tbaa !6
  %1467 = add nsw i32 %1455, %1449
  %1468 = sdiv i32 %1467, 2
  %1469 = add nsw i32 %1468, %1445
  store i32 %1469, i32 addrspace(3)* %1253, align 4, !tbaa !6
  %1470 = add nsw i32 %1460, %1455
  %1471 = sdiv i32 %1470, 2
  %1472 = add nsw i32 %1471, %1450
  store i32 %1472, i32 addrspace(3)* %1257, align 4, !tbaa !6
  %1473 = add nsw i32 %1460, %1463
  %1474 = sdiv i32 %1473, 2
  %1475 = add nsw i32 %1474, %1435
  store i32 %1475, i32 addrspace(3)* %1242, align 4, !tbaa !6
  %1476 = icmp eq i32 %1297, %1189
  br i1 %1476, label %1481, label %1477

1477:                                             ; preds = %1434
  %1478 = add nsw i32 %1297, %1190
  %1479 = sext i32 %1297 to i64
  %1480 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1479
  store i32 %1444, i32 addrspace(1)* %1480, align 4, !tbaa !6
  br label %1481

1481:                                             ; preds = %1477, %1434
  %1482 = phi i32 [ %1189, %1434 ], [ %1478, %1477 ]
  %1483 = icmp eq i32 %1482, %1189
  br i1 %1483, label %1488, label %1484

1484:                                             ; preds = %1481
  %1485 = add nsw i32 %1482, %1190
  %1486 = sext i32 %1482 to i64
  %1487 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1486
  store i32 %1466, i32 addrspace(1)* %1487, align 4, !tbaa !6
  br label %1488

1488:                                             ; preds = %1484, %1481
  %1489 = phi i32 [ %1189, %1481 ], [ %1485, %1484 ]
  %1490 = icmp eq i32 %1489, %1189
  br i1 %1490, label %1495, label %1491

1491:                                             ; preds = %1488
  %1492 = add nsw i32 %1489, %1190
  %1493 = sext i32 %1489 to i64
  %1494 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1493
  store i32 %1449, i32 addrspace(1)* %1494, align 4, !tbaa !6
  br label %1495

1495:                                             ; preds = %1491, %1488
  %1496 = phi i32 [ %1189, %1488 ], [ %1492, %1491 ]
  %1497 = icmp eq i32 %1496, %1189
  br i1 %1497, label %1502, label %1498

1498:                                             ; preds = %1495
  %1499 = add nsw i32 %1496, %1190
  %1500 = sext i32 %1496 to i64
  %1501 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1500
  store i32 %1469, i32 addrspace(1)* %1501, align 4, !tbaa !6
  br label %1502

1502:                                             ; preds = %1498, %1495
  %1503 = phi i32 [ %1189, %1495 ], [ %1499, %1498 ]
  %1504 = icmp eq i32 %1503, %1189
  br i1 %1504, label %1509, label %1505

1505:                                             ; preds = %1502
  %1506 = add nsw i32 %1503, %1190
  %1507 = sext i32 %1503 to i64
  %1508 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1507
  store i32 %1455, i32 addrspace(1)* %1508, align 4, !tbaa !6
  br label %1509

1509:                                             ; preds = %1505, %1502
  %1510 = phi i32 [ %1189, %1502 ], [ %1506, %1505 ]
  %1511 = icmp eq i32 %1510, %1189
  br i1 %1511, label %1516, label %1512

1512:                                             ; preds = %1509
  %1513 = add nsw i32 %1510, %1190
  %1514 = sext i32 %1510 to i64
  %1515 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1514
  store i32 %1472, i32 addrspace(1)* %1515, align 4, !tbaa !6
  br label %1516

1516:                                             ; preds = %1512, %1509
  %1517 = phi i32 [ %1189, %1509 ], [ %1513, %1512 ]
  %1518 = icmp eq i32 %1517, %1189
  br i1 %1518, label %1523, label %1519

1519:                                             ; preds = %1516
  %1520 = add nsw i32 %1517, %1190
  %1521 = sext i32 %1517 to i64
  %1522 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1521
  store i32 %1460, i32 addrspace(1)* %1522, align 4, !tbaa !6
  br label %1523

1523:                                             ; preds = %1519, %1516
  %1524 = phi i32 [ %1189, %1516 ], [ %1520, %1519 ]
  %1525 = icmp eq i32 %1524, %1189
  br i1 %1525, label %1530, label %1526

1526:                                             ; preds = %1523
  %1527 = add nsw i32 %1524, %1190
  %1528 = sext i32 %1524 to i64
  %1529 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1528
  store i32 %1475, i32 addrspace(1)* %1529, align 4, !tbaa !6
  br label %1530

1530:                                             ; preds = %1526, %1523
  %1531 = phi i32 [ %1189, %1523 ], [ %1527, %1526 ]
  store i32 %1435, i32 addrspace(3)* %1247, align 4, !tbaa !6
  store i32 %1436, i32 addrspace(3)* %1251, align 4, !tbaa !6
  store i32 %1437, i32 addrspace(3)* %1249, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1532 = add nuw nsw i32 %1295, 1
  %1533 = icmp eq i32 %1532, %4
  br i1 %1533, label %2150, label %1294, !llvm.loop !16

1534:                                             ; preds = %874
  br i1 %880, label %1535, label %1657

1535:                                             ; preds = %1534
  %1536 = icmp eq i32 %879, 2
  %1537 = select i1 %1536, i32 -3, i32 128
  %1538 = add nsw i32 %1537, %879
  %1539 = add i32 %1538, %875
  %1540 = sub i32 0, %1539
  %1541 = trunc i32 %1538 to i16
  %1542 = add nsw i16 %1541, 2
  %1543 = sdiv i16 %1542, 2
  %1544 = zext i16 %1543 to i32
  %1545 = and i32 %1538, 1
  %1546 = icmp eq i32 %1545, 0
  %1547 = select i1 %1546, i32 0, i32 728
  %1548 = add nuw nsw i32 %1547, %1544
  %1549 = icmp eq i32 %7, 0
  br i1 %1549, label %1550, label %1597

1550:                                             ; preds = %1535
  %1551 = icmp slt i32 %1539, %2
  br i1 %1551, label %1556, label %1552

1552:                                             ; preds = %1550
  %1553 = shl nsw i32 %2, 1
  %1554 = sub i32 -2, %1539
  %1555 = add i32 %1554, %1553
  br label %1558

1556:                                             ; preds = %1550
  %1557 = icmp slt i32 %1539, 0
  br i1 %1557, label %1558, label %1560

1558:                                             ; preds = %1556, %1552
  %1559 = phi i32 [ %1555, %1552 ], [ %1540, %1556 ]
  br label %1560

1560:                                             ; preds = %1558, %1556
  %1561 = phi i32 [ %1559, %1558 ], [ %1539, %1556 ]
  %1562 = sdiv i32 %1561, 2
  %1563 = and i32 %1561, 1
  %1564 = icmp eq i32 %1563, 0
  %1565 = sdiv i32 %2, 2
  %1566 = and i32 %2, 1
  %1567 = add nsw i32 %1565, %1566
  %1568 = sdiv i32 %3, 2
  %1569 = and i32 %3, 1
  %1570 = add nsw i32 %1568, %1569
  br i1 %1564, label %1576, label %1571

1571:                                             ; preds = %1560
  %1572 = mul nsw i32 %1570, %1567
  %1573 = add nsw i32 %1562, %1572
  %1574 = mul nsw i32 %3, %2
  %1575 = sdiv i32 %1574, 2
  br label %1578

1576:                                             ; preds = %1560
  %1577 = mul nsw i32 %1570, %2
  br label %1578

1578:                                             ; preds = %1576, %1571
  %1579 = phi i32 [ %1577, %1576 ], [ %1575, %1571 ]
  %1580 = phi i32 [ %1562, %1576 ], [ %1573, %1571 ]
  %1581 = phi i32 [ %1567, %1576 ], [ %1565, %1571 ]
  %1582 = sub nsw i32 %1581, %1579
  %1583 = sdiv i32 %878, 2
  %1584 = mul nsw i32 %1581, %1583
  %1585 = add i32 %1584, %1580
  %1586 = sext i32 %1585 to i64
  %1587 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1586
  %1588 = load i32, i32 addrspace(1)* %1587, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1589 = add nuw nsw i32 %1548, 66
  %1590 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1589
  store i32 %1588, i32 addrspace(3)* %1590, align 4, !tbaa !6
  %1591 = add nsw i32 %1585, %1579
  %1592 = sext i32 %1591 to i64
  %1593 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1592
  %1594 = load i32, i32 addrspace(1)* %1593, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1595 = add nuw nsw i32 %1548, 132
  %1596 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1595
  store i32 %1594, i32 addrspace(3)* %1596, align 4, !tbaa !6
  br label %1650

1597:                                             ; preds = %1535
  %1598 = add nsw i32 %878, -1
  %1599 = icmp slt i32 %1539, %2
  br i1 %1599, label %1604, label %1600

1600:                                             ; preds = %1597
  %1601 = shl nsw i32 %2, 1
  %1602 = sub i32 -2, %1539
  %1603 = add i32 %1602, %1601
  br label %1606

1604:                                             ; preds = %1597
  %1605 = icmp slt i32 %1539, 0
  br i1 %1605, label %1606, label %1608

1606:                                             ; preds = %1604, %1600
  %1607 = phi i32 [ %1603, %1600 ], [ %1540, %1604 ]
  br label %1608

1608:                                             ; preds = %1606, %1604
  %1609 = phi i32 [ %1607, %1606 ], [ %1539, %1604 ]
  %1610 = sdiv i32 %1609, 2
  %1611 = and i32 %1609, 1
  %1612 = icmp eq i32 %1611, 0
  %1613 = sdiv i32 %2, 2
  %1614 = and i32 %2, 1
  %1615 = add nsw i32 %1613, %1614
  %1616 = sdiv i32 %3, 2
  %1617 = and i32 %3, 1
  %1618 = add nsw i32 %1616, %1617
  br i1 %1612, label %1624, label %1619

1619:                                             ; preds = %1608
  %1620 = mul nsw i32 %1618, %1615
  %1621 = add nsw i32 %1610, %1620
  %1622 = mul nsw i32 %3, %2
  %1623 = sdiv i32 %1622, 2
  br label %1626

1624:                                             ; preds = %1608
  %1625 = mul nsw i32 %1618, %2
  br label %1626

1626:                                             ; preds = %1624, %1619
  %1627 = phi i32 [ %1625, %1624 ], [ %1623, %1619 ]
  %1628 = phi i32 [ %1610, %1624 ], [ %1621, %1619 ]
  %1629 = phi i32 [ %1615, %1624 ], [ %1613, %1619 ]
  %1630 = sub nsw i32 %1629, %1627
  %1631 = sdiv i32 %1598, 2
  %1632 = mul nsw i32 %1629, %1631
  %1633 = add i32 %1628, %1627
  %1634 = add i32 %1633, %1632
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1635
  %1637 = load i32, i32 addrspace(1)* %1636, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1638 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1548
  store i32 %1637, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1639 = add nsw i32 %1634, %1630
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1640
  %1642 = load i32, i32 addrspace(1)* %1641, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1643 = add nuw nsw i32 %1548, 66
  %1644 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1643
  store i32 %1642, i32 addrspace(3)* %1644, align 4, !tbaa !6
  %1645 = add i32 %1634, %1629
  %1646 = sext i32 %1645 to i64
  %1647 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1646
  %1648 = load i32, i32 addrspace(1)* %1647, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1649 = add nuw nsw i32 %1548, 132
  br label %1650

1650:                                             ; preds = %1626, %1578
  %1651 = phi i32 [ %1591, %1578 ], [ %1645, %1626 ]
  %1652 = phi i32 [ %1579, %1578 ], [ %1627, %1626 ]
  %1653 = phi i32 [ %1582, %1578 ], [ %1630, %1626 ]
  %1654 = phi i32 [ %1548, %1578 ], [ %1649, %1626 ]
  %1655 = phi i32 [ %1594, %1578 ], [ %1648, %1626 ]
  %1656 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1654
  store i32 %1655, i32 addrspace(3)* %1656, align 4, !tbaa !6
  br label %1657

1657:                                             ; preds = %1650, %1534
  %1658 = phi i32 [ %1548, %1650 ], [ 0, %1534 ]
  %1659 = phi i32 [ %1651, %1650 ], [ 0, %1534 ]
  %1660 = phi i32 [ %1652, %1650 ], [ 0, %1534 ]
  %1661 = phi i32 [ %1653, %1650 ], [ 0, %1534 ]
  %1662 = shl nuw nsw i32 %879, 1
  %1663 = lshr i32 %879, 6
  %1664 = mul nsw i32 %1663, -127
  %1665 = add nsw i32 %1664, %1662
  %1666 = add i32 %1665, %875
  %1667 = sub i32 0, %1666
  %1668 = trunc i32 %1665 to i16
  %1669 = add nsw i16 %1668, 2
  %1670 = sdiv i16 %1669, 2
  %1671 = sext i16 %1670 to i32
  %1672 = and i32 %1665, 1
  %1673 = icmp eq i32 %1672, 0
  %1674 = select i1 %1673, i32 0, i32 728
  %1675 = add nsw i32 %1674, %1671
  %1676 = icmp eq i32 %7, 0
  br i1 %1676, label %1677, label %1724

1677:                                             ; preds = %1657
  %1678 = icmp slt i32 %1666, %2
  br i1 %1678, label %1683, label %1679

1679:                                             ; preds = %1677
  %1680 = shl nsw i32 %2, 1
  %1681 = sub i32 -2, %1666
  %1682 = add i32 %1681, %1680
  br label %1685

1683:                                             ; preds = %1677
  %1684 = icmp slt i32 %1666, 0
  br i1 %1684, label %1685, label %1687

1685:                                             ; preds = %1683, %1679
  %1686 = phi i32 [ %1682, %1679 ], [ %1667, %1683 ]
  br label %1687

1687:                                             ; preds = %1685, %1683
  %1688 = phi i32 [ %1686, %1685 ], [ %1666, %1683 ]
  %1689 = sdiv i32 %1688, 2
  %1690 = and i32 %1688, 1
  %1691 = icmp eq i32 %1690, 0
  %1692 = sdiv i32 %2, 2
  %1693 = and i32 %2, 1
  %1694 = add nsw i32 %1692, %1693
  %1695 = sdiv i32 %3, 2
  %1696 = and i32 %3, 1
  %1697 = add nsw i32 %1695, %1696
  br i1 %1691, label %1703, label %1698

1698:                                             ; preds = %1687
  %1699 = mul nsw i32 %1697, %1694
  %1700 = add nsw i32 %1689, %1699
  %1701 = mul nsw i32 %3, %2
  %1702 = sdiv i32 %1701, 2
  br label %1705

1703:                                             ; preds = %1687
  %1704 = mul nsw i32 %1697, %2
  br label %1705

1705:                                             ; preds = %1703, %1698
  %1706 = phi i32 [ %1704, %1703 ], [ %1702, %1698 ]
  %1707 = phi i32 [ %1689, %1703 ], [ %1700, %1698 ]
  %1708 = phi i32 [ %1694, %1703 ], [ %1692, %1698 ]
  %1709 = sub nsw i32 %1708, %1706
  %1710 = sdiv i32 %878, 2
  %1711 = mul nsw i32 %1708, %1710
  %1712 = add i32 %1711, %1707
  %1713 = sext i32 %1712 to i64
  %1714 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1713
  %1715 = load i32, i32 addrspace(1)* %1714, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1716 = add nsw i32 %1675, 66
  %1717 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1716
  store i32 %1715, i32 addrspace(3)* %1717, align 4, !tbaa !6
  %1718 = add nsw i32 %1712, %1706
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1719
  %1721 = load i32, i32 addrspace(1)* %1720, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1722 = add nsw i32 %1675, 132
  %1723 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1722
  store i32 %1721, i32 addrspace(3)* %1723, align 4, !tbaa !6
  br label %1777

1724:                                             ; preds = %1657
  %1725 = add nsw i32 %878, -1
  %1726 = icmp slt i32 %1666, %2
  br i1 %1726, label %1731, label %1727

1727:                                             ; preds = %1724
  %1728 = shl nsw i32 %2, 1
  %1729 = sub i32 -2, %1666
  %1730 = add i32 %1729, %1728
  br label %1733

1731:                                             ; preds = %1724
  %1732 = icmp slt i32 %1666, 0
  br i1 %1732, label %1733, label %1735

1733:                                             ; preds = %1731, %1727
  %1734 = phi i32 [ %1730, %1727 ], [ %1667, %1731 ]
  br label %1735

1735:                                             ; preds = %1733, %1731
  %1736 = phi i32 [ %1734, %1733 ], [ %1666, %1731 ]
  %1737 = sdiv i32 %1736, 2
  %1738 = and i32 %1736, 1
  %1739 = icmp eq i32 %1738, 0
  %1740 = sdiv i32 %2, 2
  %1741 = and i32 %2, 1
  %1742 = add nsw i32 %1740, %1741
  %1743 = sdiv i32 %3, 2
  %1744 = and i32 %3, 1
  %1745 = add nsw i32 %1743, %1744
  br i1 %1739, label %1751, label %1746

1746:                                             ; preds = %1735
  %1747 = mul nsw i32 %1745, %1742
  %1748 = add nsw i32 %1737, %1747
  %1749 = mul nsw i32 %3, %2
  %1750 = sdiv i32 %1749, 2
  br label %1753

1751:                                             ; preds = %1735
  %1752 = mul nsw i32 %1745, %2
  br label %1753

1753:                                             ; preds = %1751, %1746
  %1754 = phi i32 [ %1752, %1751 ], [ %1750, %1746 ]
  %1755 = phi i32 [ %1737, %1751 ], [ %1748, %1746 ]
  %1756 = phi i32 [ %1742, %1751 ], [ %1740, %1746 ]
  %1757 = sub nsw i32 %1756, %1754
  %1758 = sdiv i32 %1725, 2
  %1759 = mul nsw i32 %1756, %1758
  %1760 = add i32 %1755, %1754
  %1761 = add i32 %1760, %1759
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1762
  %1764 = load i32, i32 addrspace(1)* %1763, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1765 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1675
  store i32 %1764, i32 addrspace(3)* %1765, align 4, !tbaa !6
  %1766 = add nsw i32 %1761, %1757
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1767
  %1769 = load i32, i32 addrspace(1)* %1768, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1770 = add nsw i32 %1675, 66
  %1771 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1770
  store i32 %1769, i32 addrspace(3)* %1771, align 4, !tbaa !6
  %1772 = add i32 %1761, %1756
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1773
  %1775 = load i32, i32 addrspace(1)* %1774, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1776 = add nsw i32 %1675, 132
  br label %1777

1777:                                             ; preds = %1753, %1705
  %1778 = phi i32 [ %1709, %1705 ], [ %1757, %1753 ]
  %1779 = phi i32 [ %1706, %1705 ], [ %1754, %1753 ]
  %1780 = phi i32 [ %1718, %1705 ], [ %1772, %1753 ]
  %1781 = phi i32 [ %1675, %1705 ], [ %1776, %1753 ]
  %1782 = phi i32 [ %1721, %1705 ], [ %1775, %1753 ]
  %1783 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1781
  store i32 %1782, i32 addrspace(3)* %1783, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1784 = add nuw nsw i32 %879, 728
  %1785 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1784
  %1786 = load i32, i32 addrspace(3)* %1785, align 4, !tbaa !6
  %1787 = add nuw nsw i32 %879, 729
  %1788 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1787
  %1789 = load i32, i32 addrspace(3)* %1788, align 4, !tbaa !6
  %1790 = add nuw nsw i32 %879, 1
  %1791 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1790
  %1792 = add i32 %1786, 2
  %1793 = add i32 %1792, %1789
  %1794 = sdiv i32 %1793, -4
  %1795 = load i32, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1796 = add i32 %1794, %1795
  store i32 %1796, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1797 = icmp ult i32 %879, 69
  br i1 %1797, label %1798, label %1812

1798:                                             ; preds = %1777
  %1799 = add nuw nsw i32 %879, 856
  %1800 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1799
  %1801 = load i32, i32 addrspace(3)* %1800, align 4, !tbaa !6
  %1802 = add nuw nsw i32 %879, 857
  %1803 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1802
  %1804 = load i32, i32 addrspace(3)* %1803, align 4, !tbaa !6
  %1805 = add nuw nsw i32 %879, 129
  %1806 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1805
  %1807 = add i32 %1801, 2
  %1808 = add i32 %1807, %1804
  %1809 = sdiv i32 %1808, -4
  %1810 = load i32, i32 addrspace(3)* %1806, align 4, !tbaa !6
  %1811 = add i32 %1809, %1810
  store i32 %1811, i32 addrspace(3)* %1806, align 4, !tbaa !6
  br label %1812

1812:                                             ; preds = %1798, %1777
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1813 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %879
  %1814 = load i32, i32 addrspace(3)* %1813, align 4, !tbaa !6
  %1815 = load i32, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1816 = add nsw i32 %1815, %1814
  %1817 = sdiv i32 %1816, 2
  %1818 = load i32, i32 addrspace(3)* %1785, align 4, !tbaa !6
  %1819 = add nsw i32 %1817, %1818
  store i32 %1819, i32 addrspace(3)* %1785, align 4, !tbaa !6
  br i1 %1797, label %1820, label %1833

1820:                                             ; preds = %1812
  %1821 = add nuw nsw i32 %879, 128
  %1822 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1821
  %1823 = load i32, i32 addrspace(3)* %1822, align 4, !tbaa !6
  %1824 = add nuw nsw i32 %879, 129
  %1825 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1824
  %1826 = load i32, i32 addrspace(3)* %1825, align 4, !tbaa !6
  %1827 = add nuw nsw i32 %879, 856
  %1828 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1827
  %1829 = add nsw i32 %1826, %1823
  %1830 = sdiv i32 %1829, 2
  %1831 = load i32, i32 addrspace(3)* %1828, align 4, !tbaa !6
  %1832 = add nsw i32 %1830, %1831
  store i32 %1832, i32 addrspace(3)* %1828, align 4, !tbaa !6
  br label %1833

1833:                                             ; preds = %1820, %1812
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1834 = add i32 %875, %879
  %1835 = icmp slt i32 %1834, %2
  %1836 = select i1 %1835, i32 %2, i32 0
  %1837 = add nuw nsw i32 %879, 2
  %1838 = lshr i32 %1837, 1
  %1839 = and i32 %879, 1
  %1840 = icmp eq i32 %1839, 0
  %1841 = select i1 %1840, i32 0, i32 728
  %1842 = add nuw nsw i32 %1841, %1838
  %1843 = icmp sgt i32 %4, 0
  br i1 %1843, label %1844, label %2150

1844:                                             ; preds = %1833
  %1845 = mul nsw i32 %878, %2
  %1846 = add nsw i32 %1845, %1834
  %1847 = select i1 %1835, i32 %1846, i32 0
  %1848 = add nsw i32 %1675, 198
  %1849 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1848
  %1850 = add nsw i32 %1675, 264
  %1851 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1850
  %1852 = add nsw i32 %1675, 330
  %1853 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1852
  %1854 = add nsw i32 %1675, 396
  %1855 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1854
  %1856 = add nsw i32 %1675, 462
  %1857 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1856
  %1858 = add nsw i32 %1675, 528
  %1859 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1858
  %1860 = add nsw i32 %1675, 594
  %1861 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1860
  %1862 = add nsw i32 %1675, 660
  %1863 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1862
  %1864 = add nuw nsw i32 %1658, 198
  %1865 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1864
  %1866 = add nuw nsw i32 %1658, 264
  %1867 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1866
  %1868 = add nuw nsw i32 %1658, 330
  %1869 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1868
  %1870 = add nuw nsw i32 %1658, 396
  %1871 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1870
  %1872 = add nuw nsw i32 %1658, 462
  %1873 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1872
  %1874 = add nuw nsw i32 %1658, 528
  %1875 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1874
  %1876 = add nuw nsw i32 %1658, 594
  %1877 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1876
  %1878 = add nuw nsw i32 %1658, 660
  %1879 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1878
  %1880 = icmp ult i32 %879, 15
  %1881 = add nuw nsw i32 %879, 1438
  %1882 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1881
  %1883 = add nuw nsw i32 %879, 1439
  %1884 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1883
  %1885 = add nuw nsw i32 %879, 711
  %1886 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1885
  %1887 = add nuw nsw i32 %879, 710
  %1888 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1887
  %1889 = add nuw nsw i32 %1842, 528
  %1890 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1889
  %1891 = add nuw nsw i32 %1842, 594
  %1892 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1891
  %1893 = add nuw nsw i32 %1842, 660
  %1894 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1893
  %1895 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1842
  %1896 = add nuw nsw i32 %1842, 132
  %1897 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1896
  %1898 = add nuw nsw i32 %1842, 66
  %1899 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1898
  %1900 = add nuw nsw i32 %1842, 264
  %1901 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1900
  %1902 = add nuw nsw i32 %1842, 198
  %1903 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1902
  %1904 = add nuw nsw i32 %1842, 396
  %1905 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1904
  %1906 = add nuw nsw i32 %1842, 330
  %1907 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1906
  %1908 = add nuw nsw i32 %1842, 462
  %1909 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1908
  %1910 = add nuw nsw i32 %879, 926
  %1911 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1910
  %1912 = add nuw nsw i32 %879, 927
  %1913 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1912
  %1914 = add nuw nsw i32 %879, 199
  %1915 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1914
  %1916 = add nuw nsw i32 %879, 1054
  %1917 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1916
  %1918 = add nuw nsw i32 %879, 1055
  %1919 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1918
  %1920 = add nuw nsw i32 %879, 327
  %1921 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1920
  %1922 = add nuw nsw i32 %879, 1182
  %1923 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1922
  %1924 = add nuw nsw i32 %879, 1183
  %1925 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1924
  %1926 = add nuw nsw i32 %879, 455
  %1927 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1926
  %1928 = add nuw nsw i32 %879, 1310
  %1929 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1928
  %1930 = add nuw nsw i32 %879, 1311
  %1931 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1930
  %1932 = add nuw nsw i32 %879, 583
  %1933 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1932
  %1934 = add nuw nsw i32 %879, 198
  %1935 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1934
  %1936 = add nuw nsw i32 %879, 326
  %1937 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1936
  %1938 = add nuw nsw i32 %879, 454
  %1939 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1938
  %1940 = add nuw nsw i32 %879, 582
  %1941 = getelementptr inbounds %"class.dwt_cuda::RDWT53.5", %"class.dwt_cuda::RDWT53.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi128ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1940
  br label %1942

1942:                                             ; preds = %2082, %1844
  %1943 = phi i32 [ 0, %1844 ], [ %2148, %2082 ]
  %1944 = phi i32 [ %1780, %1844 ], [ %1975, %2082 ]
  %1945 = phi i32 [ %1847, %1844 ], [ %2147, %2082 ]
  %1946 = phi i32 [ %1659, %1844 ], [ %2013, %2082 ]
  %1947 = add nsw i32 %1944, %1778
  %1948 = sext i32 %1947 to i64
  %1949 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1948
  %1950 = load i32, i32 addrspace(1)* %1949, align 4, !tbaa !6
  store i32 %1950, i32 addrspace(3)* %1849, align 4, !tbaa !6
  %1951 = add nsw i32 %1947, %1779
  %1952 = sext i32 %1951 to i64
  %1953 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1952
  %1954 = load i32, i32 addrspace(1)* %1953, align 4, !tbaa !6
  store i32 %1954, i32 addrspace(3)* %1851, align 4, !tbaa !6
  %1955 = add nsw i32 %1951, %1778
  %1956 = sext i32 %1955 to i64
  %1957 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1956
  %1958 = load i32, i32 addrspace(1)* %1957, align 4, !tbaa !6
  store i32 %1958, i32 addrspace(3)* %1853, align 4, !tbaa !6
  %1959 = add nsw i32 %1955, %1779
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1960
  %1962 = load i32, i32 addrspace(1)* %1961, align 4, !tbaa !6
  store i32 %1962, i32 addrspace(3)* %1855, align 4, !tbaa !6
  %1963 = add nsw i32 %1959, %1778
  %1964 = sext i32 %1963 to i64
  %1965 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1964
  %1966 = load i32, i32 addrspace(1)* %1965, align 4, !tbaa !6
  store i32 %1966, i32 addrspace(3)* %1857, align 4, !tbaa !6
  %1967 = add nsw i32 %1963, %1779
  %1968 = sext i32 %1967 to i64
  %1969 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1968
  %1970 = load i32, i32 addrspace(1)* %1969, align 4, !tbaa !6
  store i32 %1970, i32 addrspace(3)* %1859, align 4, !tbaa !6
  %1971 = add nsw i32 %1967, %1778
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1972
  %1974 = load i32, i32 addrspace(1)* %1973, align 4, !tbaa !6
  store i32 %1974, i32 addrspace(3)* %1861, align 4, !tbaa !6
  %1975 = add nsw i32 %1971, %1779
  %1976 = sext i32 %1975 to i64
  %1977 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1976
  %1978 = load i32, i32 addrspace(1)* %1977, align 4, !tbaa !6
  store i32 %1978, i32 addrspace(3)* %1863, align 4, !tbaa !6
  br i1 %880, label %1979, label %2012

1979:                                             ; preds = %1942
  %1980 = add nsw i32 %1946, %1661
  %1981 = sext i32 %1980 to i64
  %1982 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1981
  %1983 = load i32, i32 addrspace(1)* %1982, align 4, !tbaa !6
  store i32 %1983, i32 addrspace(3)* %1865, align 4, !tbaa !6
  %1984 = add nsw i32 %1980, %1660
  %1985 = sext i32 %1984 to i64
  %1986 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1985
  %1987 = load i32, i32 addrspace(1)* %1986, align 4, !tbaa !6
  store i32 %1987, i32 addrspace(3)* %1867, align 4, !tbaa !6
  %1988 = add nsw i32 %1984, %1661
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1989
  %1991 = load i32, i32 addrspace(1)* %1990, align 4, !tbaa !6
  store i32 %1991, i32 addrspace(3)* %1869, align 4, !tbaa !6
  %1992 = add nsw i32 %1988, %1660
  %1993 = sext i32 %1992 to i64
  %1994 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1993
  %1995 = load i32, i32 addrspace(1)* %1994, align 4, !tbaa !6
  store i32 %1995, i32 addrspace(3)* %1871, align 4, !tbaa !6
  %1996 = add nsw i32 %1992, %1661
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1997
  %1999 = load i32, i32 addrspace(1)* %1998, align 4, !tbaa !6
  store i32 %1999, i32 addrspace(3)* %1873, align 4, !tbaa !6
  %2000 = add nsw i32 %1996, %1660
  %2001 = sext i32 %2000 to i64
  %2002 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2001
  %2003 = load i32, i32 addrspace(1)* %2002, align 4, !tbaa !6
  store i32 %2003, i32 addrspace(3)* %1875, align 4, !tbaa !6
  %2004 = add nsw i32 %2000, %1661
  %2005 = sext i32 %2004 to i64
  %2006 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2005
  %2007 = load i32, i32 addrspace(1)* %2006, align 4, !tbaa !6
  store i32 %2007, i32 addrspace(3)* %1877, align 4, !tbaa !6
  %2008 = add nsw i32 %2004, %1660
  %2009 = sext i32 %2008 to i64
  %2010 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2009
  %2011 = load i32, i32 addrspace(1)* %2010, align 4, !tbaa !6
  store i32 %2011, i32 addrspace(3)* %1879, align 4, !tbaa !6
  br label %2012

2012:                                             ; preds = %1979, %1942
  %2013 = phi i32 [ %2008, %1979 ], [ %1946, %1942 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2014 = load i32, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2015 = load i32, i32 addrspace(3)* %1913, align 4, !tbaa !6
  %2016 = add i32 %2014, 2
  %2017 = add i32 %2016, %2015
  %2018 = sdiv i32 %2017, -4
  %2019 = load i32, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2020 = add i32 %2018, %2019
  store i32 %2020, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2021 = load i32, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2022 = load i32, i32 addrspace(3)* %1919, align 4, !tbaa !6
  %2023 = add i32 %2021, 2
  %2024 = add i32 %2023, %2022
  %2025 = sdiv i32 %2024, -4
  %2026 = load i32, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2027 = add i32 %2025, %2026
  store i32 %2027, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2028 = load i32, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2029 = load i32, i32 addrspace(3)* %1925, align 4, !tbaa !6
  %2030 = add i32 %2028, 2
  %2031 = add i32 %2030, %2029
  %2032 = sdiv i32 %2031, -4
  %2033 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2034 = add i32 %2032, %2033
  store i32 %2034, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2035 = load i32, i32 addrspace(3)* %1929, align 4, !tbaa !6
  %2036 = load i32, i32 addrspace(3)* %1931, align 4, !tbaa !6
  %2037 = add i32 %2035, 2
  %2038 = add i32 %2037, %2036
  %2039 = sdiv i32 %2038, -4
  %2040 = load i32, i32 addrspace(3)* %1933, align 4, !tbaa !6
  %2041 = add i32 %2039, %2040
  store i32 %2041, i32 addrspace(3)* %1933, align 4, !tbaa !6
  br i1 %1880, label %2042, label %2050

2042:                                             ; preds = %2012
  %2043 = load i32, i32 addrspace(3)* %1882, align 4, !tbaa !6
  %2044 = load i32, i32 addrspace(3)* %1884, align 4, !tbaa !6
  %2045 = add i32 %2043, 2
  %2046 = add i32 %2045, %2044
  %2047 = sdiv i32 %2046, -4
  %2048 = load i32, i32 addrspace(3)* %1886, align 4, !tbaa !6
  %2049 = add i32 %2047, %2048
  store i32 %2049, i32 addrspace(3)* %1886, align 4, !tbaa !6
  br label %2050

2050:                                             ; preds = %2042, %2012
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2051 = load i32, i32 addrspace(3)* %1935, align 4, !tbaa !6
  %2052 = load i32, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2053 = add nsw i32 %2052, %2051
  %2054 = sdiv i32 %2053, 2
  %2055 = load i32, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2056 = add nsw i32 %2054, %2055
  store i32 %2056, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2057 = load i32, i32 addrspace(3)* %1937, align 4, !tbaa !6
  %2058 = load i32, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2059 = add nsw i32 %2058, %2057
  %2060 = sdiv i32 %2059, 2
  %2061 = load i32, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2062 = add nsw i32 %2060, %2061
  store i32 %2062, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2063 = load i32, i32 addrspace(3)* %1939, align 4, !tbaa !6
  %2064 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2065 = add nsw i32 %2064, %2063
  %2066 = sdiv i32 %2065, 2
  %2067 = load i32, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2068 = add nsw i32 %2066, %2067
  store i32 %2068, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2069 = load i32, i32 addrspace(3)* %1941, align 4, !tbaa !6
  %2070 = load i32, i32 addrspace(3)* %1933, align 4, !tbaa !6
  %2071 = add nsw i32 %2070, %2069
  %2072 = sdiv i32 %2071, 2
  %2073 = load i32, i32 addrspace(3)* %1929, align 4, !tbaa !6
  %2074 = add nsw i32 %2072, %2073
  store i32 %2074, i32 addrspace(3)* %1929, align 4, !tbaa !6
  br i1 %1880, label %2075, label %2082

2075:                                             ; preds = %2050
  %2076 = load i32, i32 addrspace(3)* %1888, align 4, !tbaa !6
  %2077 = load i32, i32 addrspace(3)* %1886, align 4, !tbaa !6
  %2078 = add nsw i32 %2077, %2076
  %2079 = sdiv i32 %2078, 2
  %2080 = load i32, i32 addrspace(3)* %1882, align 4, !tbaa !6
  %2081 = add nsw i32 %2079, %2080
  store i32 %2081, i32 addrspace(3)* %1882, align 4, !tbaa !6
  br label %2082

2082:                                             ; preds = %2075, %2050
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2083 = load i32, i32 addrspace(3)* %1890, align 4, !tbaa !6
  %2084 = load i32, i32 addrspace(3)* %1892, align 4, !tbaa !6
  %2085 = load i32, i32 addrspace(3)* %1894, align 4, !tbaa !6
  %2086 = load i32, i32 addrspace(3)* %1895, align 4, !tbaa !6
  %2087 = load i32, i32 addrspace(3)* %1897, align 4, !tbaa !6
  %2088 = add i32 %2087, 2
  %2089 = add i32 %2088, %2086
  %2090 = sdiv i32 %2089, -4
  %2091 = load i32, i32 addrspace(3)* %1899, align 4, !tbaa !6
  %2092 = add i32 %2090, %2091
  %2093 = load i32, i32 addrspace(3)* %1901, align 4, !tbaa !6
  %2094 = add i32 %2093, %2088
  %2095 = sdiv i32 %2094, -4
  %2096 = load i32, i32 addrspace(3)* %1903, align 4, !tbaa !6
  %2097 = add i32 %2095, %2096
  store i32 %2097, i32 addrspace(3)* %1903, align 4, !tbaa !6
  %2098 = load i32, i32 addrspace(3)* %1905, align 4, !tbaa !6
  %2099 = add i32 %2093, 2
  %2100 = add i32 %2099, %2098
  %2101 = sdiv i32 %2100, -4
  %2102 = load i32, i32 addrspace(3)* %1907, align 4, !tbaa !6
  %2103 = add i32 %2101, %2102
  store i32 %2103, i32 addrspace(3)* %1907, align 4, !tbaa !6
  %2104 = add i32 %2083, 2
  %2105 = add i32 %2098, %2104
  %2106 = sdiv i32 %2105, -4
  %2107 = load i32, i32 addrspace(3)* %1909, align 4, !tbaa !6
  %2108 = add i32 %2107, %2106
  store i32 %2108, i32 addrspace(3)* %1909, align 4, !tbaa !6
  %2109 = add i32 %2085, %2104
  %2110 = sdiv i32 %2109, -4
  %2111 = add i32 %2110, %2084
  store i32 %2111, i32 addrspace(3)* %1892, align 4, !tbaa !6
  %2112 = add nsw i32 %2097, %2092
  %2113 = sdiv i32 %2112, 2
  %2114 = add nsw i32 %2113, %2087
  %2115 = add nsw i32 %2103, %2097
  %2116 = sdiv i32 %2115, 2
  %2117 = add nsw i32 %2116, %2093
  store i32 %2117, i32 addrspace(3)* %1901, align 4, !tbaa !6
  %2118 = add nsw i32 %2108, %2103
  %2119 = sdiv i32 %2118, 2
  %2120 = add nsw i32 %2119, %2098
  store i32 %2120, i32 addrspace(3)* %1905, align 4, !tbaa !6
  %2121 = add nsw i32 %2108, %2111
  %2122 = sdiv i32 %2121, 2
  %2123 = add nsw i32 %2122, %2083
  store i32 %2123, i32 addrspace(3)* %1890, align 4, !tbaa !6
  %2124 = sext i32 %1945 to i64
  %2125 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2124
  store i32 %2092, i32 addrspace(1)* %2125, align 4, !tbaa !6
  %2126 = add nsw i32 %1945, %1836
  %2127 = sext i32 %2126 to i64
  %2128 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2127
  store i32 %2114, i32 addrspace(1)* %2128, align 4, !tbaa !6
  %2129 = add nsw i32 %2126, %1836
  %2130 = sext i32 %2129 to i64
  %2131 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2130
  store i32 %2097, i32 addrspace(1)* %2131, align 4, !tbaa !6
  %2132 = add nsw i32 %2129, %1836
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2133
  store i32 %2117, i32 addrspace(1)* %2134, align 4, !tbaa !6
  %2135 = add nsw i32 %2132, %1836
  %2136 = sext i32 %2135 to i64
  %2137 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2136
  store i32 %2103, i32 addrspace(1)* %2137, align 4, !tbaa !6
  %2138 = add nsw i32 %2135, %1836
  %2139 = sext i32 %2138 to i64
  %2140 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2139
  store i32 %2120, i32 addrspace(1)* %2140, align 4, !tbaa !6
  %2141 = add nsw i32 %2138, %1836
  %2142 = sext i32 %2141 to i64
  %2143 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2142
  store i32 %2108, i32 addrspace(1)* %2143, align 4, !tbaa !6
  %2144 = add nsw i32 %2141, %1836
  %2145 = sext i32 %2144 to i64
  %2146 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2145
  store i32 %2123, i32 addrspace(1)* %2146, align 4, !tbaa !6
  %2147 = add nsw i32 %2144, %1836
  store i32 %2083, i32 addrspace(3)* %1895, align 4, !tbaa !6
  store i32 %2084, i32 addrspace(3)* %1899, align 4, !tbaa !6
  store i32 %2085, i32 addrspace(3)* %1897, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2148 = add nuw nsw i32 %1943, 1
  %2149 = icmp eq i32 %2148, %4
  br i1 %2149, label %2150, label %1942, !llvm.loop !17

2150:                                             ; preds = %870, %1530, %2082, %418, %1188, %1833
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12rdwt53KernelILi64ELi8EEEvPKiPiiii(i32 addrspace(1)* readonly %0, i32 addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = shl i32 %7, 3
  %9 = add i32 %8, 8
  %10 = mul i32 %9, %4
  %11 = or i32 %10, 1
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %874, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = shl i32 %6, 6
  br label %187

19:                                               ; preds = %13
  %20 = icmp eq i32 %15, 2
  %21 = select i1 %20, i32 -3, i32 64
  %22 = add nsw i32 %21, %15
  %23 = shl i32 %6, 6
  %24 = add i32 %22, %23
  %25 = sub i32 0, %24
  %26 = trunc i32 %22 to i8
  %27 = add nsw i8 %26, 2
  %28 = sdiv i8 %27, 2
  %29 = zext i8 %28 to i32
  %30 = and i32 %22, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 376
  %33 = add nuw nsw i32 %32, %29
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %101

35:                                               ; preds = %19
  %36 = icmp slt i32 %24, %2
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = shl nsw i32 %2, 1
  %39 = sub i32 -2, %24
  %40 = add i32 %39, %38
  br label %43

41:                                               ; preds = %35
  %42 = icmp slt i32 %24, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %40, %37 ], [ %25, %41 ]
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %44, %43 ], [ %24, %41 ]
  %47 = sdiv i32 %46, 2
  %48 = and i32 %46, 1
  %49 = icmp eq i32 %48, 0
  %50 = sdiv i32 %2, 2
  %51 = and i32 %2, 1
  %52 = add nsw i32 %50, %51
  %53 = sdiv i32 %3, 2
  %54 = and i32 %3, 1
  %55 = add nsw i32 %53, %54
  br i1 %49, label %61, label %56

56:                                               ; preds = %45
  %57 = mul nsw i32 %55, %52
  %58 = add nsw i32 %47, %57
  %59 = mul nsw i32 %3, %2
  %60 = sdiv i32 %59, 2
  br label %63

61:                                               ; preds = %45
  %62 = mul nsw i32 %55, %2
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ %60, %56 ]
  %65 = phi i32 [ %47, %61 ], [ %58, %56 ]
  %66 = phi i32 [ %52, %61 ], [ %50, %56 ]
  %67 = sub nsw i32 %66, %64
  %68 = mul nsw i32 %66, %53
  %69 = icmp eq i32 %54, 0
  %70 = select i1 %69, i32 0, i32 %64
  %71 = add i32 %70, %65
  %72 = add i32 %71, %68
  %73 = sdiv i32 %14, 2
  %74 = mul nsw i32 %66, %73
  %75 = add i32 %74, %65
  %76 = icmp eq i32 %75, %72
  %77 = sub i32 0, %64
  %78 = sub i32 0, %67
  %79 = select i1 %76, i32 %66, i32 0
  %80 = sub i32 %75, %79
  %81 = select i1 %76, i32 %78, i32 %64
  %82 = select i1 %76, i32 %77, i32 %67
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %83
  %85 = load i32, i32 addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = add nuw nsw i32 %33, 34
  %87 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %86
  store i32 %85, i32 addrspace(3)* %87, align 4, !tbaa !6
  %88 = add nsw i32 %80, %81
  %89 = icmp eq i32 %88, %72
  %90 = sub i32 0, %81
  %91 = sub i32 0, %82
  %92 = sub i32 %80, %82
  %93 = select i1 %89, i32 %92, i32 %88
  %94 = select i1 %89, i32 %91, i32 %81
  %95 = select i1 %89, i32 %90, i32 %82
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %96
  %98 = load i32, i32 addrspace(1)* %97, align 4, !tbaa !6, !amdgpu.noclobber !10
  %99 = add nuw nsw i32 %33, 68
  %100 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %99
  store i32 %98, i32 addrspace(3)* %100, align 4, !tbaa !6
  br label %179

101:                                              ; preds = %19
  %102 = add nsw i32 %14, -1
  %103 = icmp slt i32 %24, %2
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = shl nsw i32 %2, 1
  %106 = sub i32 -2, %24
  %107 = add i32 %106, %105
  br label %110

108:                                              ; preds = %101
  %109 = icmp slt i32 %24, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %108, %104
  %111 = phi i32 [ %107, %104 ], [ %25, %108 ]
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %111, %110 ], [ %24, %108 ]
  %114 = sdiv i32 %113, 2
  %115 = and i32 %113, 1
  %116 = icmp eq i32 %115, 0
  %117 = sdiv i32 %2, 2
  %118 = and i32 %2, 1
  %119 = add nsw i32 %117, %118
  %120 = sdiv i32 %3, 2
  %121 = and i32 %3, 1
  %122 = add nsw i32 %120, %121
  br i1 %116, label %128, label %123

123:                                              ; preds = %112
  %124 = mul nsw i32 %122, %119
  %125 = add nsw i32 %114, %124
  %126 = mul nsw i32 %3, %2
  %127 = sdiv i32 %126, 2
  br label %130

128:                                              ; preds = %112
  %129 = mul nsw i32 %122, %2
  br label %130

130:                                              ; preds = %128, %123
  %131 = phi i32 [ %129, %128 ], [ %127, %123 ]
  %132 = phi i32 [ %114, %128 ], [ %125, %123 ]
  %133 = phi i32 [ %119, %128 ], [ %117, %123 ]
  %134 = sub nsw i32 %133, %131
  %135 = mul nsw i32 %133, %120
  %136 = icmp eq i32 %121, 0
  %137 = select i1 %136, i32 0, i32 %131
  %138 = add i32 %137, %132
  %139 = add i32 %138, %135
  %140 = sdiv i32 %102, 2
  %141 = mul nsw i32 %133, %140
  %142 = add i32 %132, %131
  %143 = add i32 %142, %141
  %144 = icmp eq i32 %143, %139
  %145 = sub i32 0, %134
  %146 = sub i32 0, %131
  %147 = select i1 %144, i32 %133, i32 0
  %148 = sub i32 %143, %147
  %149 = select i1 %144, i32 %145, i32 %131
  %150 = select i1 %144, i32 %146, i32 %134
  %151 = sext i32 %148 to i64
  %152 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %151
  %153 = load i32, i32 addrspace(1)* %152, align 4, !tbaa !6, !amdgpu.noclobber !10
  %154 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %33
  store i32 %153, i32 addrspace(3)* %154, align 4, !tbaa !6
  %155 = add nsw i32 %148, %150
  %156 = icmp eq i32 %155, %139
  %157 = sub i32 0, %150
  %158 = sub i32 0, %149
  %159 = sub i32 %148, %149
  %160 = select i1 %156, i32 %159, i32 %155
  %161 = select i1 %156, i32 %157, i32 %149
  %162 = select i1 %156, i32 %158, i32 %150
  %163 = sext i32 %160 to i64
  %164 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %163
  %165 = load i32, i32 addrspace(1)* %164, align 4, !tbaa !6, !amdgpu.noclobber !10
  %166 = add nuw nsw i32 %33, 34
  %167 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %166
  store i32 %165, i32 addrspace(3)* %167, align 4, !tbaa !6
  %168 = add nsw i32 %160, %161
  %169 = icmp eq i32 %168, %139
  %170 = sub i32 0, %161
  %171 = sub i32 0, %162
  %172 = select i1 %169, i32 %148, i32 %168
  %173 = select i1 %169, i32 %171, i32 %161
  %174 = select i1 %169, i32 %170, i32 %162
  %175 = sext i32 %172 to i64
  %176 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %175
  %177 = load i32, i32 addrspace(1)* %176, align 4, !tbaa !6, !amdgpu.noclobber !10
  %178 = add nuw nsw i32 %33, 68
  br label %179

179:                                              ; preds = %130, %63
  %180 = phi i32 [ %93, %63 ], [ %172, %130 ]
  %181 = phi i32 [ %94, %63 ], [ %173, %130 ]
  %182 = phi i32 [ %95, %63 ], [ %174, %130 ]
  %183 = phi i32 [ %72, %63 ], [ %139, %130 ]
  %184 = phi i32 [ %33, %63 ], [ %178, %130 ]
  %185 = phi i32 [ %98, %63 ], [ %177, %130 ]
  %186 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %184
  store i32 %185, i32 addrspace(3)* %186, align 4, !tbaa !6
  br label %187

187:                                              ; preds = %179, %17
  %188 = phi i32 [ %18, %17 ], [ %23, %179 ]
  %189 = phi i32 [ 0, %17 ], [ %33, %179 ]
  %190 = phi i32 [ 0, %17 ], [ %180, %179 ]
  %191 = phi i32 [ 0, %17 ], [ %181, %179 ]
  %192 = phi i32 [ 0, %17 ], [ %182, %179 ]
  %193 = phi i32 [ 0, %17 ], [ %183, %179 ]
  %194 = shl nuw nsw i32 %15, 1
  %195 = lshr i32 %15, 5
  %196 = mul nsw i32 %195, -63
  %197 = add nsw i32 %196, %194
  %198 = add i32 %188, %197
  %199 = sub i32 0, %198
  %200 = trunc i32 %197 to i16
  %201 = add nsw i16 %200, 2
  %202 = sdiv i16 %201, 2
  %203 = sext i16 %202 to i32
  %204 = and i32 %197, 1
  %205 = icmp eq i32 %204, 0
  %206 = select i1 %205, i32 0, i32 376
  %207 = add nsw i32 %206, %203
  %208 = icmp eq i32 %7, 0
  br i1 %208, label %209, label %275

209:                                              ; preds = %187
  %210 = icmp slt i32 %198, %2
  br i1 %210, label %215, label %211

211:                                              ; preds = %209
  %212 = shl nsw i32 %2, 1
  %213 = sub i32 %212, %198
  %214 = add i32 %213, -2
  br label %217

215:                                              ; preds = %209
  %216 = icmp slt i32 %198, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %215, %211
  %218 = phi i32 [ %214, %211 ], [ %199, %215 ]
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %218, %217 ], [ %198, %215 ]
  %221 = sdiv i32 %220, 2
  %222 = and i32 %220, 1
  %223 = icmp eq i32 %222, 0
  %224 = sdiv i32 %2, 2
  %225 = and i32 %2, 1
  %226 = add nsw i32 %224, %225
  %227 = sdiv i32 %3, 2
  %228 = and i32 %3, 1
  %229 = add nsw i32 %227, %228
  br i1 %223, label %235, label %230

230:                                              ; preds = %219
  %231 = mul nsw i32 %229, %226
  %232 = add nsw i32 %221, %231
  %233 = mul nsw i32 %3, %2
  %234 = sdiv i32 %233, 2
  br label %237

235:                                              ; preds = %219
  %236 = mul nsw i32 %229, %2
  br label %237

237:                                              ; preds = %235, %230
  %238 = phi i32 [ %236, %235 ], [ %234, %230 ]
  %239 = phi i32 [ %221, %235 ], [ %232, %230 ]
  %240 = phi i32 [ %226, %235 ], [ %224, %230 ]
  %241 = sub nsw i32 %240, %238
  %242 = mul nsw i32 %240, %227
  %243 = icmp eq i32 %228, 0
  %244 = select i1 %243, i32 0, i32 %238
  %245 = add i32 %244, %239
  %246 = add i32 %245, %242
  %247 = sdiv i32 %14, 2
  %248 = mul nsw i32 %240, %247
  %249 = add i32 %248, %239
  %250 = icmp eq i32 %249, %246
  %251 = sub i32 0, %238
  %252 = sub i32 0, %241
  %253 = select i1 %250, i32 %251, i32 %241
  %254 = select i1 %250, i32 %252, i32 %238
  %255 = select i1 %250, i32 %240, i32 0
  %256 = sub i32 %249, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %257
  %259 = load i32, i32 addrspace(1)* %258, align 4, !tbaa !6, !amdgpu.noclobber !10
  %260 = add nsw i32 %207, 34
  %261 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %260
  store i32 %259, i32 addrspace(3)* %261, align 4, !tbaa !6
  %262 = add nsw i32 %256, %254
  %263 = icmp eq i32 %262, %246
  %264 = sub i32 0, %254
  %265 = sub i32 0, %253
  %266 = sub i32 %256, %253
  %267 = select i1 %263, i32 %264, i32 %253
  %268 = select i1 %263, i32 %265, i32 %254
  %269 = select i1 %263, i32 %266, i32 %262
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %270
  %272 = load i32, i32 addrspace(1)* %271, align 4, !tbaa !6, !amdgpu.noclobber !10
  %273 = add nsw i32 %207, 68
  %274 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %273
  store i32 %272, i32 addrspace(3)* %274, align 4, !tbaa !6
  br label %353

275:                                              ; preds = %187
  %276 = add nsw i32 %14, -1
  %277 = icmp slt i32 %198, %2
  br i1 %277, label %282, label %278

278:                                              ; preds = %275
  %279 = shl nsw i32 %2, 1
  %280 = sub i32 %279, %198
  %281 = add i32 %280, -2
  br label %284

282:                                              ; preds = %275
  %283 = icmp slt i32 %198, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %282, %278
  %285 = phi i32 [ %281, %278 ], [ %199, %282 ]
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %285, %284 ], [ %198, %282 ]
  %288 = sdiv i32 %287, 2
  %289 = and i32 %287, 1
  %290 = icmp eq i32 %289, 0
  %291 = sdiv i32 %2, 2
  %292 = and i32 %2, 1
  %293 = add nsw i32 %291, %292
  %294 = sdiv i32 %3, 2
  %295 = and i32 %3, 1
  %296 = add nsw i32 %294, %295
  br i1 %290, label %302, label %297

297:                                              ; preds = %286
  %298 = mul nsw i32 %296, %293
  %299 = add nsw i32 %288, %298
  %300 = mul nsw i32 %3, %2
  %301 = sdiv i32 %300, 2
  br label %304

302:                                              ; preds = %286
  %303 = mul nsw i32 %296, %2
  br label %304

304:                                              ; preds = %302, %297
  %305 = phi i32 [ %303, %302 ], [ %301, %297 ]
  %306 = phi i32 [ %288, %302 ], [ %299, %297 ]
  %307 = phi i32 [ %293, %302 ], [ %291, %297 ]
  %308 = sub nsw i32 %307, %305
  %309 = mul nsw i32 %307, %294
  %310 = icmp eq i32 %295, 0
  %311 = select i1 %310, i32 0, i32 %305
  %312 = add i32 %311, %306
  %313 = add i32 %312, %309
  %314 = sdiv i32 %276, 2
  %315 = mul nsw i32 %307, %314
  %316 = add i32 %306, %305
  %317 = add i32 %316, %315
  %318 = icmp eq i32 %317, %313
  %319 = sub i32 0, %308
  %320 = sub i32 0, %305
  %321 = select i1 %318, i32 %320, i32 %308
  %322 = select i1 %318, i32 %319, i32 %305
  %323 = select i1 %318, i32 %307, i32 0
  %324 = sub i32 %317, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %325
  %327 = load i32, i32 addrspace(1)* %326, align 4, !tbaa !6, !amdgpu.noclobber !10
  %328 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %207
  store i32 %327, i32 addrspace(3)* %328, align 4, !tbaa !6
  %329 = add nsw i32 %324, %321
  %330 = icmp eq i32 %329, %313
  %331 = sub i32 0, %321
  %332 = sub i32 0, %322
  %333 = sub i32 %324, %322
  %334 = select i1 %330, i32 %332, i32 %321
  %335 = select i1 %330, i32 %331, i32 %322
  %336 = select i1 %330, i32 %333, i32 %329
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %337
  %339 = load i32, i32 addrspace(1)* %338, align 4, !tbaa !6, !amdgpu.noclobber !10
  %340 = add nsw i32 %207, 34
  %341 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %340
  store i32 %339, i32 addrspace(3)* %341, align 4, !tbaa !6
  %342 = add nsw i32 %336, %335
  %343 = icmp eq i32 %342, %313
  %344 = sub i32 0, %335
  %345 = sub i32 0, %334
  %346 = select i1 %343, i32 %344, i32 %334
  %347 = select i1 %343, i32 %345, i32 %335
  %348 = select i1 %343, i32 %324, i32 %342
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %349
  %351 = load i32, i32 addrspace(1)* %350, align 4, !tbaa !6, !amdgpu.noclobber !10
  %352 = add nsw i32 %207, 68
  br label %353

353:                                              ; preds = %304, %237
  %354 = phi i32 [ %267, %237 ], [ %346, %304 ]
  %355 = phi i32 [ %246, %237 ], [ %313, %304 ]
  %356 = phi i32 [ %268, %237 ], [ %347, %304 ]
  %357 = phi i32 [ %269, %237 ], [ %348, %304 ]
  %358 = phi i32 [ %207, %237 ], [ %352, %304 ]
  %359 = phi i32 [ %272, %237 ], [ %351, %304 ]
  %360 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %358
  store i32 %359, i32 addrspace(3)* %360, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %361 = add nuw nsw i32 %15, 376
  %362 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %361
  %363 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %364 = add nuw nsw i32 %15, 377
  %365 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %364
  %366 = load i32, i32 addrspace(3)* %365, align 4, !tbaa !6
  %367 = add nuw nsw i32 %15, 1
  %368 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %367
  %369 = add i32 %363, 2
  %370 = add i32 %369, %366
  %371 = sdiv i32 %370, -4
  %372 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %373 = add i32 %371, %372
  store i32 %373, i32 addrspace(3)* %368, align 4, !tbaa !6
  %374 = icmp ult i32 %15, 37
  br i1 %374, label %375, label %389

375:                                              ; preds = %353
  %376 = add nuw nsw i32 %15, 440
  %377 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %376
  %378 = load i32, i32 addrspace(3)* %377, align 4, !tbaa !6
  %379 = add nuw nsw i32 %15, 441
  %380 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %379
  %381 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %382 = add nuw nsw i32 %15, 65
  %383 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %382
  %384 = add i32 %378, 2
  %385 = add i32 %384, %381
  %386 = sdiv i32 %385, -4
  %387 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !6
  %388 = add i32 %386, %387
  store i32 %388, i32 addrspace(3)* %383, align 4, !tbaa !6
  br label %389

389:                                              ; preds = %375, %353
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %390 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %15
  %391 = load i32, i32 addrspace(3)* %390, align 4, !tbaa !6
  %392 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %393 = add nsw i32 %392, %391
  %394 = sdiv i32 %393, 2
  %395 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %396 = add nsw i32 %394, %395
  store i32 %396, i32 addrspace(3)* %362, align 4, !tbaa !6
  br i1 %374, label %397, label %410

397:                                              ; preds = %389
  %398 = add nuw nsw i32 %15, 64
  %399 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %398
  %400 = load i32, i32 addrspace(3)* %399, align 4, !tbaa !6
  %401 = add nuw nsw i32 %15, 65
  %402 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %401
  %403 = load i32, i32 addrspace(3)* %402, align 4, !tbaa !6
  %404 = add nuw nsw i32 %15, 440
  %405 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %404
  %406 = add nsw i32 %403, %400
  %407 = sdiv i32 %406, 2
  %408 = load i32, i32 addrspace(3)* %405, align 4, !tbaa !6
  %409 = add nsw i32 %407, %408
  store i32 %409, i32 addrspace(3)* %405, align 4, !tbaa !6
  br label %410

410:                                              ; preds = %397, %389
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %411 = add i32 %188, %15
  %412 = icmp slt i32 %411, %2
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = mul nsw i32 %3, %2
  %415 = add nsw i32 %411, %414
  %416 = mul nsw i32 %14, %2
  %417 = add nsw i32 %411, %416
  br label %418

418:                                              ; preds = %413, %410
  %419 = phi i32 [ %415, %413 ], [ 0, %410 ]
  %420 = phi i32 [ %2, %413 ], [ 0, %410 ]
  %421 = phi i32 [ %417, %413 ], [ 0, %410 ]
  %422 = add nuw nsw i32 %15, 2
  %423 = lshr i32 %422, 1
  %424 = and i32 %15, 1
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, i32 0, i32 376
  %427 = add nuw nsw i32 %426, %423
  %428 = icmp sgt i32 %4, 0
  br i1 %428, label %429, label %2150

429:                                              ; preds = %418
  %430 = add nsw i32 %207, 102
  %431 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %430
  %432 = add nsw i32 %207, 136
  %433 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %432
  %434 = add nsw i32 %207, 170
  %435 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %434
  %436 = add nsw i32 %207, 204
  %437 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %436
  %438 = add nsw i32 %207, 238
  %439 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %438
  %440 = add nsw i32 %207, 272
  %441 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %440
  %442 = add nsw i32 %207, 306
  %443 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %442
  %444 = add nsw i32 %207, 340
  %445 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %444
  %446 = add nuw nsw i32 %189, 102
  %447 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %446
  %448 = add nuw nsw i32 %189, 136
  %449 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %448
  %450 = add nuw nsw i32 %189, 170
  %451 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %450
  %452 = add nuw nsw i32 %189, 204
  %453 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %452
  %454 = add nuw nsw i32 %189, 238
  %455 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %454
  %456 = add nuw nsw i32 %189, 272
  %457 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %456
  %458 = add nuw nsw i32 %189, 306
  %459 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %458
  %460 = add nuw nsw i32 %189, 340
  %461 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %460
  %462 = icmp ult i32 %15, 15
  %463 = add nuw nsw i32 %15, 734
  %464 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %463
  %465 = add nuw nsw i32 %15, 735
  %466 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %465
  %467 = add nuw nsw i32 %15, 359
  %468 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %467
  %469 = add nuw nsw i32 %15, 358
  %470 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %469
  %471 = add nuw nsw i32 %427, 272
  %472 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %471
  %473 = add nuw nsw i32 %427, 306
  %474 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %473
  %475 = add nuw nsw i32 %427, 340
  %476 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %475
  %477 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %427
  %478 = add nuw nsw i32 %427, 68
  %479 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %478
  %480 = add nuw nsw i32 %427, 34
  %481 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %480
  %482 = add nuw nsw i32 %427, 136
  %483 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %482
  %484 = add nuw nsw i32 %427, 102
  %485 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %484
  %486 = add nuw nsw i32 %427, 204
  %487 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %486
  %488 = add nuw nsw i32 %427, 170
  %489 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %488
  %490 = add nuw nsw i32 %427, 238
  %491 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %490
  %492 = add nuw nsw i32 %15, 478
  %493 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %492
  %494 = add nuw nsw i32 %15, 479
  %495 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %494
  %496 = add nuw nsw i32 %15, 103
  %497 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %496
  %498 = add nuw nsw i32 %15, 542
  %499 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %498
  %500 = add nuw nsw i32 %15, 543
  %501 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %500
  %502 = add nuw nsw i32 %15, 167
  %503 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %502
  %504 = add nuw nsw i32 %15, 606
  %505 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %504
  %506 = add nuw nsw i32 %15, 607
  %507 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %506
  %508 = add nuw nsw i32 %15, 231
  %509 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %508
  %510 = add nuw nsw i32 %15, 670
  %511 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %510
  %512 = add nuw nsw i32 %15, 671
  %513 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %512
  %514 = add nuw nsw i32 %15, 295
  %515 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %514
  %516 = add nuw nsw i32 %15, 102
  %517 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %516
  %518 = add nuw nsw i32 %15, 166
  %519 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %518
  %520 = add nuw nsw i32 %15, 230
  %521 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %520
  %522 = add nuw nsw i32 %15, 294
  %523 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %522
  br label %524

524:                                              ; preds = %870, %429
  %525 = phi i32 [ 0, %429 ], [ %872, %870 ]
  %526 = phi i32 [ %357, %429 ], [ %613, %870 ]
  %527 = phi i32 [ %356, %429 ], [ %612, %870 ]
  %528 = phi i32 [ %421, %429 ], [ %871, %870 ]
  %529 = phi i32 [ %192, %429 ], [ %705, %870 ]
  %530 = phi i32 [ %191, %429 ], [ %704, %870 ]
  %531 = phi i32 [ %190, %429 ], [ %703, %870 ]
  %532 = phi i32 [ %354, %429 ], [ %611, %870 ]
  %533 = add nsw i32 %532, %526
  %534 = icmp eq i32 %533, %355
  %535 = sub i32 0, %532
  %536 = sub i32 0, %527
  %537 = sub i32 %526, %527
  %538 = select i1 %534, i32 %536, i32 %532
  %539 = select i1 %534, i32 %535, i32 %527
  %540 = select i1 %534, i32 %537, i32 %533
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %541
  %543 = load i32, i32 addrspace(1)* %542, align 4, !tbaa !6
  store i32 %543, i32 addrspace(3)* %431, align 4, !tbaa !6
  %544 = add nsw i32 %540, %539
  %545 = icmp eq i32 %544, %355
  %546 = sub i32 0, %539
  %547 = sub i32 0, %538
  %548 = select i1 %545, i32 %546, i32 %538
  %549 = select i1 %545, i32 %547, i32 %539
  %550 = select i1 %545, i32 %526, i32 %544
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %551
  %553 = load i32, i32 addrspace(1)* %552, align 4, !tbaa !6
  store i32 %553, i32 addrspace(3)* %433, align 4, !tbaa !6
  %554 = add nsw i32 %550, %548
  %555 = icmp eq i32 %554, %355
  %556 = sub i32 0, %548
  %557 = sub i32 0, %549
  %558 = sub i32 %550, %549
  %559 = select i1 %555, i32 %557, i32 %548
  %560 = select i1 %555, i32 %556, i32 %549
  %561 = select i1 %555, i32 %558, i32 %554
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %562
  %564 = load i32, i32 addrspace(1)* %563, align 4, !tbaa !6
  store i32 %564, i32 addrspace(3)* %435, align 4, !tbaa !6
  %565 = add nsw i32 %561, %560
  %566 = icmp eq i32 %565, %355
  %567 = sub i32 0, %560
  %568 = sub i32 0, %559
  %569 = select i1 %566, i32 %567, i32 %559
  %570 = select i1 %566, i32 %568, i32 %560
  %571 = select i1 %566, i32 %550, i32 %565
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %572
  %574 = load i32, i32 addrspace(1)* %573, align 4, !tbaa !6
  store i32 %574, i32 addrspace(3)* %437, align 4, !tbaa !6
  %575 = add nsw i32 %571, %569
  %576 = icmp eq i32 %575, %355
  %577 = sub i32 0, %569
  %578 = sub i32 0, %570
  %579 = sub i32 %571, %570
  %580 = select i1 %576, i32 %578, i32 %569
  %581 = select i1 %576, i32 %577, i32 %570
  %582 = select i1 %576, i32 %579, i32 %575
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %583
  %585 = load i32, i32 addrspace(1)* %584, align 4, !tbaa !6
  store i32 %585, i32 addrspace(3)* %439, align 4, !tbaa !6
  %586 = add nsw i32 %582, %581
  %587 = icmp eq i32 %586, %355
  %588 = sub i32 0, %581
  %589 = sub i32 0, %580
  %590 = select i1 %587, i32 %588, i32 %580
  %591 = select i1 %587, i32 %589, i32 %581
  %592 = select i1 %587, i32 %571, i32 %586
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %593
  %595 = load i32, i32 addrspace(1)* %594, align 4, !tbaa !6
  store i32 %595, i32 addrspace(3)* %441, align 4, !tbaa !6
  %596 = add nsw i32 %592, %590
  %597 = icmp eq i32 %596, %355
  %598 = sub i32 0, %590
  %599 = sub i32 0, %591
  %600 = sub i32 %592, %591
  %601 = select i1 %597, i32 %599, i32 %590
  %602 = select i1 %597, i32 %598, i32 %591
  %603 = select i1 %597, i32 %600, i32 %596
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %604
  %606 = load i32, i32 addrspace(1)* %605, align 4, !tbaa !6
  store i32 %606, i32 addrspace(3)* %443, align 4, !tbaa !6
  %607 = add nsw i32 %603, %602
  %608 = icmp eq i32 %607, %355
  %609 = sub i32 0, %602
  %610 = sub i32 0, %601
  %611 = select i1 %608, i32 %609, i32 %601
  %612 = select i1 %608, i32 %610, i32 %602
  %613 = select i1 %608, i32 %592, i32 %607
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %614
  %616 = load i32, i32 addrspace(1)* %615, align 4, !tbaa !6
  store i32 %616, i32 addrspace(3)* %445, align 4, !tbaa !6
  br i1 %16, label %617, label %702

617:                                              ; preds = %524
  %618 = add nsw i32 %531, %529
  %619 = icmp eq i32 %618, %193
  %620 = sub i32 0, %529
  %621 = sub i32 0, %530
  %622 = sub i32 %531, %530
  %623 = select i1 %619, i32 %622, i32 %618
  %624 = select i1 %619, i32 %620, i32 %530
  %625 = select i1 %619, i32 %621, i32 %529
  %626 = sext i32 %623 to i64
  %627 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %626
  %628 = load i32, i32 addrspace(1)* %627, align 4, !tbaa !6
  store i32 %628, i32 addrspace(3)* %447, align 4, !tbaa !6
  %629 = add nsw i32 %623, %624
  %630 = icmp eq i32 %629, %193
  %631 = sub i32 0, %624
  %632 = sub i32 0, %625
  %633 = select i1 %630, i32 %531, i32 %629
  %634 = select i1 %630, i32 %632, i32 %624
  %635 = select i1 %630, i32 %631, i32 %625
  %636 = sext i32 %633 to i64
  %637 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %636
  %638 = load i32, i32 addrspace(1)* %637, align 4, !tbaa !6
  store i32 %638, i32 addrspace(3)* %449, align 4, !tbaa !6
  %639 = add nsw i32 %633, %635
  %640 = icmp eq i32 %639, %193
  %641 = sub i32 0, %635
  %642 = sub i32 0, %634
  %643 = sub i32 %633, %634
  %644 = select i1 %640, i32 %643, i32 %639
  %645 = select i1 %640, i32 %641, i32 %634
  %646 = select i1 %640, i32 %642, i32 %635
  %647 = sext i32 %644 to i64
  %648 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %647
  %649 = load i32, i32 addrspace(1)* %648, align 4, !tbaa !6
  store i32 %649, i32 addrspace(3)* %451, align 4, !tbaa !6
  %650 = add nsw i32 %644, %645
  %651 = icmp eq i32 %650, %193
  %652 = sub i32 0, %645
  %653 = sub i32 0, %646
  %654 = select i1 %651, i32 %633, i32 %650
  %655 = select i1 %651, i32 %653, i32 %645
  %656 = select i1 %651, i32 %652, i32 %646
  %657 = sext i32 %654 to i64
  %658 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %657
  %659 = load i32, i32 addrspace(1)* %658, align 4, !tbaa !6
  store i32 %659, i32 addrspace(3)* %453, align 4, !tbaa !6
  %660 = add nsw i32 %654, %656
  %661 = icmp eq i32 %660, %193
  %662 = sub i32 0, %656
  %663 = sub i32 0, %655
  %664 = sub i32 %654, %655
  %665 = select i1 %661, i32 %664, i32 %660
  %666 = select i1 %661, i32 %662, i32 %655
  %667 = select i1 %661, i32 %663, i32 %656
  %668 = sext i32 %665 to i64
  %669 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %668
  %670 = load i32, i32 addrspace(1)* %669, align 4, !tbaa !6
  store i32 %670, i32 addrspace(3)* %455, align 4, !tbaa !6
  %671 = add nsw i32 %665, %666
  %672 = icmp eq i32 %671, %193
  %673 = sub i32 0, %666
  %674 = sub i32 0, %667
  %675 = select i1 %672, i32 %654, i32 %671
  %676 = select i1 %672, i32 %674, i32 %666
  %677 = select i1 %672, i32 %673, i32 %667
  %678 = sext i32 %675 to i64
  %679 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %678
  %680 = load i32, i32 addrspace(1)* %679, align 4, !tbaa !6
  store i32 %680, i32 addrspace(3)* %457, align 4, !tbaa !6
  %681 = add nsw i32 %675, %677
  %682 = icmp eq i32 %681, %193
  %683 = sub i32 0, %677
  %684 = sub i32 0, %676
  %685 = sub i32 %675, %676
  %686 = select i1 %682, i32 %685, i32 %681
  %687 = select i1 %682, i32 %683, i32 %676
  %688 = select i1 %682, i32 %684, i32 %677
  %689 = sext i32 %686 to i64
  %690 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %689
  %691 = load i32, i32 addrspace(1)* %690, align 4, !tbaa !6
  store i32 %691, i32 addrspace(3)* %459, align 4, !tbaa !6
  %692 = add nsw i32 %686, %687
  %693 = icmp eq i32 %692, %193
  %694 = sub i32 0, %687
  %695 = sub i32 0, %688
  %696 = select i1 %693, i32 %675, i32 %692
  %697 = select i1 %693, i32 %695, i32 %687
  %698 = select i1 %693, i32 %694, i32 %688
  %699 = sext i32 %696 to i64
  %700 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %699
  %701 = load i32, i32 addrspace(1)* %700, align 4, !tbaa !6
  store i32 %701, i32 addrspace(3)* %461, align 4, !tbaa !6
  br label %702

702:                                              ; preds = %617, %524
  %703 = phi i32 [ %696, %617 ], [ %531, %524 ]
  %704 = phi i32 [ %697, %617 ], [ %530, %524 ]
  %705 = phi i32 [ %698, %617 ], [ %529, %524 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %706 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !6
  %707 = load i32, i32 addrspace(3)* %495, align 4, !tbaa !6
  %708 = add i32 %706, 2
  %709 = add i32 %708, %707
  %710 = sdiv i32 %709, -4
  %711 = load i32, i32 addrspace(3)* %497, align 4, !tbaa !6
  %712 = add i32 %710, %711
  store i32 %712, i32 addrspace(3)* %497, align 4, !tbaa !6
  %713 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !6
  %714 = load i32, i32 addrspace(3)* %501, align 4, !tbaa !6
  %715 = add i32 %713, 2
  %716 = add i32 %715, %714
  %717 = sdiv i32 %716, -4
  %718 = load i32, i32 addrspace(3)* %503, align 4, !tbaa !6
  %719 = add i32 %717, %718
  store i32 %719, i32 addrspace(3)* %503, align 4, !tbaa !6
  %720 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !6
  %721 = load i32, i32 addrspace(3)* %507, align 4, !tbaa !6
  %722 = add i32 %720, 2
  %723 = add i32 %722, %721
  %724 = sdiv i32 %723, -4
  %725 = load i32, i32 addrspace(3)* %509, align 4, !tbaa !6
  %726 = add i32 %724, %725
  store i32 %726, i32 addrspace(3)* %509, align 4, !tbaa !6
  %727 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %728 = load i32, i32 addrspace(3)* %513, align 4, !tbaa !6
  %729 = add i32 %727, 2
  %730 = add i32 %729, %728
  %731 = sdiv i32 %730, -4
  %732 = load i32, i32 addrspace(3)* %515, align 4, !tbaa !6
  %733 = add i32 %731, %732
  store i32 %733, i32 addrspace(3)* %515, align 4, !tbaa !6
  br i1 %462, label %734, label %742

734:                                              ; preds = %702
  %735 = load i32, i32 addrspace(3)* %464, align 4, !tbaa !6
  %736 = load i32, i32 addrspace(3)* %466, align 4, !tbaa !6
  %737 = add i32 %735, 2
  %738 = add i32 %737, %736
  %739 = sdiv i32 %738, -4
  %740 = load i32, i32 addrspace(3)* %468, align 4, !tbaa !6
  %741 = add i32 %739, %740
  store i32 %741, i32 addrspace(3)* %468, align 4, !tbaa !6
  br label %742

742:                                              ; preds = %734, %702
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %743 = load i32, i32 addrspace(3)* %517, align 4, !tbaa !6
  %744 = load i32, i32 addrspace(3)* %497, align 4, !tbaa !6
  %745 = add nsw i32 %744, %743
  %746 = sdiv i32 %745, 2
  %747 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !6
  %748 = add nsw i32 %746, %747
  store i32 %748, i32 addrspace(3)* %493, align 4, !tbaa !6
  %749 = load i32, i32 addrspace(3)* %519, align 4, !tbaa !6
  %750 = load i32, i32 addrspace(3)* %503, align 4, !tbaa !6
  %751 = add nsw i32 %750, %749
  %752 = sdiv i32 %751, 2
  %753 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !6
  %754 = add nsw i32 %752, %753
  store i32 %754, i32 addrspace(3)* %499, align 4, !tbaa !6
  %755 = load i32, i32 addrspace(3)* %521, align 4, !tbaa !6
  %756 = load i32, i32 addrspace(3)* %509, align 4, !tbaa !6
  %757 = add nsw i32 %756, %755
  %758 = sdiv i32 %757, 2
  %759 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !6
  %760 = add nsw i32 %758, %759
  store i32 %760, i32 addrspace(3)* %505, align 4, !tbaa !6
  %761 = load i32, i32 addrspace(3)* %523, align 4, !tbaa !6
  %762 = load i32, i32 addrspace(3)* %515, align 4, !tbaa !6
  %763 = add nsw i32 %762, %761
  %764 = sdiv i32 %763, 2
  %765 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %766 = add nsw i32 %764, %765
  store i32 %766, i32 addrspace(3)* %511, align 4, !tbaa !6
  br i1 %462, label %767, label %774

767:                                              ; preds = %742
  %768 = load i32, i32 addrspace(3)* %470, align 4, !tbaa !6
  %769 = load i32, i32 addrspace(3)* %468, align 4, !tbaa !6
  %770 = add nsw i32 %769, %768
  %771 = sdiv i32 %770, 2
  %772 = load i32, i32 addrspace(3)* %464, align 4, !tbaa !6
  %773 = add nsw i32 %771, %772
  store i32 %773, i32 addrspace(3)* %464, align 4, !tbaa !6
  br label %774

774:                                              ; preds = %767, %742
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %775 = load i32, i32 addrspace(3)* %472, align 4, !tbaa !6
  %776 = load i32, i32 addrspace(3)* %474, align 4, !tbaa !6
  %777 = load i32, i32 addrspace(3)* %476, align 4, !tbaa !6
  %778 = load i32, i32 addrspace(3)* %477, align 4, !tbaa !6
  %779 = load i32, i32 addrspace(3)* %479, align 4, !tbaa !6
  %780 = add i32 %779, 2
  %781 = add i32 %780, %778
  %782 = sdiv i32 %781, -4
  %783 = load i32, i32 addrspace(3)* %481, align 4, !tbaa !6
  %784 = add i32 %782, %783
  store i32 %784, i32 addrspace(3)* %481, align 4, !tbaa !6
  %785 = load i32, i32 addrspace(3)* %483, align 4, !tbaa !6
  %786 = add i32 %785, %780
  %787 = sdiv i32 %786, -4
  %788 = load i32, i32 addrspace(3)* %485, align 4, !tbaa !6
  %789 = add i32 %787, %788
  store i32 %789, i32 addrspace(3)* %485, align 4, !tbaa !6
  %790 = load i32, i32 addrspace(3)* %487, align 4, !tbaa !6
  %791 = add i32 %785, 2
  %792 = add i32 %791, %790
  %793 = sdiv i32 %792, -4
  %794 = load i32, i32 addrspace(3)* %489, align 4, !tbaa !6
  %795 = add i32 %793, %794
  store i32 %795, i32 addrspace(3)* %489, align 4, !tbaa !6
  %796 = add i32 %775, 2
  %797 = add i32 %790, %796
  %798 = sdiv i32 %797, -4
  %799 = load i32, i32 addrspace(3)* %491, align 4, !tbaa !6
  %800 = add i32 %799, %798
  store i32 %800, i32 addrspace(3)* %491, align 4, !tbaa !6
  %801 = add i32 %777, %796
  %802 = sdiv i32 %801, -4
  %803 = add i32 %802, %776
  store i32 %803, i32 addrspace(3)* %474, align 4, !tbaa !6
  %804 = add nsw i32 %789, %784
  %805 = sdiv i32 %804, 2
  %806 = add nsw i32 %805, %779
  store i32 %806, i32 addrspace(3)* %479, align 4, !tbaa !6
  %807 = add nsw i32 %795, %789
  %808 = sdiv i32 %807, 2
  %809 = add nsw i32 %808, %785
  store i32 %809, i32 addrspace(3)* %483, align 4, !tbaa !6
  %810 = add nsw i32 %800, %795
  %811 = sdiv i32 %810, 2
  %812 = add nsw i32 %811, %790
  store i32 %812, i32 addrspace(3)* %487, align 4, !tbaa !6
  %813 = add nsw i32 %800, %803
  %814 = sdiv i32 %813, 2
  %815 = add nsw i32 %814, %775
  store i32 %815, i32 addrspace(3)* %472, align 4, !tbaa !6
  %816 = icmp eq i32 %528, %419
  br i1 %816, label %821, label %817

817:                                              ; preds = %774
  %818 = add nsw i32 %528, %420
  %819 = sext i32 %528 to i64
  %820 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %819
  store i32 %784, i32 addrspace(1)* %820, align 4, !tbaa !6
  br label %821

821:                                              ; preds = %817, %774
  %822 = phi i32 [ %419, %774 ], [ %818, %817 ]
  %823 = icmp eq i32 %822, %419
  br i1 %823, label %828, label %824

824:                                              ; preds = %821
  %825 = add nsw i32 %822, %420
  %826 = sext i32 %822 to i64
  %827 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %826
  store i32 %806, i32 addrspace(1)* %827, align 4, !tbaa !6
  br label %828

828:                                              ; preds = %824, %821
  %829 = phi i32 [ %419, %821 ], [ %825, %824 ]
  %830 = icmp eq i32 %829, %419
  br i1 %830, label %835, label %831

831:                                              ; preds = %828
  %832 = add nsw i32 %829, %420
  %833 = sext i32 %829 to i64
  %834 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %833
  store i32 %789, i32 addrspace(1)* %834, align 4, !tbaa !6
  br label %835

835:                                              ; preds = %831, %828
  %836 = phi i32 [ %419, %828 ], [ %832, %831 ]
  %837 = icmp eq i32 %836, %419
  br i1 %837, label %842, label %838

838:                                              ; preds = %835
  %839 = add nsw i32 %836, %420
  %840 = sext i32 %836 to i64
  %841 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %840
  store i32 %809, i32 addrspace(1)* %841, align 4, !tbaa !6
  br label %842

842:                                              ; preds = %838, %835
  %843 = phi i32 [ %419, %835 ], [ %839, %838 ]
  %844 = icmp eq i32 %843, %419
  br i1 %844, label %849, label %845

845:                                              ; preds = %842
  %846 = add nsw i32 %843, %420
  %847 = sext i32 %843 to i64
  %848 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %847
  store i32 %795, i32 addrspace(1)* %848, align 4, !tbaa !6
  br label %849

849:                                              ; preds = %845, %842
  %850 = phi i32 [ %419, %842 ], [ %846, %845 ]
  %851 = icmp eq i32 %850, %419
  br i1 %851, label %856, label %852

852:                                              ; preds = %849
  %853 = add nsw i32 %850, %420
  %854 = sext i32 %850 to i64
  %855 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %854
  store i32 %812, i32 addrspace(1)* %855, align 4, !tbaa !6
  br label %856

856:                                              ; preds = %852, %849
  %857 = phi i32 [ %419, %849 ], [ %853, %852 ]
  %858 = icmp eq i32 %857, %419
  br i1 %858, label %863, label %859

859:                                              ; preds = %856
  %860 = add nsw i32 %857, %420
  %861 = sext i32 %857 to i64
  %862 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %861
  store i32 %800, i32 addrspace(1)* %862, align 4, !tbaa !6
  br label %863

863:                                              ; preds = %859, %856
  %864 = phi i32 [ %419, %856 ], [ %860, %859 ]
  %865 = icmp eq i32 %864, %419
  br i1 %865, label %870, label %866

866:                                              ; preds = %863
  %867 = add nsw i32 %864, %420
  %868 = sext i32 %864 to i64
  %869 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %868
  store i32 %815, i32 addrspace(1)* %869, align 4, !tbaa !6
  br label %870

870:                                              ; preds = %866, %863
  %871 = phi i32 [ %419, %863 ], [ %867, %866 ]
  store i32 %775, i32 addrspace(3)* %477, align 4, !tbaa !6
  store i32 %776, i32 addrspace(3)* %481, align 4, !tbaa !6
  store i32 %777, i32 addrspace(3)* %479, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %872 = add nuw nsw i32 %525, 1
  %873 = icmp eq i32 %872, %4
  br i1 %873, label %2150, label %524, !llvm.loop !18

874:                                              ; preds = %5
  %875 = shl i32 %6, 6
  %876 = add i32 %875, 65
  %877 = icmp slt i32 %876, %2
  %878 = mul i32 %8, %4
  %879 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %880 = icmp ult i32 %879, 3
  br i1 %877, label %1534, label %881

881:                                              ; preds = %874
  br i1 %880, label %882, label %1004

882:                                              ; preds = %881
  %883 = icmp eq i32 %879, 2
  %884 = select i1 %883, i32 -3, i32 64
  %885 = add nsw i32 %884, %879
  %886 = add i32 %885, %875
  %887 = sub i32 0, %886
  %888 = trunc i32 %885 to i8
  %889 = add nsw i8 %888, 2
  %890 = sdiv i8 %889, 2
  %891 = zext i8 %890 to i32
  %892 = and i32 %885, 1
  %893 = icmp eq i32 %892, 0
  %894 = select i1 %893, i32 0, i32 376
  %895 = add nuw nsw i32 %894, %891
  %896 = icmp eq i32 %7, 0
  br i1 %896, label %897, label %944

897:                                              ; preds = %882
  %898 = icmp slt i32 %886, %2
  br i1 %898, label %903, label %899

899:                                              ; preds = %897
  %900 = shl nsw i32 %2, 1
  %901 = sub i32 -2, %886
  %902 = add i32 %901, %900
  br label %905

903:                                              ; preds = %897
  %904 = icmp slt i32 %886, 0
  br i1 %904, label %905, label %907

905:                                              ; preds = %903, %899
  %906 = phi i32 [ %902, %899 ], [ %887, %903 ]
  br label %907

907:                                              ; preds = %905, %903
  %908 = phi i32 [ %906, %905 ], [ %886, %903 ]
  %909 = sdiv i32 %908, 2
  %910 = and i32 %908, 1
  %911 = icmp eq i32 %910, 0
  %912 = sdiv i32 %2, 2
  %913 = and i32 %2, 1
  %914 = add nsw i32 %912, %913
  %915 = sdiv i32 %3, 2
  %916 = and i32 %3, 1
  %917 = add nsw i32 %915, %916
  br i1 %911, label %923, label %918

918:                                              ; preds = %907
  %919 = mul nsw i32 %917, %914
  %920 = add nsw i32 %909, %919
  %921 = mul nsw i32 %3, %2
  %922 = sdiv i32 %921, 2
  br label %925

923:                                              ; preds = %907
  %924 = mul nsw i32 %917, %2
  br label %925

925:                                              ; preds = %923, %918
  %926 = phi i32 [ %924, %923 ], [ %922, %918 ]
  %927 = phi i32 [ %909, %923 ], [ %920, %918 ]
  %928 = phi i32 [ %914, %923 ], [ %912, %918 ]
  %929 = sub nsw i32 %928, %926
  %930 = sdiv i32 %878, 2
  %931 = mul nsw i32 %928, %930
  %932 = add i32 %931, %927
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %933
  %935 = load i32, i32 addrspace(1)* %934, align 4, !tbaa !6, !amdgpu.noclobber !10
  %936 = add nuw nsw i32 %895, 34
  %937 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %936
  store i32 %935, i32 addrspace(3)* %937, align 4, !tbaa !6
  %938 = add nsw i32 %932, %926
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %939
  %941 = load i32, i32 addrspace(1)* %940, align 4, !tbaa !6, !amdgpu.noclobber !10
  %942 = add nuw nsw i32 %895, 68
  %943 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %942
  store i32 %941, i32 addrspace(3)* %943, align 4, !tbaa !6
  br label %997

944:                                              ; preds = %882
  %945 = add nsw i32 %878, -1
  %946 = icmp slt i32 %886, %2
  br i1 %946, label %951, label %947

947:                                              ; preds = %944
  %948 = shl nsw i32 %2, 1
  %949 = sub i32 -2, %886
  %950 = add i32 %949, %948
  br label %953

951:                                              ; preds = %944
  %952 = icmp slt i32 %886, 0
  br i1 %952, label %953, label %955

953:                                              ; preds = %951, %947
  %954 = phi i32 [ %950, %947 ], [ %887, %951 ]
  br label %955

955:                                              ; preds = %953, %951
  %956 = phi i32 [ %954, %953 ], [ %886, %951 ]
  %957 = sdiv i32 %956, 2
  %958 = and i32 %956, 1
  %959 = icmp eq i32 %958, 0
  %960 = sdiv i32 %2, 2
  %961 = and i32 %2, 1
  %962 = add nsw i32 %960, %961
  %963 = sdiv i32 %3, 2
  %964 = and i32 %3, 1
  %965 = add nsw i32 %963, %964
  br i1 %959, label %971, label %966

966:                                              ; preds = %955
  %967 = mul nsw i32 %965, %962
  %968 = add nsw i32 %957, %967
  %969 = mul nsw i32 %3, %2
  %970 = sdiv i32 %969, 2
  br label %973

971:                                              ; preds = %955
  %972 = mul nsw i32 %965, %2
  br label %973

973:                                              ; preds = %971, %966
  %974 = phi i32 [ %972, %971 ], [ %970, %966 ]
  %975 = phi i32 [ %957, %971 ], [ %968, %966 ]
  %976 = phi i32 [ %962, %971 ], [ %960, %966 ]
  %977 = sub nsw i32 %976, %974
  %978 = sdiv i32 %945, 2
  %979 = mul nsw i32 %976, %978
  %980 = add i32 %975, %974
  %981 = add i32 %980, %979
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %982
  %984 = load i32, i32 addrspace(1)* %983, align 4, !tbaa !6, !amdgpu.noclobber !10
  %985 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %895
  store i32 %984, i32 addrspace(3)* %985, align 4, !tbaa !6
  %986 = add nsw i32 %981, %977
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %987
  %989 = load i32, i32 addrspace(1)* %988, align 4, !tbaa !6, !amdgpu.noclobber !10
  %990 = add nuw nsw i32 %895, 34
  %991 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %990
  store i32 %989, i32 addrspace(3)* %991, align 4, !tbaa !6
  %992 = add i32 %981, %976
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %993
  %995 = load i32, i32 addrspace(1)* %994, align 4, !tbaa !6, !amdgpu.noclobber !10
  %996 = add nuw nsw i32 %895, 68
  br label %997

997:                                              ; preds = %973, %925
  %998 = phi i32 [ %938, %925 ], [ %992, %973 ]
  %999 = phi i32 [ %926, %925 ], [ %974, %973 ]
  %1000 = phi i32 [ %929, %925 ], [ %977, %973 ]
  %1001 = phi i32 [ %895, %925 ], [ %996, %973 ]
  %1002 = phi i32 [ %941, %925 ], [ %995, %973 ]
  %1003 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1001
  store i32 %1002, i32 addrspace(3)* %1003, align 4, !tbaa !6
  br label %1004

1004:                                             ; preds = %997, %881
  %1005 = phi i32 [ %895, %997 ], [ 0, %881 ]
  %1006 = phi i32 [ %998, %997 ], [ 0, %881 ]
  %1007 = phi i32 [ %999, %997 ], [ 0, %881 ]
  %1008 = phi i32 [ %1000, %997 ], [ 0, %881 ]
  %1009 = shl nuw nsw i32 %879, 1
  %1010 = lshr i32 %879, 5
  %1011 = mul nsw i32 %1010, -63
  %1012 = add nsw i32 %1011, %1009
  %1013 = add i32 %1012, %875
  %1014 = sub i32 0, %1013
  %1015 = trunc i32 %1012 to i16
  %1016 = add nsw i16 %1015, 2
  %1017 = sdiv i16 %1016, 2
  %1018 = sext i16 %1017 to i32
  %1019 = and i32 %1012, 1
  %1020 = icmp eq i32 %1019, 0
  %1021 = select i1 %1020, i32 0, i32 376
  %1022 = add nsw i32 %1021, %1018
  %1023 = icmp eq i32 %7, 0
  br i1 %1023, label %1024, label %1071

1024:                                             ; preds = %1004
  %1025 = icmp slt i32 %1013, %2
  br i1 %1025, label %1030, label %1026

1026:                                             ; preds = %1024
  %1027 = shl nsw i32 %2, 1
  %1028 = sub i32 -2, %1013
  %1029 = add i32 %1028, %1027
  br label %1032

1030:                                             ; preds = %1024
  %1031 = icmp slt i32 %1013, 0
  br i1 %1031, label %1032, label %1034

1032:                                             ; preds = %1030, %1026
  %1033 = phi i32 [ %1029, %1026 ], [ %1014, %1030 ]
  br label %1034

1034:                                             ; preds = %1032, %1030
  %1035 = phi i32 [ %1033, %1032 ], [ %1013, %1030 ]
  %1036 = sdiv i32 %1035, 2
  %1037 = and i32 %1035, 1
  %1038 = icmp eq i32 %1037, 0
  %1039 = sdiv i32 %2, 2
  %1040 = and i32 %2, 1
  %1041 = add nsw i32 %1039, %1040
  %1042 = sdiv i32 %3, 2
  %1043 = and i32 %3, 1
  %1044 = add nsw i32 %1042, %1043
  br i1 %1038, label %1050, label %1045

1045:                                             ; preds = %1034
  %1046 = mul nsw i32 %1044, %1041
  %1047 = add nsw i32 %1036, %1046
  %1048 = mul nsw i32 %3, %2
  %1049 = sdiv i32 %1048, 2
  br label %1052

1050:                                             ; preds = %1034
  %1051 = mul nsw i32 %1044, %2
  br label %1052

1052:                                             ; preds = %1050, %1045
  %1053 = phi i32 [ %1051, %1050 ], [ %1049, %1045 ]
  %1054 = phi i32 [ %1036, %1050 ], [ %1047, %1045 ]
  %1055 = phi i32 [ %1041, %1050 ], [ %1039, %1045 ]
  %1056 = sub nsw i32 %1055, %1053
  %1057 = sdiv i32 %878, 2
  %1058 = mul nsw i32 %1055, %1057
  %1059 = add i32 %1058, %1054
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1060
  %1062 = load i32, i32 addrspace(1)* %1061, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1063 = add nsw i32 %1022, 34
  %1064 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1063
  store i32 %1062, i32 addrspace(3)* %1064, align 4, !tbaa !6
  %1065 = add nsw i32 %1059, %1053
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1066
  %1068 = load i32, i32 addrspace(1)* %1067, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1069 = add nsw i32 %1022, 68
  %1070 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1069
  store i32 %1068, i32 addrspace(3)* %1070, align 4, !tbaa !6
  br label %1124

1071:                                             ; preds = %1004
  %1072 = add nsw i32 %878, -1
  %1073 = icmp slt i32 %1013, %2
  br i1 %1073, label %1078, label %1074

1074:                                             ; preds = %1071
  %1075 = shl nsw i32 %2, 1
  %1076 = sub i32 -2, %1013
  %1077 = add i32 %1076, %1075
  br label %1080

1078:                                             ; preds = %1071
  %1079 = icmp slt i32 %1013, 0
  br i1 %1079, label %1080, label %1082

1080:                                             ; preds = %1078, %1074
  %1081 = phi i32 [ %1077, %1074 ], [ %1014, %1078 ]
  br label %1082

1082:                                             ; preds = %1080, %1078
  %1083 = phi i32 [ %1081, %1080 ], [ %1013, %1078 ]
  %1084 = sdiv i32 %1083, 2
  %1085 = and i32 %1083, 1
  %1086 = icmp eq i32 %1085, 0
  %1087 = sdiv i32 %2, 2
  %1088 = and i32 %2, 1
  %1089 = add nsw i32 %1087, %1088
  %1090 = sdiv i32 %3, 2
  %1091 = and i32 %3, 1
  %1092 = add nsw i32 %1090, %1091
  br i1 %1086, label %1098, label %1093

1093:                                             ; preds = %1082
  %1094 = mul nsw i32 %1092, %1089
  %1095 = add nsw i32 %1084, %1094
  %1096 = mul nsw i32 %3, %2
  %1097 = sdiv i32 %1096, 2
  br label %1100

1098:                                             ; preds = %1082
  %1099 = mul nsw i32 %1092, %2
  br label %1100

1100:                                             ; preds = %1098, %1093
  %1101 = phi i32 [ %1099, %1098 ], [ %1097, %1093 ]
  %1102 = phi i32 [ %1084, %1098 ], [ %1095, %1093 ]
  %1103 = phi i32 [ %1089, %1098 ], [ %1087, %1093 ]
  %1104 = sub nsw i32 %1103, %1101
  %1105 = sdiv i32 %1072, 2
  %1106 = mul nsw i32 %1103, %1105
  %1107 = add i32 %1102, %1101
  %1108 = add i32 %1107, %1106
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1109
  %1111 = load i32, i32 addrspace(1)* %1110, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1112 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1022
  store i32 %1111, i32 addrspace(3)* %1112, align 4, !tbaa !6
  %1113 = add nsw i32 %1108, %1104
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1114
  %1116 = load i32, i32 addrspace(1)* %1115, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1117 = add nsw i32 %1022, 34
  %1118 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1117
  store i32 %1116, i32 addrspace(3)* %1118, align 4, !tbaa !6
  %1119 = add i32 %1108, %1103
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1120
  %1122 = load i32, i32 addrspace(1)* %1121, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1123 = add nsw i32 %1022, 68
  br label %1124

1124:                                             ; preds = %1100, %1052
  %1125 = phi i32 [ %1056, %1052 ], [ %1104, %1100 ]
  %1126 = phi i32 [ %1053, %1052 ], [ %1101, %1100 ]
  %1127 = phi i32 [ %1065, %1052 ], [ %1119, %1100 ]
  %1128 = phi i32 [ %1022, %1052 ], [ %1123, %1100 ]
  %1129 = phi i32 [ %1068, %1052 ], [ %1122, %1100 ]
  %1130 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1128
  store i32 %1129, i32 addrspace(3)* %1130, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1131 = add nuw nsw i32 %879, 376
  %1132 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1131
  %1133 = load i32, i32 addrspace(3)* %1132, align 4, !tbaa !6
  %1134 = add nuw nsw i32 %879, 377
  %1135 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1134
  %1136 = load i32, i32 addrspace(3)* %1135, align 4, !tbaa !6
  %1137 = add nuw nsw i32 %879, 1
  %1138 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1137
  %1139 = add i32 %1133, 2
  %1140 = add i32 %1139, %1136
  %1141 = sdiv i32 %1140, -4
  %1142 = load i32, i32 addrspace(3)* %1138, align 4, !tbaa !6
  %1143 = add i32 %1141, %1142
  store i32 %1143, i32 addrspace(3)* %1138, align 4, !tbaa !6
  %1144 = icmp ult i32 %879, 37
  br i1 %1144, label %1145, label %1159

1145:                                             ; preds = %1124
  %1146 = add nuw nsw i32 %879, 440
  %1147 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1146
  %1148 = load i32, i32 addrspace(3)* %1147, align 4, !tbaa !6
  %1149 = add nuw nsw i32 %879, 441
  %1150 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1149
  %1151 = load i32, i32 addrspace(3)* %1150, align 4, !tbaa !6
  %1152 = add nuw nsw i32 %879, 65
  %1153 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1152
  %1154 = add i32 %1148, 2
  %1155 = add i32 %1154, %1151
  %1156 = sdiv i32 %1155, -4
  %1157 = load i32, i32 addrspace(3)* %1153, align 4, !tbaa !6
  %1158 = add i32 %1156, %1157
  store i32 %1158, i32 addrspace(3)* %1153, align 4, !tbaa !6
  br label %1159

1159:                                             ; preds = %1145, %1124
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1160 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %879
  %1161 = load i32, i32 addrspace(3)* %1160, align 4, !tbaa !6
  %1162 = load i32, i32 addrspace(3)* %1138, align 4, !tbaa !6
  %1163 = add nsw i32 %1162, %1161
  %1164 = sdiv i32 %1163, 2
  %1165 = load i32, i32 addrspace(3)* %1132, align 4, !tbaa !6
  %1166 = add nsw i32 %1164, %1165
  store i32 %1166, i32 addrspace(3)* %1132, align 4, !tbaa !6
  br i1 %1144, label %1167, label %1180

1167:                                             ; preds = %1159
  %1168 = add nuw nsw i32 %879, 64
  %1169 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1168
  %1170 = load i32, i32 addrspace(3)* %1169, align 4, !tbaa !6
  %1171 = add nuw nsw i32 %879, 65
  %1172 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1171
  %1173 = load i32, i32 addrspace(3)* %1172, align 4, !tbaa !6
  %1174 = add nuw nsw i32 %879, 440
  %1175 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1174
  %1176 = add nsw i32 %1173, %1170
  %1177 = sdiv i32 %1176, 2
  %1178 = load i32, i32 addrspace(3)* %1175, align 4, !tbaa !6
  %1179 = add nsw i32 %1177, %1178
  store i32 %1179, i32 addrspace(3)* %1175, align 4, !tbaa !6
  br label %1180

1180:                                             ; preds = %1167, %1159
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1181 = add i32 %875, %879
  %1182 = icmp slt i32 %1181, %2
  br i1 %1182, label %1183, label %1188

1183:                                             ; preds = %1180
  %1184 = mul nsw i32 %3, %2
  %1185 = add nsw i32 %1184, %1181
  %1186 = mul nsw i32 %878, %2
  %1187 = add nsw i32 %1186, %1181
  br label %1188

1188:                                             ; preds = %1183, %1180
  %1189 = phi i32 [ %1185, %1183 ], [ 0, %1180 ]
  %1190 = phi i32 [ %2, %1183 ], [ 0, %1180 ]
  %1191 = phi i32 [ %1187, %1183 ], [ 0, %1180 ]
  %1192 = add nuw nsw i32 %879, 2
  %1193 = lshr i32 %1192, 1
  %1194 = and i32 %879, 1
  %1195 = icmp eq i32 %1194, 0
  %1196 = select i1 %1195, i32 0, i32 376
  %1197 = add nuw nsw i32 %1196, %1193
  %1198 = icmp sgt i32 %4, 0
  br i1 %1198, label %1199, label %2150

1199:                                             ; preds = %1188
  %1200 = add nsw i32 %1022, 102
  %1201 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1200
  %1202 = add nsw i32 %1022, 136
  %1203 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1202
  %1204 = add nsw i32 %1022, 170
  %1205 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1204
  %1206 = add nsw i32 %1022, 204
  %1207 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1206
  %1208 = add nsw i32 %1022, 238
  %1209 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1208
  %1210 = add nsw i32 %1022, 272
  %1211 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1210
  %1212 = add nsw i32 %1022, 306
  %1213 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1212
  %1214 = add nsw i32 %1022, 340
  %1215 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1214
  %1216 = add nuw nsw i32 %1005, 102
  %1217 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1216
  %1218 = add nuw nsw i32 %1005, 136
  %1219 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1218
  %1220 = add nuw nsw i32 %1005, 170
  %1221 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1220
  %1222 = add nuw nsw i32 %1005, 204
  %1223 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1222
  %1224 = add nuw nsw i32 %1005, 238
  %1225 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1224
  %1226 = add nuw nsw i32 %1005, 272
  %1227 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1226
  %1228 = add nuw nsw i32 %1005, 306
  %1229 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1228
  %1230 = add nuw nsw i32 %1005, 340
  %1231 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1230
  %1232 = icmp ult i32 %879, 15
  %1233 = add nuw nsw i32 %879, 734
  %1234 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1233
  %1235 = add nuw nsw i32 %879, 735
  %1236 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1235
  %1237 = add nuw nsw i32 %879, 359
  %1238 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1237
  %1239 = add nuw nsw i32 %879, 358
  %1240 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1239
  %1241 = add nuw nsw i32 %1197, 272
  %1242 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1241
  %1243 = add nuw nsw i32 %1197, 306
  %1244 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1243
  %1245 = add nuw nsw i32 %1197, 340
  %1246 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1245
  %1247 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1197
  %1248 = add nuw nsw i32 %1197, 68
  %1249 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1248
  %1250 = add nuw nsw i32 %1197, 34
  %1251 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1250
  %1252 = add nuw nsw i32 %1197, 136
  %1253 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1252
  %1254 = add nuw nsw i32 %1197, 102
  %1255 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1254
  %1256 = add nuw nsw i32 %1197, 204
  %1257 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1256
  %1258 = add nuw nsw i32 %1197, 170
  %1259 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1258
  %1260 = add nuw nsw i32 %1197, 238
  %1261 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1260
  %1262 = add nuw nsw i32 %879, 478
  %1263 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1262
  %1264 = add nuw nsw i32 %879, 479
  %1265 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1264
  %1266 = add nuw nsw i32 %879, 103
  %1267 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1266
  %1268 = add nuw nsw i32 %879, 542
  %1269 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1268
  %1270 = add nuw nsw i32 %879, 543
  %1271 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1270
  %1272 = add nuw nsw i32 %879, 167
  %1273 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1272
  %1274 = add nuw nsw i32 %879, 606
  %1275 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1274
  %1276 = add nuw nsw i32 %879, 607
  %1277 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1276
  %1278 = add nuw nsw i32 %879, 231
  %1279 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1278
  %1280 = add nuw nsw i32 %879, 670
  %1281 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1280
  %1282 = add nuw nsw i32 %879, 671
  %1283 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1282
  %1284 = add nuw nsw i32 %879, 295
  %1285 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1284
  %1286 = add nuw nsw i32 %879, 102
  %1287 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1286
  %1288 = add nuw nsw i32 %879, 166
  %1289 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1288
  %1290 = add nuw nsw i32 %879, 230
  %1291 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1290
  %1292 = add nuw nsw i32 %879, 294
  %1293 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1292
  br label %1294

1294:                                             ; preds = %1530, %1199
  %1295 = phi i32 [ 0, %1199 ], [ %1532, %1530 ]
  %1296 = phi i32 [ %1127, %1199 ], [ %1327, %1530 ]
  %1297 = phi i32 [ %1191, %1199 ], [ %1531, %1530 ]
  %1298 = phi i32 [ %1006, %1199 ], [ %1365, %1530 ]
  %1299 = add nsw i32 %1296, %1125
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1300
  %1302 = load i32, i32 addrspace(1)* %1301, align 4, !tbaa !6
  store i32 %1302, i32 addrspace(3)* %1201, align 4, !tbaa !6
  %1303 = add nsw i32 %1299, %1126
  %1304 = sext i32 %1303 to i64
  %1305 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1304
  %1306 = load i32, i32 addrspace(1)* %1305, align 4, !tbaa !6
  store i32 %1306, i32 addrspace(3)* %1203, align 4, !tbaa !6
  %1307 = add nsw i32 %1303, %1125
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1308
  %1310 = load i32, i32 addrspace(1)* %1309, align 4, !tbaa !6
  store i32 %1310, i32 addrspace(3)* %1205, align 4, !tbaa !6
  %1311 = add nsw i32 %1307, %1126
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1312
  %1314 = load i32, i32 addrspace(1)* %1313, align 4, !tbaa !6
  store i32 %1314, i32 addrspace(3)* %1207, align 4, !tbaa !6
  %1315 = add nsw i32 %1311, %1125
  %1316 = sext i32 %1315 to i64
  %1317 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1316
  %1318 = load i32, i32 addrspace(1)* %1317, align 4, !tbaa !6
  store i32 %1318, i32 addrspace(3)* %1209, align 4, !tbaa !6
  %1319 = add nsw i32 %1315, %1126
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1320
  %1322 = load i32, i32 addrspace(1)* %1321, align 4, !tbaa !6
  store i32 %1322, i32 addrspace(3)* %1211, align 4, !tbaa !6
  %1323 = add nsw i32 %1319, %1125
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1324
  %1326 = load i32, i32 addrspace(1)* %1325, align 4, !tbaa !6
  store i32 %1326, i32 addrspace(3)* %1213, align 4, !tbaa !6
  %1327 = add nsw i32 %1323, %1126
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1328
  %1330 = load i32, i32 addrspace(1)* %1329, align 4, !tbaa !6
  store i32 %1330, i32 addrspace(3)* %1215, align 4, !tbaa !6
  br i1 %880, label %1331, label %1364

1331:                                             ; preds = %1294
  %1332 = add nsw i32 %1298, %1008
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1333
  %1335 = load i32, i32 addrspace(1)* %1334, align 4, !tbaa !6
  store i32 %1335, i32 addrspace(3)* %1217, align 4, !tbaa !6
  %1336 = add nsw i32 %1332, %1007
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1337
  %1339 = load i32, i32 addrspace(1)* %1338, align 4, !tbaa !6
  store i32 %1339, i32 addrspace(3)* %1219, align 4, !tbaa !6
  %1340 = add nsw i32 %1336, %1008
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1341
  %1343 = load i32, i32 addrspace(1)* %1342, align 4, !tbaa !6
  store i32 %1343, i32 addrspace(3)* %1221, align 4, !tbaa !6
  %1344 = add nsw i32 %1340, %1007
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1345
  %1347 = load i32, i32 addrspace(1)* %1346, align 4, !tbaa !6
  store i32 %1347, i32 addrspace(3)* %1223, align 4, !tbaa !6
  %1348 = add nsw i32 %1344, %1008
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1349
  %1351 = load i32, i32 addrspace(1)* %1350, align 4, !tbaa !6
  store i32 %1351, i32 addrspace(3)* %1225, align 4, !tbaa !6
  %1352 = add nsw i32 %1348, %1007
  %1353 = sext i32 %1352 to i64
  %1354 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1353
  %1355 = load i32, i32 addrspace(1)* %1354, align 4, !tbaa !6
  store i32 %1355, i32 addrspace(3)* %1227, align 4, !tbaa !6
  %1356 = add nsw i32 %1352, %1008
  %1357 = sext i32 %1356 to i64
  %1358 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1357
  %1359 = load i32, i32 addrspace(1)* %1358, align 4, !tbaa !6
  store i32 %1359, i32 addrspace(3)* %1229, align 4, !tbaa !6
  %1360 = add nsw i32 %1356, %1007
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1361
  %1363 = load i32, i32 addrspace(1)* %1362, align 4, !tbaa !6
  store i32 %1363, i32 addrspace(3)* %1231, align 4, !tbaa !6
  br label %1364

1364:                                             ; preds = %1331, %1294
  %1365 = phi i32 [ %1360, %1331 ], [ %1298, %1294 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1366 = load i32, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1367 = load i32, i32 addrspace(3)* %1265, align 4, !tbaa !6
  %1368 = add i32 %1366, 2
  %1369 = add i32 %1368, %1367
  %1370 = sdiv i32 %1369, -4
  %1371 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1372 = add i32 %1370, %1371
  store i32 %1372, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1373 = load i32, i32 addrspace(3)* %1269, align 4, !tbaa !6
  %1374 = load i32, i32 addrspace(3)* %1271, align 4, !tbaa !6
  %1375 = add i32 %1373, 2
  %1376 = add i32 %1375, %1374
  %1377 = sdiv i32 %1376, -4
  %1378 = load i32, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1379 = add i32 %1377, %1378
  store i32 %1379, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1380 = load i32, i32 addrspace(3)* %1275, align 4, !tbaa !6
  %1381 = load i32, i32 addrspace(3)* %1277, align 4, !tbaa !6
  %1382 = add i32 %1380, 2
  %1383 = add i32 %1382, %1381
  %1384 = sdiv i32 %1383, -4
  %1385 = load i32, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1386 = add i32 %1384, %1385
  store i32 %1386, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1387 = load i32, i32 addrspace(3)* %1281, align 4, !tbaa !6
  %1388 = load i32, i32 addrspace(3)* %1283, align 4, !tbaa !6
  %1389 = add i32 %1387, 2
  %1390 = add i32 %1389, %1388
  %1391 = sdiv i32 %1390, -4
  %1392 = load i32, i32 addrspace(3)* %1285, align 4, !tbaa !6
  %1393 = add i32 %1391, %1392
  store i32 %1393, i32 addrspace(3)* %1285, align 4, !tbaa !6
  br i1 %1232, label %1394, label %1402

1394:                                             ; preds = %1364
  %1395 = load i32, i32 addrspace(3)* %1234, align 4, !tbaa !6
  %1396 = load i32, i32 addrspace(3)* %1236, align 4, !tbaa !6
  %1397 = add i32 %1395, 2
  %1398 = add i32 %1397, %1396
  %1399 = sdiv i32 %1398, -4
  %1400 = load i32, i32 addrspace(3)* %1238, align 4, !tbaa !6
  %1401 = add i32 %1399, %1400
  store i32 %1401, i32 addrspace(3)* %1238, align 4, !tbaa !6
  br label %1402

1402:                                             ; preds = %1394, %1364
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1403 = load i32, i32 addrspace(3)* %1287, align 4, !tbaa !6
  %1404 = load i32, i32 addrspace(3)* %1267, align 4, !tbaa !6
  %1405 = add nsw i32 %1404, %1403
  %1406 = sdiv i32 %1405, 2
  %1407 = load i32, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1408 = add nsw i32 %1406, %1407
  store i32 %1408, i32 addrspace(3)* %1263, align 4, !tbaa !6
  %1409 = load i32, i32 addrspace(3)* %1289, align 4, !tbaa !6
  %1410 = load i32, i32 addrspace(3)* %1273, align 4, !tbaa !6
  %1411 = add nsw i32 %1410, %1409
  %1412 = sdiv i32 %1411, 2
  %1413 = load i32, i32 addrspace(3)* %1269, align 4, !tbaa !6
  %1414 = add nsw i32 %1412, %1413
  store i32 %1414, i32 addrspace(3)* %1269, align 4, !tbaa !6
  %1415 = load i32, i32 addrspace(3)* %1291, align 4, !tbaa !6
  %1416 = load i32, i32 addrspace(3)* %1279, align 4, !tbaa !6
  %1417 = add nsw i32 %1416, %1415
  %1418 = sdiv i32 %1417, 2
  %1419 = load i32, i32 addrspace(3)* %1275, align 4, !tbaa !6
  %1420 = add nsw i32 %1418, %1419
  store i32 %1420, i32 addrspace(3)* %1275, align 4, !tbaa !6
  %1421 = load i32, i32 addrspace(3)* %1293, align 4, !tbaa !6
  %1422 = load i32, i32 addrspace(3)* %1285, align 4, !tbaa !6
  %1423 = add nsw i32 %1422, %1421
  %1424 = sdiv i32 %1423, 2
  %1425 = load i32, i32 addrspace(3)* %1281, align 4, !tbaa !6
  %1426 = add nsw i32 %1424, %1425
  store i32 %1426, i32 addrspace(3)* %1281, align 4, !tbaa !6
  br i1 %1232, label %1427, label %1434

1427:                                             ; preds = %1402
  %1428 = load i32, i32 addrspace(3)* %1240, align 4, !tbaa !6
  %1429 = load i32, i32 addrspace(3)* %1238, align 4, !tbaa !6
  %1430 = add nsw i32 %1429, %1428
  %1431 = sdiv i32 %1430, 2
  %1432 = load i32, i32 addrspace(3)* %1234, align 4, !tbaa !6
  %1433 = add nsw i32 %1431, %1432
  store i32 %1433, i32 addrspace(3)* %1234, align 4, !tbaa !6
  br label %1434

1434:                                             ; preds = %1427, %1402
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1435 = load i32, i32 addrspace(3)* %1242, align 4, !tbaa !6
  %1436 = load i32, i32 addrspace(3)* %1244, align 4, !tbaa !6
  %1437 = load i32, i32 addrspace(3)* %1246, align 4, !tbaa !6
  %1438 = load i32, i32 addrspace(3)* %1247, align 4, !tbaa !6
  %1439 = load i32, i32 addrspace(3)* %1249, align 4, !tbaa !6
  %1440 = add i32 %1439, 2
  %1441 = add i32 %1440, %1438
  %1442 = sdiv i32 %1441, -4
  %1443 = load i32, i32 addrspace(3)* %1251, align 4, !tbaa !6
  %1444 = add i32 %1442, %1443
  store i32 %1444, i32 addrspace(3)* %1251, align 4, !tbaa !6
  %1445 = load i32, i32 addrspace(3)* %1253, align 4, !tbaa !6
  %1446 = add i32 %1445, %1440
  %1447 = sdiv i32 %1446, -4
  %1448 = load i32, i32 addrspace(3)* %1255, align 4, !tbaa !6
  %1449 = add i32 %1447, %1448
  store i32 %1449, i32 addrspace(3)* %1255, align 4, !tbaa !6
  %1450 = load i32, i32 addrspace(3)* %1257, align 4, !tbaa !6
  %1451 = add i32 %1445, 2
  %1452 = add i32 %1451, %1450
  %1453 = sdiv i32 %1452, -4
  %1454 = load i32, i32 addrspace(3)* %1259, align 4, !tbaa !6
  %1455 = add i32 %1453, %1454
  store i32 %1455, i32 addrspace(3)* %1259, align 4, !tbaa !6
  %1456 = add i32 %1435, 2
  %1457 = add i32 %1450, %1456
  %1458 = sdiv i32 %1457, -4
  %1459 = load i32, i32 addrspace(3)* %1261, align 4, !tbaa !6
  %1460 = add i32 %1459, %1458
  store i32 %1460, i32 addrspace(3)* %1261, align 4, !tbaa !6
  %1461 = add i32 %1437, %1456
  %1462 = sdiv i32 %1461, -4
  %1463 = add i32 %1462, %1436
  store i32 %1463, i32 addrspace(3)* %1244, align 4, !tbaa !6
  %1464 = add nsw i32 %1449, %1444
  %1465 = sdiv i32 %1464, 2
  %1466 = add nsw i32 %1465, %1439
  store i32 %1466, i32 addrspace(3)* %1249, align 4, !tbaa !6
  %1467 = add nsw i32 %1455, %1449
  %1468 = sdiv i32 %1467, 2
  %1469 = add nsw i32 %1468, %1445
  store i32 %1469, i32 addrspace(3)* %1253, align 4, !tbaa !6
  %1470 = add nsw i32 %1460, %1455
  %1471 = sdiv i32 %1470, 2
  %1472 = add nsw i32 %1471, %1450
  store i32 %1472, i32 addrspace(3)* %1257, align 4, !tbaa !6
  %1473 = add nsw i32 %1460, %1463
  %1474 = sdiv i32 %1473, 2
  %1475 = add nsw i32 %1474, %1435
  store i32 %1475, i32 addrspace(3)* %1242, align 4, !tbaa !6
  %1476 = icmp eq i32 %1297, %1189
  br i1 %1476, label %1481, label %1477

1477:                                             ; preds = %1434
  %1478 = add nsw i32 %1297, %1190
  %1479 = sext i32 %1297 to i64
  %1480 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1479
  store i32 %1444, i32 addrspace(1)* %1480, align 4, !tbaa !6
  br label %1481

1481:                                             ; preds = %1477, %1434
  %1482 = phi i32 [ %1189, %1434 ], [ %1478, %1477 ]
  %1483 = icmp eq i32 %1482, %1189
  br i1 %1483, label %1488, label %1484

1484:                                             ; preds = %1481
  %1485 = add nsw i32 %1482, %1190
  %1486 = sext i32 %1482 to i64
  %1487 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1486
  store i32 %1466, i32 addrspace(1)* %1487, align 4, !tbaa !6
  br label %1488

1488:                                             ; preds = %1484, %1481
  %1489 = phi i32 [ %1189, %1481 ], [ %1485, %1484 ]
  %1490 = icmp eq i32 %1489, %1189
  br i1 %1490, label %1495, label %1491

1491:                                             ; preds = %1488
  %1492 = add nsw i32 %1489, %1190
  %1493 = sext i32 %1489 to i64
  %1494 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1493
  store i32 %1449, i32 addrspace(1)* %1494, align 4, !tbaa !6
  br label %1495

1495:                                             ; preds = %1491, %1488
  %1496 = phi i32 [ %1189, %1488 ], [ %1492, %1491 ]
  %1497 = icmp eq i32 %1496, %1189
  br i1 %1497, label %1502, label %1498

1498:                                             ; preds = %1495
  %1499 = add nsw i32 %1496, %1190
  %1500 = sext i32 %1496 to i64
  %1501 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1500
  store i32 %1469, i32 addrspace(1)* %1501, align 4, !tbaa !6
  br label %1502

1502:                                             ; preds = %1498, %1495
  %1503 = phi i32 [ %1189, %1495 ], [ %1499, %1498 ]
  %1504 = icmp eq i32 %1503, %1189
  br i1 %1504, label %1509, label %1505

1505:                                             ; preds = %1502
  %1506 = add nsw i32 %1503, %1190
  %1507 = sext i32 %1503 to i64
  %1508 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1507
  store i32 %1455, i32 addrspace(1)* %1508, align 4, !tbaa !6
  br label %1509

1509:                                             ; preds = %1505, %1502
  %1510 = phi i32 [ %1189, %1502 ], [ %1506, %1505 ]
  %1511 = icmp eq i32 %1510, %1189
  br i1 %1511, label %1516, label %1512

1512:                                             ; preds = %1509
  %1513 = add nsw i32 %1510, %1190
  %1514 = sext i32 %1510 to i64
  %1515 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1514
  store i32 %1472, i32 addrspace(1)* %1515, align 4, !tbaa !6
  br label %1516

1516:                                             ; preds = %1512, %1509
  %1517 = phi i32 [ %1189, %1509 ], [ %1513, %1512 ]
  %1518 = icmp eq i32 %1517, %1189
  br i1 %1518, label %1523, label %1519

1519:                                             ; preds = %1516
  %1520 = add nsw i32 %1517, %1190
  %1521 = sext i32 %1517 to i64
  %1522 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1521
  store i32 %1460, i32 addrspace(1)* %1522, align 4, !tbaa !6
  br label %1523

1523:                                             ; preds = %1519, %1516
  %1524 = phi i32 [ %1189, %1516 ], [ %1520, %1519 ]
  %1525 = icmp eq i32 %1524, %1189
  br i1 %1525, label %1530, label %1526

1526:                                             ; preds = %1523
  %1527 = add nsw i32 %1524, %1190
  %1528 = sext i32 %1524 to i64
  %1529 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %1528
  store i32 %1475, i32 addrspace(1)* %1529, align 4, !tbaa !6
  br label %1530

1530:                                             ; preds = %1526, %1523
  %1531 = phi i32 [ %1189, %1523 ], [ %1527, %1526 ]
  store i32 %1435, i32 addrspace(3)* %1247, align 4, !tbaa !6
  store i32 %1436, i32 addrspace(3)* %1251, align 4, !tbaa !6
  store i32 %1437, i32 addrspace(3)* %1249, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1532 = add nuw nsw i32 %1295, 1
  %1533 = icmp eq i32 %1532, %4
  br i1 %1533, label %2150, label %1294, !llvm.loop !19

1534:                                             ; preds = %874
  br i1 %880, label %1535, label %1657

1535:                                             ; preds = %1534
  %1536 = icmp eq i32 %879, 2
  %1537 = select i1 %1536, i32 -3, i32 64
  %1538 = add nsw i32 %1537, %879
  %1539 = add i32 %1538, %875
  %1540 = sub i32 0, %1539
  %1541 = trunc i32 %1538 to i8
  %1542 = add nsw i8 %1541, 2
  %1543 = sdiv i8 %1542, 2
  %1544 = zext i8 %1543 to i32
  %1545 = and i32 %1538, 1
  %1546 = icmp eq i32 %1545, 0
  %1547 = select i1 %1546, i32 0, i32 376
  %1548 = add nuw nsw i32 %1547, %1544
  %1549 = icmp eq i32 %7, 0
  br i1 %1549, label %1550, label %1597

1550:                                             ; preds = %1535
  %1551 = icmp slt i32 %1539, %2
  br i1 %1551, label %1556, label %1552

1552:                                             ; preds = %1550
  %1553 = shl nsw i32 %2, 1
  %1554 = sub i32 -2, %1539
  %1555 = add i32 %1554, %1553
  br label %1558

1556:                                             ; preds = %1550
  %1557 = icmp slt i32 %1539, 0
  br i1 %1557, label %1558, label %1560

1558:                                             ; preds = %1556, %1552
  %1559 = phi i32 [ %1555, %1552 ], [ %1540, %1556 ]
  br label %1560

1560:                                             ; preds = %1558, %1556
  %1561 = phi i32 [ %1559, %1558 ], [ %1539, %1556 ]
  %1562 = sdiv i32 %1561, 2
  %1563 = and i32 %1561, 1
  %1564 = icmp eq i32 %1563, 0
  %1565 = sdiv i32 %2, 2
  %1566 = and i32 %2, 1
  %1567 = add nsw i32 %1565, %1566
  %1568 = sdiv i32 %3, 2
  %1569 = and i32 %3, 1
  %1570 = add nsw i32 %1568, %1569
  br i1 %1564, label %1576, label %1571

1571:                                             ; preds = %1560
  %1572 = mul nsw i32 %1570, %1567
  %1573 = add nsw i32 %1562, %1572
  %1574 = mul nsw i32 %3, %2
  %1575 = sdiv i32 %1574, 2
  br label %1578

1576:                                             ; preds = %1560
  %1577 = mul nsw i32 %1570, %2
  br label %1578

1578:                                             ; preds = %1576, %1571
  %1579 = phi i32 [ %1577, %1576 ], [ %1575, %1571 ]
  %1580 = phi i32 [ %1562, %1576 ], [ %1573, %1571 ]
  %1581 = phi i32 [ %1567, %1576 ], [ %1565, %1571 ]
  %1582 = sub nsw i32 %1581, %1579
  %1583 = sdiv i32 %878, 2
  %1584 = mul nsw i32 %1581, %1583
  %1585 = add i32 %1584, %1580
  %1586 = sext i32 %1585 to i64
  %1587 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1586
  %1588 = load i32, i32 addrspace(1)* %1587, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1589 = add nuw nsw i32 %1548, 34
  %1590 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1589
  store i32 %1588, i32 addrspace(3)* %1590, align 4, !tbaa !6
  %1591 = add nsw i32 %1585, %1579
  %1592 = sext i32 %1591 to i64
  %1593 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1592
  %1594 = load i32, i32 addrspace(1)* %1593, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1595 = add nuw nsw i32 %1548, 68
  %1596 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1595
  store i32 %1594, i32 addrspace(3)* %1596, align 4, !tbaa !6
  br label %1650

1597:                                             ; preds = %1535
  %1598 = add nsw i32 %878, -1
  %1599 = icmp slt i32 %1539, %2
  br i1 %1599, label %1604, label %1600

1600:                                             ; preds = %1597
  %1601 = shl nsw i32 %2, 1
  %1602 = sub i32 -2, %1539
  %1603 = add i32 %1602, %1601
  br label %1606

1604:                                             ; preds = %1597
  %1605 = icmp slt i32 %1539, 0
  br i1 %1605, label %1606, label %1608

1606:                                             ; preds = %1604, %1600
  %1607 = phi i32 [ %1603, %1600 ], [ %1540, %1604 ]
  br label %1608

1608:                                             ; preds = %1606, %1604
  %1609 = phi i32 [ %1607, %1606 ], [ %1539, %1604 ]
  %1610 = sdiv i32 %1609, 2
  %1611 = and i32 %1609, 1
  %1612 = icmp eq i32 %1611, 0
  %1613 = sdiv i32 %2, 2
  %1614 = and i32 %2, 1
  %1615 = add nsw i32 %1613, %1614
  %1616 = sdiv i32 %3, 2
  %1617 = and i32 %3, 1
  %1618 = add nsw i32 %1616, %1617
  br i1 %1612, label %1624, label %1619

1619:                                             ; preds = %1608
  %1620 = mul nsw i32 %1618, %1615
  %1621 = add nsw i32 %1610, %1620
  %1622 = mul nsw i32 %3, %2
  %1623 = sdiv i32 %1622, 2
  br label %1626

1624:                                             ; preds = %1608
  %1625 = mul nsw i32 %1618, %2
  br label %1626

1626:                                             ; preds = %1624, %1619
  %1627 = phi i32 [ %1625, %1624 ], [ %1623, %1619 ]
  %1628 = phi i32 [ %1610, %1624 ], [ %1621, %1619 ]
  %1629 = phi i32 [ %1615, %1624 ], [ %1613, %1619 ]
  %1630 = sub nsw i32 %1629, %1627
  %1631 = sdiv i32 %1598, 2
  %1632 = mul nsw i32 %1629, %1631
  %1633 = add i32 %1628, %1627
  %1634 = add i32 %1633, %1632
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1635
  %1637 = load i32, i32 addrspace(1)* %1636, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1638 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1548
  store i32 %1637, i32 addrspace(3)* %1638, align 4, !tbaa !6
  %1639 = add nsw i32 %1634, %1630
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1640
  %1642 = load i32, i32 addrspace(1)* %1641, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1643 = add nuw nsw i32 %1548, 34
  %1644 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1643
  store i32 %1642, i32 addrspace(3)* %1644, align 4, !tbaa !6
  %1645 = add i32 %1634, %1629
  %1646 = sext i32 %1645 to i64
  %1647 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1646
  %1648 = load i32, i32 addrspace(1)* %1647, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1649 = add nuw nsw i32 %1548, 68
  br label %1650

1650:                                             ; preds = %1626, %1578
  %1651 = phi i32 [ %1591, %1578 ], [ %1645, %1626 ]
  %1652 = phi i32 [ %1579, %1578 ], [ %1627, %1626 ]
  %1653 = phi i32 [ %1582, %1578 ], [ %1630, %1626 ]
  %1654 = phi i32 [ %1548, %1578 ], [ %1649, %1626 ]
  %1655 = phi i32 [ %1594, %1578 ], [ %1648, %1626 ]
  %1656 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1654
  store i32 %1655, i32 addrspace(3)* %1656, align 4, !tbaa !6
  br label %1657

1657:                                             ; preds = %1650, %1534
  %1658 = phi i32 [ %1548, %1650 ], [ 0, %1534 ]
  %1659 = phi i32 [ %1651, %1650 ], [ 0, %1534 ]
  %1660 = phi i32 [ %1652, %1650 ], [ 0, %1534 ]
  %1661 = phi i32 [ %1653, %1650 ], [ 0, %1534 ]
  %1662 = shl nuw nsw i32 %879, 1
  %1663 = lshr i32 %879, 5
  %1664 = mul nsw i32 %1663, -63
  %1665 = add nsw i32 %1664, %1662
  %1666 = add i32 %1665, %875
  %1667 = sub i32 0, %1666
  %1668 = trunc i32 %1665 to i16
  %1669 = add nsw i16 %1668, 2
  %1670 = sdiv i16 %1669, 2
  %1671 = sext i16 %1670 to i32
  %1672 = and i32 %1665, 1
  %1673 = icmp eq i32 %1672, 0
  %1674 = select i1 %1673, i32 0, i32 376
  %1675 = add nsw i32 %1674, %1671
  %1676 = icmp eq i32 %7, 0
  br i1 %1676, label %1677, label %1724

1677:                                             ; preds = %1657
  %1678 = icmp slt i32 %1666, %2
  br i1 %1678, label %1683, label %1679

1679:                                             ; preds = %1677
  %1680 = shl nsw i32 %2, 1
  %1681 = sub i32 -2, %1666
  %1682 = add i32 %1681, %1680
  br label %1685

1683:                                             ; preds = %1677
  %1684 = icmp slt i32 %1666, 0
  br i1 %1684, label %1685, label %1687

1685:                                             ; preds = %1683, %1679
  %1686 = phi i32 [ %1682, %1679 ], [ %1667, %1683 ]
  br label %1687

1687:                                             ; preds = %1685, %1683
  %1688 = phi i32 [ %1686, %1685 ], [ %1666, %1683 ]
  %1689 = sdiv i32 %1688, 2
  %1690 = and i32 %1688, 1
  %1691 = icmp eq i32 %1690, 0
  %1692 = sdiv i32 %2, 2
  %1693 = and i32 %2, 1
  %1694 = add nsw i32 %1692, %1693
  %1695 = sdiv i32 %3, 2
  %1696 = and i32 %3, 1
  %1697 = add nsw i32 %1695, %1696
  br i1 %1691, label %1703, label %1698

1698:                                             ; preds = %1687
  %1699 = mul nsw i32 %1697, %1694
  %1700 = add nsw i32 %1689, %1699
  %1701 = mul nsw i32 %3, %2
  %1702 = sdiv i32 %1701, 2
  br label %1705

1703:                                             ; preds = %1687
  %1704 = mul nsw i32 %1697, %2
  br label %1705

1705:                                             ; preds = %1703, %1698
  %1706 = phi i32 [ %1704, %1703 ], [ %1702, %1698 ]
  %1707 = phi i32 [ %1689, %1703 ], [ %1700, %1698 ]
  %1708 = phi i32 [ %1694, %1703 ], [ %1692, %1698 ]
  %1709 = sub nsw i32 %1708, %1706
  %1710 = sdiv i32 %878, 2
  %1711 = mul nsw i32 %1708, %1710
  %1712 = add i32 %1711, %1707
  %1713 = sext i32 %1712 to i64
  %1714 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1713
  %1715 = load i32, i32 addrspace(1)* %1714, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1716 = add nsw i32 %1675, 34
  %1717 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1716
  store i32 %1715, i32 addrspace(3)* %1717, align 4, !tbaa !6
  %1718 = add nsw i32 %1712, %1706
  %1719 = sext i32 %1718 to i64
  %1720 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1719
  %1721 = load i32, i32 addrspace(1)* %1720, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1722 = add nsw i32 %1675, 68
  %1723 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1722
  store i32 %1721, i32 addrspace(3)* %1723, align 4, !tbaa !6
  br label %1777

1724:                                             ; preds = %1657
  %1725 = add nsw i32 %878, -1
  %1726 = icmp slt i32 %1666, %2
  br i1 %1726, label %1731, label %1727

1727:                                             ; preds = %1724
  %1728 = shl nsw i32 %2, 1
  %1729 = sub i32 -2, %1666
  %1730 = add i32 %1729, %1728
  br label %1733

1731:                                             ; preds = %1724
  %1732 = icmp slt i32 %1666, 0
  br i1 %1732, label %1733, label %1735

1733:                                             ; preds = %1731, %1727
  %1734 = phi i32 [ %1730, %1727 ], [ %1667, %1731 ]
  br label %1735

1735:                                             ; preds = %1733, %1731
  %1736 = phi i32 [ %1734, %1733 ], [ %1666, %1731 ]
  %1737 = sdiv i32 %1736, 2
  %1738 = and i32 %1736, 1
  %1739 = icmp eq i32 %1738, 0
  %1740 = sdiv i32 %2, 2
  %1741 = and i32 %2, 1
  %1742 = add nsw i32 %1740, %1741
  %1743 = sdiv i32 %3, 2
  %1744 = and i32 %3, 1
  %1745 = add nsw i32 %1743, %1744
  br i1 %1739, label %1751, label %1746

1746:                                             ; preds = %1735
  %1747 = mul nsw i32 %1745, %1742
  %1748 = add nsw i32 %1737, %1747
  %1749 = mul nsw i32 %3, %2
  %1750 = sdiv i32 %1749, 2
  br label %1753

1751:                                             ; preds = %1735
  %1752 = mul nsw i32 %1745, %2
  br label %1753

1753:                                             ; preds = %1751, %1746
  %1754 = phi i32 [ %1752, %1751 ], [ %1750, %1746 ]
  %1755 = phi i32 [ %1737, %1751 ], [ %1748, %1746 ]
  %1756 = phi i32 [ %1742, %1751 ], [ %1740, %1746 ]
  %1757 = sub nsw i32 %1756, %1754
  %1758 = sdiv i32 %1725, 2
  %1759 = mul nsw i32 %1756, %1758
  %1760 = add i32 %1755, %1754
  %1761 = add i32 %1760, %1759
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1762
  %1764 = load i32, i32 addrspace(1)* %1763, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1765 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1675
  store i32 %1764, i32 addrspace(3)* %1765, align 4, !tbaa !6
  %1766 = add nsw i32 %1761, %1757
  %1767 = sext i32 %1766 to i64
  %1768 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1767
  %1769 = load i32, i32 addrspace(1)* %1768, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1770 = add nsw i32 %1675, 34
  %1771 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1770
  store i32 %1769, i32 addrspace(3)* %1771, align 4, !tbaa !6
  %1772 = add i32 %1761, %1756
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1773
  %1775 = load i32, i32 addrspace(1)* %1774, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1776 = add nsw i32 %1675, 68
  br label %1777

1777:                                             ; preds = %1753, %1705
  %1778 = phi i32 [ %1709, %1705 ], [ %1757, %1753 ]
  %1779 = phi i32 [ %1706, %1705 ], [ %1754, %1753 ]
  %1780 = phi i32 [ %1718, %1705 ], [ %1772, %1753 ]
  %1781 = phi i32 [ %1675, %1705 ], [ %1776, %1753 ]
  %1782 = phi i32 [ %1721, %1705 ], [ %1775, %1753 ]
  %1783 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1781
  store i32 %1782, i32 addrspace(3)* %1783, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1784 = add nuw nsw i32 %879, 376
  %1785 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1784
  %1786 = load i32, i32 addrspace(3)* %1785, align 4, !tbaa !6
  %1787 = add nuw nsw i32 %879, 377
  %1788 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1787
  %1789 = load i32, i32 addrspace(3)* %1788, align 4, !tbaa !6
  %1790 = add nuw nsw i32 %879, 1
  %1791 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1790
  %1792 = add i32 %1786, 2
  %1793 = add i32 %1792, %1789
  %1794 = sdiv i32 %1793, -4
  %1795 = load i32, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1796 = add i32 %1794, %1795
  store i32 %1796, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1797 = icmp ult i32 %879, 37
  br i1 %1797, label %1798, label %1812

1798:                                             ; preds = %1777
  %1799 = add nuw nsw i32 %879, 440
  %1800 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1799
  %1801 = load i32, i32 addrspace(3)* %1800, align 4, !tbaa !6
  %1802 = add nuw nsw i32 %879, 441
  %1803 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1802
  %1804 = load i32, i32 addrspace(3)* %1803, align 4, !tbaa !6
  %1805 = add nuw nsw i32 %879, 65
  %1806 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1805
  %1807 = add i32 %1801, 2
  %1808 = add i32 %1807, %1804
  %1809 = sdiv i32 %1808, -4
  %1810 = load i32, i32 addrspace(3)* %1806, align 4, !tbaa !6
  %1811 = add i32 %1809, %1810
  store i32 %1811, i32 addrspace(3)* %1806, align 4, !tbaa !6
  br label %1812

1812:                                             ; preds = %1798, %1777
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1813 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %879
  %1814 = load i32, i32 addrspace(3)* %1813, align 4, !tbaa !6
  %1815 = load i32, i32 addrspace(3)* %1791, align 4, !tbaa !6
  %1816 = add nsw i32 %1815, %1814
  %1817 = sdiv i32 %1816, 2
  %1818 = load i32, i32 addrspace(3)* %1785, align 4, !tbaa !6
  %1819 = add nsw i32 %1817, %1818
  store i32 %1819, i32 addrspace(3)* %1785, align 4, !tbaa !6
  br i1 %1797, label %1820, label %1833

1820:                                             ; preds = %1812
  %1821 = add nuw nsw i32 %879, 64
  %1822 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1821
  %1823 = load i32, i32 addrspace(3)* %1822, align 4, !tbaa !6
  %1824 = add nuw nsw i32 %879, 65
  %1825 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1824
  %1826 = load i32, i32 addrspace(3)* %1825, align 4, !tbaa !6
  %1827 = add nuw nsw i32 %879, 440
  %1828 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1827
  %1829 = add nsw i32 %1826, %1823
  %1830 = sdiv i32 %1829, 2
  %1831 = load i32, i32 addrspace(3)* %1828, align 4, !tbaa !6
  %1832 = add nsw i32 %1830, %1831
  store i32 %1832, i32 addrspace(3)* %1828, align 4, !tbaa !6
  br label %1833

1833:                                             ; preds = %1820, %1812
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1834 = add i32 %875, %879
  %1835 = icmp slt i32 %1834, %2
  %1836 = select i1 %1835, i32 %2, i32 0
  %1837 = add nuw nsw i32 %879, 2
  %1838 = lshr i32 %1837, 1
  %1839 = and i32 %879, 1
  %1840 = icmp eq i32 %1839, 0
  %1841 = select i1 %1840, i32 0, i32 376
  %1842 = add nuw nsw i32 %1841, %1838
  %1843 = icmp sgt i32 %4, 0
  br i1 %1843, label %1844, label %2150

1844:                                             ; preds = %1833
  %1845 = mul nsw i32 %878, %2
  %1846 = add nsw i32 %1845, %1834
  %1847 = select i1 %1835, i32 %1846, i32 0
  %1848 = add nsw i32 %1675, 102
  %1849 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1848
  %1850 = add nsw i32 %1675, 136
  %1851 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1850
  %1852 = add nsw i32 %1675, 170
  %1853 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1852
  %1854 = add nsw i32 %1675, 204
  %1855 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1854
  %1856 = add nsw i32 %1675, 238
  %1857 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1856
  %1858 = add nsw i32 %1675, 272
  %1859 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1858
  %1860 = add nsw i32 %1675, 306
  %1861 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1860
  %1862 = add nsw i32 %1675, 340
  %1863 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1862
  %1864 = add nuw nsw i32 %1658, 102
  %1865 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1864
  %1866 = add nuw nsw i32 %1658, 136
  %1867 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1866
  %1868 = add nuw nsw i32 %1658, 170
  %1869 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1868
  %1870 = add nuw nsw i32 %1658, 204
  %1871 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1870
  %1872 = add nuw nsw i32 %1658, 238
  %1873 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1872
  %1874 = add nuw nsw i32 %1658, 272
  %1875 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1874
  %1876 = add nuw nsw i32 %1658, 306
  %1877 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1876
  %1878 = add nuw nsw i32 %1658, 340
  %1879 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1878
  %1880 = icmp ult i32 %879, 15
  %1881 = add nuw nsw i32 %879, 734
  %1882 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1881
  %1883 = add nuw nsw i32 %879, 735
  %1884 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1883
  %1885 = add nuw nsw i32 %879, 359
  %1886 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1885
  %1887 = add nuw nsw i32 %879, 358
  %1888 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1887
  %1889 = add nuw nsw i32 %1842, 272
  %1890 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1889
  %1891 = add nuw nsw i32 %1842, 306
  %1892 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1891
  %1893 = add nuw nsw i32 %1842, 340
  %1894 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1893
  %1895 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1842
  %1896 = add nuw nsw i32 %1842, 68
  %1897 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1896
  %1898 = add nuw nsw i32 %1842, 34
  %1899 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1898
  %1900 = add nuw nsw i32 %1842, 136
  %1901 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1900
  %1902 = add nuw nsw i32 %1842, 102
  %1903 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1902
  %1904 = add nuw nsw i32 %1842, 204
  %1905 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1904
  %1906 = add nuw nsw i32 %1842, 170
  %1907 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1906
  %1908 = add nuw nsw i32 %1842, 238
  %1909 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1908
  %1910 = add nuw nsw i32 %879, 478
  %1911 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1910
  %1912 = add nuw nsw i32 %879, 479
  %1913 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1912
  %1914 = add nuw nsw i32 %879, 103
  %1915 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1914
  %1916 = add nuw nsw i32 %879, 542
  %1917 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1916
  %1918 = add nuw nsw i32 %879, 543
  %1919 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1918
  %1920 = add nuw nsw i32 %879, 167
  %1921 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1920
  %1922 = add nuw nsw i32 %879, 606
  %1923 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1922
  %1924 = add nuw nsw i32 %879, 607
  %1925 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1924
  %1926 = add nuw nsw i32 %879, 231
  %1927 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1926
  %1928 = add nuw nsw i32 %879, 670
  %1929 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1928
  %1930 = add nuw nsw i32 %879, 671
  %1931 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1930
  %1932 = add nuw nsw i32 %879, 295
  %1933 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1932
  %1934 = add nuw nsw i32 %879, 102
  %1935 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1934
  %1936 = add nuw nsw i32 %879, 166
  %1937 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1936
  %1938 = add nuw nsw i32 %879, 230
  %1939 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1938
  %1940 = add nuw nsw i32 %879, 294
  %1941 = getelementptr inbounds %"class.dwt_cuda::RDWT53.8", %"class.dwt_cuda::RDWT53.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT53ILi64ELi8EE3runEPKiPiiiiE6rdwt53, i32 0, i32 0, i32 0, i32 %1940
  br label %1942

1942:                                             ; preds = %2082, %1844
  %1943 = phi i32 [ 0, %1844 ], [ %2148, %2082 ]
  %1944 = phi i32 [ %1780, %1844 ], [ %1975, %2082 ]
  %1945 = phi i32 [ %1847, %1844 ], [ %2147, %2082 ]
  %1946 = phi i32 [ %1659, %1844 ], [ %2013, %2082 ]
  %1947 = add nsw i32 %1944, %1778
  %1948 = sext i32 %1947 to i64
  %1949 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1948
  %1950 = load i32, i32 addrspace(1)* %1949, align 4, !tbaa !6
  store i32 %1950, i32 addrspace(3)* %1849, align 4, !tbaa !6
  %1951 = add nsw i32 %1947, %1779
  %1952 = sext i32 %1951 to i64
  %1953 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1952
  %1954 = load i32, i32 addrspace(1)* %1953, align 4, !tbaa !6
  store i32 %1954, i32 addrspace(3)* %1851, align 4, !tbaa !6
  %1955 = add nsw i32 %1951, %1778
  %1956 = sext i32 %1955 to i64
  %1957 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1956
  %1958 = load i32, i32 addrspace(1)* %1957, align 4, !tbaa !6
  store i32 %1958, i32 addrspace(3)* %1853, align 4, !tbaa !6
  %1959 = add nsw i32 %1955, %1779
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1960
  %1962 = load i32, i32 addrspace(1)* %1961, align 4, !tbaa !6
  store i32 %1962, i32 addrspace(3)* %1855, align 4, !tbaa !6
  %1963 = add nsw i32 %1959, %1778
  %1964 = sext i32 %1963 to i64
  %1965 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1964
  %1966 = load i32, i32 addrspace(1)* %1965, align 4, !tbaa !6
  store i32 %1966, i32 addrspace(3)* %1857, align 4, !tbaa !6
  %1967 = add nsw i32 %1963, %1779
  %1968 = sext i32 %1967 to i64
  %1969 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1968
  %1970 = load i32, i32 addrspace(1)* %1969, align 4, !tbaa !6
  store i32 %1970, i32 addrspace(3)* %1859, align 4, !tbaa !6
  %1971 = add nsw i32 %1967, %1778
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1972
  %1974 = load i32, i32 addrspace(1)* %1973, align 4, !tbaa !6
  store i32 %1974, i32 addrspace(3)* %1861, align 4, !tbaa !6
  %1975 = add nsw i32 %1971, %1779
  %1976 = sext i32 %1975 to i64
  %1977 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1976
  %1978 = load i32, i32 addrspace(1)* %1977, align 4, !tbaa !6
  store i32 %1978, i32 addrspace(3)* %1863, align 4, !tbaa !6
  br i1 %880, label %1979, label %2012

1979:                                             ; preds = %1942
  %1980 = add nsw i32 %1946, %1661
  %1981 = sext i32 %1980 to i64
  %1982 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1981
  %1983 = load i32, i32 addrspace(1)* %1982, align 4, !tbaa !6
  store i32 %1983, i32 addrspace(3)* %1865, align 4, !tbaa !6
  %1984 = add nsw i32 %1980, %1660
  %1985 = sext i32 %1984 to i64
  %1986 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1985
  %1987 = load i32, i32 addrspace(1)* %1986, align 4, !tbaa !6
  store i32 %1987, i32 addrspace(3)* %1867, align 4, !tbaa !6
  %1988 = add nsw i32 %1984, %1661
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1989
  %1991 = load i32, i32 addrspace(1)* %1990, align 4, !tbaa !6
  store i32 %1991, i32 addrspace(3)* %1869, align 4, !tbaa !6
  %1992 = add nsw i32 %1988, %1660
  %1993 = sext i32 %1992 to i64
  %1994 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1993
  %1995 = load i32, i32 addrspace(1)* %1994, align 4, !tbaa !6
  store i32 %1995, i32 addrspace(3)* %1871, align 4, !tbaa !6
  %1996 = add nsw i32 %1992, %1661
  %1997 = sext i32 %1996 to i64
  %1998 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %1997
  %1999 = load i32, i32 addrspace(1)* %1998, align 4, !tbaa !6
  store i32 %1999, i32 addrspace(3)* %1873, align 4, !tbaa !6
  %2000 = add nsw i32 %1996, %1660
  %2001 = sext i32 %2000 to i64
  %2002 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2001
  %2003 = load i32, i32 addrspace(1)* %2002, align 4, !tbaa !6
  store i32 %2003, i32 addrspace(3)* %1875, align 4, !tbaa !6
  %2004 = add nsw i32 %2000, %1661
  %2005 = sext i32 %2004 to i64
  %2006 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2005
  %2007 = load i32, i32 addrspace(1)* %2006, align 4, !tbaa !6
  store i32 %2007, i32 addrspace(3)* %1877, align 4, !tbaa !6
  %2008 = add nsw i32 %2004, %1660
  %2009 = sext i32 %2008 to i64
  %2010 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %2009
  %2011 = load i32, i32 addrspace(1)* %2010, align 4, !tbaa !6
  store i32 %2011, i32 addrspace(3)* %1879, align 4, !tbaa !6
  br label %2012

2012:                                             ; preds = %1979, %1942
  %2013 = phi i32 [ %2008, %1979 ], [ %1946, %1942 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2014 = load i32, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2015 = load i32, i32 addrspace(3)* %1913, align 4, !tbaa !6
  %2016 = add i32 %2014, 2
  %2017 = add i32 %2016, %2015
  %2018 = sdiv i32 %2017, -4
  %2019 = load i32, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2020 = add i32 %2018, %2019
  store i32 %2020, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2021 = load i32, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2022 = load i32, i32 addrspace(3)* %1919, align 4, !tbaa !6
  %2023 = add i32 %2021, 2
  %2024 = add i32 %2023, %2022
  %2025 = sdiv i32 %2024, -4
  %2026 = load i32, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2027 = add i32 %2025, %2026
  store i32 %2027, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2028 = load i32, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2029 = load i32, i32 addrspace(3)* %1925, align 4, !tbaa !6
  %2030 = add i32 %2028, 2
  %2031 = add i32 %2030, %2029
  %2032 = sdiv i32 %2031, -4
  %2033 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2034 = add i32 %2032, %2033
  store i32 %2034, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2035 = load i32, i32 addrspace(3)* %1929, align 4, !tbaa !6
  %2036 = load i32, i32 addrspace(3)* %1931, align 4, !tbaa !6
  %2037 = add i32 %2035, 2
  %2038 = add i32 %2037, %2036
  %2039 = sdiv i32 %2038, -4
  %2040 = load i32, i32 addrspace(3)* %1933, align 4, !tbaa !6
  %2041 = add i32 %2039, %2040
  store i32 %2041, i32 addrspace(3)* %1933, align 4, !tbaa !6
  br i1 %1880, label %2042, label %2050

2042:                                             ; preds = %2012
  %2043 = load i32, i32 addrspace(3)* %1882, align 4, !tbaa !6
  %2044 = load i32, i32 addrspace(3)* %1884, align 4, !tbaa !6
  %2045 = add i32 %2043, 2
  %2046 = add i32 %2045, %2044
  %2047 = sdiv i32 %2046, -4
  %2048 = load i32, i32 addrspace(3)* %1886, align 4, !tbaa !6
  %2049 = add i32 %2047, %2048
  store i32 %2049, i32 addrspace(3)* %1886, align 4, !tbaa !6
  br label %2050

2050:                                             ; preds = %2042, %2012
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2051 = load i32, i32 addrspace(3)* %1935, align 4, !tbaa !6
  %2052 = load i32, i32 addrspace(3)* %1915, align 4, !tbaa !6
  %2053 = add nsw i32 %2052, %2051
  %2054 = sdiv i32 %2053, 2
  %2055 = load i32, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2056 = add nsw i32 %2054, %2055
  store i32 %2056, i32 addrspace(3)* %1911, align 4, !tbaa !6
  %2057 = load i32, i32 addrspace(3)* %1937, align 4, !tbaa !6
  %2058 = load i32, i32 addrspace(3)* %1921, align 4, !tbaa !6
  %2059 = add nsw i32 %2058, %2057
  %2060 = sdiv i32 %2059, 2
  %2061 = load i32, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2062 = add nsw i32 %2060, %2061
  store i32 %2062, i32 addrspace(3)* %1917, align 4, !tbaa !6
  %2063 = load i32, i32 addrspace(3)* %1939, align 4, !tbaa !6
  %2064 = load i32, i32 addrspace(3)* %1927, align 4, !tbaa !6
  %2065 = add nsw i32 %2064, %2063
  %2066 = sdiv i32 %2065, 2
  %2067 = load i32, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2068 = add nsw i32 %2066, %2067
  store i32 %2068, i32 addrspace(3)* %1923, align 4, !tbaa !6
  %2069 = load i32, i32 addrspace(3)* %1941, align 4, !tbaa !6
  %2070 = load i32, i32 addrspace(3)* %1933, align 4, !tbaa !6
  %2071 = add nsw i32 %2070, %2069
  %2072 = sdiv i32 %2071, 2
  %2073 = load i32, i32 addrspace(3)* %1929, align 4, !tbaa !6
  %2074 = add nsw i32 %2072, %2073
  store i32 %2074, i32 addrspace(3)* %1929, align 4, !tbaa !6
  br i1 %1880, label %2075, label %2082

2075:                                             ; preds = %2050
  %2076 = load i32, i32 addrspace(3)* %1888, align 4, !tbaa !6
  %2077 = load i32, i32 addrspace(3)* %1886, align 4, !tbaa !6
  %2078 = add nsw i32 %2077, %2076
  %2079 = sdiv i32 %2078, 2
  %2080 = load i32, i32 addrspace(3)* %1882, align 4, !tbaa !6
  %2081 = add nsw i32 %2079, %2080
  store i32 %2081, i32 addrspace(3)* %1882, align 4, !tbaa !6
  br label %2082

2082:                                             ; preds = %2075, %2050
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2083 = load i32, i32 addrspace(3)* %1890, align 4, !tbaa !6
  %2084 = load i32, i32 addrspace(3)* %1892, align 4, !tbaa !6
  %2085 = load i32, i32 addrspace(3)* %1894, align 4, !tbaa !6
  %2086 = load i32, i32 addrspace(3)* %1895, align 4, !tbaa !6
  %2087 = load i32, i32 addrspace(3)* %1897, align 4, !tbaa !6
  %2088 = add i32 %2087, 2
  %2089 = add i32 %2088, %2086
  %2090 = sdiv i32 %2089, -4
  %2091 = load i32, i32 addrspace(3)* %1899, align 4, !tbaa !6
  %2092 = add i32 %2090, %2091
  %2093 = load i32, i32 addrspace(3)* %1901, align 4, !tbaa !6
  %2094 = add i32 %2093, %2088
  %2095 = sdiv i32 %2094, -4
  %2096 = load i32, i32 addrspace(3)* %1903, align 4, !tbaa !6
  %2097 = add i32 %2095, %2096
  store i32 %2097, i32 addrspace(3)* %1903, align 4, !tbaa !6
  %2098 = load i32, i32 addrspace(3)* %1905, align 4, !tbaa !6
  %2099 = add i32 %2093, 2
  %2100 = add i32 %2099, %2098
  %2101 = sdiv i32 %2100, -4
  %2102 = load i32, i32 addrspace(3)* %1907, align 4, !tbaa !6
  %2103 = add i32 %2101, %2102
  store i32 %2103, i32 addrspace(3)* %1907, align 4, !tbaa !6
  %2104 = add i32 %2083, 2
  %2105 = add i32 %2098, %2104
  %2106 = sdiv i32 %2105, -4
  %2107 = load i32, i32 addrspace(3)* %1909, align 4, !tbaa !6
  %2108 = add i32 %2107, %2106
  store i32 %2108, i32 addrspace(3)* %1909, align 4, !tbaa !6
  %2109 = add i32 %2085, %2104
  %2110 = sdiv i32 %2109, -4
  %2111 = add i32 %2110, %2084
  store i32 %2111, i32 addrspace(3)* %1892, align 4, !tbaa !6
  %2112 = add nsw i32 %2097, %2092
  %2113 = sdiv i32 %2112, 2
  %2114 = add nsw i32 %2113, %2087
  %2115 = add nsw i32 %2103, %2097
  %2116 = sdiv i32 %2115, 2
  %2117 = add nsw i32 %2116, %2093
  store i32 %2117, i32 addrspace(3)* %1901, align 4, !tbaa !6
  %2118 = add nsw i32 %2108, %2103
  %2119 = sdiv i32 %2118, 2
  %2120 = add nsw i32 %2119, %2098
  store i32 %2120, i32 addrspace(3)* %1905, align 4, !tbaa !6
  %2121 = add nsw i32 %2108, %2111
  %2122 = sdiv i32 %2121, 2
  %2123 = add nsw i32 %2122, %2083
  store i32 %2123, i32 addrspace(3)* %1890, align 4, !tbaa !6
  %2124 = sext i32 %1945 to i64
  %2125 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2124
  store i32 %2092, i32 addrspace(1)* %2125, align 4, !tbaa !6
  %2126 = add nsw i32 %1945, %1836
  %2127 = sext i32 %2126 to i64
  %2128 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2127
  store i32 %2114, i32 addrspace(1)* %2128, align 4, !tbaa !6
  %2129 = add nsw i32 %2126, %1836
  %2130 = sext i32 %2129 to i64
  %2131 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2130
  store i32 %2097, i32 addrspace(1)* %2131, align 4, !tbaa !6
  %2132 = add nsw i32 %2129, %1836
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2133
  store i32 %2117, i32 addrspace(1)* %2134, align 4, !tbaa !6
  %2135 = add nsw i32 %2132, %1836
  %2136 = sext i32 %2135 to i64
  %2137 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2136
  store i32 %2103, i32 addrspace(1)* %2137, align 4, !tbaa !6
  %2138 = add nsw i32 %2135, %1836
  %2139 = sext i32 %2138 to i64
  %2140 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2139
  store i32 %2120, i32 addrspace(1)* %2140, align 4, !tbaa !6
  %2141 = add nsw i32 %2138, %1836
  %2142 = sext i32 %2141 to i64
  %2143 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2142
  store i32 %2108, i32 addrspace(1)* %2143, align 4, !tbaa !6
  %2144 = add nsw i32 %2141, %1836
  %2145 = sext i32 %2144 to i64
  %2146 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %2145
  store i32 %2123, i32 addrspace(1)* %2146, align 4, !tbaa !6
  %2147 = add nsw i32 %2144, %1836
  store i32 %2083, i32 addrspace(3)* %1895, align 4, !tbaa !6
  store i32 %2084, i32 addrspace(3)* %1899, align 4, !tbaa !6
  store i32 %2085, i32 addrspace(3)* %1897, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2148 = add nuw nsw i32 %1943, 1
  %2149 = icmp eq i32 %2148, %4
  br i1 %2149, label %2150, label %1942, !llvm.loop !20

2150:                                             ; preds = %870, %1530, %2082, %418, %1188, %1833
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
