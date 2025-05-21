; ModuleID = 'sad.cpp'
source_filename = "sad.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.texture = type { %struct.textureReference }
%struct.textureReference = type { i32, i32, i32, [3 x i32], %struct.hipChannelFormatDesc, i32, i32, i32, float, float, float, %struct.__hip_texture*, i32, i32 }
%struct.hipChannelFormatDesc = type { i32, i32, i32, i32, i32 }
%struct.__hip_texture = type opaque

@ref = protected addrspace(1) externally_initialized global %struct.texture undef, align 8
@llvm.compiler.used = appending addrspace(1) global [1 x i8*] [i8* addrspacecast (i8 addrspace(1)* bitcast (%struct.texture addrspace(1)* @ref to i8 addrspace(1)*) to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z11mb_sad_calcPtS_ii(i16 addrspace(1)* nocapture writeonly %0, i16 addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.amdgcn.workitem.id.x() #5, !range !4
  %6 = trunc i32 %5 to i16
  %7 = freeze i16 %6
  %8 = udiv i16 %7, 61
  %9 = zext i16 %8 to i32
  %10 = tail call i32 @llvm.amdgcn.workgroup.id.x() #5
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.y() #5
  %12 = shl nsw i32 %2, 4
  %13 = ashr i32 %10, 2
  %14 = add nsw i32 %11, %9
  %15 = ashr i32 %14, 2
  %16 = icmp slt i32 %13, %2
  %17 = icmp slt i32 %15, %3
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %337

19:                                               ; preds = %4
  %20 = and i32 %10, 3
  %21 = shl i32 %10, 2
  %22 = shl i32 %14, 2
  %23 = add nsw i32 %22, -16
  %24 = mul i16 %8, 61
  %25 = sub i16 %7, %24
  %26 = mul nuw nsw i16 %25, 18
  %27 = zext i16 %26 to i32
  %28 = mul i32 %2, 27400
  %29 = mul i32 %28, %3
  %30 = mul nsw i32 %15, %2
  %31 = add nsw i32 %30, %13
  %32 = mul i32 %31, 17536
  %33 = add nsw i32 %32, %29
  %34 = and i32 %22, 12
  %35 = or i32 %34, %20
  %36 = mul nuw nsw i32 %35, 1096
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %38
  %40 = icmp ult i32 %27, 1071
  %41 = select i1 %40, i32 %27, i32 1071
  %42 = add nuw nsw i32 %41, 18
  %43 = icmp ugt i32 %42, %27
  br i1 %43, label %44, label %337

44:                                               ; preds = %19
  %45 = add i32 %21, -16
  %46 = mul i32 %22, %12
  %47 = add i32 %21, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %48
  %50 = or i32 %21, 1
  %51 = add i32 %21, -15
  %52 = add i32 %50, %46
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %53
  %55 = or i32 %21, 2
  %56 = add i32 %21, -14
  %57 = add i32 %55, %46
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %58
  %60 = or i32 %21, 3
  %61 = add i32 %21, -13
  %62 = add i32 %60, %46
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %63
  %65 = or i32 %22, 1
  %66 = mul i32 %65, %12
  %67 = add i32 %21, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %68
  %70 = add i32 %50, %66
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %71
  %73 = add i32 %55, %66
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %74
  %76 = add i32 %60, %66
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %77
  %79 = or i32 %22, 2
  %80 = mul i32 %79, %12
  %81 = add i32 %21, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %82
  %84 = add i32 %50, %80
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %85
  %87 = add i32 %55, %80
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %88
  %90 = add i32 %60, %80
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %91
  %93 = or i32 %22, 3
  %94 = mul i32 %93, %12
  %95 = add i32 %21, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %96
  %98 = add i32 %50, %94
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %99
  %101 = add i32 %55, %94
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %102
  %104 = add i32 %60, %94
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16 addrspace(1)* %1, i64 %105
  br label %107

107:                                              ; preds = %44, %107
  %108 = phi i32 [ %335, %107 ], [ %27, %44 ]
  %109 = freeze i32 %108
  %110 = udiv i32 %109, 33
  %111 = mul i32 %110, 33
  %112 = sub i32 %109, %111
  %113 = add nsw i32 %23, %110
  %114 = load %struct.__hip_texture*, %struct.__hip_texture* addrspace(1)* getelementptr inbounds (%struct.texture, %struct.texture addrspace(1)* @ref, i64 0, i32 0, i32 11), align 8
  %115 = bitcast %struct.__hip_texture* %114 to i32*
  %116 = addrspacecast i32* %115 to i32 addrspace(4)*
  %117 = getelementptr inbounds i32, i32 addrspace(4)* %116, i64 12
  %118 = getelementptr inbounds i32, i32 addrspace(4)* %116, i64 10
  %119 = load i32, i32 addrspace(4)* %118, align 4, !tbaa !5
  %120 = uitofp i32 %119 to float
  %121 = getelementptr inbounds i32, i32 addrspace(4)* %116, i64 2
  %122 = load i32, i32 addrspace(4)* %121, align 4, !tbaa !5
  %123 = lshr i32 %122, 14
  %124 = and i32 %123, 16383
  %125 = add nuw nsw i32 %124, 1
  %126 = uitofp i32 %125 to float
  %127 = load i32, i32 addrspace(4)* %117, align 4, !tbaa !5
  %128 = and i32 %127, 32768
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, float %120, float 1.000000e+00
  %131 = select i1 %129, float %126, float 1.000000e+00
  %132 = getelementptr inbounds i32, i32 addrspace(4)* %116, i64 14
  %133 = load i32, i32 addrspace(4)* %132, align 4, !tbaa !5
  %134 = and i32 %133, 1048576
  %135 = icmp eq i32 %134, 0
  %136 = bitcast i32 addrspace(4)* %117 to <4 x i32> addrspace(4)*
  %137 = load <4 x i32>, <4 x i32> addrspace(4)* %136, align 16, !tbaa !9
  %138 = bitcast %struct.__hip_texture* %114 to <8 x i32>*
  %139 = addrspacecast <8 x i32>* %138 to <8 x i32> addrspace(4)*
  %140 = load <8 x i32>, <8 x i32> addrspace(4)* %139, align 32, !tbaa !9
  %141 = tail call float @llvm.amdgcn.rcp.f32(float %131) #5
  %142 = tail call float @llvm.amdgcn.rcp.f32(float %130) #5
  %143 = add i32 %45, %112
  %144 = sitofp i32 %143 to float
  %145 = fmul float %130, %144
  %146 = tail call float @llvm.floor.f32(float %145) #5
  %147 = fmul float %142, %146
  %148 = select i1 %135, float %147, float %144
  %149 = sitofp i32 %113 to float
  %150 = fmul float %131, %149
  %151 = tail call float @llvm.floor.f32(float %150) #5
  %152 = fmul float %141, %151
  %153 = select i1 %135, float %152, float %149
  %154 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %148, float %153, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %155 = bitcast float %154 to i32
  %156 = and i32 %155, 65535
  %157 = load i16, i16 addrspace(1)* %49, align 2, !tbaa !10
  %158 = zext i16 %157 to i32
  %159 = sub nsw i32 %156, %158
  %160 = tail call i32 @llvm.abs.i32(i32 %159, i1 true) #5
  %161 = trunc i32 %160 to i16
  %162 = add i32 %51, %112
  %163 = sitofp i32 %162 to float
  %164 = fmul float %130, %163
  %165 = tail call float @llvm.floor.f32(float %164) #5
  %166 = fmul float %142, %165
  %167 = select i1 %135, float %166, float %163
  %168 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %167, float %153, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %169 = bitcast float %168 to i32
  %170 = and i32 %169, 65535
  %171 = load i16, i16 addrspace(1)* %54, align 2, !tbaa !10
  %172 = zext i16 %171 to i32
  %173 = sub nsw i32 %170, %172
  %174 = tail call i32 @llvm.abs.i32(i32 %173, i1 true) #5
  %175 = trunc i32 %174 to i16
  %176 = add i16 %161, %175
  %177 = add i32 %56, %112
  %178 = sitofp i32 %177 to float
  %179 = fmul float %130, %178
  %180 = tail call float @llvm.floor.f32(float %179) #5
  %181 = fmul float %142, %180
  %182 = select i1 %135, float %181, float %178
  %183 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %182, float %153, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %184 = bitcast float %183 to i32
  %185 = and i32 %184, 65535
  %186 = load i16, i16 addrspace(1)* %59, align 2, !tbaa !10
  %187 = zext i16 %186 to i32
  %188 = sub nsw i32 %185, %187
  %189 = tail call i32 @llvm.abs.i32(i32 %188, i1 true) #5
  %190 = trunc i32 %189 to i16
  %191 = add i16 %176, %190
  %192 = add i32 %61, %112
  %193 = sitofp i32 %192 to float
  %194 = fmul float %130, %193
  %195 = tail call float @llvm.floor.f32(float %194) #5
  %196 = fmul float %142, %195
  %197 = select i1 %135, float %196, float %193
  %198 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %197, float %153, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %199 = bitcast float %198 to i32
  %200 = and i32 %199, 65535
  %201 = load i16, i16 addrspace(1)* %64, align 2, !tbaa !10
  %202 = zext i16 %201 to i32
  %203 = sub nsw i32 %200, %202
  %204 = tail call i32 @llvm.abs.i32(i32 %203, i1 true) #5
  %205 = trunc i32 %204 to i16
  %206 = add i16 %191, %205
  %207 = add nsw i32 %113, 1
  %208 = sitofp i32 %207 to float
  %209 = fmul float %131, %208
  %210 = tail call float @llvm.floor.f32(float %209) #5
  %211 = fmul float %141, %210
  %212 = select i1 %135, float %211, float %208
  %213 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %148, float %212, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %214 = bitcast float %213 to i32
  %215 = and i32 %214, 65535
  %216 = load i16, i16 addrspace(1)* %69, align 2, !tbaa !10
  %217 = zext i16 %216 to i32
  %218 = sub nsw i32 %215, %217
  %219 = tail call i32 @llvm.abs.i32(i32 %218, i1 true) #5
  %220 = trunc i32 %219 to i16
  %221 = add i16 %206, %220
  %222 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %167, float %212, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %223 = bitcast float %222 to i32
  %224 = and i32 %223, 65535
  %225 = load i16, i16 addrspace(1)* %72, align 2, !tbaa !10
  %226 = zext i16 %225 to i32
  %227 = sub nsw i32 %224, %226
  %228 = tail call i32 @llvm.abs.i32(i32 %227, i1 true) #5
  %229 = trunc i32 %228 to i16
  %230 = add i16 %221, %229
  %231 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %182, float %212, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %232 = bitcast float %231 to i32
  %233 = and i32 %232, 65535
  %234 = load i16, i16 addrspace(1)* %75, align 2, !tbaa !10
  %235 = zext i16 %234 to i32
  %236 = sub nsw i32 %233, %235
  %237 = tail call i32 @llvm.abs.i32(i32 %236, i1 true) #5
  %238 = trunc i32 %237 to i16
  %239 = add i16 %230, %238
  %240 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %197, float %212, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %241 = bitcast float %240 to i32
  %242 = and i32 %241, 65535
  %243 = load i16, i16 addrspace(1)* %78, align 2, !tbaa !10
  %244 = zext i16 %243 to i32
  %245 = sub nsw i32 %242, %244
  %246 = tail call i32 @llvm.abs.i32(i32 %245, i1 true) #5
  %247 = trunc i32 %246 to i16
  %248 = add i16 %239, %247
  %249 = add nsw i32 %113, 2
  %250 = sitofp i32 %249 to float
  %251 = fmul float %131, %250
  %252 = tail call float @llvm.floor.f32(float %251) #5
  %253 = fmul float %141, %252
  %254 = select i1 %135, float %253, float %250
  %255 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %148, float %254, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %256 = bitcast float %255 to i32
  %257 = and i32 %256, 65535
  %258 = load i16, i16 addrspace(1)* %83, align 2, !tbaa !10
  %259 = zext i16 %258 to i32
  %260 = sub nsw i32 %257, %259
  %261 = tail call i32 @llvm.abs.i32(i32 %260, i1 true) #5
  %262 = trunc i32 %261 to i16
  %263 = add i16 %248, %262
  %264 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %167, float %254, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %265 = bitcast float %264 to i32
  %266 = and i32 %265, 65535
  %267 = load i16, i16 addrspace(1)* %86, align 2, !tbaa !10
  %268 = zext i16 %267 to i32
  %269 = sub nsw i32 %266, %268
  %270 = tail call i32 @llvm.abs.i32(i32 %269, i1 true) #5
  %271 = trunc i32 %270 to i16
  %272 = add i16 %263, %271
  %273 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %182, float %254, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %274 = bitcast float %273 to i32
  %275 = and i32 %274, 65535
  %276 = load i16, i16 addrspace(1)* %89, align 2, !tbaa !10
  %277 = zext i16 %276 to i32
  %278 = sub nsw i32 %275, %277
  %279 = tail call i32 @llvm.abs.i32(i32 %278, i1 true) #5
  %280 = trunc i32 %279 to i16
  %281 = add i16 %272, %280
  %282 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %197, float %254, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %283 = bitcast float %282 to i32
  %284 = and i32 %283, 65535
  %285 = load i16, i16 addrspace(1)* %92, align 2, !tbaa !10
  %286 = zext i16 %285 to i32
  %287 = sub nsw i32 %284, %286
  %288 = tail call i32 @llvm.abs.i32(i32 %287, i1 true) #5
  %289 = trunc i32 %288 to i16
  %290 = add i16 %281, %289
  %291 = add nsw i32 %113, 3
  %292 = sitofp i32 %291 to float
  %293 = fmul float %131, %292
  %294 = tail call float @llvm.floor.f32(float %293) #5
  %295 = fmul float %141, %294
  %296 = select i1 %135, float %295, float %292
  %297 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %148, float %296, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %298 = bitcast float %297 to i32
  %299 = and i32 %298, 65535
  %300 = load i16, i16 addrspace(1)* %97, align 2, !tbaa !10
  %301 = zext i16 %300 to i32
  %302 = sub nsw i32 %299, %301
  %303 = tail call i32 @llvm.abs.i32(i32 %302, i1 true) #5
  %304 = trunc i32 %303 to i16
  %305 = add i16 %290, %304
  %306 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %167, float %296, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %307 = bitcast float %306 to i32
  %308 = and i32 %307, 65535
  %309 = load i16, i16 addrspace(1)* %100, align 2, !tbaa !10
  %310 = zext i16 %309 to i32
  %311 = sub nsw i32 %308, %310
  %312 = tail call i32 @llvm.abs.i32(i32 %311, i1 true) #5
  %313 = trunc i32 %312 to i16
  %314 = add i16 %305, %313
  %315 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %182, float %296, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %316 = bitcast float %315 to i32
  %317 = and i32 %316, 65535
  %318 = load i16, i16 addrspace(1)* %103, align 2, !tbaa !10
  %319 = zext i16 %318 to i32
  %320 = sub nsw i32 %317, %319
  %321 = tail call i32 @llvm.abs.i32(i32 %320, i1 true) #5
  %322 = trunc i32 %321 to i16
  %323 = add i16 %314, %322
  %324 = tail call float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 1, float %197, float %296, <8 x i32> %140, <4 x i32> %137, i1 false, i32 0, i32 0) #5
  %325 = bitcast float %324 to i32
  %326 = and i32 %325, 65535
  %327 = load i16, i16 addrspace(1)* %106, align 2, !tbaa !10
  %328 = zext i16 %327 to i32
  %329 = sub nsw i32 %326, %328
  %330 = tail call i32 @llvm.abs.i32(i32 %329, i1 true) #5
  %331 = trunc i32 %330 to i16
  %332 = add i16 %323, %331
  %333 = zext i32 %108 to i64
  %334 = getelementptr inbounds i16, i16 addrspace(1)* %39, i64 %333
  store i16 %332, i16 addrspace(1)* %334, align 2, !tbaa !10
  %335 = add nuw nsw i32 %108, 1
  %336 = icmp ult i32 %335, %42
  br i1 %336, label %107, label %337, !llvm.loop !14

337:                                              ; preds = %107, %19, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z17larger_sad_calc_8Ptii(i16 addrspace(1)* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #1 {
  %4 = tail call i32 @llvm.amdgcn.workitem.id.y() #5, !range !4
  %5 = and i32 %4, 1
  %6 = lshr i32 %4, 1
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x() #5
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.y() #5
  %9 = shl i32 %1, 8
  %10 = ashr exact i32 %9, 8
  %11 = shl i32 %2, 8
  %12 = ashr exact i32 %11, 8
  %13 = mul nsw i32 %12, %10
  %14 = shl i32 %8, 8
  %15 = ashr exact i32 %14, 8
  %16 = mul nsw i32 %10, %15
  %17 = add nsw i32 %16, %7
  %18 = shl i32 %13, 8
  %19 = ashr exact i32 %18, 8
  %20 = mul nsw i32 %19, 25
  %21 = shl nuw nsw i32 %6, 3
  %22 = shl nuw nsw i32 %5, 1
  %23 = or i32 %21, %22
  %24 = add nsw i32 %23, %20
  %25 = mul nsw i32 %24, 1096
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %26
  %28 = mul i32 %17, 17536
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16 addrspace(1)* %27, i64 %29
  %31 = mul i32 %13, 17
  %32 = shl nuw nsw i32 %6, 2
  %33 = or i32 %32, %22
  %34 = add nsw i32 %33, %31
  %35 = mul nsw i32 %34, 1096
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %36
  %38 = mul i32 %17, 8768
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16 addrspace(1)* %37, i64 %39
  %41 = icmp ult i32 %4, 200
  br i1 %41, label %42, label %62

42:                                               ; preds = %3
  %43 = mul i32 %13, 9
  %44 = or i32 %32, %5
  %45 = add nsw i32 %44, %43
  %46 = mul nsw i32 %45, 1096
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %47
  %49 = getelementptr inbounds i16, i16 addrspace(1)* %48, i64 %39
  %50 = mul i32 %13, 5
  %51 = add nsw i32 %50, %4
  %52 = mul nsw i32 %51, 1096
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %53
  %55 = mul i32 %17, 4384
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16 addrspace(1)* %54, i64 %56
  %58 = bitcast i16 addrspace(1)* %49 to i32 addrspace(1)*
  %59 = addrspacecast i32 addrspace(1)* %58 to i32*
  %60 = bitcast i16 addrspace(1)* %57 to i32 addrspace(1)*
  %61 = addrspacecast i32 addrspace(1)* %60 to i32*
  br label %62

62:                                               ; preds = %42, %3
  %63 = phi i32* [ %61, %42 ], [ undef, %3 ]
  %64 = phi i32* [ %59, %42 ], [ undef, %3 ]
  %65 = tail call i32 @llvm.amdgcn.workitem.id.x() #5, !range !4
  %66 = bitcast i16 addrspace(1)* %30 to i32 addrspace(1)*
  %67 = bitcast i16 addrspace(1)* %40 to i32 addrspace(1)*
  %68 = icmp ult i32 %65, 545
  br i1 %68, label %69, label %100

69:                                               ; preds = %62, %69
  %70 = phi i32 [ %98, %69 ], [ %65, %62 ]
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32 addrspace(1)* %66, i64 %71
  %73 = load i32, i32 addrspace(1)* %72, align 4, !tbaa !16
  %74 = add nuw nsw i32 %70, 548
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32 addrspace(1)* %66, i64 %75
  %77 = load i32, i32 addrspace(1)* %76, align 4, !tbaa !16
  %78 = add nuw nsw i32 %70, 2192
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32 addrspace(1)* %66, i64 %79
  %81 = load i32, i32 addrspace(1)* %80, align 4, !tbaa !16
  %82 = add nuw nsw i32 %70, 2740
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32 addrspace(1)* %66, i64 %83
  %85 = load i32, i32 addrspace(1)* %84, align 4, !tbaa !16
  %86 = add i32 %81, %73
  %87 = getelementptr inbounds i32, i32 addrspace(1)* %67, i64 %71
  store i32 %86, i32 addrspace(1)* %87, align 4, !tbaa !16
  %88 = add i32 %85, %77
  %89 = getelementptr inbounds i32, i32 addrspace(1)* %67, i64 %75
  store i32 %88, i32 addrspace(1)* %89, align 4, !tbaa !16
  %90 = add i32 %77, %73
  %91 = getelementptr inbounds i32, i32* %64, i64 %71
  store i32 %90, i32* %91, align 4, !tbaa !16
  %92 = add i32 %85, %81
  %93 = add nuw nsw i32 %70, 1096
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %64, i64 %94
  store i32 %92, i32* %95, align 4, !tbaa !16
  %96 = add i32 %92, %90
  %97 = getelementptr inbounds i32, i32* %63, i64 %71
  store i32 %96, i32* %97, align 4, !tbaa !16
  %98 = add nuw nsw i32 %70, 32
  %99 = icmp ult i32 %70, 513
  br i1 %99, label %69, label %100, !llvm.loop !18

100:                                              ; preds = %69, %62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z18larger_sad_calc_16Ptii(i16 addrspace(1)* nocapture %0, i32 %1, i32 %2) local_unnamed_addr #1 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #5
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.y() #5
  %6 = shl i32 %1, 8
  %7 = ashr exact i32 %6, 8
  %8 = shl i32 %2, 8
  %9 = ashr exact i32 %8, 8
  %10 = mul i32 %7, 1096
  %11 = mul i32 %10, %9
  %12 = shl i32 %5, 8
  %13 = ashr exact i32 %12, 8
  %14 = mul nsw i32 %7, %13
  %15 = add nsw i32 %14, %4
  %16 = mul nsw i32 %15, 1096
  %17 = add nsw i32 %16, %11
  %18 = shl i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %19
  %21 = sext i32 %11 to i64
  %22 = getelementptr inbounds i16, i16 addrspace(1)* %20, i64 %21
  %23 = shl i32 %17, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %24
  %26 = getelementptr inbounds i16, i16 addrspace(1)* %25, i64 %21
  %27 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %21
  %28 = mul i32 %15, 2192
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16 addrspace(1)* %27, i64 %29
  %31 = sext i32 %16 to i64
  %32 = getelementptr inbounds i16, i16 addrspace(1)* %0, i64 %31
  %33 = tail call i32 @llvm.amdgcn.workitem.id.x() #5, !range !4
  %34 = bitcast i16 addrspace(1)* %22 to i32 addrspace(1)*
  %35 = bitcast i16 addrspace(1)* %26 to i32 addrspace(1)*
  %36 = bitcast i16 addrspace(1)* %30 to i32 addrspace(1)*
  %37 = bitcast i16 addrspace(1)* %32 to i32 addrspace(1)*
  %38 = icmp ult i32 %33, 545
  br i1 %38, label %39, label %68

39:                                               ; preds = %3, %39
  %40 = phi i32 [ %66, %39 ], [ %33, %3 ]
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %34, i64 %41
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !16
  %44 = add nuw nsw i32 %40, 548
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32 addrspace(1)* %34, i64 %45
  %47 = load i32, i32 addrspace(1)* %46, align 4, !tbaa !16
  %48 = add nuw nsw i32 %40, 1096
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32 addrspace(1)* %34, i64 %49
  %51 = load i32, i32 addrspace(1)* %50, align 4, !tbaa !16
  %52 = add nuw nsw i32 %40, 1644
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32 addrspace(1)* %34, i64 %53
  %55 = load i32, i32 addrspace(1)* %54, align 4, !tbaa !16
  %56 = add i32 %51, %43
  %57 = getelementptr inbounds i32, i32 addrspace(1)* %35, i64 %41
  store i32 %56, i32 addrspace(1)* %57, align 4, !tbaa !16
  %58 = add i32 %55, %47
  %59 = getelementptr inbounds i32, i32 addrspace(1)* %35, i64 %45
  store i32 %58, i32 addrspace(1)* %59, align 4, !tbaa !16
  %60 = add i32 %47, %43
  %61 = getelementptr inbounds i32, i32 addrspace(1)* %36, i64 %41
  store i32 %60, i32 addrspace(1)* %61, align 4, !tbaa !16
  %62 = add i32 %55, %51
  %63 = getelementptr inbounds i32, i32 addrspace(1)* %36, i64 %45
  store i32 %62, i32 addrspace(1)* %63, align 4, !tbaa !16
  %64 = add i32 %62, %60
  %65 = getelementptr inbounds i32, i32 addrspace(1)* %37, i64 %41
  store i32 %64, i32 addrspace(1)* %65, align 4, !tbaa !16
  %66 = add nuw nsw i32 %40, 32
  %67 = icmp ult i32 %40, 513
  br i1 %67, label %39, label %68, !llvm.loop !19

68:                                               ; preds = %39, %3
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.amdgcn.rcp.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare float @llvm.amdgcn.image.sample.lz.2d.f32.f32(i32 immarg, float, float, <8 x i32>, <4 x i32>, i1 immarg, i32 immarg, i32 immarg) #4

attributes #0 = { mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i32 0, i32 1024}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !12, i64 0}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
