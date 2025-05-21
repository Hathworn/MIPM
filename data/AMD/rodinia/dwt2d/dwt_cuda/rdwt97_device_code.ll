; ModuleID = 'hip/dwt2d/dwt_cuda/rdwt97.cu'
source_filename = "hip/dwt2d/dwt_cuda/rdwt97.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"class.dwt_cuda::RDWT97" = type { %"class.dwt_cuda::TransformBuffer" }
%"class.dwt_cuda::TransformBuffer" = type { [3012 x float] }
%"class.dwt_cuda::RDWT97.5" = type { %"class.dwt_cuda::TransformBuffer.6" }
%"class.dwt_cuda::TransformBuffer.6" = type { [1772 x float] }
%"class.dwt_cuda::RDWT97.8" = type { %"class.dwt_cuda::TransformBuffer.9" }
%"class.dwt_cuda::TransformBuffer.9" = type { [940 x float] }

$_ZN8dwt_cuda12rdwt97KernelILi192ELi8EEEvPKfPfiii = comdat any

$_ZN8dwt_cuda12rdwt97KernelILi128ELi6EEEvPKfPfiii = comdat any

$_ZN8dwt_cuda12rdwt97KernelILi64ELi6EEEvPKfPfiii = comdat any

$_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97 = comdat any

$_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97 = comdat any

$_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97 = comdat any

@_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::RDWT97" undef, comdat, align 4
@_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::RDWT97.5" undef, comdat, align 4
@_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::RDWT97.8" undef, comdat, align 4

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12rdwt97KernelILi192ELi8EEEvPKfPfiii(float addrspace(1)* readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = shl i32 %7, 3
  %9 = add i32 %8, 8
  %10 = mul i32 %9, %4
  %11 = or i32 %10, 3
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %1312, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = mul i32 %6, 192
  br label %264

19:                                               ; preds = %13
  %20 = icmp ult i32 %15, 4
  %21 = select i1 %20, i32 192, i32 -7
  %22 = add nsw i32 %21, %15
  %23 = mul i32 %6, 192
  %24 = add i32 %22, %23
  %25 = sub i32 0, %24
  %26 = trunc i32 %22 to i16
  %27 = add nsw i16 %26, 4
  %28 = sdiv i16 %27, 2
  %29 = sext i16 %28 to i32
  %30 = and i32 %22, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 1512
  %33 = add nsw i32 %32, %29
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %129

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
  %79 = select i1 %76, i32 %78, i32 %64
  %80 = select i1 %76, i32 %77, i32 %67
  %81 = select i1 %76, i32 %66, i32 0
  %82 = sub i32 %75, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float addrspace(1)* %0, i64 %83
  %85 = load float, float addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = add nsw i32 %33, 300
  %87 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %86
  store float %85, float addrspace(3)* %87, align 4, !tbaa !6
  %88 = add nsw i32 %82, %79
  %89 = icmp eq i32 %88, %72
  %90 = sub i32 0, %79
  %91 = sub i32 0, %80
  %92 = sub i32 %82, %80
  %93 = select i1 %89, i32 %91, i32 %79
  %94 = select i1 %89, i32 %90, i32 %80
  %95 = select i1 %89, i32 %92, i32 %88
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float addrspace(1)* %0, i64 %96
  %98 = load float, float addrspace(1)* %97, align 4, !tbaa !6, !amdgpu.noclobber !10
  %99 = add nsw i32 %33, 200
  %100 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %99
  store float %98, float addrspace(3)* %100, align 4, !tbaa !6
  %101 = add nsw i32 %33, 400
  %102 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %101
  store float %98, float addrspace(3)* %102, align 4, !tbaa !6
  %103 = add nsw i32 %95, %94
  %104 = icmp eq i32 %103, %72
  %105 = sub i32 0, %94
  %106 = sub i32 0, %93
  %107 = select i1 %104, i32 %105, i32 %93
  %108 = select i1 %104, i32 %106, i32 %94
  %109 = select i1 %104, i32 %82, i32 %103
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float addrspace(1)* %0, i64 %110
  %112 = load float, float addrspace(1)* %111, align 4, !tbaa !6, !amdgpu.noclobber !10
  %113 = add nsw i32 %33, 100
  %114 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %113
  store float %112, float addrspace(3)* %114, align 4, !tbaa !6
  %115 = add nsw i32 %33, 500
  %116 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %115
  store float %112, float addrspace(3)* %116, align 4, !tbaa !6
  %117 = add nsw i32 %109, %107
  %118 = icmp eq i32 %117, %72
  %119 = sub i32 0, %107
  %120 = sub i32 0, %108
  %121 = sub i32 %109, %108
  %122 = select i1 %118, i32 %120, i32 %107
  %123 = select i1 %118, i32 %119, i32 %108
  %124 = select i1 %118, i32 %121, i32 %117
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float addrspace(1)* %0, i64 %125
  %127 = load float, float addrspace(1)* %126, align 4, !tbaa !6, !amdgpu.noclobber !10
  %128 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %33
  store float %127, float addrspace(3)* %128, align 4, !tbaa !6
  br label %256

129:                                              ; preds = %19
  %130 = add nsw i32 %14, -3
  %131 = icmp slt i32 %24, %2
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = shl nsw i32 %2, 1
  %134 = sub i32 -2, %24
  %135 = add i32 %134, %133
  br label %138

136:                                              ; preds = %129
  %137 = icmp slt i32 %24, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %136, %132
  %139 = phi i32 [ %135, %132 ], [ %25, %136 ]
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %139, %138 ], [ %24, %136 ]
  %142 = sdiv i32 %141, 2
  %143 = and i32 %141, 1
  %144 = icmp eq i32 %143, 0
  %145 = sdiv i32 %2, 2
  %146 = and i32 %2, 1
  %147 = add nsw i32 %145, %146
  %148 = sdiv i32 %3, 2
  %149 = and i32 %3, 1
  %150 = add nsw i32 %148, %149
  br i1 %144, label %156, label %151

151:                                              ; preds = %140
  %152 = mul nsw i32 %150, %147
  %153 = add nsw i32 %142, %152
  %154 = mul nsw i32 %3, %2
  %155 = sdiv i32 %154, 2
  br label %158

156:                                              ; preds = %140
  %157 = mul nsw i32 %150, %2
  br label %158

158:                                              ; preds = %156, %151
  %159 = phi i32 [ %157, %156 ], [ %155, %151 ]
  %160 = phi i32 [ %142, %156 ], [ %153, %151 ]
  %161 = phi i32 [ %147, %156 ], [ %145, %151 ]
  %162 = sub nsw i32 %161, %159
  %163 = mul nsw i32 %161, %148
  %164 = icmp eq i32 %149, 0
  %165 = select i1 %164, i32 0, i32 %159
  %166 = add i32 %165, %160
  %167 = add i32 %166, %163
  %168 = sdiv i32 %130, 2
  %169 = mul nsw i32 %161, %168
  %170 = add i32 %160, %159
  %171 = add i32 %170, %169
  %172 = icmp eq i32 %171, %167
  %173 = sub i32 0, %162
  %174 = sub i32 0, %159
  %175 = select i1 %172, i32 %173, i32 %159
  %176 = select i1 %172, i32 %174, i32 %162
  %177 = select i1 %172, i32 %161, i32 0
  %178 = sub i32 %171, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float addrspace(1)* %0, i64 %179
  %181 = load float, float addrspace(1)* %180, align 4, !tbaa !6, !amdgpu.noclobber !10
  %182 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %33
  store float %181, float addrspace(3)* %182, align 4, !tbaa !6
  %183 = add nsw i32 %178, %176
  %184 = icmp eq i32 %183, %167
  %185 = sub i32 0, %176
  %186 = sub i32 0, %175
  %187 = sub i32 %178, %175
  %188 = select i1 %184, i32 %185, i32 %175
  %189 = select i1 %184, i32 %186, i32 %176
  %190 = select i1 %184, i32 %187, i32 %183
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float addrspace(1)* %0, i64 %191
  %193 = load float, float addrspace(1)* %192, align 4, !tbaa !6, !amdgpu.noclobber !10
  %194 = add nsw i32 %33, 100
  %195 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %194
  store float %193, float addrspace(3)* %195, align 4, !tbaa !6
  %196 = add nsw i32 %190, %188
  %197 = icmp eq i32 %196, %167
  %198 = sub i32 0, %188
  %199 = sub i32 0, %189
  %200 = select i1 %197, i32 %199, i32 %188
  %201 = select i1 %197, i32 %198, i32 %189
  %202 = select i1 %197, i32 %178, i32 %196
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float addrspace(1)* %0, i64 %203
  %205 = load float, float addrspace(1)* %204, align 4, !tbaa !6, !amdgpu.noclobber !10
  %206 = add nsw i32 %33, 200
  %207 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %206
  store float %205, float addrspace(3)* %207, align 4, !tbaa !6
  %208 = add nsw i32 %202, %201
  %209 = icmp eq i32 %208, %167
  %210 = sub i32 0, %201
  %211 = sub i32 0, %200
  %212 = sub i32 %202, %200
  %213 = select i1 %209, i32 %210, i32 %200
  %214 = select i1 %209, i32 %211, i32 %201
  %215 = select i1 %209, i32 %212, i32 %208
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float addrspace(1)* %0, i64 %216
  %218 = load float, float addrspace(1)* %217, align 4, !tbaa !6, !amdgpu.noclobber !10
  %219 = add nsw i32 %33, 300
  %220 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %219
  store float %218, float addrspace(3)* %220, align 4, !tbaa !6
  %221 = add nsw i32 %215, %213
  %222 = icmp eq i32 %221, %167
  %223 = sub i32 0, %213
  %224 = sub i32 0, %214
  %225 = select i1 %222, i32 %224, i32 %213
  %226 = select i1 %222, i32 %223, i32 %214
  %227 = select i1 %222, i32 %202, i32 %221
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float addrspace(1)* %0, i64 %228
  %230 = load float, float addrspace(1)* %229, align 4, !tbaa !6, !amdgpu.noclobber !10
  %231 = add nsw i32 %33, 400
  %232 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %231
  store float %230, float addrspace(3)* %232, align 4, !tbaa !6
  %233 = add nsw i32 %227, %226
  %234 = icmp eq i32 %233, %167
  %235 = sub i32 0, %226
  %236 = sub i32 0, %225
  %237 = sub i32 %227, %225
  %238 = select i1 %234, i32 %235, i32 %225
  %239 = select i1 %234, i32 %236, i32 %226
  %240 = select i1 %234, i32 %237, i32 %233
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float addrspace(1)* %0, i64 %241
  %243 = load float, float addrspace(1)* %242, align 4, !tbaa !6, !amdgpu.noclobber !10
  %244 = add nsw i32 %33, 500
  %245 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %244
  store float %243, float addrspace(3)* %245, align 4, !tbaa !6
  %246 = add nsw i32 %240, %238
  %247 = icmp eq i32 %246, %167
  %248 = sub i32 0, %238
  %249 = sub i32 0, %239
  %250 = select i1 %247, i32 %249, i32 %238
  %251 = select i1 %247, i32 %248, i32 %239
  %252 = select i1 %247, i32 %227, i32 %246
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float addrspace(1)* %0, i64 %253
  %255 = load float, float addrspace(1)* %254, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %256

256:                                              ; preds = %158, %63
  %257 = phi i32 [ %122, %63 ], [ %250, %158 ]
  %258 = phi i32 [ %123, %63 ], [ %251, %158 ]
  %259 = phi i32 [ %72, %63 ], [ %167, %158 ]
  %260 = phi i32 [ %124, %63 ], [ %252, %158 ]
  %261 = phi float [ %127, %63 ], [ %255, %158 ]
  %262 = add nsw i32 %33, 600
  %263 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %262
  store float %261, float addrspace(3)* %263, align 4, !tbaa !6
  br label %264

264:                                              ; preds = %256, %17
  %265 = phi i32 [ %18, %17 ], [ %23, %256 ]
  %266 = phi i32 [ 0, %17 ], [ %257, %256 ]
  %267 = phi i32 [ 0, %17 ], [ %258, %256 ]
  %268 = phi i32 [ 0, %17 ], [ %259, %256 ]
  %269 = phi i32 [ 0, %17 ], [ %260, %256 ]
  %270 = phi i32 [ 0, %17 ], [ %33, %256 ]
  %271 = shl nuw nsw i32 %15, 1
  %272 = trunc i32 %15 to i16
  %273 = udiv i16 %272, 96
  %274 = zext i16 %273 to i32
  %275 = mul nsw i32 %274, -191
  %276 = add nsw i32 %275, %271
  %277 = add i32 %265, %276
  %278 = sub i32 0, %277
  %279 = trunc i32 %276 to i16
  %280 = add nsw i16 %279, 4
  %281 = sdiv i16 %280, 2
  %282 = sext i16 %281 to i32
  %283 = and i32 %276, 1
  %284 = icmp eq i32 %283, 0
  %285 = select i1 %284, i32 0, i32 1512
  %286 = add nsw i32 %285, %282
  %287 = icmp eq i32 %7, 0
  br i1 %287, label %288, label %382

288:                                              ; preds = %264
  %289 = icmp slt i32 %277, %2
  br i1 %289, label %294, label %290

290:                                              ; preds = %288
  %291 = shl nsw i32 %2, 1
  %292 = sub i32 %291, %277
  %293 = add i32 %292, -2
  br label %296

294:                                              ; preds = %288
  %295 = icmp slt i32 %277, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %294, %290
  %297 = phi i32 [ %293, %290 ], [ %278, %294 ]
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi i32 [ %297, %296 ], [ %277, %294 ]
  %300 = sdiv i32 %299, 2
  %301 = and i32 %299, 1
  %302 = icmp eq i32 %301, 0
  %303 = sdiv i32 %2, 2
  %304 = and i32 %2, 1
  %305 = add nsw i32 %303, %304
  %306 = sdiv i32 %3, 2
  %307 = and i32 %3, 1
  %308 = add nsw i32 %306, %307
  br i1 %302, label %314, label %309

309:                                              ; preds = %298
  %310 = mul nsw i32 %308, %305
  %311 = add nsw i32 %300, %310
  %312 = mul nsw i32 %3, %2
  %313 = sdiv i32 %312, 2
  br label %316

314:                                              ; preds = %298
  %315 = mul nsw i32 %308, %2
  br label %316

316:                                              ; preds = %314, %309
  %317 = phi i32 [ %315, %314 ], [ %313, %309 ]
  %318 = phi i32 [ %300, %314 ], [ %311, %309 ]
  %319 = phi i32 [ %305, %314 ], [ %303, %309 ]
  %320 = sub nsw i32 %319, %317
  %321 = mul nsw i32 %319, %306
  %322 = icmp eq i32 %307, 0
  %323 = select i1 %322, i32 0, i32 %317
  %324 = add i32 %323, %318
  %325 = add i32 %324, %321
  %326 = sdiv i32 %14, 2
  %327 = mul nsw i32 %319, %326
  %328 = add i32 %327, %318
  %329 = icmp eq i32 %328, %325
  %330 = sub i32 0, %317
  %331 = sub i32 0, %320
  %332 = select i1 %329, i32 %330, i32 %320
  %333 = select i1 %329, i32 %331, i32 %317
  %334 = select i1 %329, i32 %319, i32 0
  %335 = sub i32 %328, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float addrspace(1)* %0, i64 %336
  %338 = load float, float addrspace(1)* %337, align 4, !tbaa !6, !amdgpu.noclobber !10
  %339 = add nsw i32 %286, 300
  %340 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %339
  store float %338, float addrspace(3)* %340, align 4, !tbaa !6
  %341 = add nsw i32 %335, %333
  %342 = icmp eq i32 %341, %325
  %343 = sub i32 0, %333
  %344 = sub i32 0, %332
  %345 = sub i32 %335, %332
  %346 = select i1 %342, i32 %343, i32 %332
  %347 = select i1 %342, i32 %344, i32 %333
  %348 = select i1 %342, i32 %345, i32 %341
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float addrspace(1)* %0, i64 %349
  %351 = load float, float addrspace(1)* %350, align 4, !tbaa !6, !amdgpu.noclobber !10
  %352 = add nsw i32 %286, 200
  %353 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %352
  store float %351, float addrspace(3)* %353, align 4, !tbaa !6
  %354 = add nsw i32 %286, 400
  %355 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %354
  store float %351, float addrspace(3)* %355, align 4, !tbaa !6
  %356 = add nsw i32 %348, %346
  %357 = icmp eq i32 %356, %325
  %358 = sub i32 0, %346
  %359 = sub i32 0, %347
  %360 = select i1 %357, i32 %359, i32 %346
  %361 = select i1 %357, i32 %358, i32 %347
  %362 = select i1 %357, i32 %335, i32 %356
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float addrspace(1)* %0, i64 %363
  %365 = load float, float addrspace(1)* %364, align 4, !tbaa !6, !amdgpu.noclobber !10
  %366 = add nsw i32 %286, 100
  %367 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %366
  store float %365, float addrspace(3)* %367, align 4, !tbaa !6
  %368 = add nsw i32 %286, 500
  %369 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %368
  store float %365, float addrspace(3)* %369, align 4, !tbaa !6
  %370 = add nsw i32 %362, %361
  %371 = icmp eq i32 %370, %325
  %372 = sub i32 0, %361
  %373 = sub i32 0, %360
  %374 = sub i32 %362, %360
  %375 = select i1 %371, i32 %372, i32 %360
  %376 = select i1 %371, i32 %373, i32 %361
  %377 = select i1 %371, i32 %374, i32 %370
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float, float addrspace(1)* %0, i64 %378
  %380 = load float, float addrspace(1)* %379, align 4, !tbaa !6, !amdgpu.noclobber !10
  %381 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %286
  store float %380, float addrspace(3)* %381, align 4, !tbaa !6
  br label %509

382:                                              ; preds = %264
  %383 = add nsw i32 %14, -3
  %384 = icmp slt i32 %277, %2
  br i1 %384, label %389, label %385

385:                                              ; preds = %382
  %386 = shl nsw i32 %2, 1
  %387 = sub i32 %386, %277
  %388 = add i32 %387, -2
  br label %391

389:                                              ; preds = %382
  %390 = icmp slt i32 %277, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %389, %385
  %392 = phi i32 [ %388, %385 ], [ %278, %389 ]
  br label %393

393:                                              ; preds = %391, %389
  %394 = phi i32 [ %392, %391 ], [ %277, %389 ]
  %395 = sdiv i32 %394, 2
  %396 = and i32 %394, 1
  %397 = icmp eq i32 %396, 0
  %398 = sdiv i32 %2, 2
  %399 = and i32 %2, 1
  %400 = add nsw i32 %398, %399
  %401 = sdiv i32 %3, 2
  %402 = and i32 %3, 1
  %403 = add nsw i32 %401, %402
  br i1 %397, label %409, label %404

404:                                              ; preds = %393
  %405 = mul nsw i32 %403, %400
  %406 = add nsw i32 %395, %405
  %407 = mul nsw i32 %3, %2
  %408 = sdiv i32 %407, 2
  br label %411

409:                                              ; preds = %393
  %410 = mul nsw i32 %403, %2
  br label %411

411:                                              ; preds = %409, %404
  %412 = phi i32 [ %410, %409 ], [ %408, %404 ]
  %413 = phi i32 [ %395, %409 ], [ %406, %404 ]
  %414 = phi i32 [ %400, %409 ], [ %398, %404 ]
  %415 = sub nsw i32 %414, %412
  %416 = mul nsw i32 %414, %401
  %417 = icmp eq i32 %402, 0
  %418 = select i1 %417, i32 0, i32 %412
  %419 = add i32 %418, %413
  %420 = add i32 %419, %416
  %421 = sdiv i32 %383, 2
  %422 = mul nsw i32 %414, %421
  %423 = add i32 %413, %412
  %424 = add i32 %423, %422
  %425 = icmp eq i32 %424, %420
  %426 = sub i32 0, %415
  %427 = sub i32 0, %412
  %428 = select i1 %425, i32 %427, i32 %415
  %429 = select i1 %425, i32 %426, i32 %412
  %430 = select i1 %425, i32 %414, i32 0
  %431 = sub i32 %424, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float addrspace(1)* %0, i64 %432
  %434 = load float, float addrspace(1)* %433, align 4, !tbaa !6, !amdgpu.noclobber !10
  %435 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %286
  store float %434, float addrspace(3)* %435, align 4, !tbaa !6
  %436 = add nsw i32 %431, %428
  %437 = icmp eq i32 %436, %420
  %438 = sub i32 0, %428
  %439 = sub i32 0, %429
  %440 = sub i32 %431, %429
  %441 = select i1 %437, i32 %439, i32 %428
  %442 = select i1 %437, i32 %438, i32 %429
  %443 = select i1 %437, i32 %440, i32 %436
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float addrspace(1)* %0, i64 %444
  %446 = load float, float addrspace(1)* %445, align 4, !tbaa !6, !amdgpu.noclobber !10
  %447 = add nsw i32 %286, 100
  %448 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %447
  store float %446, float addrspace(3)* %448, align 4, !tbaa !6
  %449 = add nsw i32 %443, %442
  %450 = icmp eq i32 %449, %420
  %451 = sub i32 0, %442
  %452 = sub i32 0, %441
  %453 = select i1 %450, i32 %451, i32 %441
  %454 = select i1 %450, i32 %452, i32 %442
  %455 = select i1 %450, i32 %431, i32 %449
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float addrspace(1)* %0, i64 %456
  %458 = load float, float addrspace(1)* %457, align 4, !tbaa !6, !amdgpu.noclobber !10
  %459 = add nsw i32 %286, 200
  %460 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %459
  store float %458, float addrspace(3)* %460, align 4, !tbaa !6
  %461 = add nsw i32 %455, %453
  %462 = icmp eq i32 %461, %420
  %463 = sub i32 0, %453
  %464 = sub i32 0, %454
  %465 = sub i32 %455, %454
  %466 = select i1 %462, i32 %464, i32 %453
  %467 = select i1 %462, i32 %463, i32 %454
  %468 = select i1 %462, i32 %465, i32 %461
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds float, float addrspace(1)* %0, i64 %469
  %471 = load float, float addrspace(1)* %470, align 4, !tbaa !6, !amdgpu.noclobber !10
  %472 = add nsw i32 %286, 300
  %473 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %472
  store float %471, float addrspace(3)* %473, align 4, !tbaa !6
  %474 = add nsw i32 %468, %467
  %475 = icmp eq i32 %474, %420
  %476 = sub i32 0, %467
  %477 = sub i32 0, %466
  %478 = select i1 %475, i32 %476, i32 %466
  %479 = select i1 %475, i32 %477, i32 %467
  %480 = select i1 %475, i32 %455, i32 %474
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds float, float addrspace(1)* %0, i64 %481
  %483 = load float, float addrspace(1)* %482, align 4, !tbaa !6, !amdgpu.noclobber !10
  %484 = add nsw i32 %286, 400
  %485 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %484
  store float %483, float addrspace(3)* %485, align 4, !tbaa !6
  %486 = add nsw i32 %480, %478
  %487 = icmp eq i32 %486, %420
  %488 = sub i32 0, %478
  %489 = sub i32 0, %479
  %490 = sub i32 %480, %479
  %491 = select i1 %487, i32 %489, i32 %478
  %492 = select i1 %487, i32 %488, i32 %479
  %493 = select i1 %487, i32 %490, i32 %486
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds float, float addrspace(1)* %0, i64 %494
  %496 = load float, float addrspace(1)* %495, align 4, !tbaa !6, !amdgpu.noclobber !10
  %497 = add nsw i32 %286, 500
  %498 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %497
  store float %496, float addrspace(3)* %498, align 4, !tbaa !6
  %499 = add nsw i32 %493, %492
  %500 = icmp eq i32 %499, %420
  %501 = sub i32 0, %492
  %502 = sub i32 0, %491
  %503 = select i1 %500, i32 %501, i32 %491
  %504 = select i1 %500, i32 %502, i32 %492
  %505 = select i1 %500, i32 %480, i32 %499
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds float, float addrspace(1)* %0, i64 %506
  %508 = load float, float addrspace(1)* %507, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %509

509:                                              ; preds = %411, %316
  %510 = phi i32 [ %325, %316 ], [ %420, %411 ]
  %511 = phi i32 [ %375, %316 ], [ %503, %411 ]
  %512 = phi i32 [ %376, %316 ], [ %504, %411 ]
  %513 = phi i32 [ %377, %316 ], [ %505, %411 ]
  %514 = phi float [ %380, %316 ], [ %508, %411 ]
  %515 = add nsw i32 %286, 600
  %516 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %515
  store float %514, float addrspace(3)* %516, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %517 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %15
  %518 = load float, float addrspace(3)* %517, align 4, !tbaa !6
  %519 = fmul contract float %518, 0x3FF3AECB00000000
  store float %519, float addrspace(3)* %517, align 4, !tbaa !6
  %520 = add nuw nsw i32 %15, 1512
  %521 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %520
  %522 = load float, float addrspace(3)* %521, align 4, !tbaa !6
  %523 = fmul contract float %522, 0x3FEA033860000000
  store float %523, float addrspace(3)* %521, align 4, !tbaa !6
  %524 = add nuw nsw i32 %15, 192
  %525 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %524
  %526 = load float, float addrspace(3)* %525, align 4, !tbaa !6
  %527 = fmul contract float %526, 0x3FF3AECB00000000
  store float %527, float addrspace(3)* %525, align 4, !tbaa !6
  %528 = add nuw nsw i32 %15, 1704
  %529 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %528
  %530 = load float, float addrspace(3)* %529, align 4, !tbaa !6
  %531 = fmul contract float %530, 0x3FEA033860000000
  store float %531, float addrspace(3)* %529, align 4, !tbaa !6
  %532 = add nuw nsw i32 %15, 384
  %533 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %532
  %534 = load float, float addrspace(3)* %533, align 4, !tbaa !6
  %535 = fmul contract float %534, 0x3FF3AECB00000000
  store float %535, float addrspace(3)* %533, align 4, !tbaa !6
  %536 = add nuw nsw i32 %15, 1896
  %537 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %536
  %538 = load float, float addrspace(3)* %537, align 4, !tbaa !6
  %539 = fmul contract float %538, 0x3FEA033860000000
  store float %539, float addrspace(3)* %537, align 4, !tbaa !6
  %540 = icmp ult i32 %15, 124
  br i1 %540, label %541, label %550

541:                                              ; preds = %509
  %542 = add nuw nsw i32 %15, 576
  %543 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %542
  %544 = load float, float addrspace(3)* %543, align 4, !tbaa !6
  %545 = fmul contract float %544, 0x3FF3AECB00000000
  store float %545, float addrspace(3)* %543, align 4, !tbaa !6
  %546 = add nuw nsw i32 %15, 2088
  %547 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %546
  %548 = load float, float addrspace(3)* %547, align 4, !tbaa !6
  %549 = fmul contract float %548, 0x3FEA033860000000
  store float %549, float addrspace(3)* %547, align 4, !tbaa !6
  br label %550

550:                                              ; preds = %541, %509
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %551 = load float, float addrspace(3)* %521, align 4, !tbaa !6
  %552 = add nuw nsw i32 %15, 1513
  %553 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %552
  %554 = load float, float addrspace(3)* %553, align 4, !tbaa !6
  %555 = add nuw nsw i32 %15, 1
  %556 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %555
  %557 = fadd contract float %551, %554
  %558 = fmul contract float %557, 0x3FDC626AA0000000
  %559 = load float, float addrspace(3)* %556, align 4, !tbaa !6
  %560 = fsub contract float %559, %558
  store float %560, float addrspace(3)* %556, align 4, !tbaa !6
  %561 = load float, float addrspace(3)* %529, align 4, !tbaa !6
  %562 = add nuw nsw i32 %15, 1705
  %563 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %562
  %564 = load float, float addrspace(3)* %563, align 4, !tbaa !6
  %565 = add nuw nsw i32 %15, 193
  %566 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %565
  %567 = fadd contract float %561, %564
  %568 = fmul contract float %567, 0x3FDC626AA0000000
  %569 = load float, float addrspace(3)* %566, align 4, !tbaa !6
  %570 = fsub contract float %569, %568
  store float %570, float addrspace(3)* %566, align 4, !tbaa !6
  %571 = load float, float addrspace(3)* %537, align 4, !tbaa !6
  %572 = add nuw nsw i32 %15, 1897
  %573 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %572
  %574 = load float, float addrspace(3)* %573, align 4, !tbaa !6
  %575 = add nuw nsw i32 %15, 385
  %576 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %575
  %577 = fadd contract float %571, %574
  %578 = fmul contract float %577, 0x3FDC626AA0000000
  %579 = load float, float addrspace(3)* %576, align 4, !tbaa !6
  %580 = fsub contract float %579, %578
  store float %580, float addrspace(3)* %576, align 4, !tbaa !6
  %581 = icmp ult i32 %15, 123
  br i1 %581, label %582, label %595

582:                                              ; preds = %550
  %583 = add nuw nsw i32 %15, 2088
  %584 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %583
  %585 = load float, float addrspace(3)* %584, align 4, !tbaa !6
  %586 = add nuw nsw i32 %15, 2089
  %587 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %586
  %588 = load float, float addrspace(3)* %587, align 4, !tbaa !6
  %589 = add nuw nsw i32 %15, 577
  %590 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %589
  %591 = fadd contract float %585, %588
  %592 = fmul contract float %591, 0x3FDC626AA0000000
  %593 = load float, float addrspace(3)* %590, align 4, !tbaa !6
  %594 = fsub contract float %593, %592
  store float %594, float addrspace(3)* %590, align 4, !tbaa !6
  br label %595

595:                                              ; preds = %582, %550
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %596 = load float, float addrspace(3)* %517, align 4, !tbaa !6
  %597 = load float, float addrspace(3)* %556, align 4, !tbaa !6
  %598 = fadd contract float %596, %597
  %599 = fmul contract float %598, 0x3FEC40CEC0000000
  %600 = load float, float addrspace(3)* %521, align 4, !tbaa !6
  %601 = fsub contract float %600, %599
  store float %601, float addrspace(3)* %521, align 4, !tbaa !6
  %602 = load float, float addrspace(3)* %525, align 4, !tbaa !6
  %603 = load float, float addrspace(3)* %566, align 4, !tbaa !6
  %604 = fadd contract float %602, %603
  %605 = fmul contract float %604, 0x3FEC40CEC0000000
  %606 = load float, float addrspace(3)* %529, align 4, !tbaa !6
  %607 = fsub contract float %606, %605
  store float %607, float addrspace(3)* %529, align 4, !tbaa !6
  %608 = load float, float addrspace(3)* %533, align 4, !tbaa !6
  %609 = load float, float addrspace(3)* %576, align 4, !tbaa !6
  %610 = fadd contract float %608, %609
  %611 = fmul contract float %610, 0x3FEC40CEC0000000
  %612 = load float, float addrspace(3)* %537, align 4, !tbaa !6
  %613 = fsub contract float %612, %611
  store float %613, float addrspace(3)* %537, align 4, !tbaa !6
  br i1 %581, label %614, label %627

614:                                              ; preds = %595
  %615 = add nuw nsw i32 %15, 576
  %616 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %615
  %617 = load float, float addrspace(3)* %616, align 4, !tbaa !6
  %618 = add nuw nsw i32 %15, 577
  %619 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %618
  %620 = load float, float addrspace(3)* %619, align 4, !tbaa !6
  %621 = add nuw nsw i32 %15, 2088
  %622 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %621
  %623 = fadd contract float %617, %620
  %624 = fmul contract float %623, 0x3FEC40CEC0000000
  %625 = load float, float addrspace(3)* %622, align 4, !tbaa !6
  %626 = fsub contract float %625, %624
  store float %626, float addrspace(3)* %622, align 4, !tbaa !6
  br label %627

627:                                              ; preds = %614, %595
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %628 = load float, float addrspace(3)* %521, align 4, !tbaa !6
  %629 = load float, float addrspace(3)* %553, align 4, !tbaa !6
  %630 = fadd contract float %628, %629
  %631 = fmul contract float %630, 0x3FAB2035C0000000
  %632 = load float, float addrspace(3)* %556, align 4, !tbaa !6
  %633 = fadd contract float %632, %631
  store float %633, float addrspace(3)* %556, align 4, !tbaa !6
  %634 = load float, float addrspace(3)* %529, align 4, !tbaa !6
  %635 = load float, float addrspace(3)* %563, align 4, !tbaa !6
  %636 = fadd contract float %634, %635
  %637 = fmul contract float %636, 0x3FAB2035C0000000
  %638 = load float, float addrspace(3)* %566, align 4, !tbaa !6
  %639 = fadd contract float %638, %637
  store float %639, float addrspace(3)* %566, align 4, !tbaa !6
  %640 = load float, float addrspace(3)* %537, align 4, !tbaa !6
  %641 = load float, float addrspace(3)* %573, align 4, !tbaa !6
  %642 = fadd contract float %640, %641
  %643 = fmul contract float %642, 0x3FAB2035C0000000
  %644 = load float, float addrspace(3)* %576, align 4, !tbaa !6
  %645 = fadd contract float %644, %643
  store float %645, float addrspace(3)* %576, align 4, !tbaa !6
  br i1 %581, label %646, label %659

646:                                              ; preds = %627
  %647 = add nuw nsw i32 %15, 2088
  %648 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %647
  %649 = load float, float addrspace(3)* %648, align 4, !tbaa !6
  %650 = add nuw nsw i32 %15, 2089
  %651 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %650
  %652 = load float, float addrspace(3)* %651, align 4, !tbaa !6
  %653 = add nuw nsw i32 %15, 577
  %654 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %653
  %655 = fadd contract float %649, %652
  %656 = fmul contract float %655, 0x3FAB2035C0000000
  %657 = load float, float addrspace(3)* %654, align 4, !tbaa !6
  %658 = fadd contract float %657, %656
  store float %658, float addrspace(3)* %654, align 4, !tbaa !6
  br label %659

659:                                              ; preds = %646, %627
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %660 = load float, float addrspace(3)* %517, align 4, !tbaa !6
  %661 = load float, float addrspace(3)* %556, align 4, !tbaa !6
  %662 = fadd contract float %660, %661
  %663 = fmul contract float %662, 0x3FF960CE60000000
  %664 = load float, float addrspace(3)* %521, align 4, !tbaa !6
  %665 = fadd contract float %664, %663
  store float %665, float addrspace(3)* %521, align 4, !tbaa !6
  %666 = load float, float addrspace(3)* %525, align 4, !tbaa !6
  %667 = load float, float addrspace(3)* %566, align 4, !tbaa !6
  %668 = fadd contract float %666, %667
  %669 = fmul contract float %668, 0x3FF960CE60000000
  %670 = load float, float addrspace(3)* %529, align 4, !tbaa !6
  %671 = fadd contract float %670, %669
  store float %671, float addrspace(3)* %529, align 4, !tbaa !6
  %672 = load float, float addrspace(3)* %533, align 4, !tbaa !6
  %673 = load float, float addrspace(3)* %576, align 4, !tbaa !6
  %674 = fadd contract float %672, %673
  %675 = fmul contract float %674, 0x3FF960CE60000000
  %676 = load float, float addrspace(3)* %537, align 4, !tbaa !6
  %677 = fadd contract float %676, %675
  store float %677, float addrspace(3)* %537, align 4, !tbaa !6
  br i1 %581, label %678, label %691

678:                                              ; preds = %659
  %679 = add nuw nsw i32 %15, 576
  %680 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %679
  %681 = load float, float addrspace(3)* %680, align 4, !tbaa !6
  %682 = add nuw nsw i32 %15, 577
  %683 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %682
  %684 = load float, float addrspace(3)* %683, align 4, !tbaa !6
  %685 = add nuw nsw i32 %15, 2088
  %686 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %685
  %687 = fadd contract float %681, %684
  %688 = fmul contract float %687, 0x3FF960CE60000000
  %689 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %690 = fadd contract float %689, %688
  store float %690, float addrspace(3)* %686, align 4, !tbaa !6
  br label %691

691:                                              ; preds = %678, %659
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %692 = add i32 %265, %15
  %693 = icmp slt i32 %692, %2
  br i1 %693, label %694, label %699

694:                                              ; preds = %691
  %695 = mul nsw i32 %3, %2
  %696 = add nsw i32 %692, %695
  %697 = mul nsw i32 %14, %2
  %698 = add nsw i32 %692, %697
  br label %699

699:                                              ; preds = %694, %691
  %700 = phi i32 [ %696, %694 ], [ 0, %691 ]
  %701 = phi i32 [ %2, %694 ], [ 0, %691 ]
  %702 = phi i32 [ %698, %694 ], [ 0, %691 ]
  %703 = add nuw nsw i32 %15, 4
  %704 = lshr i32 %703, 1
  %705 = and i32 %15, 1
  %706 = icmp eq i32 %705, 0
  %707 = select i1 %706, i32 0, i32 1512
  %708 = add nuw nsw i32 %707, %704
  %709 = icmp sgt i32 %4, 0
  br i1 %709, label %710, label %3310

710:                                              ; preds = %699
  %711 = add nsw i32 %286, 700
  %712 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %711
  %713 = add nsw i32 %286, 800
  %714 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %713
  %715 = add nsw i32 %286, 900
  %716 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %715
  %717 = add nsw i32 %286, 1000
  %718 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %717
  %719 = add nsw i32 %286, 1100
  %720 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %719
  %721 = add nsw i32 %286, 1200
  %722 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %721
  %723 = add nsw i32 %286, 1300
  %724 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %723
  %725 = add nsw i32 %286, 1400
  %726 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %725
  %727 = add nsw i32 %270, 700
  %728 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %727
  %729 = add nsw i32 %270, 800
  %730 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %729
  %731 = add nsw i32 %270, 900
  %732 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %731
  %733 = add nsw i32 %270, 1000
  %734 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %733
  %735 = add nsw i32 %270, 1100
  %736 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %735
  %737 = add nsw i32 %270, 1200
  %738 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %737
  %739 = add nsw i32 %270, 1300
  %740 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %739
  %741 = add nsw i32 %270, 1400
  %742 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %741
  %743 = add nuw nsw i32 %15, 700
  %744 = icmp ult i32 %15, 32
  %745 = add nuw nsw i32 %15, 1468
  %746 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %745
  %747 = add nuw nsw i32 %15, 2980
  %748 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %747
  %749 = icmp ult i32 %15, 31
  %750 = add nuw nsw i32 %15, 2981
  %751 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %750
  %752 = add nuw nsw i32 %15, 1469
  %753 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %752
  %754 = add nuw nsw i32 %708, 800
  %755 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %708
  %756 = add nuw nsw i32 %708, 100
  %757 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %756
  %758 = add nuw nsw i32 %708, 200
  %759 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %758
  %760 = add nuw nsw i32 %708, 300
  %761 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %760
  %762 = add nuw nsw i32 %708, 400
  %763 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %762
  %764 = add nuw nsw i32 %708, 500
  %765 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %764
  %766 = add nuw nsw i32 %708, 600
  %767 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %766
  %768 = add nuw nsw i32 %708, 700
  %769 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %768
  %770 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %754
  %771 = add nuw nsw i32 %708, 900
  %772 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %771
  %773 = add nuw nsw i32 %708, 1000
  %774 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %773
  %775 = add nuw nsw i32 %708, 1100
  %776 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %775
  %777 = add nuw nsw i32 %708, 1200
  %778 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %777
  %779 = add nuw nsw i32 %708, 1300
  %780 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %779
  %781 = add nuw nsw i32 %708, 1400
  %782 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %781
  %783 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %743
  %784 = add nuw nsw i32 %15, 2212
  %785 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %784
  %786 = add nuw nsw i32 %15, 892
  %787 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %786
  %788 = add nuw nsw i32 %15, 2404
  %789 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %788
  %790 = add nuw nsw i32 %15, 1084
  %791 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %790
  %792 = add nuw nsw i32 %15, 2596
  %793 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %792
  %794 = add nuw nsw i32 %15, 1276
  %795 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %794
  %796 = add nuw nsw i32 %15, 2788
  %797 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %796
  %798 = add nuw nsw i32 %15, 2213
  %799 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %798
  %800 = add nuw nsw i32 %15, 701
  %801 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %800
  %802 = add nuw nsw i32 %15, 2405
  %803 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %802
  %804 = add nuw nsw i32 %15, 893
  %805 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %804
  %806 = add nuw nsw i32 %15, 2597
  %807 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %806
  %808 = add nuw nsw i32 %15, 1085
  %809 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %808
  %810 = add nuw nsw i32 %15, 2789
  %811 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %810
  %812 = add nuw nsw i32 %15, 1277
  %813 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %812
  br label %814

814:                                              ; preds = %1308, %710
  %815 = phi i32 [ 0, %710 ], [ %1310, %1308 ]
  %816 = phi i32 [ %513, %710 ], [ %903, %1308 ]
  %817 = phi i32 [ %512, %710 ], [ %902, %1308 ]
  %818 = phi i32 [ %511, %710 ], [ %901, %1308 ]
  %819 = phi i32 [ %269, %710 ], [ %995, %1308 ]
  %820 = phi i32 [ %702, %710 ], [ %1309, %1308 ]
  %821 = phi i32 [ %267, %710 ], [ %994, %1308 ]
  %822 = phi i32 [ %266, %710 ], [ %993, %1308 ]
  %823 = add nsw i32 %818, %816
  %824 = icmp eq i32 %823, %510
  %825 = sub i32 0, %818
  %826 = sub i32 0, %817
  %827 = sub i32 %816, %817
  %828 = select i1 %824, i32 %826, i32 %818
  %829 = select i1 %824, i32 %825, i32 %817
  %830 = select i1 %824, i32 %827, i32 %823
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds float, float addrspace(1)* %0, i64 %831
  %833 = load float, float addrspace(1)* %832, align 4, !tbaa !6
  store float %833, float addrspace(3)* %712, align 4, !tbaa !6
  %834 = add nsw i32 %830, %829
  %835 = icmp eq i32 %834, %510
  %836 = sub i32 0, %829
  %837 = sub i32 0, %828
  %838 = select i1 %835, i32 %836, i32 %828
  %839 = select i1 %835, i32 %837, i32 %829
  %840 = select i1 %835, i32 %816, i32 %834
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds float, float addrspace(1)* %0, i64 %841
  %843 = load float, float addrspace(1)* %842, align 4, !tbaa !6
  store float %843, float addrspace(3)* %714, align 4, !tbaa !6
  %844 = add nsw i32 %840, %838
  %845 = icmp eq i32 %844, %510
  %846 = sub i32 0, %838
  %847 = sub i32 0, %839
  %848 = sub i32 %840, %839
  %849 = select i1 %845, i32 %847, i32 %838
  %850 = select i1 %845, i32 %846, i32 %839
  %851 = select i1 %845, i32 %848, i32 %844
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds float, float addrspace(1)* %0, i64 %852
  %854 = load float, float addrspace(1)* %853, align 4, !tbaa !6
  store float %854, float addrspace(3)* %716, align 4, !tbaa !6
  %855 = add nsw i32 %851, %850
  %856 = icmp eq i32 %855, %510
  %857 = sub i32 0, %850
  %858 = sub i32 0, %849
  %859 = select i1 %856, i32 %857, i32 %849
  %860 = select i1 %856, i32 %858, i32 %850
  %861 = select i1 %856, i32 %840, i32 %855
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds float, float addrspace(1)* %0, i64 %862
  %864 = load float, float addrspace(1)* %863, align 4, !tbaa !6
  store float %864, float addrspace(3)* %718, align 4, !tbaa !6
  %865 = add nsw i32 %861, %859
  %866 = icmp eq i32 %865, %510
  %867 = sub i32 0, %859
  %868 = sub i32 0, %860
  %869 = sub i32 %861, %860
  %870 = select i1 %866, i32 %868, i32 %859
  %871 = select i1 %866, i32 %867, i32 %860
  %872 = select i1 %866, i32 %869, i32 %865
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds float, float addrspace(1)* %0, i64 %873
  %875 = load float, float addrspace(1)* %874, align 4, !tbaa !6
  store float %875, float addrspace(3)* %720, align 4, !tbaa !6
  %876 = add nsw i32 %872, %871
  %877 = icmp eq i32 %876, %510
  %878 = sub i32 0, %871
  %879 = sub i32 0, %870
  %880 = select i1 %877, i32 %878, i32 %870
  %881 = select i1 %877, i32 %879, i32 %871
  %882 = select i1 %877, i32 %861, i32 %876
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds float, float addrspace(1)* %0, i64 %883
  %885 = load float, float addrspace(1)* %884, align 4, !tbaa !6
  store float %885, float addrspace(3)* %722, align 4, !tbaa !6
  %886 = add nsw i32 %882, %880
  %887 = icmp eq i32 %886, %510
  %888 = sub i32 0, %880
  %889 = sub i32 0, %881
  %890 = sub i32 %882, %881
  %891 = select i1 %887, i32 %889, i32 %880
  %892 = select i1 %887, i32 %888, i32 %881
  %893 = select i1 %887, i32 %890, i32 %886
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds float, float addrspace(1)* %0, i64 %894
  %896 = load float, float addrspace(1)* %895, align 4, !tbaa !6
  store float %896, float addrspace(3)* %724, align 4, !tbaa !6
  %897 = add nsw i32 %893, %892
  %898 = icmp eq i32 %897, %510
  %899 = sub i32 0, %892
  %900 = sub i32 0, %891
  %901 = select i1 %898, i32 %899, i32 %891
  %902 = select i1 %898, i32 %900, i32 %892
  %903 = select i1 %898, i32 %882, i32 %897
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds float, float addrspace(1)* %0, i64 %904
  %906 = load float, float addrspace(1)* %905, align 4, !tbaa !6
  store float %906, float addrspace(3)* %726, align 4, !tbaa !6
  br i1 %16, label %907, label %992

907:                                              ; preds = %814
  %908 = add nsw i32 %821, %819
  %909 = icmp eq i32 %908, %268
  %910 = sub i32 0, %821
  %911 = sub i32 0, %822
  %912 = sub i32 %819, %822
  %913 = select i1 %909, i32 %910, i32 %822
  %914 = select i1 %909, i32 %911, i32 %821
  %915 = select i1 %909, i32 %912, i32 %908
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds float, float addrspace(1)* %0, i64 %916
  %918 = load float, float addrspace(1)* %917, align 4, !tbaa !6
  store float %918, float addrspace(3)* %728, align 4, !tbaa !6
  %919 = add nsw i32 %915, %913
  %920 = icmp eq i32 %919, %268
  %921 = sub i32 0, %913
  %922 = sub i32 0, %914
  %923 = select i1 %920, i32 %922, i32 %913
  %924 = select i1 %920, i32 %921, i32 %914
  %925 = select i1 %920, i32 %819, i32 %919
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds float, float addrspace(1)* %0, i64 %926
  %928 = load float, float addrspace(1)* %927, align 4, !tbaa !6
  store float %928, float addrspace(3)* %730, align 4, !tbaa !6
  %929 = add nsw i32 %925, %924
  %930 = icmp eq i32 %929, %268
  %931 = sub i32 0, %924
  %932 = sub i32 0, %923
  %933 = sub i32 %925, %923
  %934 = select i1 %930, i32 %931, i32 %923
  %935 = select i1 %930, i32 %932, i32 %924
  %936 = select i1 %930, i32 %933, i32 %929
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds float, float addrspace(1)* %0, i64 %937
  %939 = load float, float addrspace(1)* %938, align 4, !tbaa !6
  store float %939, float addrspace(3)* %732, align 4, !tbaa !6
  %940 = add nsw i32 %936, %934
  %941 = icmp eq i32 %940, %268
  %942 = sub i32 0, %934
  %943 = sub i32 0, %935
  %944 = select i1 %941, i32 %943, i32 %934
  %945 = select i1 %941, i32 %942, i32 %935
  %946 = select i1 %941, i32 %925, i32 %940
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds float, float addrspace(1)* %0, i64 %947
  %949 = load float, float addrspace(1)* %948, align 4, !tbaa !6
  store float %949, float addrspace(3)* %734, align 4, !tbaa !6
  %950 = add nsw i32 %946, %945
  %951 = icmp eq i32 %950, %268
  %952 = sub i32 0, %945
  %953 = sub i32 0, %944
  %954 = sub i32 %946, %944
  %955 = select i1 %951, i32 %952, i32 %944
  %956 = select i1 %951, i32 %953, i32 %945
  %957 = select i1 %951, i32 %954, i32 %950
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds float, float addrspace(1)* %0, i64 %958
  %960 = load float, float addrspace(1)* %959, align 4, !tbaa !6
  store float %960, float addrspace(3)* %736, align 4, !tbaa !6
  %961 = add nsw i32 %957, %955
  %962 = icmp eq i32 %961, %268
  %963 = sub i32 0, %955
  %964 = sub i32 0, %956
  %965 = select i1 %962, i32 %964, i32 %955
  %966 = select i1 %962, i32 %963, i32 %956
  %967 = select i1 %962, i32 %946, i32 %961
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds float, float addrspace(1)* %0, i64 %968
  %970 = load float, float addrspace(1)* %969, align 4, !tbaa !6
  store float %970, float addrspace(3)* %738, align 4, !tbaa !6
  %971 = add nsw i32 %967, %966
  %972 = icmp eq i32 %971, %268
  %973 = sub i32 0, %966
  %974 = sub i32 0, %965
  %975 = sub i32 %967, %965
  %976 = select i1 %972, i32 %973, i32 %965
  %977 = select i1 %972, i32 %974, i32 %966
  %978 = select i1 %972, i32 %975, i32 %971
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds float, float addrspace(1)* %0, i64 %979
  %981 = load float, float addrspace(1)* %980, align 4, !tbaa !6
  store float %981, float addrspace(3)* %740, align 4, !tbaa !6
  %982 = add nsw i32 %978, %976
  %983 = icmp eq i32 %982, %268
  %984 = sub i32 0, %976
  %985 = sub i32 0, %977
  %986 = select i1 %983, i32 %985, i32 %976
  %987 = select i1 %983, i32 %984, i32 %977
  %988 = select i1 %983, i32 %967, i32 %982
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds float, float addrspace(1)* %0, i64 %989
  %991 = load float, float addrspace(1)* %990, align 4, !tbaa !6
  store float %991, float addrspace(3)* %742, align 4, !tbaa !6
  br label %992

992:                                              ; preds = %907, %814
  %993 = phi i32 [ %986, %907 ], [ %822, %814 ]
  %994 = phi i32 [ %987, %907 ], [ %821, %814 ]
  %995 = phi i32 [ %988, %907 ], [ %819, %814 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %996 = load float, float addrspace(3)* %783, align 4, !tbaa !6
  %997 = fmul contract float %996, 0x3FF3AECB00000000
  store float %997, float addrspace(3)* %783, align 4, !tbaa !6
  %998 = load float, float addrspace(3)* %785, align 4, !tbaa !6
  %999 = fmul contract float %998, 0x3FEA033860000000
  store float %999, float addrspace(3)* %785, align 4, !tbaa !6
  %1000 = load float, float addrspace(3)* %787, align 4, !tbaa !6
  %1001 = fmul contract float %1000, 0x3FF3AECB00000000
  store float %1001, float addrspace(3)* %787, align 4, !tbaa !6
  %1002 = load float, float addrspace(3)* %789, align 4, !tbaa !6
  %1003 = fmul contract float %1002, 0x3FEA033860000000
  store float %1003, float addrspace(3)* %789, align 4, !tbaa !6
  %1004 = load float, float addrspace(3)* %791, align 4, !tbaa !6
  %1005 = fmul contract float %1004, 0x3FF3AECB00000000
  store float %1005, float addrspace(3)* %791, align 4, !tbaa !6
  %1006 = load float, float addrspace(3)* %793, align 4, !tbaa !6
  %1007 = fmul contract float %1006, 0x3FEA033860000000
  store float %1007, float addrspace(3)* %793, align 4, !tbaa !6
  %1008 = load float, float addrspace(3)* %795, align 4, !tbaa !6
  %1009 = fmul contract float %1008, 0x3FF3AECB00000000
  store float %1009, float addrspace(3)* %795, align 4, !tbaa !6
  %1010 = load float, float addrspace(3)* %797, align 4, !tbaa !6
  %1011 = fmul contract float %1010, 0x3FEA033860000000
  store float %1011, float addrspace(3)* %797, align 4, !tbaa !6
  br i1 %744, label %1012, label %1017

1012:                                             ; preds = %992
  %1013 = load float, float addrspace(3)* %746, align 4, !tbaa !6
  %1014 = fmul contract float %1013, 0x3FF3AECB00000000
  store float %1014, float addrspace(3)* %746, align 4, !tbaa !6
  %1015 = load float, float addrspace(3)* %748, align 4, !tbaa !6
  %1016 = fmul contract float %1015, 0x3FEA033860000000
  store float %1016, float addrspace(3)* %748, align 4, !tbaa !6
  br label %1017

1017:                                             ; preds = %1012, %992
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1018 = load float, float addrspace(3)* %785, align 4, !tbaa !6
  %1019 = load float, float addrspace(3)* %799, align 4, !tbaa !6
  %1020 = fadd contract float %1018, %1019
  %1021 = fmul contract float %1020, 0x3FDC626AA0000000
  %1022 = load float, float addrspace(3)* %801, align 4, !tbaa !6
  %1023 = fsub contract float %1022, %1021
  store float %1023, float addrspace(3)* %801, align 4, !tbaa !6
  %1024 = load float, float addrspace(3)* %789, align 4, !tbaa !6
  %1025 = load float, float addrspace(3)* %803, align 4, !tbaa !6
  %1026 = fadd contract float %1024, %1025
  %1027 = fmul contract float %1026, 0x3FDC626AA0000000
  %1028 = load float, float addrspace(3)* %805, align 4, !tbaa !6
  %1029 = fsub contract float %1028, %1027
  store float %1029, float addrspace(3)* %805, align 4, !tbaa !6
  %1030 = load float, float addrspace(3)* %793, align 4, !tbaa !6
  %1031 = load float, float addrspace(3)* %807, align 4, !tbaa !6
  %1032 = fadd contract float %1030, %1031
  %1033 = fmul contract float %1032, 0x3FDC626AA0000000
  %1034 = load float, float addrspace(3)* %809, align 4, !tbaa !6
  %1035 = fsub contract float %1034, %1033
  store float %1035, float addrspace(3)* %809, align 4, !tbaa !6
  %1036 = load float, float addrspace(3)* %797, align 4, !tbaa !6
  %1037 = load float, float addrspace(3)* %811, align 4, !tbaa !6
  %1038 = fadd contract float %1036, %1037
  %1039 = fmul contract float %1038, 0x3FDC626AA0000000
  %1040 = load float, float addrspace(3)* %813, align 4, !tbaa !6
  %1041 = fsub contract float %1040, %1039
  store float %1041, float addrspace(3)* %813, align 4, !tbaa !6
  br i1 %749, label %1042, label %1049

1042:                                             ; preds = %1017
  %1043 = load float, float addrspace(3)* %748, align 4, !tbaa !6
  %1044 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %1045 = fadd contract float %1043, %1044
  %1046 = fmul contract float %1045, 0x3FDC626AA0000000
  %1047 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1048 = fsub contract float %1047, %1046
  store float %1048, float addrspace(3)* %753, align 4, !tbaa !6
  br label %1049

1049:                                             ; preds = %1042, %1017
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1050 = load float, float addrspace(3)* %783, align 4, !tbaa !6
  %1051 = load float, float addrspace(3)* %801, align 4, !tbaa !6
  %1052 = fadd contract float %1050, %1051
  %1053 = fmul contract float %1052, 0x3FEC40CEC0000000
  %1054 = load float, float addrspace(3)* %785, align 4, !tbaa !6
  %1055 = fsub contract float %1054, %1053
  store float %1055, float addrspace(3)* %785, align 4, !tbaa !6
  %1056 = load float, float addrspace(3)* %787, align 4, !tbaa !6
  %1057 = load float, float addrspace(3)* %805, align 4, !tbaa !6
  %1058 = fadd contract float %1056, %1057
  %1059 = fmul contract float %1058, 0x3FEC40CEC0000000
  %1060 = load float, float addrspace(3)* %789, align 4, !tbaa !6
  %1061 = fsub contract float %1060, %1059
  store float %1061, float addrspace(3)* %789, align 4, !tbaa !6
  %1062 = load float, float addrspace(3)* %791, align 4, !tbaa !6
  %1063 = load float, float addrspace(3)* %809, align 4, !tbaa !6
  %1064 = fadd contract float %1062, %1063
  %1065 = fmul contract float %1064, 0x3FEC40CEC0000000
  %1066 = load float, float addrspace(3)* %793, align 4, !tbaa !6
  %1067 = fsub contract float %1066, %1065
  store float %1067, float addrspace(3)* %793, align 4, !tbaa !6
  %1068 = load float, float addrspace(3)* %795, align 4, !tbaa !6
  %1069 = load float, float addrspace(3)* %813, align 4, !tbaa !6
  %1070 = fadd contract float %1068, %1069
  %1071 = fmul contract float %1070, 0x3FEC40CEC0000000
  %1072 = load float, float addrspace(3)* %797, align 4, !tbaa !6
  %1073 = fsub contract float %1072, %1071
  store float %1073, float addrspace(3)* %797, align 4, !tbaa !6
  br i1 %749, label %1074, label %1081

1074:                                             ; preds = %1049
  %1075 = load float, float addrspace(3)* %746, align 4, !tbaa !6
  %1076 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1077 = fadd contract float %1075, %1076
  %1078 = fmul contract float %1077, 0x3FEC40CEC0000000
  %1079 = load float, float addrspace(3)* %748, align 4, !tbaa !6
  %1080 = fsub contract float %1079, %1078
  store float %1080, float addrspace(3)* %748, align 4, !tbaa !6
  br label %1081

1081:                                             ; preds = %1074, %1049
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1082 = load float, float addrspace(3)* %785, align 4, !tbaa !6
  %1083 = load float, float addrspace(3)* %799, align 4, !tbaa !6
  %1084 = fadd contract float %1082, %1083
  %1085 = fmul contract float %1084, 0x3FAB2035C0000000
  %1086 = load float, float addrspace(3)* %801, align 4, !tbaa !6
  %1087 = fadd contract float %1086, %1085
  store float %1087, float addrspace(3)* %801, align 4, !tbaa !6
  %1088 = load float, float addrspace(3)* %789, align 4, !tbaa !6
  %1089 = load float, float addrspace(3)* %803, align 4, !tbaa !6
  %1090 = fadd contract float %1088, %1089
  %1091 = fmul contract float %1090, 0x3FAB2035C0000000
  %1092 = load float, float addrspace(3)* %805, align 4, !tbaa !6
  %1093 = fadd contract float %1092, %1091
  store float %1093, float addrspace(3)* %805, align 4, !tbaa !6
  %1094 = load float, float addrspace(3)* %793, align 4, !tbaa !6
  %1095 = load float, float addrspace(3)* %807, align 4, !tbaa !6
  %1096 = fadd contract float %1094, %1095
  %1097 = fmul contract float %1096, 0x3FAB2035C0000000
  %1098 = load float, float addrspace(3)* %809, align 4, !tbaa !6
  %1099 = fadd contract float %1098, %1097
  store float %1099, float addrspace(3)* %809, align 4, !tbaa !6
  %1100 = load float, float addrspace(3)* %797, align 4, !tbaa !6
  %1101 = load float, float addrspace(3)* %811, align 4, !tbaa !6
  %1102 = fadd contract float %1100, %1101
  %1103 = fmul contract float %1102, 0x3FAB2035C0000000
  %1104 = load float, float addrspace(3)* %813, align 4, !tbaa !6
  %1105 = fadd contract float %1104, %1103
  store float %1105, float addrspace(3)* %813, align 4, !tbaa !6
  br i1 %749, label %1106, label %1113

1106:                                             ; preds = %1081
  %1107 = load float, float addrspace(3)* %748, align 4, !tbaa !6
  %1108 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %1109 = fadd contract float %1107, %1108
  %1110 = fmul contract float %1109, 0x3FAB2035C0000000
  %1111 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1112 = fadd contract float %1111, %1110
  store float %1112, float addrspace(3)* %753, align 4, !tbaa !6
  br label %1113

1113:                                             ; preds = %1106, %1081
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1114 = load float, float addrspace(3)* %783, align 4, !tbaa !6
  %1115 = load float, float addrspace(3)* %801, align 4, !tbaa !6
  %1116 = fadd contract float %1114, %1115
  %1117 = fmul contract float %1116, 0x3FF960CE60000000
  %1118 = load float, float addrspace(3)* %785, align 4, !tbaa !6
  %1119 = fadd contract float %1118, %1117
  store float %1119, float addrspace(3)* %785, align 4, !tbaa !6
  %1120 = load float, float addrspace(3)* %787, align 4, !tbaa !6
  %1121 = load float, float addrspace(3)* %805, align 4, !tbaa !6
  %1122 = fadd contract float %1120, %1121
  %1123 = fmul contract float %1122, 0x3FF960CE60000000
  %1124 = load float, float addrspace(3)* %789, align 4, !tbaa !6
  %1125 = fadd contract float %1124, %1123
  store float %1125, float addrspace(3)* %789, align 4, !tbaa !6
  %1126 = load float, float addrspace(3)* %791, align 4, !tbaa !6
  %1127 = load float, float addrspace(3)* %809, align 4, !tbaa !6
  %1128 = fadd contract float %1126, %1127
  %1129 = fmul contract float %1128, 0x3FF960CE60000000
  %1130 = load float, float addrspace(3)* %793, align 4, !tbaa !6
  %1131 = fadd contract float %1130, %1129
  store float %1131, float addrspace(3)* %793, align 4, !tbaa !6
  %1132 = load float, float addrspace(3)* %795, align 4, !tbaa !6
  %1133 = load float, float addrspace(3)* %813, align 4, !tbaa !6
  %1134 = fadd contract float %1132, %1133
  %1135 = fmul contract float %1134, 0x3FF960CE60000000
  %1136 = load float, float addrspace(3)* %797, align 4, !tbaa !6
  %1137 = fadd contract float %1136, %1135
  store float %1137, float addrspace(3)* %797, align 4, !tbaa !6
  br i1 %749, label %1138, label %1145

1138:                                             ; preds = %1113
  %1139 = load float, float addrspace(3)* %746, align 4, !tbaa !6
  %1140 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1141 = fadd contract float %1139, %1140
  %1142 = fmul contract float %1141, 0x3FF960CE60000000
  %1143 = load float, float addrspace(3)* %748, align 4, !tbaa !6
  %1144 = fadd contract float %1143, %1142
  store float %1144, float addrspace(3)* %748, align 4, !tbaa !6
  br label %1145

1145:                                             ; preds = %1138, %1113
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1146 = load float, float addrspace(3)* %770, align 4, !tbaa !6
  %1147 = load float, float addrspace(3)* %772, align 4, !tbaa !6
  %1148 = load float, float addrspace(3)* %774, align 4, !tbaa !6
  %1149 = load float, float addrspace(3)* %776, align 4, !tbaa !6
  %1150 = load float, float addrspace(3)* %778, align 4, !tbaa !6
  %1151 = load float, float addrspace(3)* %780, align 4, !tbaa !6
  %1152 = load float, float addrspace(3)* %782, align 4, !tbaa !6
  %1153 = load float, float addrspace(3)* %755, align 4, !tbaa !6
  %1154 = fmul contract float %1153, 0x3FEA033860000000
  store float %1154, float addrspace(3)* %755, align 4, !tbaa !6
  %1155 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %1156 = fmul contract float %1155, 0x3FF3AECB00000000
  %1157 = load float, float addrspace(3)* %759, align 4, !tbaa !6
  %1158 = fmul contract float %1157, 0x3FEA033860000000
  %1159 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %1160 = fmul contract float %1159, 0x3FF3AECB00000000
  %1161 = load float, float addrspace(3)* %763, align 4, !tbaa !6
  %1162 = fmul contract float %1161, 0x3FEA033860000000
  %1163 = load float, float addrspace(3)* %765, align 4, !tbaa !6
  %1164 = fmul contract float %1163, 0x3FF3AECB00000000
  %1165 = load float, float addrspace(3)* %767, align 4, !tbaa !6
  %1166 = fmul contract float %1165, 0x3FEA033860000000
  %1167 = load float, float addrspace(3)* %769, align 4, !tbaa !6
  %1168 = fmul contract float %1167, 0x3FF3AECB00000000
  %1169 = fmul contract float %1146, 0x3FEA033860000000
  %1170 = fmul contract float %1147, 0x3FF3AECB00000000
  %1171 = fmul contract float %1148, 0x3FEA033860000000
  %1172 = fmul contract float %1149, 0x3FF3AECB00000000
  %1173 = fmul contract float %1150, 0x3FEA033860000000
  %1174 = fmul contract float %1151, 0x3FF3AECB00000000
  %1175 = fmul contract float %1152, 0x3FEA033860000000
  store float %1175, float addrspace(3)* %782, align 4, !tbaa !6
  %1176 = fadd contract float %1154, %1158
  %1177 = fmul contract float %1176, 0x3FDC626AA0000000
  %1178 = fsub contract float %1156, %1177
  %1179 = fadd contract float %1158, %1162
  %1180 = fmul contract float %1179, 0x3FDC626AA0000000
  %1181 = fsub contract float %1160, %1180
  %1182 = fadd contract float %1162, %1166
  %1183 = fmul contract float %1182, 0x3FDC626AA0000000
  %1184 = fsub contract float %1164, %1183
  %1185 = fadd contract float %1169, %1166
  %1186 = fmul contract float %1185, 0x3FDC626AA0000000
  %1187 = fsub contract float %1168, %1186
  %1188 = fadd contract float %1169, %1171
  %1189 = fmul contract float %1188, 0x3FDC626AA0000000
  %1190 = fsub contract float %1170, %1189
  %1191 = fadd contract float %1171, %1173
  %1192 = fmul contract float %1191, 0x3FDC626AA0000000
  %1193 = fsub contract float %1172, %1192
  %1194 = fadd contract float %1173, %1175
  %1195 = fmul contract float %1194, 0x3FDC626AA0000000
  %1196 = fsub contract float %1174, %1195
  %1197 = fadd contract float %1178, %1181
  %1198 = fmul contract float %1197, 0x3FEC40CEC0000000
  %1199 = fsub contract float %1158, %1198
  %1200 = fadd contract float %1181, %1184
  %1201 = fmul contract float %1200, 0x3FEC40CEC0000000
  %1202 = fsub contract float %1162, %1201
  %1203 = fadd contract float %1184, %1187
  %1204 = fmul contract float %1203, 0x3FEC40CEC0000000
  %1205 = fsub contract float %1166, %1204
  %1206 = fadd contract float %1190, %1187
  %1207 = fmul contract float %1206, 0x3FEC40CEC0000000
  %1208 = fsub contract float %1169, %1207
  %1209 = fadd contract float %1190, %1193
  %1210 = fmul contract float %1209, 0x3FEC40CEC0000000
  %1211 = fsub contract float %1171, %1210
  %1212 = fadd contract float %1193, %1196
  %1213 = fmul contract float %1212, 0x3FEC40CEC0000000
  %1214 = fsub contract float %1173, %1213
  %1215 = fadd contract float %1154, %1199
  %1216 = fmul contract float %1215, 0x3FAB2035C0000000
  %1217 = fadd contract float %1178, %1216
  store float %1217, float addrspace(3)* %757, align 4, !tbaa !6
  %1218 = fadd contract float %1199, %1202
  %1219 = fmul contract float %1218, 0x3FAB2035C0000000
  %1220 = fadd contract float %1181, %1219
  store float %1220, float addrspace(3)* %761, align 4, !tbaa !6
  %1221 = fadd contract float %1202, %1205
  %1222 = fmul contract float %1221, 0x3FAB2035C0000000
  %1223 = fadd contract float %1184, %1222
  store float %1223, float addrspace(3)* %765, align 4, !tbaa !6
  %1224 = fadd contract float %1205, %1208
  %1225 = fmul contract float %1224, 0x3FAB2035C0000000
  %1226 = fadd contract float %1187, %1225
  store float %1226, float addrspace(3)* %769, align 4, !tbaa !6
  %1227 = fadd contract float %1211, %1208
  %1228 = fmul contract float %1227, 0x3FAB2035C0000000
  %1229 = fadd contract float %1190, %1228
  store float %1229, float addrspace(3)* %772, align 4, !tbaa !6
  %1230 = fadd contract float %1211, %1214
  %1231 = fmul contract float %1230, 0x3FAB2035C0000000
  %1232 = fadd contract float %1193, %1231
  store float %1232, float addrspace(3)* %776, align 4, !tbaa !6
  %1233 = fadd contract float %1175, %1214
  %1234 = fmul contract float %1233, 0x3FAB2035C0000000
  %1235 = fadd contract float %1196, %1234
  store float %1235, float addrspace(3)* %780, align 4, !tbaa !6
  %1236 = fadd contract float %1217, %1220
  %1237 = fmul contract float %1236, 0x3FF960CE60000000
  %1238 = fadd contract float %1199, %1237
  store float %1238, float addrspace(3)* %759, align 4, !tbaa !6
  %1239 = fadd contract float %1220, %1223
  %1240 = fmul contract float %1239, 0x3FF960CE60000000
  %1241 = fadd contract float %1202, %1240
  store float %1241, float addrspace(3)* %763, align 4, !tbaa !6
  %1242 = fadd contract float %1223, %1226
  %1243 = fmul contract float %1242, 0x3FF960CE60000000
  %1244 = fadd contract float %1205, %1243
  store float %1244, float addrspace(3)* %767, align 4, !tbaa !6
  %1245 = fadd contract float %1226, %1229
  %1246 = fmul contract float %1245, 0x3FF960CE60000000
  %1247 = fadd contract float %1208, %1246
  store float %1247, float addrspace(3)* %770, align 4, !tbaa !6
  %1248 = fadd contract float %1232, %1229
  %1249 = fmul contract float %1248, 0x3FF960CE60000000
  %1250 = fadd contract float %1211, %1249
  store float %1250, float addrspace(3)* %774, align 4, !tbaa !6
  %1251 = fadd contract float %1232, %1235
  %1252 = fmul contract float %1251, 0x3FF960CE60000000
  %1253 = fadd contract float %1214, %1252
  store float %1253, float addrspace(3)* %778, align 4, !tbaa !6
  %1254 = icmp eq i32 %820, %700
  br i1 %1254, label %1259, label %1255

1255:                                             ; preds = %1145
  %1256 = add nsw i32 %820, %701
  %1257 = sext i32 %820 to i64
  %1258 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1257
  store float %1220, float addrspace(1)* %1258, align 4, !tbaa !6
  br label %1259

1259:                                             ; preds = %1255, %1145
  %1260 = phi i32 [ %700, %1145 ], [ %1256, %1255 ]
  %1261 = icmp eq i32 %1260, %700
  br i1 %1261, label %1266, label %1262

1262:                                             ; preds = %1259
  %1263 = add nsw i32 %1260, %701
  %1264 = sext i32 %1260 to i64
  %1265 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1264
  store float %1241, float addrspace(1)* %1265, align 4, !tbaa !6
  br label %1266

1266:                                             ; preds = %1262, %1259
  %1267 = phi i32 [ %700, %1259 ], [ %1263, %1262 ]
  %1268 = icmp eq i32 %1267, %700
  br i1 %1268, label %1273, label %1269

1269:                                             ; preds = %1266
  %1270 = add nsw i32 %1267, %701
  %1271 = sext i32 %1267 to i64
  %1272 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1271
  store float %1223, float addrspace(1)* %1272, align 4, !tbaa !6
  br label %1273

1273:                                             ; preds = %1269, %1266
  %1274 = phi i32 [ %700, %1266 ], [ %1270, %1269 ]
  %1275 = icmp eq i32 %1274, %700
  br i1 %1275, label %1280, label %1276

1276:                                             ; preds = %1273
  %1277 = add nsw i32 %1274, %701
  %1278 = sext i32 %1274 to i64
  %1279 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1278
  store float %1244, float addrspace(1)* %1279, align 4, !tbaa !6
  br label %1280

1280:                                             ; preds = %1276, %1273
  %1281 = phi i32 [ %700, %1273 ], [ %1277, %1276 ]
  %1282 = icmp eq i32 %1281, %700
  br i1 %1282, label %1287, label %1283

1283:                                             ; preds = %1280
  %1284 = add nsw i32 %1281, %701
  %1285 = sext i32 %1281 to i64
  %1286 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1285
  store float %1226, float addrspace(1)* %1286, align 4, !tbaa !6
  br label %1287

1287:                                             ; preds = %1283, %1280
  %1288 = phi i32 [ %700, %1280 ], [ %1284, %1283 ]
  %1289 = icmp eq i32 %1288, %700
  br i1 %1289, label %1294, label %1290

1290:                                             ; preds = %1287
  %1291 = add nsw i32 %1288, %701
  %1292 = sext i32 %1288 to i64
  %1293 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1292
  store float %1247, float addrspace(1)* %1293, align 4, !tbaa !6
  br label %1294

1294:                                             ; preds = %1290, %1287
  %1295 = phi i32 [ %700, %1287 ], [ %1291, %1290 ]
  %1296 = icmp eq i32 %1295, %700
  br i1 %1296, label %1301, label %1297

1297:                                             ; preds = %1294
  %1298 = add nsw i32 %1295, %701
  %1299 = sext i32 %1295 to i64
  %1300 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1299
  store float %1229, float addrspace(1)* %1300, align 4, !tbaa !6
  br label %1301

1301:                                             ; preds = %1297, %1294
  %1302 = phi i32 [ %700, %1294 ], [ %1298, %1297 ]
  %1303 = icmp eq i32 %1302, %700
  br i1 %1303, label %1308, label %1304

1304:                                             ; preds = %1301
  %1305 = add nsw i32 %1302, %701
  %1306 = sext i32 %1302 to i64
  %1307 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1306
  store float %1250, float addrspace(1)* %1307, align 4, !tbaa !6
  br label %1308

1308:                                             ; preds = %1304, %1301
  %1309 = phi i32 [ %700, %1301 ], [ %1305, %1304 ]
  store float %1146, float addrspace(3)* %755, align 4, !tbaa !6
  store float %1147, float addrspace(3)* %757, align 4, !tbaa !6
  store float %1148, float addrspace(3)* %759, align 4, !tbaa !6
  store float %1149, float addrspace(3)* %761, align 4, !tbaa !6
  store float %1150, float addrspace(3)* %763, align 4, !tbaa !6
  store float %1151, float addrspace(3)* %765, align 4, !tbaa !6
  store float %1152, float addrspace(3)* %767, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1310 = add nuw nsw i32 %815, 1
  %1311 = icmp eq i32 %1310, %4
  br i1 %1311, label %3310, label %814, !llvm.loop !11

1312:                                             ; preds = %5
  %1313 = mul i32 %6, 192
  %1314 = add i32 %1313, 195
  %1315 = icmp slt i32 %1314, %2
  %1316 = mul i32 %8, %4
  %1317 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %1318 = icmp ult i32 %1317, 7
  br i1 %1315, label %2336, label %1319

1319:                                             ; preds = %1312
  br i1 %1318, label %1320, label %1482

1320:                                             ; preds = %1319
  %1321 = icmp ult i32 %1317, 4
  %1322 = select i1 %1321, i32 192, i32 -7
  %1323 = add nsw i32 %1322, %1317
  %1324 = add i32 %1323, %1313
  %1325 = sub i32 0, %1324
  %1326 = trunc i32 %1323 to i16
  %1327 = add nsw i16 %1326, 4
  %1328 = sdiv i16 %1327, 2
  %1329 = sext i16 %1328 to i32
  %1330 = and i32 %1323, 1
  %1331 = icmp eq i32 %1330, 0
  %1332 = select i1 %1331, i32 0, i32 1512
  %1333 = add nsw i32 %1332, %1329
  %1334 = icmp eq i32 %7, 0
  br i1 %1334, label %1335, label %1398

1335:                                             ; preds = %1320
  %1336 = icmp slt i32 %1324, %2
  br i1 %1336, label %1341, label %1337

1337:                                             ; preds = %1335
  %1338 = shl nsw i32 %2, 1
  %1339 = sub i32 -2, %1324
  %1340 = add i32 %1339, %1338
  br label %1343

1341:                                             ; preds = %1335
  %1342 = icmp slt i32 %1324, 0
  br i1 %1342, label %1343, label %1345

1343:                                             ; preds = %1341, %1337
  %1344 = phi i32 [ %1340, %1337 ], [ %1325, %1341 ]
  br label %1345

1345:                                             ; preds = %1343, %1341
  %1346 = phi i32 [ %1344, %1343 ], [ %1324, %1341 ]
  %1347 = sdiv i32 %1346, 2
  %1348 = and i32 %1346, 1
  %1349 = icmp eq i32 %1348, 0
  %1350 = sdiv i32 %2, 2
  %1351 = and i32 %2, 1
  %1352 = add nsw i32 %1350, %1351
  %1353 = sdiv i32 %3, 2
  %1354 = and i32 %3, 1
  %1355 = add nsw i32 %1353, %1354
  br i1 %1349, label %1361, label %1356

1356:                                             ; preds = %1345
  %1357 = mul nsw i32 %1355, %1352
  %1358 = add nsw i32 %1347, %1357
  %1359 = mul nsw i32 %3, %2
  %1360 = sdiv i32 %1359, 2
  br label %1363

1361:                                             ; preds = %1345
  %1362 = mul nsw i32 %1355, %2
  br label %1363

1363:                                             ; preds = %1361, %1356
  %1364 = phi i32 [ %1362, %1361 ], [ %1360, %1356 ]
  %1365 = phi i32 [ %1347, %1361 ], [ %1358, %1356 ]
  %1366 = phi i32 [ %1352, %1361 ], [ %1350, %1356 ]
  %1367 = sub nsw i32 %1366, %1364
  %1368 = sdiv i32 %1316, 2
  %1369 = mul nsw i32 %1366, %1368
  %1370 = add i32 %1369, %1365
  %1371 = sub i32 %1370, %1367
  %1372 = sext i32 %1370 to i64
  %1373 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1372
  %1374 = load float, float addrspace(1)* %1373, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1375 = add nsw i32 %1333, 300
  %1376 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1375
  store float %1374, float addrspace(3)* %1376, align 4, !tbaa !6
  %1377 = add i32 %1371, %1366
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1378
  %1380 = load float, float addrspace(1)* %1379, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1381 = add nsw i32 %1333, 200
  %1382 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1381
  store float %1380, float addrspace(3)* %1382, align 4, !tbaa !6
  %1383 = add nsw i32 %1333, 400
  %1384 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1383
  store float %1380, float addrspace(3)* %1384, align 4, !tbaa !6
  %1385 = add i32 %1370, %1366
  %1386 = sext i32 %1385 to i64
  %1387 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1386
  %1388 = load float, float addrspace(1)* %1387, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1389 = add nsw i32 %1333, 100
  %1390 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1389
  store float %1388, float addrspace(3)* %1390, align 4, !tbaa !6
  %1391 = add nsw i32 %1333, 500
  %1392 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1391
  store float %1388, float addrspace(3)* %1392, align 4, !tbaa !6
  %1393 = add i32 %1377, %1366
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1394
  %1396 = load float, float addrspace(1)* %1395, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1397 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1333
  store float %1396, float addrspace(3)* %1397, align 4, !tbaa !6
  br label %1475

1398:                                             ; preds = %1320
  %1399 = add nsw i32 %1316, -3
  %1400 = icmp slt i32 %1324, %2
  br i1 %1400, label %1405, label %1401

1401:                                             ; preds = %1398
  %1402 = shl nsw i32 %2, 1
  %1403 = sub i32 -2, %1324
  %1404 = add i32 %1403, %1402
  br label %1407

1405:                                             ; preds = %1398
  %1406 = icmp slt i32 %1324, 0
  br i1 %1406, label %1407, label %1409

1407:                                             ; preds = %1405, %1401
  %1408 = phi i32 [ %1404, %1401 ], [ %1325, %1405 ]
  br label %1409

1409:                                             ; preds = %1407, %1405
  %1410 = phi i32 [ %1408, %1407 ], [ %1324, %1405 ]
  %1411 = sdiv i32 %1410, 2
  %1412 = and i32 %1410, 1
  %1413 = icmp eq i32 %1412, 0
  %1414 = sdiv i32 %2, 2
  %1415 = and i32 %2, 1
  %1416 = add nsw i32 %1414, %1415
  %1417 = sdiv i32 %3, 2
  %1418 = and i32 %3, 1
  %1419 = add nsw i32 %1417, %1418
  br i1 %1413, label %1425, label %1420

1420:                                             ; preds = %1409
  %1421 = mul nsw i32 %1419, %1416
  %1422 = add nsw i32 %1411, %1421
  %1423 = mul nsw i32 %3, %2
  %1424 = sdiv i32 %1423, 2
  br label %1427

1425:                                             ; preds = %1409
  %1426 = mul nsw i32 %1419, %2
  br label %1427

1427:                                             ; preds = %1425, %1420
  %1428 = phi i32 [ %1426, %1425 ], [ %1424, %1420 ]
  %1429 = phi i32 [ %1411, %1425 ], [ %1422, %1420 ]
  %1430 = phi i32 [ %1416, %1425 ], [ %1414, %1420 ]
  %1431 = sub nsw i32 %1430, %1428
  %1432 = sdiv i32 %1399, 2
  %1433 = mul nsw i32 %1430, %1432
  %1434 = add i32 %1429, %1428
  %1435 = add i32 %1434, %1433
  %1436 = sub i32 %1435, %1428
  %1437 = sext i32 %1435 to i64
  %1438 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1437
  %1439 = load float, float addrspace(1)* %1438, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1440 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1333
  store float %1439, float addrspace(3)* %1440, align 4, !tbaa !6
  %1441 = add i32 %1436, %1430
  %1442 = sext i32 %1441 to i64
  %1443 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1442
  %1444 = load float, float addrspace(1)* %1443, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1445 = add nsw i32 %1333, 100
  %1446 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1445
  store float %1444, float addrspace(3)* %1446, align 4, !tbaa !6
  %1447 = add i32 %1435, %1430
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1448
  %1450 = load float, float addrspace(1)* %1449, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1451 = add nsw i32 %1333, 200
  %1452 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1451
  store float %1450, float addrspace(3)* %1452, align 4, !tbaa !6
  %1453 = add i32 %1441, %1430
  %1454 = sext i32 %1453 to i64
  %1455 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1454
  %1456 = load float, float addrspace(1)* %1455, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1457 = add nsw i32 %1333, 300
  %1458 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1457
  store float %1456, float addrspace(3)* %1458, align 4, !tbaa !6
  %1459 = add nsw i32 %1453, %1428
  %1460 = sext i32 %1459 to i64
  %1461 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1460
  %1462 = load float, float addrspace(1)* %1461, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1463 = add nsw i32 %1333, 400
  %1464 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1463
  store float %1462, float addrspace(3)* %1464, align 4, !tbaa !6
  %1465 = add i32 %1453, %1430
  %1466 = sext i32 %1465 to i64
  %1467 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1466
  %1468 = load float, float addrspace(1)* %1467, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1469 = add nsw i32 %1333, 500
  %1470 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1469
  store float %1468, float addrspace(3)* %1470, align 4, !tbaa !6
  %1471 = add nsw i32 %1465, %1428
  %1472 = sext i32 %1471 to i64
  %1473 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1472
  %1474 = load float, float addrspace(1)* %1473, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1475

1475:                                             ; preds = %1427, %1363
  %1476 = phi i32 [ %1364, %1363 ], [ %1428, %1427 ]
  %1477 = phi i32 [ %1367, %1363 ], [ %1431, %1427 ]
  %1478 = phi i32 [ %1393, %1363 ], [ %1471, %1427 ]
  %1479 = phi float [ %1396, %1363 ], [ %1474, %1427 ]
  %1480 = add nsw i32 %1333, 600
  %1481 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1480
  store float %1479, float addrspace(3)* %1481, align 4, !tbaa !6
  br label %1482

1482:                                             ; preds = %1475, %1319
  %1483 = phi i32 [ %1476, %1475 ], [ 0, %1319 ]
  %1484 = phi i32 [ %1477, %1475 ], [ 0, %1319 ]
  %1485 = phi i32 [ %1478, %1475 ], [ 0, %1319 ]
  %1486 = phi i32 [ %1333, %1475 ], [ 0, %1319 ]
  %1487 = shl nuw nsw i32 %1317, 1
  %1488 = trunc i32 %1317 to i16
  %1489 = udiv i16 %1488, 96
  %1490 = zext i16 %1489 to i32
  %1491 = mul nsw i32 %1490, -191
  %1492 = add nsw i32 %1491, %1487
  %1493 = add i32 %1492, %1313
  %1494 = sub i32 0, %1493
  %1495 = trunc i32 %1492 to i16
  %1496 = add nsw i16 %1495, 4
  %1497 = sdiv i16 %1496, 2
  %1498 = sext i16 %1497 to i32
  %1499 = and i32 %1492, 1
  %1500 = icmp eq i32 %1499, 0
  %1501 = select i1 %1500, i32 0, i32 1512
  %1502 = add nsw i32 %1501, %1498
  %1503 = icmp eq i32 %7, 0
  br i1 %1503, label %1504, label %1567

1504:                                             ; preds = %1482
  %1505 = icmp slt i32 %1493, %2
  br i1 %1505, label %1510, label %1506

1506:                                             ; preds = %1504
  %1507 = shl nsw i32 %2, 1
  %1508 = sub i32 %1507, %1493
  %1509 = add i32 %1508, -2
  br label %1512

1510:                                             ; preds = %1504
  %1511 = icmp slt i32 %1493, 0
  br i1 %1511, label %1512, label %1514

1512:                                             ; preds = %1510, %1506
  %1513 = phi i32 [ %1509, %1506 ], [ %1494, %1510 ]
  br label %1514

1514:                                             ; preds = %1512, %1510
  %1515 = phi i32 [ %1513, %1512 ], [ %1493, %1510 ]
  %1516 = sdiv i32 %1515, 2
  %1517 = and i32 %1515, 1
  %1518 = icmp eq i32 %1517, 0
  %1519 = sdiv i32 %2, 2
  %1520 = and i32 %2, 1
  %1521 = add nsw i32 %1519, %1520
  %1522 = sdiv i32 %3, 2
  %1523 = and i32 %3, 1
  %1524 = add nsw i32 %1522, %1523
  br i1 %1518, label %1530, label %1525

1525:                                             ; preds = %1514
  %1526 = mul nsw i32 %1524, %1521
  %1527 = add nsw i32 %1516, %1526
  %1528 = mul nsw i32 %3, %2
  %1529 = sdiv i32 %1528, 2
  br label %1532

1530:                                             ; preds = %1514
  %1531 = mul nsw i32 %1524, %2
  br label %1532

1532:                                             ; preds = %1530, %1525
  %1533 = phi i32 [ %1531, %1530 ], [ %1529, %1525 ]
  %1534 = phi i32 [ %1516, %1530 ], [ %1527, %1525 ]
  %1535 = phi i32 [ %1521, %1530 ], [ %1519, %1525 ]
  %1536 = sub nsw i32 %1535, %1533
  %1537 = sdiv i32 %1316, 2
  %1538 = mul nsw i32 %1535, %1537
  %1539 = add i32 %1538, %1534
  %1540 = sub i32 %1539, %1536
  %1541 = sext i32 %1539 to i64
  %1542 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1541
  %1543 = load float, float addrspace(1)* %1542, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1544 = add nsw i32 %1502, 300
  %1545 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1544
  store float %1543, float addrspace(3)* %1545, align 4, !tbaa !6
  %1546 = add i32 %1540, %1535
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1547
  %1549 = load float, float addrspace(1)* %1548, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1550 = add nsw i32 %1502, 200
  %1551 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1550
  store float %1549, float addrspace(3)* %1551, align 4, !tbaa !6
  %1552 = add nsw i32 %1502, 400
  %1553 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1552
  store float %1549, float addrspace(3)* %1553, align 4, !tbaa !6
  %1554 = add i32 %1539, %1535
  %1555 = sext i32 %1554 to i64
  %1556 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1555
  %1557 = load float, float addrspace(1)* %1556, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1558 = add nsw i32 %1502, 100
  %1559 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1558
  store float %1557, float addrspace(3)* %1559, align 4, !tbaa !6
  %1560 = add nsw i32 %1502, 500
  %1561 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1560
  store float %1557, float addrspace(3)* %1561, align 4, !tbaa !6
  %1562 = add i32 %1546, %1535
  %1563 = sext i32 %1562 to i64
  %1564 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1563
  %1565 = load float, float addrspace(1)* %1564, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1566 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1502
  store float %1565, float addrspace(3)* %1566, align 4, !tbaa !6
  br label %1644

1567:                                             ; preds = %1482
  %1568 = add nsw i32 %1316, -3
  %1569 = icmp slt i32 %1493, %2
  br i1 %1569, label %1574, label %1570

1570:                                             ; preds = %1567
  %1571 = shl nsw i32 %2, 1
  %1572 = sub i32 %1571, %1493
  %1573 = add i32 %1572, -2
  br label %1576

1574:                                             ; preds = %1567
  %1575 = icmp slt i32 %1493, 0
  br i1 %1575, label %1576, label %1578

1576:                                             ; preds = %1574, %1570
  %1577 = phi i32 [ %1573, %1570 ], [ %1494, %1574 ]
  br label %1578

1578:                                             ; preds = %1576, %1574
  %1579 = phi i32 [ %1577, %1576 ], [ %1493, %1574 ]
  %1580 = sdiv i32 %1579, 2
  %1581 = and i32 %1579, 1
  %1582 = icmp eq i32 %1581, 0
  %1583 = sdiv i32 %2, 2
  %1584 = and i32 %2, 1
  %1585 = add nsw i32 %1583, %1584
  %1586 = sdiv i32 %3, 2
  %1587 = and i32 %3, 1
  %1588 = add nsw i32 %1586, %1587
  br i1 %1582, label %1594, label %1589

1589:                                             ; preds = %1578
  %1590 = mul nsw i32 %1588, %1585
  %1591 = add nsw i32 %1580, %1590
  %1592 = mul nsw i32 %3, %2
  %1593 = sdiv i32 %1592, 2
  br label %1596

1594:                                             ; preds = %1578
  %1595 = mul nsw i32 %1588, %2
  br label %1596

1596:                                             ; preds = %1594, %1589
  %1597 = phi i32 [ %1595, %1594 ], [ %1593, %1589 ]
  %1598 = phi i32 [ %1580, %1594 ], [ %1591, %1589 ]
  %1599 = phi i32 [ %1585, %1594 ], [ %1583, %1589 ]
  %1600 = sub nsw i32 %1599, %1597
  %1601 = sdiv i32 %1568, 2
  %1602 = mul nsw i32 %1599, %1601
  %1603 = add i32 %1598, %1597
  %1604 = add i32 %1603, %1602
  %1605 = sub i32 %1604, %1597
  %1606 = sext i32 %1604 to i64
  %1607 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1606
  %1608 = load float, float addrspace(1)* %1607, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1609 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1502
  store float %1608, float addrspace(3)* %1609, align 4, !tbaa !6
  %1610 = add i32 %1605, %1599
  %1611 = sext i32 %1610 to i64
  %1612 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1611
  %1613 = load float, float addrspace(1)* %1612, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1614 = add nsw i32 %1502, 100
  %1615 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1614
  store float %1613, float addrspace(3)* %1615, align 4, !tbaa !6
  %1616 = add i32 %1604, %1599
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1617
  %1619 = load float, float addrspace(1)* %1618, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1620 = add nsw i32 %1502, 200
  %1621 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1620
  store float %1619, float addrspace(3)* %1621, align 4, !tbaa !6
  %1622 = add i32 %1610, %1599
  %1623 = sext i32 %1622 to i64
  %1624 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1623
  %1625 = load float, float addrspace(1)* %1624, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1626 = add nsw i32 %1502, 300
  %1627 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1626
  store float %1625, float addrspace(3)* %1627, align 4, !tbaa !6
  %1628 = add nsw i32 %1622, %1597
  %1629 = sext i32 %1628 to i64
  %1630 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1629
  %1631 = load float, float addrspace(1)* %1630, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1632 = add nsw i32 %1502, 400
  %1633 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1632
  store float %1631, float addrspace(3)* %1633, align 4, !tbaa !6
  %1634 = add i32 %1622, %1599
  %1635 = sext i32 %1634 to i64
  %1636 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1635
  %1637 = load float, float addrspace(1)* %1636, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1638 = add nsw i32 %1502, 500
  %1639 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1638
  store float %1637, float addrspace(3)* %1639, align 4, !tbaa !6
  %1640 = add nsw i32 %1634, %1597
  %1641 = sext i32 %1640 to i64
  %1642 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1641
  %1643 = load float, float addrspace(1)* %1642, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1644

1644:                                             ; preds = %1596, %1532
  %1645 = phi i32 [ %1536, %1532 ], [ %1600, %1596 ]
  %1646 = phi i32 [ %1533, %1532 ], [ %1597, %1596 ]
  %1647 = phi i32 [ %1562, %1532 ], [ %1640, %1596 ]
  %1648 = phi float [ %1565, %1532 ], [ %1643, %1596 ]
  %1649 = add nsw i32 %1502, 600
  %1650 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1649
  store float %1648, float addrspace(3)* %1650, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1651 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1317
  %1652 = load float, float addrspace(3)* %1651, align 4, !tbaa !6
  %1653 = fmul contract float %1652, 0x3FF3AECB00000000
  store float %1653, float addrspace(3)* %1651, align 4, !tbaa !6
  %1654 = add nuw nsw i32 %1317, 1512
  %1655 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1654
  %1656 = load float, float addrspace(3)* %1655, align 4, !tbaa !6
  %1657 = fmul contract float %1656, 0x3FEA033860000000
  store float %1657, float addrspace(3)* %1655, align 4, !tbaa !6
  %1658 = add nuw nsw i32 %1317, 192
  %1659 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1658
  %1660 = load float, float addrspace(3)* %1659, align 4, !tbaa !6
  %1661 = fmul contract float %1660, 0x3FF3AECB00000000
  store float %1661, float addrspace(3)* %1659, align 4, !tbaa !6
  %1662 = add nuw nsw i32 %1317, 1704
  %1663 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1662
  %1664 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1665 = fmul contract float %1664, 0x3FEA033860000000
  store float %1665, float addrspace(3)* %1663, align 4, !tbaa !6
  %1666 = add nuw nsw i32 %1317, 384
  %1667 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1666
  %1668 = load float, float addrspace(3)* %1667, align 4, !tbaa !6
  %1669 = fmul contract float %1668, 0x3FF3AECB00000000
  store float %1669, float addrspace(3)* %1667, align 4, !tbaa !6
  %1670 = add nuw nsw i32 %1317, 1896
  %1671 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1670
  %1672 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1673 = fmul contract float %1672, 0x3FEA033860000000
  store float %1673, float addrspace(3)* %1671, align 4, !tbaa !6
  %1674 = icmp ult i32 %1317, 124
  br i1 %1674, label %1675, label %1684

1675:                                             ; preds = %1644
  %1676 = add nuw nsw i32 %1317, 576
  %1677 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1676
  %1678 = load float, float addrspace(3)* %1677, align 4, !tbaa !6
  %1679 = fmul contract float %1678, 0x3FF3AECB00000000
  store float %1679, float addrspace(3)* %1677, align 4, !tbaa !6
  %1680 = add nuw nsw i32 %1317, 2088
  %1681 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1680
  %1682 = load float, float addrspace(3)* %1681, align 4, !tbaa !6
  %1683 = fmul contract float %1682, 0x3FEA033860000000
  store float %1683, float addrspace(3)* %1681, align 4, !tbaa !6
  br label %1684

1684:                                             ; preds = %1675, %1644
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1685 = load float, float addrspace(3)* %1655, align 4, !tbaa !6
  %1686 = add nuw nsw i32 %1317, 1513
  %1687 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1686
  %1688 = load float, float addrspace(3)* %1687, align 4, !tbaa !6
  %1689 = add nuw nsw i32 %1317, 1
  %1690 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1689
  %1691 = fadd contract float %1685, %1688
  %1692 = fmul contract float %1691, 0x3FDC626AA0000000
  %1693 = load float, float addrspace(3)* %1690, align 4, !tbaa !6
  %1694 = fsub contract float %1693, %1692
  store float %1694, float addrspace(3)* %1690, align 4, !tbaa !6
  %1695 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1696 = add nuw nsw i32 %1317, 1705
  %1697 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1696
  %1698 = load float, float addrspace(3)* %1697, align 4, !tbaa !6
  %1699 = add nuw nsw i32 %1317, 193
  %1700 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1699
  %1701 = fadd contract float %1695, %1698
  %1702 = fmul contract float %1701, 0x3FDC626AA0000000
  %1703 = load float, float addrspace(3)* %1700, align 4, !tbaa !6
  %1704 = fsub contract float %1703, %1702
  store float %1704, float addrspace(3)* %1700, align 4, !tbaa !6
  %1705 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1706 = add nuw nsw i32 %1317, 1897
  %1707 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1706
  %1708 = load float, float addrspace(3)* %1707, align 4, !tbaa !6
  %1709 = add nuw nsw i32 %1317, 385
  %1710 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1709
  %1711 = fadd contract float %1705, %1708
  %1712 = fmul contract float %1711, 0x3FDC626AA0000000
  %1713 = load float, float addrspace(3)* %1710, align 4, !tbaa !6
  %1714 = fsub contract float %1713, %1712
  store float %1714, float addrspace(3)* %1710, align 4, !tbaa !6
  %1715 = icmp ult i32 %1317, 123
  br i1 %1715, label %1716, label %1729

1716:                                             ; preds = %1684
  %1717 = add nuw nsw i32 %1317, 2088
  %1718 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1717
  %1719 = load float, float addrspace(3)* %1718, align 4, !tbaa !6
  %1720 = add nuw nsw i32 %1317, 2089
  %1721 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1720
  %1722 = load float, float addrspace(3)* %1721, align 4, !tbaa !6
  %1723 = add nuw nsw i32 %1317, 577
  %1724 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1723
  %1725 = fadd contract float %1719, %1722
  %1726 = fmul contract float %1725, 0x3FDC626AA0000000
  %1727 = load float, float addrspace(3)* %1724, align 4, !tbaa !6
  %1728 = fsub contract float %1727, %1726
  store float %1728, float addrspace(3)* %1724, align 4, !tbaa !6
  br label %1729

1729:                                             ; preds = %1716, %1684
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1730 = load float, float addrspace(3)* %1651, align 4, !tbaa !6
  %1731 = load float, float addrspace(3)* %1690, align 4, !tbaa !6
  %1732 = fadd contract float %1730, %1731
  %1733 = fmul contract float %1732, 0x3FEC40CEC0000000
  %1734 = load float, float addrspace(3)* %1655, align 4, !tbaa !6
  %1735 = fsub contract float %1734, %1733
  store float %1735, float addrspace(3)* %1655, align 4, !tbaa !6
  %1736 = load float, float addrspace(3)* %1659, align 4, !tbaa !6
  %1737 = load float, float addrspace(3)* %1700, align 4, !tbaa !6
  %1738 = fadd contract float %1736, %1737
  %1739 = fmul contract float %1738, 0x3FEC40CEC0000000
  %1740 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1741 = fsub contract float %1740, %1739
  store float %1741, float addrspace(3)* %1663, align 4, !tbaa !6
  %1742 = load float, float addrspace(3)* %1667, align 4, !tbaa !6
  %1743 = load float, float addrspace(3)* %1710, align 4, !tbaa !6
  %1744 = fadd contract float %1742, %1743
  %1745 = fmul contract float %1744, 0x3FEC40CEC0000000
  %1746 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1747 = fsub contract float %1746, %1745
  store float %1747, float addrspace(3)* %1671, align 4, !tbaa !6
  br i1 %1715, label %1748, label %1761

1748:                                             ; preds = %1729
  %1749 = add nuw nsw i32 %1317, 576
  %1750 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1749
  %1751 = load float, float addrspace(3)* %1750, align 4, !tbaa !6
  %1752 = add nuw nsw i32 %1317, 577
  %1753 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1752
  %1754 = load float, float addrspace(3)* %1753, align 4, !tbaa !6
  %1755 = add nuw nsw i32 %1317, 2088
  %1756 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1755
  %1757 = fadd contract float %1751, %1754
  %1758 = fmul contract float %1757, 0x3FEC40CEC0000000
  %1759 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1760 = fsub contract float %1759, %1758
  store float %1760, float addrspace(3)* %1756, align 4, !tbaa !6
  br label %1761

1761:                                             ; preds = %1748, %1729
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1762 = load float, float addrspace(3)* %1655, align 4, !tbaa !6
  %1763 = load float, float addrspace(3)* %1687, align 4, !tbaa !6
  %1764 = fadd contract float %1762, %1763
  %1765 = fmul contract float %1764, 0x3FAB2035C0000000
  %1766 = load float, float addrspace(3)* %1690, align 4, !tbaa !6
  %1767 = fadd contract float %1766, %1765
  store float %1767, float addrspace(3)* %1690, align 4, !tbaa !6
  %1768 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1769 = load float, float addrspace(3)* %1697, align 4, !tbaa !6
  %1770 = fadd contract float %1768, %1769
  %1771 = fmul contract float %1770, 0x3FAB2035C0000000
  %1772 = load float, float addrspace(3)* %1700, align 4, !tbaa !6
  %1773 = fadd contract float %1772, %1771
  store float %1773, float addrspace(3)* %1700, align 4, !tbaa !6
  %1774 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1775 = load float, float addrspace(3)* %1707, align 4, !tbaa !6
  %1776 = fadd contract float %1774, %1775
  %1777 = fmul contract float %1776, 0x3FAB2035C0000000
  %1778 = load float, float addrspace(3)* %1710, align 4, !tbaa !6
  %1779 = fadd contract float %1778, %1777
  store float %1779, float addrspace(3)* %1710, align 4, !tbaa !6
  br i1 %1715, label %1780, label %1793

1780:                                             ; preds = %1761
  %1781 = add nuw nsw i32 %1317, 2088
  %1782 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1781
  %1783 = load float, float addrspace(3)* %1782, align 4, !tbaa !6
  %1784 = add nuw nsw i32 %1317, 2089
  %1785 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1784
  %1786 = load float, float addrspace(3)* %1785, align 4, !tbaa !6
  %1787 = add nuw nsw i32 %1317, 577
  %1788 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1787
  %1789 = fadd contract float %1783, %1786
  %1790 = fmul contract float %1789, 0x3FAB2035C0000000
  %1791 = load float, float addrspace(3)* %1788, align 4, !tbaa !6
  %1792 = fadd contract float %1791, %1790
  store float %1792, float addrspace(3)* %1788, align 4, !tbaa !6
  br label %1793

1793:                                             ; preds = %1780, %1761
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1794 = load float, float addrspace(3)* %1651, align 4, !tbaa !6
  %1795 = load float, float addrspace(3)* %1690, align 4, !tbaa !6
  %1796 = fadd contract float %1794, %1795
  %1797 = fmul contract float %1796, 0x3FF960CE60000000
  %1798 = load float, float addrspace(3)* %1655, align 4, !tbaa !6
  %1799 = fadd contract float %1798, %1797
  store float %1799, float addrspace(3)* %1655, align 4, !tbaa !6
  %1800 = load float, float addrspace(3)* %1659, align 4, !tbaa !6
  %1801 = load float, float addrspace(3)* %1700, align 4, !tbaa !6
  %1802 = fadd contract float %1800, %1801
  %1803 = fmul contract float %1802, 0x3FF960CE60000000
  %1804 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1805 = fadd contract float %1804, %1803
  store float %1805, float addrspace(3)* %1663, align 4, !tbaa !6
  %1806 = load float, float addrspace(3)* %1667, align 4, !tbaa !6
  %1807 = load float, float addrspace(3)* %1710, align 4, !tbaa !6
  %1808 = fadd contract float %1806, %1807
  %1809 = fmul contract float %1808, 0x3FF960CE60000000
  %1810 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1811 = fadd contract float %1810, %1809
  store float %1811, float addrspace(3)* %1671, align 4, !tbaa !6
  br i1 %1715, label %1812, label %1825

1812:                                             ; preds = %1793
  %1813 = add nuw nsw i32 %1317, 576
  %1814 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1813
  %1815 = load float, float addrspace(3)* %1814, align 4, !tbaa !6
  %1816 = add nuw nsw i32 %1317, 577
  %1817 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1816
  %1818 = load float, float addrspace(3)* %1817, align 4, !tbaa !6
  %1819 = add nuw nsw i32 %1317, 2088
  %1820 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1819
  %1821 = fadd contract float %1815, %1818
  %1822 = fmul contract float %1821, 0x3FF960CE60000000
  %1823 = load float, float addrspace(3)* %1820, align 4, !tbaa !6
  %1824 = fadd contract float %1823, %1822
  store float %1824, float addrspace(3)* %1820, align 4, !tbaa !6
  br label %1825

1825:                                             ; preds = %1812, %1793
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1826 = add i32 %1313, %1317
  %1827 = icmp slt i32 %1826, %2
  br i1 %1827, label %1828, label %1833

1828:                                             ; preds = %1825
  %1829 = mul nsw i32 %3, %2
  %1830 = add nsw i32 %1829, %1826
  %1831 = mul nsw i32 %1316, %2
  %1832 = add nsw i32 %1831, %1826
  br label %1833

1833:                                             ; preds = %1828, %1825
  %1834 = phi i32 [ %1830, %1828 ], [ 0, %1825 ]
  %1835 = phi i32 [ %2, %1828 ], [ 0, %1825 ]
  %1836 = phi i32 [ %1832, %1828 ], [ 0, %1825 ]
  %1837 = add nuw nsw i32 %1317, 4
  %1838 = lshr i32 %1837, 1
  %1839 = and i32 %1317, 1
  %1840 = icmp eq i32 %1839, 0
  %1841 = select i1 %1840, i32 0, i32 1512
  %1842 = add nuw nsw i32 %1841, %1838
  %1843 = icmp sgt i32 %4, 0
  br i1 %1843, label %1844, label %3310

1844:                                             ; preds = %1833
  %1845 = add nsw i32 %1502, 700
  %1846 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1845
  %1847 = add nsw i32 %1502, 800
  %1848 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1847
  %1849 = add nsw i32 %1502, 900
  %1850 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1849
  %1851 = add nsw i32 %1502, 1000
  %1852 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1851
  %1853 = add nsw i32 %1502, 1100
  %1854 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1853
  %1855 = add nsw i32 %1502, 1200
  %1856 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1855
  %1857 = add nsw i32 %1502, 1300
  %1858 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1857
  %1859 = add nsw i32 %1502, 1400
  %1860 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1859
  %1861 = add nsw i32 %1486, 700
  %1862 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1861
  %1863 = add nsw i32 %1486, 800
  %1864 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1863
  %1865 = add nsw i32 %1486, 900
  %1866 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1865
  %1867 = add nsw i32 %1486, 1000
  %1868 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1867
  %1869 = add nsw i32 %1486, 1100
  %1870 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1869
  %1871 = add nsw i32 %1486, 1200
  %1872 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1871
  %1873 = add nsw i32 %1486, 1300
  %1874 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1873
  %1875 = add nsw i32 %1486, 1400
  %1876 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1875
  %1877 = add nuw nsw i32 %1317, 700
  %1878 = icmp ult i32 %1317, 32
  %1879 = add nuw nsw i32 %1317, 1468
  %1880 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1879
  %1881 = add nuw nsw i32 %1317, 2980
  %1882 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1881
  %1883 = icmp ult i32 %1317, 31
  %1884 = add nuw nsw i32 %1317, 2981
  %1885 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1884
  %1886 = add nuw nsw i32 %1317, 1469
  %1887 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1886
  %1888 = add nuw nsw i32 %1842, 800
  %1889 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1842
  %1890 = add nuw nsw i32 %1842, 100
  %1891 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1890
  %1892 = add nuw nsw i32 %1842, 200
  %1893 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1892
  %1894 = add nuw nsw i32 %1842, 300
  %1895 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1894
  %1896 = add nuw nsw i32 %1842, 400
  %1897 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1896
  %1898 = add nuw nsw i32 %1842, 500
  %1899 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1898
  %1900 = add nuw nsw i32 %1842, 600
  %1901 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1900
  %1902 = add nuw nsw i32 %1842, 700
  %1903 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1902
  %1904 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1888
  %1905 = add nuw nsw i32 %1842, 900
  %1906 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1905
  %1907 = add nuw nsw i32 %1842, 1000
  %1908 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1907
  %1909 = add nuw nsw i32 %1842, 1100
  %1910 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1909
  %1911 = add nuw nsw i32 %1842, 1200
  %1912 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1911
  %1913 = add nuw nsw i32 %1842, 1300
  %1914 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1913
  %1915 = add nuw nsw i32 %1842, 1400
  %1916 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1915
  %1917 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1877
  %1918 = add nuw nsw i32 %1317, 2212
  %1919 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1918
  %1920 = add nuw nsw i32 %1317, 892
  %1921 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1920
  %1922 = add nuw nsw i32 %1317, 2404
  %1923 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1922
  %1924 = add nuw nsw i32 %1317, 1084
  %1925 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1924
  %1926 = add nuw nsw i32 %1317, 2596
  %1927 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1926
  %1928 = add nuw nsw i32 %1317, 1276
  %1929 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1928
  %1930 = add nuw nsw i32 %1317, 2788
  %1931 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1930
  %1932 = add nuw nsw i32 %1317, 2213
  %1933 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1932
  %1934 = add nuw nsw i32 %1317, 701
  %1935 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1934
  %1936 = add nuw nsw i32 %1317, 2405
  %1937 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1936
  %1938 = add nuw nsw i32 %1317, 893
  %1939 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1938
  %1940 = add nuw nsw i32 %1317, 2597
  %1941 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1940
  %1942 = add nuw nsw i32 %1317, 1085
  %1943 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1942
  %1944 = add nuw nsw i32 %1317, 2789
  %1945 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1944
  %1946 = add nuw nsw i32 %1317, 1277
  %1947 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1946
  br label %1948

1948:                                             ; preds = %2332, %1844
  %1949 = phi i32 [ 0, %1844 ], [ %2334, %2332 ]
  %1950 = phi i32 [ %1647, %1844 ], [ %1981, %2332 ]
  %1951 = phi i32 [ %1485, %1844 ], [ %2019, %2332 ]
  %1952 = phi i32 [ %1836, %1844 ], [ %2333, %2332 ]
  %1953 = add nsw i32 %1950, %1645
  %1954 = sext i32 %1953 to i64
  %1955 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1954
  %1956 = load float, float addrspace(1)* %1955, align 4, !tbaa !6
  store float %1956, float addrspace(3)* %1846, align 4, !tbaa !6
  %1957 = add nsw i32 %1953, %1646
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1958
  %1960 = load float, float addrspace(1)* %1959, align 4, !tbaa !6
  store float %1960, float addrspace(3)* %1848, align 4, !tbaa !6
  %1961 = add nsw i32 %1957, %1645
  %1962 = sext i32 %1961 to i64
  %1963 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1962
  %1964 = load float, float addrspace(1)* %1963, align 4, !tbaa !6
  store float %1964, float addrspace(3)* %1850, align 4, !tbaa !6
  %1965 = add nsw i32 %1961, %1646
  %1966 = sext i32 %1965 to i64
  %1967 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1966
  %1968 = load float, float addrspace(1)* %1967, align 4, !tbaa !6
  store float %1968, float addrspace(3)* %1852, align 4, !tbaa !6
  %1969 = add nsw i32 %1965, %1645
  %1970 = sext i32 %1969 to i64
  %1971 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1970
  %1972 = load float, float addrspace(1)* %1971, align 4, !tbaa !6
  store float %1972, float addrspace(3)* %1854, align 4, !tbaa !6
  %1973 = add nsw i32 %1969, %1646
  %1974 = sext i32 %1973 to i64
  %1975 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1974
  %1976 = load float, float addrspace(1)* %1975, align 4, !tbaa !6
  store float %1976, float addrspace(3)* %1856, align 4, !tbaa !6
  %1977 = add nsw i32 %1973, %1645
  %1978 = sext i32 %1977 to i64
  %1979 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1978
  %1980 = load float, float addrspace(1)* %1979, align 4, !tbaa !6
  store float %1980, float addrspace(3)* %1858, align 4, !tbaa !6
  %1981 = add nsw i32 %1977, %1646
  %1982 = sext i32 %1981 to i64
  %1983 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1982
  %1984 = load float, float addrspace(1)* %1983, align 4, !tbaa !6
  store float %1984, float addrspace(3)* %1860, align 4, !tbaa !6
  br i1 %1318, label %1985, label %2018

1985:                                             ; preds = %1948
  %1986 = add nsw i32 %1951, %1484
  %1987 = sext i32 %1986 to i64
  %1988 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1987
  %1989 = load float, float addrspace(1)* %1988, align 4, !tbaa !6
  store float %1989, float addrspace(3)* %1862, align 4, !tbaa !6
  %1990 = add nsw i32 %1986, %1483
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1991
  %1993 = load float, float addrspace(1)* %1992, align 4, !tbaa !6
  store float %1993, float addrspace(3)* %1864, align 4, !tbaa !6
  %1994 = add nsw i32 %1990, %1484
  %1995 = sext i32 %1994 to i64
  %1996 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1995
  %1997 = load float, float addrspace(1)* %1996, align 4, !tbaa !6
  store float %1997, float addrspace(3)* %1866, align 4, !tbaa !6
  %1998 = add nsw i32 %1994, %1483
  %1999 = sext i32 %1998 to i64
  %2000 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1999
  %2001 = load float, float addrspace(1)* %2000, align 4, !tbaa !6
  store float %2001, float addrspace(3)* %1868, align 4, !tbaa !6
  %2002 = add nsw i32 %1998, %1484
  %2003 = sext i32 %2002 to i64
  %2004 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2003
  %2005 = load float, float addrspace(1)* %2004, align 4, !tbaa !6
  store float %2005, float addrspace(3)* %1870, align 4, !tbaa !6
  %2006 = add nsw i32 %2002, %1483
  %2007 = sext i32 %2006 to i64
  %2008 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2007
  %2009 = load float, float addrspace(1)* %2008, align 4, !tbaa !6
  store float %2009, float addrspace(3)* %1872, align 4, !tbaa !6
  %2010 = add nsw i32 %2006, %1484
  %2011 = sext i32 %2010 to i64
  %2012 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2011
  %2013 = load float, float addrspace(1)* %2012, align 4, !tbaa !6
  store float %2013, float addrspace(3)* %1874, align 4, !tbaa !6
  %2014 = add nsw i32 %2010, %1483
  %2015 = sext i32 %2014 to i64
  %2016 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2015
  %2017 = load float, float addrspace(1)* %2016, align 4, !tbaa !6
  store float %2017, float addrspace(3)* %1876, align 4, !tbaa !6
  br label %2018

2018:                                             ; preds = %1985, %1948
  %2019 = phi i32 [ %2014, %1985 ], [ %1951, %1948 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2020 = load float, float addrspace(3)* %1917, align 4, !tbaa !6
  %2021 = fmul contract float %2020, 0x3FF3AECB00000000
  store float %2021, float addrspace(3)* %1917, align 4, !tbaa !6
  %2022 = load float, float addrspace(3)* %1919, align 4, !tbaa !6
  %2023 = fmul contract float %2022, 0x3FEA033860000000
  store float %2023, float addrspace(3)* %1919, align 4, !tbaa !6
  %2024 = load float, float addrspace(3)* %1921, align 4, !tbaa !6
  %2025 = fmul contract float %2024, 0x3FF3AECB00000000
  store float %2025, float addrspace(3)* %1921, align 4, !tbaa !6
  %2026 = load float, float addrspace(3)* %1923, align 4, !tbaa !6
  %2027 = fmul contract float %2026, 0x3FEA033860000000
  store float %2027, float addrspace(3)* %1923, align 4, !tbaa !6
  %2028 = load float, float addrspace(3)* %1925, align 4, !tbaa !6
  %2029 = fmul contract float %2028, 0x3FF3AECB00000000
  store float %2029, float addrspace(3)* %1925, align 4, !tbaa !6
  %2030 = load float, float addrspace(3)* %1927, align 4, !tbaa !6
  %2031 = fmul contract float %2030, 0x3FEA033860000000
  store float %2031, float addrspace(3)* %1927, align 4, !tbaa !6
  %2032 = load float, float addrspace(3)* %1929, align 4, !tbaa !6
  %2033 = fmul contract float %2032, 0x3FF3AECB00000000
  store float %2033, float addrspace(3)* %1929, align 4, !tbaa !6
  %2034 = load float, float addrspace(3)* %1931, align 4, !tbaa !6
  %2035 = fmul contract float %2034, 0x3FEA033860000000
  store float %2035, float addrspace(3)* %1931, align 4, !tbaa !6
  br i1 %1878, label %2036, label %2041

2036:                                             ; preds = %2018
  %2037 = load float, float addrspace(3)* %1880, align 4, !tbaa !6
  %2038 = fmul contract float %2037, 0x3FF3AECB00000000
  store float %2038, float addrspace(3)* %1880, align 4, !tbaa !6
  %2039 = load float, float addrspace(3)* %1882, align 4, !tbaa !6
  %2040 = fmul contract float %2039, 0x3FEA033860000000
  store float %2040, float addrspace(3)* %1882, align 4, !tbaa !6
  br label %2041

2041:                                             ; preds = %2036, %2018
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2042 = load float, float addrspace(3)* %1919, align 4, !tbaa !6
  %2043 = load float, float addrspace(3)* %1933, align 4, !tbaa !6
  %2044 = fadd contract float %2042, %2043
  %2045 = fmul contract float %2044, 0x3FDC626AA0000000
  %2046 = load float, float addrspace(3)* %1935, align 4, !tbaa !6
  %2047 = fsub contract float %2046, %2045
  store float %2047, float addrspace(3)* %1935, align 4, !tbaa !6
  %2048 = load float, float addrspace(3)* %1923, align 4, !tbaa !6
  %2049 = load float, float addrspace(3)* %1937, align 4, !tbaa !6
  %2050 = fadd contract float %2048, %2049
  %2051 = fmul contract float %2050, 0x3FDC626AA0000000
  %2052 = load float, float addrspace(3)* %1939, align 4, !tbaa !6
  %2053 = fsub contract float %2052, %2051
  store float %2053, float addrspace(3)* %1939, align 4, !tbaa !6
  %2054 = load float, float addrspace(3)* %1927, align 4, !tbaa !6
  %2055 = load float, float addrspace(3)* %1941, align 4, !tbaa !6
  %2056 = fadd contract float %2054, %2055
  %2057 = fmul contract float %2056, 0x3FDC626AA0000000
  %2058 = load float, float addrspace(3)* %1943, align 4, !tbaa !6
  %2059 = fsub contract float %2058, %2057
  store float %2059, float addrspace(3)* %1943, align 4, !tbaa !6
  %2060 = load float, float addrspace(3)* %1931, align 4, !tbaa !6
  %2061 = load float, float addrspace(3)* %1945, align 4, !tbaa !6
  %2062 = fadd contract float %2060, %2061
  %2063 = fmul contract float %2062, 0x3FDC626AA0000000
  %2064 = load float, float addrspace(3)* %1947, align 4, !tbaa !6
  %2065 = fsub contract float %2064, %2063
  store float %2065, float addrspace(3)* %1947, align 4, !tbaa !6
  br i1 %1883, label %2066, label %2073

2066:                                             ; preds = %2041
  %2067 = load float, float addrspace(3)* %1882, align 4, !tbaa !6
  %2068 = load float, float addrspace(3)* %1885, align 4, !tbaa !6
  %2069 = fadd contract float %2067, %2068
  %2070 = fmul contract float %2069, 0x3FDC626AA0000000
  %2071 = load float, float addrspace(3)* %1887, align 4, !tbaa !6
  %2072 = fsub contract float %2071, %2070
  store float %2072, float addrspace(3)* %1887, align 4, !tbaa !6
  br label %2073

2073:                                             ; preds = %2066, %2041
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2074 = load float, float addrspace(3)* %1917, align 4, !tbaa !6
  %2075 = load float, float addrspace(3)* %1935, align 4, !tbaa !6
  %2076 = fadd contract float %2074, %2075
  %2077 = fmul contract float %2076, 0x3FEC40CEC0000000
  %2078 = load float, float addrspace(3)* %1919, align 4, !tbaa !6
  %2079 = fsub contract float %2078, %2077
  store float %2079, float addrspace(3)* %1919, align 4, !tbaa !6
  %2080 = load float, float addrspace(3)* %1921, align 4, !tbaa !6
  %2081 = load float, float addrspace(3)* %1939, align 4, !tbaa !6
  %2082 = fadd contract float %2080, %2081
  %2083 = fmul contract float %2082, 0x3FEC40CEC0000000
  %2084 = load float, float addrspace(3)* %1923, align 4, !tbaa !6
  %2085 = fsub contract float %2084, %2083
  store float %2085, float addrspace(3)* %1923, align 4, !tbaa !6
  %2086 = load float, float addrspace(3)* %1925, align 4, !tbaa !6
  %2087 = load float, float addrspace(3)* %1943, align 4, !tbaa !6
  %2088 = fadd contract float %2086, %2087
  %2089 = fmul contract float %2088, 0x3FEC40CEC0000000
  %2090 = load float, float addrspace(3)* %1927, align 4, !tbaa !6
  %2091 = fsub contract float %2090, %2089
  store float %2091, float addrspace(3)* %1927, align 4, !tbaa !6
  %2092 = load float, float addrspace(3)* %1929, align 4, !tbaa !6
  %2093 = load float, float addrspace(3)* %1947, align 4, !tbaa !6
  %2094 = fadd contract float %2092, %2093
  %2095 = fmul contract float %2094, 0x3FEC40CEC0000000
  %2096 = load float, float addrspace(3)* %1931, align 4, !tbaa !6
  %2097 = fsub contract float %2096, %2095
  store float %2097, float addrspace(3)* %1931, align 4, !tbaa !6
  br i1 %1883, label %2098, label %2105

2098:                                             ; preds = %2073
  %2099 = load float, float addrspace(3)* %1880, align 4, !tbaa !6
  %2100 = load float, float addrspace(3)* %1887, align 4, !tbaa !6
  %2101 = fadd contract float %2099, %2100
  %2102 = fmul contract float %2101, 0x3FEC40CEC0000000
  %2103 = load float, float addrspace(3)* %1882, align 4, !tbaa !6
  %2104 = fsub contract float %2103, %2102
  store float %2104, float addrspace(3)* %1882, align 4, !tbaa !6
  br label %2105

2105:                                             ; preds = %2098, %2073
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2106 = load float, float addrspace(3)* %1919, align 4, !tbaa !6
  %2107 = load float, float addrspace(3)* %1933, align 4, !tbaa !6
  %2108 = fadd contract float %2106, %2107
  %2109 = fmul contract float %2108, 0x3FAB2035C0000000
  %2110 = load float, float addrspace(3)* %1935, align 4, !tbaa !6
  %2111 = fadd contract float %2110, %2109
  store float %2111, float addrspace(3)* %1935, align 4, !tbaa !6
  %2112 = load float, float addrspace(3)* %1923, align 4, !tbaa !6
  %2113 = load float, float addrspace(3)* %1937, align 4, !tbaa !6
  %2114 = fadd contract float %2112, %2113
  %2115 = fmul contract float %2114, 0x3FAB2035C0000000
  %2116 = load float, float addrspace(3)* %1939, align 4, !tbaa !6
  %2117 = fadd contract float %2116, %2115
  store float %2117, float addrspace(3)* %1939, align 4, !tbaa !6
  %2118 = load float, float addrspace(3)* %1927, align 4, !tbaa !6
  %2119 = load float, float addrspace(3)* %1941, align 4, !tbaa !6
  %2120 = fadd contract float %2118, %2119
  %2121 = fmul contract float %2120, 0x3FAB2035C0000000
  %2122 = load float, float addrspace(3)* %1943, align 4, !tbaa !6
  %2123 = fadd contract float %2122, %2121
  store float %2123, float addrspace(3)* %1943, align 4, !tbaa !6
  %2124 = load float, float addrspace(3)* %1931, align 4, !tbaa !6
  %2125 = load float, float addrspace(3)* %1945, align 4, !tbaa !6
  %2126 = fadd contract float %2124, %2125
  %2127 = fmul contract float %2126, 0x3FAB2035C0000000
  %2128 = load float, float addrspace(3)* %1947, align 4, !tbaa !6
  %2129 = fadd contract float %2128, %2127
  store float %2129, float addrspace(3)* %1947, align 4, !tbaa !6
  br i1 %1883, label %2130, label %2137

2130:                                             ; preds = %2105
  %2131 = load float, float addrspace(3)* %1882, align 4, !tbaa !6
  %2132 = load float, float addrspace(3)* %1885, align 4, !tbaa !6
  %2133 = fadd contract float %2131, %2132
  %2134 = fmul contract float %2133, 0x3FAB2035C0000000
  %2135 = load float, float addrspace(3)* %1887, align 4, !tbaa !6
  %2136 = fadd contract float %2135, %2134
  store float %2136, float addrspace(3)* %1887, align 4, !tbaa !6
  br label %2137

2137:                                             ; preds = %2130, %2105
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2138 = load float, float addrspace(3)* %1917, align 4, !tbaa !6
  %2139 = load float, float addrspace(3)* %1935, align 4, !tbaa !6
  %2140 = fadd contract float %2138, %2139
  %2141 = fmul contract float %2140, 0x3FF960CE60000000
  %2142 = load float, float addrspace(3)* %1919, align 4, !tbaa !6
  %2143 = fadd contract float %2142, %2141
  store float %2143, float addrspace(3)* %1919, align 4, !tbaa !6
  %2144 = load float, float addrspace(3)* %1921, align 4, !tbaa !6
  %2145 = load float, float addrspace(3)* %1939, align 4, !tbaa !6
  %2146 = fadd contract float %2144, %2145
  %2147 = fmul contract float %2146, 0x3FF960CE60000000
  %2148 = load float, float addrspace(3)* %1923, align 4, !tbaa !6
  %2149 = fadd contract float %2148, %2147
  store float %2149, float addrspace(3)* %1923, align 4, !tbaa !6
  %2150 = load float, float addrspace(3)* %1925, align 4, !tbaa !6
  %2151 = load float, float addrspace(3)* %1943, align 4, !tbaa !6
  %2152 = fadd contract float %2150, %2151
  %2153 = fmul contract float %2152, 0x3FF960CE60000000
  %2154 = load float, float addrspace(3)* %1927, align 4, !tbaa !6
  %2155 = fadd contract float %2154, %2153
  store float %2155, float addrspace(3)* %1927, align 4, !tbaa !6
  %2156 = load float, float addrspace(3)* %1929, align 4, !tbaa !6
  %2157 = load float, float addrspace(3)* %1947, align 4, !tbaa !6
  %2158 = fadd contract float %2156, %2157
  %2159 = fmul contract float %2158, 0x3FF960CE60000000
  %2160 = load float, float addrspace(3)* %1931, align 4, !tbaa !6
  %2161 = fadd contract float %2160, %2159
  store float %2161, float addrspace(3)* %1931, align 4, !tbaa !6
  br i1 %1883, label %2162, label %2169

2162:                                             ; preds = %2137
  %2163 = load float, float addrspace(3)* %1880, align 4, !tbaa !6
  %2164 = load float, float addrspace(3)* %1887, align 4, !tbaa !6
  %2165 = fadd contract float %2163, %2164
  %2166 = fmul contract float %2165, 0x3FF960CE60000000
  %2167 = load float, float addrspace(3)* %1882, align 4, !tbaa !6
  %2168 = fadd contract float %2167, %2166
  store float %2168, float addrspace(3)* %1882, align 4, !tbaa !6
  br label %2169

2169:                                             ; preds = %2162, %2137
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2170 = load float, float addrspace(3)* %1904, align 4, !tbaa !6
  %2171 = load float, float addrspace(3)* %1906, align 4, !tbaa !6
  %2172 = load float, float addrspace(3)* %1908, align 4, !tbaa !6
  %2173 = load float, float addrspace(3)* %1910, align 4, !tbaa !6
  %2174 = load float, float addrspace(3)* %1912, align 4, !tbaa !6
  %2175 = load float, float addrspace(3)* %1914, align 4, !tbaa !6
  %2176 = load float, float addrspace(3)* %1916, align 4, !tbaa !6
  %2177 = load float, float addrspace(3)* %1889, align 4, !tbaa !6
  %2178 = fmul contract float %2177, 0x3FEA033860000000
  store float %2178, float addrspace(3)* %1889, align 4, !tbaa !6
  %2179 = load float, float addrspace(3)* %1891, align 4, !tbaa !6
  %2180 = fmul contract float %2179, 0x3FF3AECB00000000
  %2181 = load float, float addrspace(3)* %1893, align 4, !tbaa !6
  %2182 = fmul contract float %2181, 0x3FEA033860000000
  %2183 = load float, float addrspace(3)* %1895, align 4, !tbaa !6
  %2184 = fmul contract float %2183, 0x3FF3AECB00000000
  %2185 = load float, float addrspace(3)* %1897, align 4, !tbaa !6
  %2186 = fmul contract float %2185, 0x3FEA033860000000
  %2187 = load float, float addrspace(3)* %1899, align 4, !tbaa !6
  %2188 = fmul contract float %2187, 0x3FF3AECB00000000
  %2189 = load float, float addrspace(3)* %1901, align 4, !tbaa !6
  %2190 = fmul contract float %2189, 0x3FEA033860000000
  %2191 = load float, float addrspace(3)* %1903, align 4, !tbaa !6
  %2192 = fmul contract float %2191, 0x3FF3AECB00000000
  %2193 = fmul contract float %2170, 0x3FEA033860000000
  %2194 = fmul contract float %2171, 0x3FF3AECB00000000
  %2195 = fmul contract float %2172, 0x3FEA033860000000
  %2196 = fmul contract float %2173, 0x3FF3AECB00000000
  %2197 = fmul contract float %2174, 0x3FEA033860000000
  %2198 = fmul contract float %2175, 0x3FF3AECB00000000
  %2199 = fmul contract float %2176, 0x3FEA033860000000
  store float %2199, float addrspace(3)* %1916, align 4, !tbaa !6
  %2200 = fadd contract float %2178, %2182
  %2201 = fmul contract float %2200, 0x3FDC626AA0000000
  %2202 = fsub contract float %2180, %2201
  %2203 = fadd contract float %2182, %2186
  %2204 = fmul contract float %2203, 0x3FDC626AA0000000
  %2205 = fsub contract float %2184, %2204
  %2206 = fadd contract float %2186, %2190
  %2207 = fmul contract float %2206, 0x3FDC626AA0000000
  %2208 = fsub contract float %2188, %2207
  %2209 = fadd contract float %2193, %2190
  %2210 = fmul contract float %2209, 0x3FDC626AA0000000
  %2211 = fsub contract float %2192, %2210
  %2212 = fadd contract float %2193, %2195
  %2213 = fmul contract float %2212, 0x3FDC626AA0000000
  %2214 = fsub contract float %2194, %2213
  %2215 = fadd contract float %2195, %2197
  %2216 = fmul contract float %2215, 0x3FDC626AA0000000
  %2217 = fsub contract float %2196, %2216
  %2218 = fadd contract float %2197, %2199
  %2219 = fmul contract float %2218, 0x3FDC626AA0000000
  %2220 = fsub contract float %2198, %2219
  %2221 = fadd contract float %2202, %2205
  %2222 = fmul contract float %2221, 0x3FEC40CEC0000000
  %2223 = fsub contract float %2182, %2222
  %2224 = fadd contract float %2205, %2208
  %2225 = fmul contract float %2224, 0x3FEC40CEC0000000
  %2226 = fsub contract float %2186, %2225
  %2227 = fadd contract float %2208, %2211
  %2228 = fmul contract float %2227, 0x3FEC40CEC0000000
  %2229 = fsub contract float %2190, %2228
  %2230 = fadd contract float %2214, %2211
  %2231 = fmul contract float %2230, 0x3FEC40CEC0000000
  %2232 = fsub contract float %2193, %2231
  %2233 = fadd contract float %2214, %2217
  %2234 = fmul contract float %2233, 0x3FEC40CEC0000000
  %2235 = fsub contract float %2195, %2234
  %2236 = fadd contract float %2217, %2220
  %2237 = fmul contract float %2236, 0x3FEC40CEC0000000
  %2238 = fsub contract float %2197, %2237
  %2239 = fadd contract float %2178, %2223
  %2240 = fmul contract float %2239, 0x3FAB2035C0000000
  %2241 = fadd contract float %2202, %2240
  store float %2241, float addrspace(3)* %1891, align 4, !tbaa !6
  %2242 = fadd contract float %2223, %2226
  %2243 = fmul contract float %2242, 0x3FAB2035C0000000
  %2244 = fadd contract float %2205, %2243
  store float %2244, float addrspace(3)* %1895, align 4, !tbaa !6
  %2245 = fadd contract float %2226, %2229
  %2246 = fmul contract float %2245, 0x3FAB2035C0000000
  %2247 = fadd contract float %2208, %2246
  store float %2247, float addrspace(3)* %1899, align 4, !tbaa !6
  %2248 = fadd contract float %2229, %2232
  %2249 = fmul contract float %2248, 0x3FAB2035C0000000
  %2250 = fadd contract float %2211, %2249
  store float %2250, float addrspace(3)* %1903, align 4, !tbaa !6
  %2251 = fadd contract float %2235, %2232
  %2252 = fmul contract float %2251, 0x3FAB2035C0000000
  %2253 = fadd contract float %2214, %2252
  store float %2253, float addrspace(3)* %1906, align 4, !tbaa !6
  %2254 = fadd contract float %2235, %2238
  %2255 = fmul contract float %2254, 0x3FAB2035C0000000
  %2256 = fadd contract float %2217, %2255
  store float %2256, float addrspace(3)* %1910, align 4, !tbaa !6
  %2257 = fadd contract float %2199, %2238
  %2258 = fmul contract float %2257, 0x3FAB2035C0000000
  %2259 = fadd contract float %2220, %2258
  store float %2259, float addrspace(3)* %1914, align 4, !tbaa !6
  %2260 = fadd contract float %2241, %2244
  %2261 = fmul contract float %2260, 0x3FF960CE60000000
  %2262 = fadd contract float %2223, %2261
  store float %2262, float addrspace(3)* %1893, align 4, !tbaa !6
  %2263 = fadd contract float %2244, %2247
  %2264 = fmul contract float %2263, 0x3FF960CE60000000
  %2265 = fadd contract float %2226, %2264
  store float %2265, float addrspace(3)* %1897, align 4, !tbaa !6
  %2266 = fadd contract float %2247, %2250
  %2267 = fmul contract float %2266, 0x3FF960CE60000000
  %2268 = fadd contract float %2229, %2267
  store float %2268, float addrspace(3)* %1901, align 4, !tbaa !6
  %2269 = fadd contract float %2250, %2253
  %2270 = fmul contract float %2269, 0x3FF960CE60000000
  %2271 = fadd contract float %2232, %2270
  store float %2271, float addrspace(3)* %1904, align 4, !tbaa !6
  %2272 = fadd contract float %2256, %2253
  %2273 = fmul contract float %2272, 0x3FF960CE60000000
  %2274 = fadd contract float %2235, %2273
  store float %2274, float addrspace(3)* %1908, align 4, !tbaa !6
  %2275 = fadd contract float %2256, %2259
  %2276 = fmul contract float %2275, 0x3FF960CE60000000
  %2277 = fadd contract float %2238, %2276
  store float %2277, float addrspace(3)* %1912, align 4, !tbaa !6
  %2278 = icmp eq i32 %1952, %1834
  br i1 %2278, label %2283, label %2279

2279:                                             ; preds = %2169
  %2280 = add nsw i32 %1952, %1835
  %2281 = sext i32 %1952 to i64
  %2282 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2281
  store float %2244, float addrspace(1)* %2282, align 4, !tbaa !6
  br label %2283

2283:                                             ; preds = %2279, %2169
  %2284 = phi i32 [ %1834, %2169 ], [ %2280, %2279 ]
  %2285 = icmp eq i32 %2284, %1834
  br i1 %2285, label %2290, label %2286

2286:                                             ; preds = %2283
  %2287 = add nsw i32 %2284, %1835
  %2288 = sext i32 %2284 to i64
  %2289 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2288
  store float %2265, float addrspace(1)* %2289, align 4, !tbaa !6
  br label %2290

2290:                                             ; preds = %2286, %2283
  %2291 = phi i32 [ %1834, %2283 ], [ %2287, %2286 ]
  %2292 = icmp eq i32 %2291, %1834
  br i1 %2292, label %2297, label %2293

2293:                                             ; preds = %2290
  %2294 = add nsw i32 %2291, %1835
  %2295 = sext i32 %2291 to i64
  %2296 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2295
  store float %2247, float addrspace(1)* %2296, align 4, !tbaa !6
  br label %2297

2297:                                             ; preds = %2293, %2290
  %2298 = phi i32 [ %1834, %2290 ], [ %2294, %2293 ]
  %2299 = icmp eq i32 %2298, %1834
  br i1 %2299, label %2304, label %2300

2300:                                             ; preds = %2297
  %2301 = add nsw i32 %2298, %1835
  %2302 = sext i32 %2298 to i64
  %2303 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2302
  store float %2268, float addrspace(1)* %2303, align 4, !tbaa !6
  br label %2304

2304:                                             ; preds = %2300, %2297
  %2305 = phi i32 [ %1834, %2297 ], [ %2301, %2300 ]
  %2306 = icmp eq i32 %2305, %1834
  br i1 %2306, label %2311, label %2307

2307:                                             ; preds = %2304
  %2308 = add nsw i32 %2305, %1835
  %2309 = sext i32 %2305 to i64
  %2310 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2309
  store float %2250, float addrspace(1)* %2310, align 4, !tbaa !6
  br label %2311

2311:                                             ; preds = %2307, %2304
  %2312 = phi i32 [ %1834, %2304 ], [ %2308, %2307 ]
  %2313 = icmp eq i32 %2312, %1834
  br i1 %2313, label %2318, label %2314

2314:                                             ; preds = %2311
  %2315 = add nsw i32 %2312, %1835
  %2316 = sext i32 %2312 to i64
  %2317 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2316
  store float %2271, float addrspace(1)* %2317, align 4, !tbaa !6
  br label %2318

2318:                                             ; preds = %2314, %2311
  %2319 = phi i32 [ %1834, %2311 ], [ %2315, %2314 ]
  %2320 = icmp eq i32 %2319, %1834
  br i1 %2320, label %2325, label %2321

2321:                                             ; preds = %2318
  %2322 = add nsw i32 %2319, %1835
  %2323 = sext i32 %2319 to i64
  %2324 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2323
  store float %2253, float addrspace(1)* %2324, align 4, !tbaa !6
  br label %2325

2325:                                             ; preds = %2321, %2318
  %2326 = phi i32 [ %1834, %2318 ], [ %2322, %2321 ]
  %2327 = icmp eq i32 %2326, %1834
  br i1 %2327, label %2332, label %2328

2328:                                             ; preds = %2325
  %2329 = add nsw i32 %2326, %1835
  %2330 = sext i32 %2326 to i64
  %2331 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2330
  store float %2274, float addrspace(1)* %2331, align 4, !tbaa !6
  br label %2332

2332:                                             ; preds = %2328, %2325
  %2333 = phi i32 [ %1834, %2325 ], [ %2329, %2328 ]
  store float %2170, float addrspace(3)* %1889, align 4, !tbaa !6
  store float %2171, float addrspace(3)* %1891, align 4, !tbaa !6
  store float %2172, float addrspace(3)* %1893, align 4, !tbaa !6
  store float %2173, float addrspace(3)* %1895, align 4, !tbaa !6
  store float %2174, float addrspace(3)* %1897, align 4, !tbaa !6
  store float %2175, float addrspace(3)* %1899, align 4, !tbaa !6
  store float %2176, float addrspace(3)* %1901, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2334 = add nuw nsw i32 %1949, 1
  %2335 = icmp eq i32 %2334, %4
  br i1 %2335, label %3310, label %1948, !llvm.loop !13

2336:                                             ; preds = %1312
  br i1 %1318, label %2337, label %2499

2337:                                             ; preds = %2336
  %2338 = icmp ult i32 %1317, 4
  %2339 = select i1 %2338, i32 192, i32 -7
  %2340 = add nsw i32 %2339, %1317
  %2341 = add i32 %2340, %1313
  %2342 = sub i32 0, %2341
  %2343 = trunc i32 %2340 to i16
  %2344 = add nsw i16 %2343, 4
  %2345 = sdiv i16 %2344, 2
  %2346 = sext i16 %2345 to i32
  %2347 = and i32 %2340, 1
  %2348 = icmp eq i32 %2347, 0
  %2349 = select i1 %2348, i32 0, i32 1512
  %2350 = add nsw i32 %2349, %2346
  %2351 = icmp eq i32 %7, 0
  br i1 %2351, label %2352, label %2415

2352:                                             ; preds = %2337
  %2353 = icmp slt i32 %2341, %2
  br i1 %2353, label %2358, label %2354

2354:                                             ; preds = %2352
  %2355 = shl nsw i32 %2, 1
  %2356 = sub i32 -2, %2341
  %2357 = add i32 %2356, %2355
  br label %2360

2358:                                             ; preds = %2352
  %2359 = icmp slt i32 %2341, 0
  br i1 %2359, label %2360, label %2362

2360:                                             ; preds = %2358, %2354
  %2361 = phi i32 [ %2357, %2354 ], [ %2342, %2358 ]
  br label %2362

2362:                                             ; preds = %2360, %2358
  %2363 = phi i32 [ %2361, %2360 ], [ %2341, %2358 ]
  %2364 = sdiv i32 %2363, 2
  %2365 = and i32 %2363, 1
  %2366 = icmp eq i32 %2365, 0
  %2367 = sdiv i32 %2, 2
  %2368 = and i32 %2, 1
  %2369 = add nsw i32 %2367, %2368
  %2370 = sdiv i32 %3, 2
  %2371 = and i32 %3, 1
  %2372 = add nsw i32 %2370, %2371
  br i1 %2366, label %2378, label %2373

2373:                                             ; preds = %2362
  %2374 = mul nsw i32 %2372, %2369
  %2375 = add nsw i32 %2364, %2374
  %2376 = mul nsw i32 %3, %2
  %2377 = sdiv i32 %2376, 2
  br label %2380

2378:                                             ; preds = %2362
  %2379 = mul nsw i32 %2372, %2
  br label %2380

2380:                                             ; preds = %2378, %2373
  %2381 = phi i32 [ %2379, %2378 ], [ %2377, %2373 ]
  %2382 = phi i32 [ %2364, %2378 ], [ %2375, %2373 ]
  %2383 = phi i32 [ %2369, %2378 ], [ %2367, %2373 ]
  %2384 = sub nsw i32 %2383, %2381
  %2385 = sdiv i32 %1316, 2
  %2386 = mul nsw i32 %2383, %2385
  %2387 = add i32 %2386, %2382
  %2388 = sub i32 %2387, %2384
  %2389 = sext i32 %2387 to i64
  %2390 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2389
  %2391 = load float, float addrspace(1)* %2390, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2392 = add nsw i32 %2350, 300
  %2393 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2392
  store float %2391, float addrspace(3)* %2393, align 4, !tbaa !6
  %2394 = add i32 %2388, %2383
  %2395 = sext i32 %2394 to i64
  %2396 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2395
  %2397 = load float, float addrspace(1)* %2396, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2398 = add nsw i32 %2350, 200
  %2399 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2398
  store float %2397, float addrspace(3)* %2399, align 4, !tbaa !6
  %2400 = add nsw i32 %2350, 400
  %2401 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2400
  store float %2397, float addrspace(3)* %2401, align 4, !tbaa !6
  %2402 = add i32 %2387, %2383
  %2403 = sext i32 %2402 to i64
  %2404 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2403
  %2405 = load float, float addrspace(1)* %2404, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2406 = add nsw i32 %2350, 100
  %2407 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2406
  store float %2405, float addrspace(3)* %2407, align 4, !tbaa !6
  %2408 = add nsw i32 %2350, 500
  %2409 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2408
  store float %2405, float addrspace(3)* %2409, align 4, !tbaa !6
  %2410 = add i32 %2394, %2383
  %2411 = sext i32 %2410 to i64
  %2412 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2411
  %2413 = load float, float addrspace(1)* %2412, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2414 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2350
  store float %2413, float addrspace(3)* %2414, align 4, !tbaa !6
  br label %2492

2415:                                             ; preds = %2337
  %2416 = add nsw i32 %1316, -3
  %2417 = icmp slt i32 %2341, %2
  br i1 %2417, label %2422, label %2418

2418:                                             ; preds = %2415
  %2419 = shl nsw i32 %2, 1
  %2420 = sub i32 -2, %2341
  %2421 = add i32 %2420, %2419
  br label %2424

2422:                                             ; preds = %2415
  %2423 = icmp slt i32 %2341, 0
  br i1 %2423, label %2424, label %2426

2424:                                             ; preds = %2422, %2418
  %2425 = phi i32 [ %2421, %2418 ], [ %2342, %2422 ]
  br label %2426

2426:                                             ; preds = %2424, %2422
  %2427 = phi i32 [ %2425, %2424 ], [ %2341, %2422 ]
  %2428 = sdiv i32 %2427, 2
  %2429 = and i32 %2427, 1
  %2430 = icmp eq i32 %2429, 0
  %2431 = sdiv i32 %2, 2
  %2432 = and i32 %2, 1
  %2433 = add nsw i32 %2431, %2432
  %2434 = sdiv i32 %3, 2
  %2435 = and i32 %3, 1
  %2436 = add nsw i32 %2434, %2435
  br i1 %2430, label %2442, label %2437

2437:                                             ; preds = %2426
  %2438 = mul nsw i32 %2436, %2433
  %2439 = add nsw i32 %2428, %2438
  %2440 = mul nsw i32 %3, %2
  %2441 = sdiv i32 %2440, 2
  br label %2444

2442:                                             ; preds = %2426
  %2443 = mul nsw i32 %2436, %2
  br label %2444

2444:                                             ; preds = %2442, %2437
  %2445 = phi i32 [ %2443, %2442 ], [ %2441, %2437 ]
  %2446 = phi i32 [ %2428, %2442 ], [ %2439, %2437 ]
  %2447 = phi i32 [ %2433, %2442 ], [ %2431, %2437 ]
  %2448 = sub nsw i32 %2447, %2445
  %2449 = sdiv i32 %2416, 2
  %2450 = mul nsw i32 %2447, %2449
  %2451 = add i32 %2446, %2445
  %2452 = add i32 %2451, %2450
  %2453 = sub i32 %2452, %2445
  %2454 = sext i32 %2452 to i64
  %2455 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2454
  %2456 = load float, float addrspace(1)* %2455, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2457 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2350
  store float %2456, float addrspace(3)* %2457, align 4, !tbaa !6
  %2458 = add i32 %2453, %2447
  %2459 = sext i32 %2458 to i64
  %2460 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2459
  %2461 = load float, float addrspace(1)* %2460, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2462 = add nsw i32 %2350, 100
  %2463 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2462
  store float %2461, float addrspace(3)* %2463, align 4, !tbaa !6
  %2464 = add i32 %2452, %2447
  %2465 = sext i32 %2464 to i64
  %2466 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2465
  %2467 = load float, float addrspace(1)* %2466, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2468 = add nsw i32 %2350, 200
  %2469 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2468
  store float %2467, float addrspace(3)* %2469, align 4, !tbaa !6
  %2470 = add i32 %2458, %2447
  %2471 = sext i32 %2470 to i64
  %2472 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2471
  %2473 = load float, float addrspace(1)* %2472, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2474 = add nsw i32 %2350, 300
  %2475 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2474
  store float %2473, float addrspace(3)* %2475, align 4, !tbaa !6
  %2476 = add nsw i32 %2470, %2445
  %2477 = sext i32 %2476 to i64
  %2478 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2477
  %2479 = load float, float addrspace(1)* %2478, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2480 = add nsw i32 %2350, 400
  %2481 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2480
  store float %2479, float addrspace(3)* %2481, align 4, !tbaa !6
  %2482 = add i32 %2470, %2447
  %2483 = sext i32 %2482 to i64
  %2484 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2483
  %2485 = load float, float addrspace(1)* %2484, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2486 = add nsw i32 %2350, 500
  %2487 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2486
  store float %2485, float addrspace(3)* %2487, align 4, !tbaa !6
  %2488 = add nsw i32 %2482, %2445
  %2489 = sext i32 %2488 to i64
  %2490 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2489
  %2491 = load float, float addrspace(1)* %2490, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %2492

2492:                                             ; preds = %2444, %2380
  %2493 = phi i32 [ %2381, %2380 ], [ %2445, %2444 ]
  %2494 = phi i32 [ %2384, %2380 ], [ %2448, %2444 ]
  %2495 = phi i32 [ %2410, %2380 ], [ %2488, %2444 ]
  %2496 = phi float [ %2413, %2380 ], [ %2491, %2444 ]
  %2497 = add nsw i32 %2350, 600
  %2498 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2497
  store float %2496, float addrspace(3)* %2498, align 4, !tbaa !6
  br label %2499

2499:                                             ; preds = %2492, %2336
  %2500 = phi i32 [ %2493, %2492 ], [ 0, %2336 ]
  %2501 = phi i32 [ %2494, %2492 ], [ 0, %2336 ]
  %2502 = phi i32 [ %2495, %2492 ], [ 0, %2336 ]
  %2503 = phi i32 [ %2350, %2492 ], [ 0, %2336 ]
  %2504 = shl nuw nsw i32 %1317, 1
  %2505 = trunc i32 %1317 to i16
  %2506 = udiv i16 %2505, 96
  %2507 = zext i16 %2506 to i32
  %2508 = mul nsw i32 %2507, -191
  %2509 = add nsw i32 %2508, %2504
  %2510 = add i32 %2509, %1313
  %2511 = sub i32 0, %2510
  %2512 = trunc i32 %2509 to i16
  %2513 = add nsw i16 %2512, 4
  %2514 = sdiv i16 %2513, 2
  %2515 = sext i16 %2514 to i32
  %2516 = and i32 %2509, 1
  %2517 = icmp eq i32 %2516, 0
  %2518 = select i1 %2517, i32 0, i32 1512
  %2519 = add nsw i32 %2518, %2515
  %2520 = icmp eq i32 %7, 0
  br i1 %2520, label %2521, label %2584

2521:                                             ; preds = %2499
  %2522 = icmp slt i32 %2510, %2
  br i1 %2522, label %2527, label %2523

2523:                                             ; preds = %2521
  %2524 = shl nsw i32 %2, 1
  %2525 = sub i32 %2524, %2510
  %2526 = add i32 %2525, -2
  br label %2529

2527:                                             ; preds = %2521
  %2528 = icmp slt i32 %2510, 0
  br i1 %2528, label %2529, label %2531

2529:                                             ; preds = %2527, %2523
  %2530 = phi i32 [ %2526, %2523 ], [ %2511, %2527 ]
  br label %2531

2531:                                             ; preds = %2529, %2527
  %2532 = phi i32 [ %2530, %2529 ], [ %2510, %2527 ]
  %2533 = sdiv i32 %2532, 2
  %2534 = and i32 %2532, 1
  %2535 = icmp eq i32 %2534, 0
  %2536 = sdiv i32 %2, 2
  %2537 = and i32 %2, 1
  %2538 = add nsw i32 %2536, %2537
  %2539 = sdiv i32 %3, 2
  %2540 = and i32 %3, 1
  %2541 = add nsw i32 %2539, %2540
  br i1 %2535, label %2547, label %2542

2542:                                             ; preds = %2531
  %2543 = mul nsw i32 %2541, %2538
  %2544 = add nsw i32 %2533, %2543
  %2545 = mul nsw i32 %3, %2
  %2546 = sdiv i32 %2545, 2
  br label %2549

2547:                                             ; preds = %2531
  %2548 = mul nsw i32 %2541, %2
  br label %2549

2549:                                             ; preds = %2547, %2542
  %2550 = phi i32 [ %2548, %2547 ], [ %2546, %2542 ]
  %2551 = phi i32 [ %2533, %2547 ], [ %2544, %2542 ]
  %2552 = phi i32 [ %2538, %2547 ], [ %2536, %2542 ]
  %2553 = sub nsw i32 %2552, %2550
  %2554 = sdiv i32 %1316, 2
  %2555 = mul nsw i32 %2552, %2554
  %2556 = add i32 %2555, %2551
  %2557 = sub i32 %2556, %2553
  %2558 = sext i32 %2556 to i64
  %2559 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2558
  %2560 = load float, float addrspace(1)* %2559, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2561 = add nsw i32 %2519, 300
  %2562 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2561
  store float %2560, float addrspace(3)* %2562, align 4, !tbaa !6
  %2563 = add i32 %2557, %2552
  %2564 = sext i32 %2563 to i64
  %2565 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2564
  %2566 = load float, float addrspace(1)* %2565, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2567 = add nsw i32 %2519, 200
  %2568 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2567
  store float %2566, float addrspace(3)* %2568, align 4, !tbaa !6
  %2569 = add nsw i32 %2519, 400
  %2570 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2569
  store float %2566, float addrspace(3)* %2570, align 4, !tbaa !6
  %2571 = add i32 %2556, %2552
  %2572 = sext i32 %2571 to i64
  %2573 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2572
  %2574 = load float, float addrspace(1)* %2573, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2575 = add nsw i32 %2519, 100
  %2576 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2575
  store float %2574, float addrspace(3)* %2576, align 4, !tbaa !6
  %2577 = add nsw i32 %2519, 500
  %2578 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2577
  store float %2574, float addrspace(3)* %2578, align 4, !tbaa !6
  %2579 = add i32 %2563, %2552
  %2580 = sext i32 %2579 to i64
  %2581 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2580
  %2582 = load float, float addrspace(1)* %2581, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2583 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2519
  store float %2582, float addrspace(3)* %2583, align 4, !tbaa !6
  br label %2661

2584:                                             ; preds = %2499
  %2585 = add nsw i32 %1316, -3
  %2586 = icmp slt i32 %2510, %2
  br i1 %2586, label %2591, label %2587

2587:                                             ; preds = %2584
  %2588 = shl nsw i32 %2, 1
  %2589 = sub i32 %2588, %2510
  %2590 = add i32 %2589, -2
  br label %2593

2591:                                             ; preds = %2584
  %2592 = icmp slt i32 %2510, 0
  br i1 %2592, label %2593, label %2595

2593:                                             ; preds = %2591, %2587
  %2594 = phi i32 [ %2590, %2587 ], [ %2511, %2591 ]
  br label %2595

2595:                                             ; preds = %2593, %2591
  %2596 = phi i32 [ %2594, %2593 ], [ %2510, %2591 ]
  %2597 = sdiv i32 %2596, 2
  %2598 = and i32 %2596, 1
  %2599 = icmp eq i32 %2598, 0
  %2600 = sdiv i32 %2, 2
  %2601 = and i32 %2, 1
  %2602 = add nsw i32 %2600, %2601
  %2603 = sdiv i32 %3, 2
  %2604 = and i32 %3, 1
  %2605 = add nsw i32 %2603, %2604
  br i1 %2599, label %2611, label %2606

2606:                                             ; preds = %2595
  %2607 = mul nsw i32 %2605, %2602
  %2608 = add nsw i32 %2597, %2607
  %2609 = mul nsw i32 %3, %2
  %2610 = sdiv i32 %2609, 2
  br label %2613

2611:                                             ; preds = %2595
  %2612 = mul nsw i32 %2605, %2
  br label %2613

2613:                                             ; preds = %2611, %2606
  %2614 = phi i32 [ %2612, %2611 ], [ %2610, %2606 ]
  %2615 = phi i32 [ %2597, %2611 ], [ %2608, %2606 ]
  %2616 = phi i32 [ %2602, %2611 ], [ %2600, %2606 ]
  %2617 = sub nsw i32 %2616, %2614
  %2618 = sdiv i32 %2585, 2
  %2619 = mul nsw i32 %2616, %2618
  %2620 = add i32 %2615, %2614
  %2621 = add i32 %2620, %2619
  %2622 = sub i32 %2621, %2614
  %2623 = sext i32 %2621 to i64
  %2624 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2623
  %2625 = load float, float addrspace(1)* %2624, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2626 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2519
  store float %2625, float addrspace(3)* %2626, align 4, !tbaa !6
  %2627 = add i32 %2622, %2616
  %2628 = sext i32 %2627 to i64
  %2629 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2628
  %2630 = load float, float addrspace(1)* %2629, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2631 = add nsw i32 %2519, 100
  %2632 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2631
  store float %2630, float addrspace(3)* %2632, align 4, !tbaa !6
  %2633 = add i32 %2621, %2616
  %2634 = sext i32 %2633 to i64
  %2635 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2634
  %2636 = load float, float addrspace(1)* %2635, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2637 = add nsw i32 %2519, 200
  %2638 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2637
  store float %2636, float addrspace(3)* %2638, align 4, !tbaa !6
  %2639 = add i32 %2627, %2616
  %2640 = sext i32 %2639 to i64
  %2641 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2640
  %2642 = load float, float addrspace(1)* %2641, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2643 = add nsw i32 %2519, 300
  %2644 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2643
  store float %2642, float addrspace(3)* %2644, align 4, !tbaa !6
  %2645 = add nsw i32 %2639, %2614
  %2646 = sext i32 %2645 to i64
  %2647 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2646
  %2648 = load float, float addrspace(1)* %2647, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2649 = add nsw i32 %2519, 400
  %2650 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2649
  store float %2648, float addrspace(3)* %2650, align 4, !tbaa !6
  %2651 = add i32 %2639, %2616
  %2652 = sext i32 %2651 to i64
  %2653 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2652
  %2654 = load float, float addrspace(1)* %2653, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2655 = add nsw i32 %2519, 500
  %2656 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2655
  store float %2654, float addrspace(3)* %2656, align 4, !tbaa !6
  %2657 = add nsw i32 %2651, %2614
  %2658 = sext i32 %2657 to i64
  %2659 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2658
  %2660 = load float, float addrspace(1)* %2659, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %2661

2661:                                             ; preds = %2613, %2549
  %2662 = phi i32 [ %2553, %2549 ], [ %2617, %2613 ]
  %2663 = phi i32 [ %2550, %2549 ], [ %2614, %2613 ]
  %2664 = phi i32 [ %2579, %2549 ], [ %2657, %2613 ]
  %2665 = phi float [ %2582, %2549 ], [ %2660, %2613 ]
  %2666 = add nsw i32 %2519, 600
  %2667 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2666
  store float %2665, float addrspace(3)* %2667, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2668 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1317
  %2669 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2670 = fmul contract float %2669, 0x3FF3AECB00000000
  store float %2670, float addrspace(3)* %2668, align 4, !tbaa !6
  %2671 = add nuw nsw i32 %1317, 1512
  %2672 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2671
  %2673 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2674 = fmul contract float %2673, 0x3FEA033860000000
  store float %2674, float addrspace(3)* %2672, align 4, !tbaa !6
  %2675 = add nuw nsw i32 %1317, 192
  %2676 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2675
  %2677 = load float, float addrspace(3)* %2676, align 4, !tbaa !6
  %2678 = fmul contract float %2677, 0x3FF3AECB00000000
  store float %2678, float addrspace(3)* %2676, align 4, !tbaa !6
  %2679 = add nuw nsw i32 %1317, 1704
  %2680 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2679
  %2681 = load float, float addrspace(3)* %2680, align 4, !tbaa !6
  %2682 = fmul contract float %2681, 0x3FEA033860000000
  store float %2682, float addrspace(3)* %2680, align 4, !tbaa !6
  %2683 = add nuw nsw i32 %1317, 384
  %2684 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2683
  %2685 = load float, float addrspace(3)* %2684, align 4, !tbaa !6
  %2686 = fmul contract float %2685, 0x3FF3AECB00000000
  store float %2686, float addrspace(3)* %2684, align 4, !tbaa !6
  %2687 = add nuw nsw i32 %1317, 1896
  %2688 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2687
  %2689 = load float, float addrspace(3)* %2688, align 4, !tbaa !6
  %2690 = fmul contract float %2689, 0x3FEA033860000000
  store float %2690, float addrspace(3)* %2688, align 4, !tbaa !6
  %2691 = icmp ult i32 %1317, 124
  br i1 %2691, label %2692, label %2701

2692:                                             ; preds = %2661
  %2693 = add nuw nsw i32 %1317, 576
  %2694 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2693
  %2695 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2696 = fmul contract float %2695, 0x3FF3AECB00000000
  store float %2696, float addrspace(3)* %2694, align 4, !tbaa !6
  %2697 = add nuw nsw i32 %1317, 2088
  %2698 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2697
  %2699 = load float, float addrspace(3)* %2698, align 4, !tbaa !6
  %2700 = fmul contract float %2699, 0x3FEA033860000000
  store float %2700, float addrspace(3)* %2698, align 4, !tbaa !6
  br label %2701

2701:                                             ; preds = %2692, %2661
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2702 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2703 = add nuw nsw i32 %1317, 1513
  %2704 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2703
  %2705 = load float, float addrspace(3)* %2704, align 4, !tbaa !6
  %2706 = add nuw nsw i32 %1317, 1
  %2707 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2706
  %2708 = fadd contract float %2702, %2705
  %2709 = fmul contract float %2708, 0x3FDC626AA0000000
  %2710 = load float, float addrspace(3)* %2707, align 4, !tbaa !6
  %2711 = fsub contract float %2710, %2709
  store float %2711, float addrspace(3)* %2707, align 4, !tbaa !6
  %2712 = load float, float addrspace(3)* %2680, align 4, !tbaa !6
  %2713 = add nuw nsw i32 %1317, 1705
  %2714 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2713
  %2715 = load float, float addrspace(3)* %2714, align 4, !tbaa !6
  %2716 = add nuw nsw i32 %1317, 193
  %2717 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2716
  %2718 = fadd contract float %2712, %2715
  %2719 = fmul contract float %2718, 0x3FDC626AA0000000
  %2720 = load float, float addrspace(3)* %2717, align 4, !tbaa !6
  %2721 = fsub contract float %2720, %2719
  store float %2721, float addrspace(3)* %2717, align 4, !tbaa !6
  %2722 = load float, float addrspace(3)* %2688, align 4, !tbaa !6
  %2723 = add nuw nsw i32 %1317, 1897
  %2724 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2723
  %2725 = load float, float addrspace(3)* %2724, align 4, !tbaa !6
  %2726 = add nuw nsw i32 %1317, 385
  %2727 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2726
  %2728 = fadd contract float %2722, %2725
  %2729 = fmul contract float %2728, 0x3FDC626AA0000000
  %2730 = load float, float addrspace(3)* %2727, align 4, !tbaa !6
  %2731 = fsub contract float %2730, %2729
  store float %2731, float addrspace(3)* %2727, align 4, !tbaa !6
  %2732 = icmp ult i32 %1317, 123
  br i1 %2732, label %2733, label %2746

2733:                                             ; preds = %2701
  %2734 = add nuw nsw i32 %1317, 2088
  %2735 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2734
  %2736 = load float, float addrspace(3)* %2735, align 4, !tbaa !6
  %2737 = add nuw nsw i32 %1317, 2089
  %2738 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2737
  %2739 = load float, float addrspace(3)* %2738, align 4, !tbaa !6
  %2740 = add nuw nsw i32 %1317, 577
  %2741 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2740
  %2742 = fadd contract float %2736, %2739
  %2743 = fmul contract float %2742, 0x3FDC626AA0000000
  %2744 = load float, float addrspace(3)* %2741, align 4, !tbaa !6
  %2745 = fsub contract float %2744, %2743
  store float %2745, float addrspace(3)* %2741, align 4, !tbaa !6
  br label %2746

2746:                                             ; preds = %2733, %2701
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2747 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2748 = load float, float addrspace(3)* %2707, align 4, !tbaa !6
  %2749 = fadd contract float %2747, %2748
  %2750 = fmul contract float %2749, 0x3FEC40CEC0000000
  %2751 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2752 = fsub contract float %2751, %2750
  store float %2752, float addrspace(3)* %2672, align 4, !tbaa !6
  %2753 = load float, float addrspace(3)* %2676, align 4, !tbaa !6
  %2754 = load float, float addrspace(3)* %2717, align 4, !tbaa !6
  %2755 = fadd contract float %2753, %2754
  %2756 = fmul contract float %2755, 0x3FEC40CEC0000000
  %2757 = load float, float addrspace(3)* %2680, align 4, !tbaa !6
  %2758 = fsub contract float %2757, %2756
  store float %2758, float addrspace(3)* %2680, align 4, !tbaa !6
  %2759 = load float, float addrspace(3)* %2684, align 4, !tbaa !6
  %2760 = load float, float addrspace(3)* %2727, align 4, !tbaa !6
  %2761 = fadd contract float %2759, %2760
  %2762 = fmul contract float %2761, 0x3FEC40CEC0000000
  %2763 = load float, float addrspace(3)* %2688, align 4, !tbaa !6
  %2764 = fsub contract float %2763, %2762
  store float %2764, float addrspace(3)* %2688, align 4, !tbaa !6
  br i1 %2732, label %2765, label %2778

2765:                                             ; preds = %2746
  %2766 = add nuw nsw i32 %1317, 576
  %2767 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2766
  %2768 = load float, float addrspace(3)* %2767, align 4, !tbaa !6
  %2769 = add nuw nsw i32 %1317, 577
  %2770 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2769
  %2771 = load float, float addrspace(3)* %2770, align 4, !tbaa !6
  %2772 = add nuw nsw i32 %1317, 2088
  %2773 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2772
  %2774 = fadd contract float %2768, %2771
  %2775 = fmul contract float %2774, 0x3FEC40CEC0000000
  %2776 = load float, float addrspace(3)* %2773, align 4, !tbaa !6
  %2777 = fsub contract float %2776, %2775
  store float %2777, float addrspace(3)* %2773, align 4, !tbaa !6
  br label %2778

2778:                                             ; preds = %2765, %2746
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2779 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2780 = load float, float addrspace(3)* %2704, align 4, !tbaa !6
  %2781 = fadd contract float %2779, %2780
  %2782 = fmul contract float %2781, 0x3FAB2035C0000000
  %2783 = load float, float addrspace(3)* %2707, align 4, !tbaa !6
  %2784 = fadd contract float %2783, %2782
  store float %2784, float addrspace(3)* %2707, align 4, !tbaa !6
  %2785 = load float, float addrspace(3)* %2680, align 4, !tbaa !6
  %2786 = load float, float addrspace(3)* %2714, align 4, !tbaa !6
  %2787 = fadd contract float %2785, %2786
  %2788 = fmul contract float %2787, 0x3FAB2035C0000000
  %2789 = load float, float addrspace(3)* %2717, align 4, !tbaa !6
  %2790 = fadd contract float %2789, %2788
  store float %2790, float addrspace(3)* %2717, align 4, !tbaa !6
  %2791 = load float, float addrspace(3)* %2688, align 4, !tbaa !6
  %2792 = load float, float addrspace(3)* %2724, align 4, !tbaa !6
  %2793 = fadd contract float %2791, %2792
  %2794 = fmul contract float %2793, 0x3FAB2035C0000000
  %2795 = load float, float addrspace(3)* %2727, align 4, !tbaa !6
  %2796 = fadd contract float %2795, %2794
  store float %2796, float addrspace(3)* %2727, align 4, !tbaa !6
  br i1 %2732, label %2797, label %2810

2797:                                             ; preds = %2778
  %2798 = add nuw nsw i32 %1317, 2088
  %2799 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2798
  %2800 = load float, float addrspace(3)* %2799, align 4, !tbaa !6
  %2801 = add nuw nsw i32 %1317, 2089
  %2802 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2801
  %2803 = load float, float addrspace(3)* %2802, align 4, !tbaa !6
  %2804 = add nuw nsw i32 %1317, 577
  %2805 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2804
  %2806 = fadd contract float %2800, %2803
  %2807 = fmul contract float %2806, 0x3FAB2035C0000000
  %2808 = load float, float addrspace(3)* %2805, align 4, !tbaa !6
  %2809 = fadd contract float %2808, %2807
  store float %2809, float addrspace(3)* %2805, align 4, !tbaa !6
  br label %2810

2810:                                             ; preds = %2797, %2778
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2811 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2812 = load float, float addrspace(3)* %2707, align 4, !tbaa !6
  %2813 = fadd contract float %2811, %2812
  %2814 = fmul contract float %2813, 0x3FF960CE60000000
  %2815 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2816 = fadd contract float %2815, %2814
  store float %2816, float addrspace(3)* %2672, align 4, !tbaa !6
  %2817 = load float, float addrspace(3)* %2676, align 4, !tbaa !6
  %2818 = load float, float addrspace(3)* %2717, align 4, !tbaa !6
  %2819 = fadd contract float %2817, %2818
  %2820 = fmul contract float %2819, 0x3FF960CE60000000
  %2821 = load float, float addrspace(3)* %2680, align 4, !tbaa !6
  %2822 = fadd contract float %2821, %2820
  store float %2822, float addrspace(3)* %2680, align 4, !tbaa !6
  %2823 = load float, float addrspace(3)* %2684, align 4, !tbaa !6
  %2824 = load float, float addrspace(3)* %2727, align 4, !tbaa !6
  %2825 = fadd contract float %2823, %2824
  %2826 = fmul contract float %2825, 0x3FF960CE60000000
  %2827 = load float, float addrspace(3)* %2688, align 4, !tbaa !6
  %2828 = fadd contract float %2827, %2826
  store float %2828, float addrspace(3)* %2688, align 4, !tbaa !6
  br i1 %2732, label %2829, label %2842

2829:                                             ; preds = %2810
  %2830 = add nuw nsw i32 %1317, 576
  %2831 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2830
  %2832 = load float, float addrspace(3)* %2831, align 4, !tbaa !6
  %2833 = add nuw nsw i32 %1317, 577
  %2834 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2833
  %2835 = load float, float addrspace(3)* %2834, align 4, !tbaa !6
  %2836 = add nuw nsw i32 %1317, 2088
  %2837 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2836
  %2838 = fadd contract float %2832, %2835
  %2839 = fmul contract float %2838, 0x3FF960CE60000000
  %2840 = load float, float addrspace(3)* %2837, align 4, !tbaa !6
  %2841 = fadd contract float %2840, %2839
  store float %2841, float addrspace(3)* %2837, align 4, !tbaa !6
  br label %2842

2842:                                             ; preds = %2829, %2810
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2843 = add i32 %1313, %1317
  %2844 = icmp slt i32 %2843, %2
  %2845 = select i1 %2844, i32 %2, i32 0
  %2846 = add nuw nsw i32 %1317, 4
  %2847 = lshr i32 %2846, 1
  %2848 = and i32 %1317, 1
  %2849 = icmp eq i32 %2848, 0
  %2850 = select i1 %2849, i32 0, i32 1512
  %2851 = add nuw nsw i32 %2850, %2847
  %2852 = icmp sgt i32 %4, 0
  br i1 %2852, label %2853, label %3310

2853:                                             ; preds = %2842
  %2854 = mul nsw i32 %1316, %2
  %2855 = add nsw i32 %2854, %2843
  %2856 = select i1 %2844, i32 %2855, i32 0
  %2857 = add nsw i32 %2519, 700
  %2858 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2857
  %2859 = add nsw i32 %2519, 800
  %2860 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2859
  %2861 = add nsw i32 %2519, 900
  %2862 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2861
  %2863 = add nsw i32 %2519, 1000
  %2864 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2863
  %2865 = add nsw i32 %2519, 1100
  %2866 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2865
  %2867 = add nsw i32 %2519, 1200
  %2868 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2867
  %2869 = add nsw i32 %2519, 1300
  %2870 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2869
  %2871 = add nsw i32 %2519, 1400
  %2872 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2871
  %2873 = add nsw i32 %2503, 700
  %2874 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2873
  %2875 = add nsw i32 %2503, 800
  %2876 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2875
  %2877 = add nsw i32 %2503, 900
  %2878 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2877
  %2879 = add nsw i32 %2503, 1000
  %2880 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2879
  %2881 = add nsw i32 %2503, 1100
  %2882 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2881
  %2883 = add nsw i32 %2503, 1200
  %2884 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2883
  %2885 = add nsw i32 %2503, 1300
  %2886 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2885
  %2887 = add nsw i32 %2503, 1400
  %2888 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2887
  %2889 = add nuw nsw i32 %1317, 700
  %2890 = icmp ult i32 %1317, 32
  %2891 = add nuw nsw i32 %1317, 1468
  %2892 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2891
  %2893 = add nuw nsw i32 %1317, 2980
  %2894 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2893
  %2895 = icmp ult i32 %1317, 31
  %2896 = add nuw nsw i32 %1317, 2981
  %2897 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2896
  %2898 = add nuw nsw i32 %1317, 1469
  %2899 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2898
  %2900 = add nuw nsw i32 %2851, 800
  %2901 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2851
  %2902 = add nuw nsw i32 %2851, 100
  %2903 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2902
  %2904 = add nuw nsw i32 %2851, 200
  %2905 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2904
  %2906 = add nuw nsw i32 %2851, 300
  %2907 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2906
  %2908 = add nuw nsw i32 %2851, 400
  %2909 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2908
  %2910 = add nuw nsw i32 %2851, 500
  %2911 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2910
  %2912 = add nuw nsw i32 %2851, 600
  %2913 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2912
  %2914 = add nuw nsw i32 %2851, 700
  %2915 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2914
  %2916 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2900
  %2917 = add nuw nsw i32 %2851, 900
  %2918 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2917
  %2919 = add nuw nsw i32 %2851, 1000
  %2920 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2919
  %2921 = add nuw nsw i32 %2851, 1100
  %2922 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2921
  %2923 = add nuw nsw i32 %2851, 1200
  %2924 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2923
  %2925 = add nuw nsw i32 %2851, 1300
  %2926 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2925
  %2927 = add nuw nsw i32 %2851, 1400
  %2928 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2927
  %2929 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2889
  %2930 = add nuw nsw i32 %1317, 2212
  %2931 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2930
  %2932 = add nuw nsw i32 %1317, 892
  %2933 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2932
  %2934 = add nuw nsw i32 %1317, 2404
  %2935 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2934
  %2936 = add nuw nsw i32 %1317, 1084
  %2937 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2936
  %2938 = add nuw nsw i32 %1317, 2596
  %2939 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2938
  %2940 = add nuw nsw i32 %1317, 1276
  %2941 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2940
  %2942 = add nuw nsw i32 %1317, 2788
  %2943 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2942
  %2944 = add nuw nsw i32 %1317, 2213
  %2945 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2944
  %2946 = add nuw nsw i32 %1317, 701
  %2947 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2946
  %2948 = add nuw nsw i32 %1317, 2405
  %2949 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2948
  %2950 = add nuw nsw i32 %1317, 893
  %2951 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2950
  %2952 = add nuw nsw i32 %1317, 2597
  %2953 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2952
  %2954 = add nuw nsw i32 %1317, 1085
  %2955 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2954
  %2956 = add nuw nsw i32 %1317, 2789
  %2957 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2956
  %2958 = add nuw nsw i32 %1317, 1277
  %2959 = getelementptr inbounds %"class.dwt_cuda::RDWT97", %"class.dwt_cuda::RDWT97" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi192ELi8EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2958
  br label %2960

2960:                                             ; preds = %3181, %2853
  %2961 = phi i32 [ 0, %2853 ], [ %3308, %3181 ]
  %2962 = phi i32 [ %2664, %2853 ], [ %2993, %3181 ]
  %2963 = phi i32 [ %2502, %2853 ], [ %3031, %3181 ]
  %2964 = phi i32 [ %2856, %2853 ], [ %3307, %3181 ]
  %2965 = add nsw i32 %2962, %2662
  %2966 = sext i32 %2965 to i64
  %2967 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2966
  %2968 = load float, float addrspace(1)* %2967, align 4, !tbaa !6
  store float %2968, float addrspace(3)* %2858, align 4, !tbaa !6
  %2969 = add nsw i32 %2965, %2663
  %2970 = sext i32 %2969 to i64
  %2971 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2970
  %2972 = load float, float addrspace(1)* %2971, align 4, !tbaa !6
  store float %2972, float addrspace(3)* %2860, align 4, !tbaa !6
  %2973 = add nsw i32 %2969, %2662
  %2974 = sext i32 %2973 to i64
  %2975 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2974
  %2976 = load float, float addrspace(1)* %2975, align 4, !tbaa !6
  store float %2976, float addrspace(3)* %2862, align 4, !tbaa !6
  %2977 = add nsw i32 %2973, %2663
  %2978 = sext i32 %2977 to i64
  %2979 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2978
  %2980 = load float, float addrspace(1)* %2979, align 4, !tbaa !6
  store float %2980, float addrspace(3)* %2864, align 4, !tbaa !6
  %2981 = add nsw i32 %2977, %2662
  %2982 = sext i32 %2981 to i64
  %2983 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2982
  %2984 = load float, float addrspace(1)* %2983, align 4, !tbaa !6
  store float %2984, float addrspace(3)* %2866, align 4, !tbaa !6
  %2985 = add nsw i32 %2981, %2663
  %2986 = sext i32 %2985 to i64
  %2987 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2986
  %2988 = load float, float addrspace(1)* %2987, align 4, !tbaa !6
  store float %2988, float addrspace(3)* %2868, align 4, !tbaa !6
  %2989 = add nsw i32 %2985, %2662
  %2990 = sext i32 %2989 to i64
  %2991 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2990
  %2992 = load float, float addrspace(1)* %2991, align 4, !tbaa !6
  store float %2992, float addrspace(3)* %2870, align 4, !tbaa !6
  %2993 = add nsw i32 %2989, %2663
  %2994 = sext i32 %2993 to i64
  %2995 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2994
  %2996 = load float, float addrspace(1)* %2995, align 4, !tbaa !6
  store float %2996, float addrspace(3)* %2872, align 4, !tbaa !6
  br i1 %1318, label %2997, label %3030

2997:                                             ; preds = %2960
  %2998 = add nsw i32 %2963, %2501
  %2999 = sext i32 %2998 to i64
  %3000 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2999
  %3001 = load float, float addrspace(1)* %3000, align 4, !tbaa !6
  store float %3001, float addrspace(3)* %2874, align 4, !tbaa !6
  %3002 = add nsw i32 %2998, %2500
  %3003 = sext i32 %3002 to i64
  %3004 = getelementptr inbounds float, float addrspace(1)* %0, i64 %3003
  %3005 = load float, float addrspace(1)* %3004, align 4, !tbaa !6
  store float %3005, float addrspace(3)* %2876, align 4, !tbaa !6
  %3006 = add nsw i32 %3002, %2501
  %3007 = sext i32 %3006 to i64
  %3008 = getelementptr inbounds float, float addrspace(1)* %0, i64 %3007
  %3009 = load float, float addrspace(1)* %3008, align 4, !tbaa !6
  store float %3009, float addrspace(3)* %2878, align 4, !tbaa !6
  %3010 = add nsw i32 %3006, %2500
  %3011 = sext i32 %3010 to i64
  %3012 = getelementptr inbounds float, float addrspace(1)* %0, i64 %3011
  %3013 = load float, float addrspace(1)* %3012, align 4, !tbaa !6
  store float %3013, float addrspace(3)* %2880, align 4, !tbaa !6
  %3014 = add nsw i32 %3010, %2501
  %3015 = sext i32 %3014 to i64
  %3016 = getelementptr inbounds float, float addrspace(1)* %0, i64 %3015
  %3017 = load float, float addrspace(1)* %3016, align 4, !tbaa !6
  store float %3017, float addrspace(3)* %2882, align 4, !tbaa !6
  %3018 = add nsw i32 %3014, %2500
  %3019 = sext i32 %3018 to i64
  %3020 = getelementptr inbounds float, float addrspace(1)* %0, i64 %3019
  %3021 = load float, float addrspace(1)* %3020, align 4, !tbaa !6
  store float %3021, float addrspace(3)* %2884, align 4, !tbaa !6
  %3022 = add nsw i32 %3018, %2501
  %3023 = sext i32 %3022 to i64
  %3024 = getelementptr inbounds float, float addrspace(1)* %0, i64 %3023
  %3025 = load float, float addrspace(1)* %3024, align 4, !tbaa !6
  store float %3025, float addrspace(3)* %2886, align 4, !tbaa !6
  %3026 = add nsw i32 %3022, %2500
  %3027 = sext i32 %3026 to i64
  %3028 = getelementptr inbounds float, float addrspace(1)* %0, i64 %3027
  %3029 = load float, float addrspace(1)* %3028, align 4, !tbaa !6
  store float %3029, float addrspace(3)* %2888, align 4, !tbaa !6
  br label %3030

3030:                                             ; preds = %2997, %2960
  %3031 = phi i32 [ %3026, %2997 ], [ %2963, %2960 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3032 = load float, float addrspace(3)* %2929, align 4, !tbaa !6
  %3033 = fmul contract float %3032, 0x3FF3AECB00000000
  store float %3033, float addrspace(3)* %2929, align 4, !tbaa !6
  %3034 = load float, float addrspace(3)* %2931, align 4, !tbaa !6
  %3035 = fmul contract float %3034, 0x3FEA033860000000
  store float %3035, float addrspace(3)* %2931, align 4, !tbaa !6
  %3036 = load float, float addrspace(3)* %2933, align 4, !tbaa !6
  %3037 = fmul contract float %3036, 0x3FF3AECB00000000
  store float %3037, float addrspace(3)* %2933, align 4, !tbaa !6
  %3038 = load float, float addrspace(3)* %2935, align 4, !tbaa !6
  %3039 = fmul contract float %3038, 0x3FEA033860000000
  store float %3039, float addrspace(3)* %2935, align 4, !tbaa !6
  %3040 = load float, float addrspace(3)* %2937, align 4, !tbaa !6
  %3041 = fmul contract float %3040, 0x3FF3AECB00000000
  store float %3041, float addrspace(3)* %2937, align 4, !tbaa !6
  %3042 = load float, float addrspace(3)* %2939, align 4, !tbaa !6
  %3043 = fmul contract float %3042, 0x3FEA033860000000
  store float %3043, float addrspace(3)* %2939, align 4, !tbaa !6
  %3044 = load float, float addrspace(3)* %2941, align 4, !tbaa !6
  %3045 = fmul contract float %3044, 0x3FF3AECB00000000
  store float %3045, float addrspace(3)* %2941, align 4, !tbaa !6
  %3046 = load float, float addrspace(3)* %2943, align 4, !tbaa !6
  %3047 = fmul contract float %3046, 0x3FEA033860000000
  store float %3047, float addrspace(3)* %2943, align 4, !tbaa !6
  br i1 %2890, label %3048, label %3053

3048:                                             ; preds = %3030
  %3049 = load float, float addrspace(3)* %2892, align 4, !tbaa !6
  %3050 = fmul contract float %3049, 0x3FF3AECB00000000
  store float %3050, float addrspace(3)* %2892, align 4, !tbaa !6
  %3051 = load float, float addrspace(3)* %2894, align 4, !tbaa !6
  %3052 = fmul contract float %3051, 0x3FEA033860000000
  store float %3052, float addrspace(3)* %2894, align 4, !tbaa !6
  br label %3053

3053:                                             ; preds = %3048, %3030
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3054 = load float, float addrspace(3)* %2931, align 4, !tbaa !6
  %3055 = load float, float addrspace(3)* %2945, align 4, !tbaa !6
  %3056 = fadd contract float %3054, %3055
  %3057 = fmul contract float %3056, 0x3FDC626AA0000000
  %3058 = load float, float addrspace(3)* %2947, align 4, !tbaa !6
  %3059 = fsub contract float %3058, %3057
  store float %3059, float addrspace(3)* %2947, align 4, !tbaa !6
  %3060 = load float, float addrspace(3)* %2935, align 4, !tbaa !6
  %3061 = load float, float addrspace(3)* %2949, align 4, !tbaa !6
  %3062 = fadd contract float %3060, %3061
  %3063 = fmul contract float %3062, 0x3FDC626AA0000000
  %3064 = load float, float addrspace(3)* %2951, align 4, !tbaa !6
  %3065 = fsub contract float %3064, %3063
  store float %3065, float addrspace(3)* %2951, align 4, !tbaa !6
  %3066 = load float, float addrspace(3)* %2939, align 4, !tbaa !6
  %3067 = load float, float addrspace(3)* %2953, align 4, !tbaa !6
  %3068 = fadd contract float %3066, %3067
  %3069 = fmul contract float %3068, 0x3FDC626AA0000000
  %3070 = load float, float addrspace(3)* %2955, align 4, !tbaa !6
  %3071 = fsub contract float %3070, %3069
  store float %3071, float addrspace(3)* %2955, align 4, !tbaa !6
  %3072 = load float, float addrspace(3)* %2943, align 4, !tbaa !6
  %3073 = load float, float addrspace(3)* %2957, align 4, !tbaa !6
  %3074 = fadd contract float %3072, %3073
  %3075 = fmul contract float %3074, 0x3FDC626AA0000000
  %3076 = load float, float addrspace(3)* %2959, align 4, !tbaa !6
  %3077 = fsub contract float %3076, %3075
  store float %3077, float addrspace(3)* %2959, align 4, !tbaa !6
  br i1 %2895, label %3078, label %3085

3078:                                             ; preds = %3053
  %3079 = load float, float addrspace(3)* %2894, align 4, !tbaa !6
  %3080 = load float, float addrspace(3)* %2897, align 4, !tbaa !6
  %3081 = fadd contract float %3079, %3080
  %3082 = fmul contract float %3081, 0x3FDC626AA0000000
  %3083 = load float, float addrspace(3)* %2899, align 4, !tbaa !6
  %3084 = fsub contract float %3083, %3082
  store float %3084, float addrspace(3)* %2899, align 4, !tbaa !6
  br label %3085

3085:                                             ; preds = %3078, %3053
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3086 = load float, float addrspace(3)* %2929, align 4, !tbaa !6
  %3087 = load float, float addrspace(3)* %2947, align 4, !tbaa !6
  %3088 = fadd contract float %3086, %3087
  %3089 = fmul contract float %3088, 0x3FEC40CEC0000000
  %3090 = load float, float addrspace(3)* %2931, align 4, !tbaa !6
  %3091 = fsub contract float %3090, %3089
  store float %3091, float addrspace(3)* %2931, align 4, !tbaa !6
  %3092 = load float, float addrspace(3)* %2933, align 4, !tbaa !6
  %3093 = load float, float addrspace(3)* %2951, align 4, !tbaa !6
  %3094 = fadd contract float %3092, %3093
  %3095 = fmul contract float %3094, 0x3FEC40CEC0000000
  %3096 = load float, float addrspace(3)* %2935, align 4, !tbaa !6
  %3097 = fsub contract float %3096, %3095
  store float %3097, float addrspace(3)* %2935, align 4, !tbaa !6
  %3098 = load float, float addrspace(3)* %2937, align 4, !tbaa !6
  %3099 = load float, float addrspace(3)* %2955, align 4, !tbaa !6
  %3100 = fadd contract float %3098, %3099
  %3101 = fmul contract float %3100, 0x3FEC40CEC0000000
  %3102 = load float, float addrspace(3)* %2939, align 4, !tbaa !6
  %3103 = fsub contract float %3102, %3101
  store float %3103, float addrspace(3)* %2939, align 4, !tbaa !6
  %3104 = load float, float addrspace(3)* %2941, align 4, !tbaa !6
  %3105 = load float, float addrspace(3)* %2959, align 4, !tbaa !6
  %3106 = fadd contract float %3104, %3105
  %3107 = fmul contract float %3106, 0x3FEC40CEC0000000
  %3108 = load float, float addrspace(3)* %2943, align 4, !tbaa !6
  %3109 = fsub contract float %3108, %3107
  store float %3109, float addrspace(3)* %2943, align 4, !tbaa !6
  br i1 %2895, label %3110, label %3117

3110:                                             ; preds = %3085
  %3111 = load float, float addrspace(3)* %2892, align 4, !tbaa !6
  %3112 = load float, float addrspace(3)* %2899, align 4, !tbaa !6
  %3113 = fadd contract float %3111, %3112
  %3114 = fmul contract float %3113, 0x3FEC40CEC0000000
  %3115 = load float, float addrspace(3)* %2894, align 4, !tbaa !6
  %3116 = fsub contract float %3115, %3114
  store float %3116, float addrspace(3)* %2894, align 4, !tbaa !6
  br label %3117

3117:                                             ; preds = %3110, %3085
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3118 = load float, float addrspace(3)* %2931, align 4, !tbaa !6
  %3119 = load float, float addrspace(3)* %2945, align 4, !tbaa !6
  %3120 = fadd contract float %3118, %3119
  %3121 = fmul contract float %3120, 0x3FAB2035C0000000
  %3122 = load float, float addrspace(3)* %2947, align 4, !tbaa !6
  %3123 = fadd contract float %3122, %3121
  store float %3123, float addrspace(3)* %2947, align 4, !tbaa !6
  %3124 = load float, float addrspace(3)* %2935, align 4, !tbaa !6
  %3125 = load float, float addrspace(3)* %2949, align 4, !tbaa !6
  %3126 = fadd contract float %3124, %3125
  %3127 = fmul contract float %3126, 0x3FAB2035C0000000
  %3128 = load float, float addrspace(3)* %2951, align 4, !tbaa !6
  %3129 = fadd contract float %3128, %3127
  store float %3129, float addrspace(3)* %2951, align 4, !tbaa !6
  %3130 = load float, float addrspace(3)* %2939, align 4, !tbaa !6
  %3131 = load float, float addrspace(3)* %2953, align 4, !tbaa !6
  %3132 = fadd contract float %3130, %3131
  %3133 = fmul contract float %3132, 0x3FAB2035C0000000
  %3134 = load float, float addrspace(3)* %2955, align 4, !tbaa !6
  %3135 = fadd contract float %3134, %3133
  store float %3135, float addrspace(3)* %2955, align 4, !tbaa !6
  %3136 = load float, float addrspace(3)* %2943, align 4, !tbaa !6
  %3137 = load float, float addrspace(3)* %2957, align 4, !tbaa !6
  %3138 = fadd contract float %3136, %3137
  %3139 = fmul contract float %3138, 0x3FAB2035C0000000
  %3140 = load float, float addrspace(3)* %2959, align 4, !tbaa !6
  %3141 = fadd contract float %3140, %3139
  store float %3141, float addrspace(3)* %2959, align 4, !tbaa !6
  br i1 %2895, label %3142, label %3149

3142:                                             ; preds = %3117
  %3143 = load float, float addrspace(3)* %2894, align 4, !tbaa !6
  %3144 = load float, float addrspace(3)* %2897, align 4, !tbaa !6
  %3145 = fadd contract float %3143, %3144
  %3146 = fmul contract float %3145, 0x3FAB2035C0000000
  %3147 = load float, float addrspace(3)* %2899, align 4, !tbaa !6
  %3148 = fadd contract float %3147, %3146
  store float %3148, float addrspace(3)* %2899, align 4, !tbaa !6
  br label %3149

3149:                                             ; preds = %3142, %3117
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3150 = load float, float addrspace(3)* %2929, align 4, !tbaa !6
  %3151 = load float, float addrspace(3)* %2947, align 4, !tbaa !6
  %3152 = fadd contract float %3150, %3151
  %3153 = fmul contract float %3152, 0x3FF960CE60000000
  %3154 = load float, float addrspace(3)* %2931, align 4, !tbaa !6
  %3155 = fadd contract float %3154, %3153
  store float %3155, float addrspace(3)* %2931, align 4, !tbaa !6
  %3156 = load float, float addrspace(3)* %2933, align 4, !tbaa !6
  %3157 = load float, float addrspace(3)* %2951, align 4, !tbaa !6
  %3158 = fadd contract float %3156, %3157
  %3159 = fmul contract float %3158, 0x3FF960CE60000000
  %3160 = load float, float addrspace(3)* %2935, align 4, !tbaa !6
  %3161 = fadd contract float %3160, %3159
  store float %3161, float addrspace(3)* %2935, align 4, !tbaa !6
  %3162 = load float, float addrspace(3)* %2937, align 4, !tbaa !6
  %3163 = load float, float addrspace(3)* %2955, align 4, !tbaa !6
  %3164 = fadd contract float %3162, %3163
  %3165 = fmul contract float %3164, 0x3FF960CE60000000
  %3166 = load float, float addrspace(3)* %2939, align 4, !tbaa !6
  %3167 = fadd contract float %3166, %3165
  store float %3167, float addrspace(3)* %2939, align 4, !tbaa !6
  %3168 = load float, float addrspace(3)* %2941, align 4, !tbaa !6
  %3169 = load float, float addrspace(3)* %2959, align 4, !tbaa !6
  %3170 = fadd contract float %3168, %3169
  %3171 = fmul contract float %3170, 0x3FF960CE60000000
  %3172 = load float, float addrspace(3)* %2943, align 4, !tbaa !6
  %3173 = fadd contract float %3172, %3171
  store float %3173, float addrspace(3)* %2943, align 4, !tbaa !6
  br i1 %2895, label %3174, label %3181

3174:                                             ; preds = %3149
  %3175 = load float, float addrspace(3)* %2892, align 4, !tbaa !6
  %3176 = load float, float addrspace(3)* %2899, align 4, !tbaa !6
  %3177 = fadd contract float %3175, %3176
  %3178 = fmul contract float %3177, 0x3FF960CE60000000
  %3179 = load float, float addrspace(3)* %2894, align 4, !tbaa !6
  %3180 = fadd contract float %3179, %3178
  store float %3180, float addrspace(3)* %2894, align 4, !tbaa !6
  br label %3181

3181:                                             ; preds = %3174, %3149
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3182 = load float, float addrspace(3)* %2916, align 4, !tbaa !6
  %3183 = load float, float addrspace(3)* %2918, align 4, !tbaa !6
  %3184 = load float, float addrspace(3)* %2920, align 4, !tbaa !6
  %3185 = load float, float addrspace(3)* %2922, align 4, !tbaa !6
  %3186 = load float, float addrspace(3)* %2924, align 4, !tbaa !6
  %3187 = load float, float addrspace(3)* %2926, align 4, !tbaa !6
  %3188 = load float, float addrspace(3)* %2928, align 4, !tbaa !6
  %3189 = load float, float addrspace(3)* %2901, align 4, !tbaa !6
  %3190 = fmul contract float %3189, 0x3FEA033860000000
  %3191 = load float, float addrspace(3)* %2903, align 4, !tbaa !6
  %3192 = fmul contract float %3191, 0x3FF3AECB00000000
  %3193 = load float, float addrspace(3)* %2905, align 4, !tbaa !6
  %3194 = fmul contract float %3193, 0x3FEA033860000000
  %3195 = load float, float addrspace(3)* %2907, align 4, !tbaa !6
  %3196 = fmul contract float %3195, 0x3FF3AECB00000000
  %3197 = load float, float addrspace(3)* %2909, align 4, !tbaa !6
  %3198 = fmul contract float %3197, 0x3FEA033860000000
  %3199 = load float, float addrspace(3)* %2911, align 4, !tbaa !6
  %3200 = fmul contract float %3199, 0x3FF3AECB00000000
  %3201 = load float, float addrspace(3)* %2913, align 4, !tbaa !6
  %3202 = fmul contract float %3201, 0x3FEA033860000000
  %3203 = load float, float addrspace(3)* %2915, align 4, !tbaa !6
  %3204 = fmul contract float %3203, 0x3FF3AECB00000000
  %3205 = fmul contract float %3182, 0x3FEA033860000000
  %3206 = fmul contract float %3183, 0x3FF3AECB00000000
  %3207 = fmul contract float %3184, 0x3FEA033860000000
  %3208 = fmul contract float %3185, 0x3FF3AECB00000000
  %3209 = fmul contract float %3186, 0x3FEA033860000000
  %3210 = fmul contract float %3187, 0x3FF3AECB00000000
  %3211 = fmul contract float %3188, 0x3FEA033860000000
  store float %3211, float addrspace(3)* %2928, align 4, !tbaa !6
  %3212 = fadd contract float %3190, %3194
  %3213 = fmul contract float %3212, 0x3FDC626AA0000000
  %3214 = fsub contract float %3192, %3213
  %3215 = fadd contract float %3194, %3198
  %3216 = fmul contract float %3215, 0x3FDC626AA0000000
  %3217 = fsub contract float %3196, %3216
  %3218 = fadd contract float %3198, %3202
  %3219 = fmul contract float %3218, 0x3FDC626AA0000000
  %3220 = fsub contract float %3200, %3219
  %3221 = fadd contract float %3205, %3202
  %3222 = fmul contract float %3221, 0x3FDC626AA0000000
  %3223 = fsub contract float %3204, %3222
  %3224 = fadd contract float %3205, %3207
  %3225 = fmul contract float %3224, 0x3FDC626AA0000000
  %3226 = fsub contract float %3206, %3225
  %3227 = fadd contract float %3207, %3209
  %3228 = fmul contract float %3227, 0x3FDC626AA0000000
  %3229 = fsub contract float %3208, %3228
  %3230 = fadd contract float %3209, %3211
  %3231 = fmul contract float %3230, 0x3FDC626AA0000000
  %3232 = fsub contract float %3210, %3231
  %3233 = fadd contract float %3214, %3217
  %3234 = fmul contract float %3233, 0x3FEC40CEC0000000
  %3235 = fsub contract float %3194, %3234
  %3236 = fadd contract float %3217, %3220
  %3237 = fmul contract float %3236, 0x3FEC40CEC0000000
  %3238 = fsub contract float %3198, %3237
  %3239 = fadd contract float %3220, %3223
  %3240 = fmul contract float %3239, 0x3FEC40CEC0000000
  %3241 = fsub contract float %3202, %3240
  %3242 = fadd contract float %3226, %3223
  %3243 = fmul contract float %3242, 0x3FEC40CEC0000000
  %3244 = fsub contract float %3205, %3243
  %3245 = fadd contract float %3226, %3229
  %3246 = fmul contract float %3245, 0x3FEC40CEC0000000
  %3247 = fsub contract float %3207, %3246
  %3248 = fadd contract float %3229, %3232
  %3249 = fmul contract float %3248, 0x3FEC40CEC0000000
  %3250 = fsub contract float %3209, %3249
  %3251 = fadd contract float %3235, %3238
  %3252 = fmul contract float %3251, 0x3FAB2035C0000000
  %3253 = fadd contract float %3217, %3252
  %3254 = fadd contract float %3238, %3241
  %3255 = fmul contract float %3254, 0x3FAB2035C0000000
  %3256 = fadd contract float %3220, %3255
  %3257 = fadd contract float %3241, %3244
  %3258 = fmul contract float %3257, 0x3FAB2035C0000000
  %3259 = fadd contract float %3223, %3258
  store float %3259, float addrspace(3)* %2915, align 4, !tbaa !6
  %3260 = fadd contract float %3247, %3244
  %3261 = fmul contract float %3260, 0x3FAB2035C0000000
  %3262 = fadd contract float %3226, %3261
  store float %3262, float addrspace(3)* %2918, align 4, !tbaa !6
  %3263 = fadd contract float %3247, %3250
  %3264 = fmul contract float %3263, 0x3FAB2035C0000000
  %3265 = fadd contract float %3229, %3264
  store float %3265, float addrspace(3)* %2922, align 4, !tbaa !6
  %3266 = fadd contract float %3211, %3250
  %3267 = fmul contract float %3266, 0x3FAB2035C0000000
  %3268 = fadd contract float %3232, %3267
  store float %3268, float addrspace(3)* %2926, align 4, !tbaa !6
  %3269 = fadd contract float %3253, %3256
  %3270 = fmul contract float %3269, 0x3FF960CE60000000
  %3271 = fadd contract float %3238, %3270
  %3272 = fadd contract float %3256, %3259
  %3273 = fmul contract float %3272, 0x3FF960CE60000000
  %3274 = fadd contract float %3241, %3273
  %3275 = fadd contract float %3259, %3262
  %3276 = fmul contract float %3275, 0x3FF960CE60000000
  %3277 = fadd contract float %3244, %3276
  store float %3277, float addrspace(3)* %2916, align 4, !tbaa !6
  %3278 = fadd contract float %3265, %3262
  %3279 = fmul contract float %3278, 0x3FF960CE60000000
  %3280 = fadd contract float %3247, %3279
  store float %3280, float addrspace(3)* %2920, align 4, !tbaa !6
  %3281 = fadd contract float %3265, %3268
  %3282 = fmul contract float %3281, 0x3FF960CE60000000
  %3283 = fadd contract float %3250, %3282
  store float %3283, float addrspace(3)* %2924, align 4, !tbaa !6
  %3284 = sext i32 %2964 to i64
  %3285 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3284
  store float %3253, float addrspace(1)* %3285, align 4, !tbaa !6
  %3286 = add nsw i32 %2964, %2845
  %3287 = sext i32 %3286 to i64
  %3288 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3287
  store float %3271, float addrspace(1)* %3288, align 4, !tbaa !6
  %3289 = add nsw i32 %3286, %2845
  %3290 = sext i32 %3289 to i64
  %3291 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3290
  store float %3256, float addrspace(1)* %3291, align 4, !tbaa !6
  %3292 = add nsw i32 %3289, %2845
  %3293 = sext i32 %3292 to i64
  %3294 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3293
  store float %3274, float addrspace(1)* %3294, align 4, !tbaa !6
  %3295 = add nsw i32 %3292, %2845
  %3296 = sext i32 %3295 to i64
  %3297 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3296
  store float %3259, float addrspace(1)* %3297, align 4, !tbaa !6
  %3298 = add nsw i32 %3295, %2845
  %3299 = sext i32 %3298 to i64
  %3300 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3299
  store float %3277, float addrspace(1)* %3300, align 4, !tbaa !6
  %3301 = add nsw i32 %3298, %2845
  %3302 = sext i32 %3301 to i64
  %3303 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3302
  store float %3262, float addrspace(1)* %3303, align 4, !tbaa !6
  %3304 = add nsw i32 %3301, %2845
  %3305 = sext i32 %3304 to i64
  %3306 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3305
  store float %3280, float addrspace(1)* %3306, align 4, !tbaa !6
  store float %3182, float addrspace(3)* %2901, align 4, !tbaa !6
  store float %3183, float addrspace(3)* %2903, align 4, !tbaa !6
  store float %3184, float addrspace(3)* %2905, align 4, !tbaa !6
  store float %3185, float addrspace(3)* %2907, align 4, !tbaa !6
  store float %3186, float addrspace(3)* %2909, align 4, !tbaa !6
  store float %3187, float addrspace(3)* %2911, align 4, !tbaa !6
  store float %3188, float addrspace(3)* %2913, align 4, !tbaa !6
  %3307 = add nsw i32 %3304, %2845
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3308 = add nuw nsw i32 %2961, 1
  %3309 = icmp eq i32 %3308, %4
  br i1 %3309, label %3310, label %2960, !llvm.loop !14

3310:                                             ; preds = %1308, %2332, %3181, %699, %1833, %2842
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12rdwt97KernelILi128ELi6EEEvPKfPfiii(float addrspace(1)* readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #2 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = mul i32 %7, 6
  %9 = add i32 %8, 6
  %10 = mul i32 %9, %4
  %11 = add i32 %10, 3
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %1190, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = shl i32 %6, 7
  br label %264

19:                                               ; preds = %13
  %20 = icmp ult i32 %15, 4
  %21 = select i1 %20, i32 128, i32 -7
  %22 = add nsw i32 %21, %15
  %23 = shl i32 %6, 7
  %24 = add i32 %22, %23
  %25 = sub i32 0, %24
  %26 = trunc i32 %22 to i16
  %27 = add nsw i16 %26, 4
  %28 = sdiv i16 %27, 2
  %29 = sext i16 %28 to i32
  %30 = and i32 %22, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 888
  %33 = add nsw i32 %32, %29
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %129

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
  %79 = select i1 %76, i32 %78, i32 %64
  %80 = select i1 %76, i32 %77, i32 %67
  %81 = select i1 %76, i32 %66, i32 0
  %82 = sub i32 %75, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float addrspace(1)* %0, i64 %83
  %85 = load float, float addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = add nsw i32 %33, 204
  %87 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %86
  store float %85, float addrspace(3)* %87, align 4, !tbaa !6
  %88 = add nsw i32 %82, %79
  %89 = icmp eq i32 %88, %72
  %90 = sub i32 0, %79
  %91 = sub i32 0, %80
  %92 = sub i32 %82, %80
  %93 = select i1 %89, i32 %91, i32 %79
  %94 = select i1 %89, i32 %90, i32 %80
  %95 = select i1 %89, i32 %92, i32 %88
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float addrspace(1)* %0, i64 %96
  %98 = load float, float addrspace(1)* %97, align 4, !tbaa !6, !amdgpu.noclobber !10
  %99 = add nsw i32 %33, 136
  %100 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %99
  store float %98, float addrspace(3)* %100, align 4, !tbaa !6
  %101 = add nsw i32 %33, 272
  %102 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %101
  store float %98, float addrspace(3)* %102, align 4, !tbaa !6
  %103 = add nsw i32 %95, %94
  %104 = icmp eq i32 %103, %72
  %105 = sub i32 0, %94
  %106 = sub i32 0, %93
  %107 = select i1 %104, i32 %105, i32 %93
  %108 = select i1 %104, i32 %106, i32 %94
  %109 = select i1 %104, i32 %82, i32 %103
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float addrspace(1)* %0, i64 %110
  %112 = load float, float addrspace(1)* %111, align 4, !tbaa !6, !amdgpu.noclobber !10
  %113 = add nsw i32 %33, 68
  %114 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %113
  store float %112, float addrspace(3)* %114, align 4, !tbaa !6
  %115 = add nsw i32 %33, 340
  %116 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %115
  store float %112, float addrspace(3)* %116, align 4, !tbaa !6
  %117 = add nsw i32 %109, %107
  %118 = icmp eq i32 %117, %72
  %119 = sub i32 0, %107
  %120 = sub i32 0, %108
  %121 = sub i32 %109, %108
  %122 = select i1 %118, i32 %120, i32 %107
  %123 = select i1 %118, i32 %119, i32 %108
  %124 = select i1 %118, i32 %121, i32 %117
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float addrspace(1)* %0, i64 %125
  %127 = load float, float addrspace(1)* %126, align 4, !tbaa !6, !amdgpu.noclobber !10
  %128 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %33
  store float %127, float addrspace(3)* %128, align 4, !tbaa !6
  br label %256

129:                                              ; preds = %19
  %130 = add nsw i32 %14, -3
  %131 = icmp slt i32 %24, %2
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = shl nsw i32 %2, 1
  %134 = sub i32 -2, %24
  %135 = add i32 %134, %133
  br label %138

136:                                              ; preds = %129
  %137 = icmp slt i32 %24, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %136, %132
  %139 = phi i32 [ %135, %132 ], [ %25, %136 ]
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %139, %138 ], [ %24, %136 ]
  %142 = sdiv i32 %141, 2
  %143 = and i32 %141, 1
  %144 = icmp eq i32 %143, 0
  %145 = sdiv i32 %2, 2
  %146 = and i32 %2, 1
  %147 = add nsw i32 %145, %146
  %148 = sdiv i32 %3, 2
  %149 = and i32 %3, 1
  %150 = add nsw i32 %148, %149
  br i1 %144, label %156, label %151

151:                                              ; preds = %140
  %152 = mul nsw i32 %150, %147
  %153 = add nsw i32 %142, %152
  %154 = mul nsw i32 %3, %2
  %155 = sdiv i32 %154, 2
  br label %158

156:                                              ; preds = %140
  %157 = mul nsw i32 %150, %2
  br label %158

158:                                              ; preds = %156, %151
  %159 = phi i32 [ %157, %156 ], [ %155, %151 ]
  %160 = phi i32 [ %142, %156 ], [ %153, %151 ]
  %161 = phi i32 [ %147, %156 ], [ %145, %151 ]
  %162 = sub nsw i32 %161, %159
  %163 = mul nsw i32 %161, %148
  %164 = icmp eq i32 %149, 0
  %165 = select i1 %164, i32 0, i32 %159
  %166 = add i32 %165, %160
  %167 = add i32 %166, %163
  %168 = sdiv i32 %130, 2
  %169 = mul nsw i32 %161, %168
  %170 = add i32 %160, %159
  %171 = add i32 %170, %169
  %172 = icmp eq i32 %171, %167
  %173 = sub i32 0, %162
  %174 = sub i32 0, %159
  %175 = select i1 %172, i32 %173, i32 %159
  %176 = select i1 %172, i32 %174, i32 %162
  %177 = select i1 %172, i32 %161, i32 0
  %178 = sub i32 %171, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float addrspace(1)* %0, i64 %179
  %181 = load float, float addrspace(1)* %180, align 4, !tbaa !6, !amdgpu.noclobber !10
  %182 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %33
  store float %181, float addrspace(3)* %182, align 4, !tbaa !6
  %183 = add nsw i32 %178, %176
  %184 = icmp eq i32 %183, %167
  %185 = sub i32 0, %176
  %186 = sub i32 0, %175
  %187 = sub i32 %178, %175
  %188 = select i1 %184, i32 %185, i32 %175
  %189 = select i1 %184, i32 %186, i32 %176
  %190 = select i1 %184, i32 %187, i32 %183
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float addrspace(1)* %0, i64 %191
  %193 = load float, float addrspace(1)* %192, align 4, !tbaa !6, !amdgpu.noclobber !10
  %194 = add nsw i32 %33, 68
  %195 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %194
  store float %193, float addrspace(3)* %195, align 4, !tbaa !6
  %196 = add nsw i32 %190, %188
  %197 = icmp eq i32 %196, %167
  %198 = sub i32 0, %188
  %199 = sub i32 0, %189
  %200 = select i1 %197, i32 %199, i32 %188
  %201 = select i1 %197, i32 %198, i32 %189
  %202 = select i1 %197, i32 %178, i32 %196
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float addrspace(1)* %0, i64 %203
  %205 = load float, float addrspace(1)* %204, align 4, !tbaa !6, !amdgpu.noclobber !10
  %206 = add nsw i32 %33, 136
  %207 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %206
  store float %205, float addrspace(3)* %207, align 4, !tbaa !6
  %208 = add nsw i32 %202, %201
  %209 = icmp eq i32 %208, %167
  %210 = sub i32 0, %201
  %211 = sub i32 0, %200
  %212 = sub i32 %202, %200
  %213 = select i1 %209, i32 %210, i32 %200
  %214 = select i1 %209, i32 %211, i32 %201
  %215 = select i1 %209, i32 %212, i32 %208
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float addrspace(1)* %0, i64 %216
  %218 = load float, float addrspace(1)* %217, align 4, !tbaa !6, !amdgpu.noclobber !10
  %219 = add nsw i32 %33, 204
  %220 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %219
  store float %218, float addrspace(3)* %220, align 4, !tbaa !6
  %221 = add nsw i32 %215, %213
  %222 = icmp eq i32 %221, %167
  %223 = sub i32 0, %213
  %224 = sub i32 0, %214
  %225 = select i1 %222, i32 %224, i32 %213
  %226 = select i1 %222, i32 %223, i32 %214
  %227 = select i1 %222, i32 %202, i32 %221
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float addrspace(1)* %0, i64 %228
  %230 = load float, float addrspace(1)* %229, align 4, !tbaa !6, !amdgpu.noclobber !10
  %231 = add nsw i32 %33, 272
  %232 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %231
  store float %230, float addrspace(3)* %232, align 4, !tbaa !6
  %233 = add nsw i32 %227, %226
  %234 = icmp eq i32 %233, %167
  %235 = sub i32 0, %226
  %236 = sub i32 0, %225
  %237 = sub i32 %227, %225
  %238 = select i1 %234, i32 %235, i32 %225
  %239 = select i1 %234, i32 %236, i32 %226
  %240 = select i1 %234, i32 %237, i32 %233
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float addrspace(1)* %0, i64 %241
  %243 = load float, float addrspace(1)* %242, align 4, !tbaa !6, !amdgpu.noclobber !10
  %244 = add nsw i32 %33, 340
  %245 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %244
  store float %243, float addrspace(3)* %245, align 4, !tbaa !6
  %246 = add nsw i32 %240, %238
  %247 = icmp eq i32 %246, %167
  %248 = sub i32 0, %238
  %249 = sub i32 0, %239
  %250 = select i1 %247, i32 %249, i32 %238
  %251 = select i1 %247, i32 %248, i32 %239
  %252 = select i1 %247, i32 %227, i32 %246
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float addrspace(1)* %0, i64 %253
  %255 = load float, float addrspace(1)* %254, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %256

256:                                              ; preds = %158, %63
  %257 = phi i32 [ %122, %63 ], [ %250, %158 ]
  %258 = phi i32 [ %123, %63 ], [ %251, %158 ]
  %259 = phi i32 [ %72, %63 ], [ %167, %158 ]
  %260 = phi i32 [ %124, %63 ], [ %252, %158 ]
  %261 = phi float [ %127, %63 ], [ %255, %158 ]
  %262 = add nsw i32 %33, 408
  %263 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %262
  store float %261, float addrspace(3)* %263, align 4, !tbaa !6
  br label %264

264:                                              ; preds = %256, %17
  %265 = phi i32 [ %18, %17 ], [ %23, %256 ]
  %266 = phi i32 [ 0, %17 ], [ %257, %256 ]
  %267 = phi i32 [ 0, %17 ], [ %258, %256 ]
  %268 = phi i32 [ 0, %17 ], [ %259, %256 ]
  %269 = phi i32 [ 0, %17 ], [ %260, %256 ]
  %270 = phi i32 [ 0, %17 ], [ %33, %256 ]
  %271 = shl nuw nsw i32 %15, 1
  %272 = lshr i32 %15, 6
  %273 = mul nsw i32 %272, -127
  %274 = add nsw i32 %273, %271
  %275 = add i32 %265, %274
  %276 = sub i32 0, %275
  %277 = trunc i32 %274 to i16
  %278 = add nsw i16 %277, 4
  %279 = sdiv i16 %278, 2
  %280 = sext i16 %279 to i32
  %281 = and i32 %274, 1
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %282, i32 0, i32 888
  %284 = add nsw i32 %283, %280
  %285 = icmp eq i32 %7, 0
  br i1 %285, label %286, label %380

286:                                              ; preds = %264
  %287 = icmp slt i32 %275, %2
  br i1 %287, label %292, label %288

288:                                              ; preds = %286
  %289 = shl nsw i32 %2, 1
  %290 = sub i32 %289, %275
  %291 = add i32 %290, -2
  br label %294

292:                                              ; preds = %286
  %293 = icmp slt i32 %275, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %292, %288
  %295 = phi i32 [ %291, %288 ], [ %276, %292 ]
  br label %296

296:                                              ; preds = %294, %292
  %297 = phi i32 [ %295, %294 ], [ %275, %292 ]
  %298 = sdiv i32 %297, 2
  %299 = and i32 %297, 1
  %300 = icmp eq i32 %299, 0
  %301 = sdiv i32 %2, 2
  %302 = and i32 %2, 1
  %303 = add nsw i32 %301, %302
  %304 = sdiv i32 %3, 2
  %305 = and i32 %3, 1
  %306 = add nsw i32 %304, %305
  br i1 %300, label %312, label %307

307:                                              ; preds = %296
  %308 = mul nsw i32 %306, %303
  %309 = add nsw i32 %298, %308
  %310 = mul nsw i32 %3, %2
  %311 = sdiv i32 %310, 2
  br label %314

312:                                              ; preds = %296
  %313 = mul nsw i32 %306, %2
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi i32 [ %313, %312 ], [ %311, %307 ]
  %316 = phi i32 [ %298, %312 ], [ %309, %307 ]
  %317 = phi i32 [ %303, %312 ], [ %301, %307 ]
  %318 = sub nsw i32 %317, %315
  %319 = mul nsw i32 %317, %304
  %320 = icmp eq i32 %305, 0
  %321 = select i1 %320, i32 0, i32 %315
  %322 = add i32 %321, %316
  %323 = add i32 %322, %319
  %324 = sdiv i32 %14, 2
  %325 = mul nsw i32 %317, %324
  %326 = add i32 %325, %316
  %327 = icmp eq i32 %326, %323
  %328 = sub i32 0, %315
  %329 = sub i32 0, %318
  %330 = select i1 %327, i32 %328, i32 %318
  %331 = select i1 %327, i32 %329, i32 %315
  %332 = select i1 %327, i32 %317, i32 0
  %333 = sub i32 %326, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float addrspace(1)* %0, i64 %334
  %336 = load float, float addrspace(1)* %335, align 4, !tbaa !6, !amdgpu.noclobber !10
  %337 = add nsw i32 %284, 204
  %338 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %337
  store float %336, float addrspace(3)* %338, align 4, !tbaa !6
  %339 = add nsw i32 %333, %331
  %340 = icmp eq i32 %339, %323
  %341 = sub i32 0, %331
  %342 = sub i32 0, %330
  %343 = sub i32 %333, %330
  %344 = select i1 %340, i32 %341, i32 %330
  %345 = select i1 %340, i32 %342, i32 %331
  %346 = select i1 %340, i32 %343, i32 %339
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float addrspace(1)* %0, i64 %347
  %349 = load float, float addrspace(1)* %348, align 4, !tbaa !6, !amdgpu.noclobber !10
  %350 = add nsw i32 %284, 136
  %351 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %350
  store float %349, float addrspace(3)* %351, align 4, !tbaa !6
  %352 = add nsw i32 %284, 272
  %353 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %352
  store float %349, float addrspace(3)* %353, align 4, !tbaa !6
  %354 = add nsw i32 %346, %344
  %355 = icmp eq i32 %354, %323
  %356 = sub i32 0, %344
  %357 = sub i32 0, %345
  %358 = select i1 %355, i32 %357, i32 %344
  %359 = select i1 %355, i32 %356, i32 %345
  %360 = select i1 %355, i32 %333, i32 %354
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float addrspace(1)* %0, i64 %361
  %363 = load float, float addrspace(1)* %362, align 4, !tbaa !6, !amdgpu.noclobber !10
  %364 = add nsw i32 %284, 68
  %365 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %364
  store float %363, float addrspace(3)* %365, align 4, !tbaa !6
  %366 = add nsw i32 %284, 340
  %367 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %366
  store float %363, float addrspace(3)* %367, align 4, !tbaa !6
  %368 = add nsw i32 %360, %359
  %369 = icmp eq i32 %368, %323
  %370 = sub i32 0, %359
  %371 = sub i32 0, %358
  %372 = sub i32 %360, %358
  %373 = select i1 %369, i32 %370, i32 %358
  %374 = select i1 %369, i32 %371, i32 %359
  %375 = select i1 %369, i32 %372, i32 %368
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float addrspace(1)* %0, i64 %376
  %378 = load float, float addrspace(1)* %377, align 4, !tbaa !6, !amdgpu.noclobber !10
  %379 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %284
  store float %378, float addrspace(3)* %379, align 4, !tbaa !6
  br label %507

380:                                              ; preds = %264
  %381 = add nsw i32 %14, -3
  %382 = icmp slt i32 %275, %2
  br i1 %382, label %387, label %383

383:                                              ; preds = %380
  %384 = shl nsw i32 %2, 1
  %385 = sub i32 %384, %275
  %386 = add i32 %385, -2
  br label %389

387:                                              ; preds = %380
  %388 = icmp slt i32 %275, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %387, %383
  %390 = phi i32 [ %386, %383 ], [ %276, %387 ]
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i32 [ %390, %389 ], [ %275, %387 ]
  %393 = sdiv i32 %392, 2
  %394 = and i32 %392, 1
  %395 = icmp eq i32 %394, 0
  %396 = sdiv i32 %2, 2
  %397 = and i32 %2, 1
  %398 = add nsw i32 %396, %397
  %399 = sdiv i32 %3, 2
  %400 = and i32 %3, 1
  %401 = add nsw i32 %399, %400
  br i1 %395, label %407, label %402

402:                                              ; preds = %391
  %403 = mul nsw i32 %401, %398
  %404 = add nsw i32 %393, %403
  %405 = mul nsw i32 %3, %2
  %406 = sdiv i32 %405, 2
  br label %409

407:                                              ; preds = %391
  %408 = mul nsw i32 %401, %2
  br label %409

409:                                              ; preds = %407, %402
  %410 = phi i32 [ %408, %407 ], [ %406, %402 ]
  %411 = phi i32 [ %393, %407 ], [ %404, %402 ]
  %412 = phi i32 [ %398, %407 ], [ %396, %402 ]
  %413 = sub nsw i32 %412, %410
  %414 = mul nsw i32 %412, %399
  %415 = icmp eq i32 %400, 0
  %416 = select i1 %415, i32 0, i32 %410
  %417 = add i32 %416, %411
  %418 = add i32 %417, %414
  %419 = sdiv i32 %381, 2
  %420 = mul nsw i32 %412, %419
  %421 = add i32 %411, %410
  %422 = add i32 %421, %420
  %423 = icmp eq i32 %422, %418
  %424 = sub i32 0, %413
  %425 = sub i32 0, %410
  %426 = select i1 %423, i32 %425, i32 %413
  %427 = select i1 %423, i32 %424, i32 %410
  %428 = select i1 %423, i32 %412, i32 0
  %429 = sub i32 %422, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float addrspace(1)* %0, i64 %430
  %432 = load float, float addrspace(1)* %431, align 4, !tbaa !6, !amdgpu.noclobber !10
  %433 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %284
  store float %432, float addrspace(3)* %433, align 4, !tbaa !6
  %434 = add nsw i32 %429, %426
  %435 = icmp eq i32 %434, %418
  %436 = sub i32 0, %426
  %437 = sub i32 0, %427
  %438 = sub i32 %429, %427
  %439 = select i1 %435, i32 %437, i32 %426
  %440 = select i1 %435, i32 %436, i32 %427
  %441 = select i1 %435, i32 %438, i32 %434
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds float, float addrspace(1)* %0, i64 %442
  %444 = load float, float addrspace(1)* %443, align 4, !tbaa !6, !amdgpu.noclobber !10
  %445 = add nsw i32 %284, 68
  %446 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %445
  store float %444, float addrspace(3)* %446, align 4, !tbaa !6
  %447 = add nsw i32 %441, %440
  %448 = icmp eq i32 %447, %418
  %449 = sub i32 0, %440
  %450 = sub i32 0, %439
  %451 = select i1 %448, i32 %449, i32 %439
  %452 = select i1 %448, i32 %450, i32 %440
  %453 = select i1 %448, i32 %429, i32 %447
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds float, float addrspace(1)* %0, i64 %454
  %456 = load float, float addrspace(1)* %455, align 4, !tbaa !6, !amdgpu.noclobber !10
  %457 = add nsw i32 %284, 136
  %458 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %457
  store float %456, float addrspace(3)* %458, align 4, !tbaa !6
  %459 = add nsw i32 %453, %451
  %460 = icmp eq i32 %459, %418
  %461 = sub i32 0, %451
  %462 = sub i32 0, %452
  %463 = sub i32 %453, %452
  %464 = select i1 %460, i32 %462, i32 %451
  %465 = select i1 %460, i32 %461, i32 %452
  %466 = select i1 %460, i32 %463, i32 %459
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float addrspace(1)* %0, i64 %467
  %469 = load float, float addrspace(1)* %468, align 4, !tbaa !6, !amdgpu.noclobber !10
  %470 = add nsw i32 %284, 204
  %471 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %470
  store float %469, float addrspace(3)* %471, align 4, !tbaa !6
  %472 = add nsw i32 %466, %465
  %473 = icmp eq i32 %472, %418
  %474 = sub i32 0, %465
  %475 = sub i32 0, %464
  %476 = select i1 %473, i32 %474, i32 %464
  %477 = select i1 %473, i32 %475, i32 %465
  %478 = select i1 %473, i32 %453, i32 %472
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds float, float addrspace(1)* %0, i64 %479
  %481 = load float, float addrspace(1)* %480, align 4, !tbaa !6, !amdgpu.noclobber !10
  %482 = add nsw i32 %284, 272
  %483 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %482
  store float %481, float addrspace(3)* %483, align 4, !tbaa !6
  %484 = add nsw i32 %478, %476
  %485 = icmp eq i32 %484, %418
  %486 = sub i32 0, %476
  %487 = sub i32 0, %477
  %488 = sub i32 %478, %477
  %489 = select i1 %485, i32 %487, i32 %476
  %490 = select i1 %485, i32 %486, i32 %477
  %491 = select i1 %485, i32 %488, i32 %484
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds float, float addrspace(1)* %0, i64 %492
  %494 = load float, float addrspace(1)* %493, align 4, !tbaa !6, !amdgpu.noclobber !10
  %495 = add nsw i32 %284, 340
  %496 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %495
  store float %494, float addrspace(3)* %496, align 4, !tbaa !6
  %497 = add nsw i32 %491, %490
  %498 = icmp eq i32 %497, %418
  %499 = sub i32 0, %490
  %500 = sub i32 0, %489
  %501 = select i1 %498, i32 %499, i32 %489
  %502 = select i1 %498, i32 %500, i32 %490
  %503 = select i1 %498, i32 %478, i32 %497
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds float, float addrspace(1)* %0, i64 %504
  %506 = load float, float addrspace(1)* %505, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %507

507:                                              ; preds = %409, %314
  %508 = phi i32 [ %323, %314 ], [ %418, %409 ]
  %509 = phi i32 [ %373, %314 ], [ %501, %409 ]
  %510 = phi i32 [ %374, %314 ], [ %502, %409 ]
  %511 = phi i32 [ %375, %314 ], [ %503, %409 ]
  %512 = phi float [ %378, %314 ], [ %506, %409 ]
  %513 = add nsw i32 %284, 408
  %514 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %513
  store float %512, float addrspace(3)* %514, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %515 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %15
  %516 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %517 = fmul contract float %516, 0x3FF3AECB00000000
  store float %517, float addrspace(3)* %515, align 4, !tbaa !6
  %518 = add nuw nsw i32 %15, 888
  %519 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %518
  %520 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %521 = fmul contract float %520, 0x3FEA033860000000
  store float %521, float addrspace(3)* %519, align 4, !tbaa !6
  %522 = add nuw nsw i32 %15, 128
  %523 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %522
  %524 = load float, float addrspace(3)* %523, align 4, !tbaa !6
  %525 = fmul contract float %524, 0x3FF3AECB00000000
  store float %525, float addrspace(3)* %523, align 4, !tbaa !6
  %526 = add nuw nsw i32 %15, 1016
  %527 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %526
  %528 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %529 = fmul contract float %528, 0x3FEA033860000000
  store float %529, float addrspace(3)* %527, align 4, !tbaa !6
  %530 = add nuw nsw i32 %15, 256
  %531 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %530
  %532 = load float, float addrspace(3)* %531, align 4, !tbaa !6
  %533 = fmul contract float %532, 0x3FF3AECB00000000
  store float %533, float addrspace(3)* %531, align 4, !tbaa !6
  %534 = add nuw nsw i32 %15, 1144
  %535 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %534
  %536 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %537 = fmul contract float %536, 0x3FEA033860000000
  store float %537, float addrspace(3)* %535, align 4, !tbaa !6
  %538 = icmp ult i32 %15, 92
  br i1 %538, label %539, label %548

539:                                              ; preds = %507
  %540 = add nuw nsw i32 %15, 384
  %541 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %540
  %542 = load float, float addrspace(3)* %541, align 4, !tbaa !6
  %543 = fmul contract float %542, 0x3FF3AECB00000000
  store float %543, float addrspace(3)* %541, align 4, !tbaa !6
  %544 = add nuw nsw i32 %15, 1272
  %545 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %544
  %546 = load float, float addrspace(3)* %545, align 4, !tbaa !6
  %547 = fmul contract float %546, 0x3FEA033860000000
  store float %547, float addrspace(3)* %545, align 4, !tbaa !6
  br label %548

548:                                              ; preds = %539, %507
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %549 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %550 = add nuw nsw i32 %15, 889
  %551 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %550
  %552 = load float, float addrspace(3)* %551, align 4, !tbaa !6
  %553 = add nuw nsw i32 %15, 1
  %554 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %553
  %555 = fadd contract float %549, %552
  %556 = fmul contract float %555, 0x3FDC626AA0000000
  %557 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %558 = fsub contract float %557, %556
  store float %558, float addrspace(3)* %554, align 4, !tbaa !6
  %559 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %560 = add nuw nsw i32 %15, 1017
  %561 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %560
  %562 = load float, float addrspace(3)* %561, align 4, !tbaa !6
  %563 = add nuw nsw i32 %15, 129
  %564 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %563
  %565 = fadd contract float %559, %562
  %566 = fmul contract float %565, 0x3FDC626AA0000000
  %567 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %568 = fsub contract float %567, %566
  store float %568, float addrspace(3)* %564, align 4, !tbaa !6
  %569 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %570 = add nuw nsw i32 %15, 1145
  %571 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %570
  %572 = load float, float addrspace(3)* %571, align 4, !tbaa !6
  %573 = add nuw nsw i32 %15, 257
  %574 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %573
  %575 = fadd contract float %569, %572
  %576 = fmul contract float %575, 0x3FDC626AA0000000
  %577 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %578 = fsub contract float %577, %576
  store float %578, float addrspace(3)* %574, align 4, !tbaa !6
  %579 = icmp ult i32 %15, 91
  br i1 %579, label %580, label %593

580:                                              ; preds = %548
  %581 = add nuw nsw i32 %15, 1272
  %582 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %581
  %583 = load float, float addrspace(3)* %582, align 4, !tbaa !6
  %584 = add nuw nsw i32 %15, 1273
  %585 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %584
  %586 = load float, float addrspace(3)* %585, align 4, !tbaa !6
  %587 = add nuw nsw i32 %15, 385
  %588 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %587
  %589 = fadd contract float %583, %586
  %590 = fmul contract float %589, 0x3FDC626AA0000000
  %591 = load float, float addrspace(3)* %588, align 4, !tbaa !6
  %592 = fsub contract float %591, %590
  store float %592, float addrspace(3)* %588, align 4, !tbaa !6
  br label %593

593:                                              ; preds = %580, %548
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %594 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %595 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %596 = fadd contract float %594, %595
  %597 = fmul contract float %596, 0x3FEC40CEC0000000
  %598 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %599 = fsub contract float %598, %597
  store float %599, float addrspace(3)* %519, align 4, !tbaa !6
  %600 = load float, float addrspace(3)* %523, align 4, !tbaa !6
  %601 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %602 = fadd contract float %600, %601
  %603 = fmul contract float %602, 0x3FEC40CEC0000000
  %604 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %605 = fsub contract float %604, %603
  store float %605, float addrspace(3)* %527, align 4, !tbaa !6
  %606 = load float, float addrspace(3)* %531, align 4, !tbaa !6
  %607 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %608 = fadd contract float %606, %607
  %609 = fmul contract float %608, 0x3FEC40CEC0000000
  %610 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %611 = fsub contract float %610, %609
  store float %611, float addrspace(3)* %535, align 4, !tbaa !6
  br i1 %579, label %612, label %625

612:                                              ; preds = %593
  %613 = add nuw nsw i32 %15, 384
  %614 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %613
  %615 = load float, float addrspace(3)* %614, align 4, !tbaa !6
  %616 = add nuw nsw i32 %15, 385
  %617 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %616
  %618 = load float, float addrspace(3)* %617, align 4, !tbaa !6
  %619 = add nuw nsw i32 %15, 1272
  %620 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %619
  %621 = fadd contract float %615, %618
  %622 = fmul contract float %621, 0x3FEC40CEC0000000
  %623 = load float, float addrspace(3)* %620, align 4, !tbaa !6
  %624 = fsub contract float %623, %622
  store float %624, float addrspace(3)* %620, align 4, !tbaa !6
  br label %625

625:                                              ; preds = %612, %593
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %626 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %627 = load float, float addrspace(3)* %551, align 4, !tbaa !6
  %628 = fadd contract float %626, %627
  %629 = fmul contract float %628, 0x3FAB2035C0000000
  %630 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %631 = fadd contract float %630, %629
  store float %631, float addrspace(3)* %554, align 4, !tbaa !6
  %632 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %633 = load float, float addrspace(3)* %561, align 4, !tbaa !6
  %634 = fadd contract float %632, %633
  %635 = fmul contract float %634, 0x3FAB2035C0000000
  %636 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %637 = fadd contract float %636, %635
  store float %637, float addrspace(3)* %564, align 4, !tbaa !6
  %638 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %639 = load float, float addrspace(3)* %571, align 4, !tbaa !6
  %640 = fadd contract float %638, %639
  %641 = fmul contract float %640, 0x3FAB2035C0000000
  %642 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %643 = fadd contract float %642, %641
  store float %643, float addrspace(3)* %574, align 4, !tbaa !6
  br i1 %579, label %644, label %657

644:                                              ; preds = %625
  %645 = add nuw nsw i32 %15, 1272
  %646 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %645
  %647 = load float, float addrspace(3)* %646, align 4, !tbaa !6
  %648 = add nuw nsw i32 %15, 1273
  %649 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %648
  %650 = load float, float addrspace(3)* %649, align 4, !tbaa !6
  %651 = add nuw nsw i32 %15, 385
  %652 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %651
  %653 = fadd contract float %647, %650
  %654 = fmul contract float %653, 0x3FAB2035C0000000
  %655 = load float, float addrspace(3)* %652, align 4, !tbaa !6
  %656 = fadd contract float %655, %654
  store float %656, float addrspace(3)* %652, align 4, !tbaa !6
  br label %657

657:                                              ; preds = %644, %625
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %658 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %659 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %660 = fadd contract float %658, %659
  %661 = fmul contract float %660, 0x3FF960CE60000000
  %662 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %663 = fadd contract float %662, %661
  store float %663, float addrspace(3)* %519, align 4, !tbaa !6
  %664 = load float, float addrspace(3)* %523, align 4, !tbaa !6
  %665 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %666 = fadd contract float %664, %665
  %667 = fmul contract float %666, 0x3FF960CE60000000
  %668 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %669 = fadd contract float %668, %667
  store float %669, float addrspace(3)* %527, align 4, !tbaa !6
  %670 = load float, float addrspace(3)* %531, align 4, !tbaa !6
  %671 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %672 = fadd contract float %670, %671
  %673 = fmul contract float %672, 0x3FF960CE60000000
  %674 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %675 = fadd contract float %674, %673
  store float %675, float addrspace(3)* %535, align 4, !tbaa !6
  br i1 %579, label %676, label %689

676:                                              ; preds = %657
  %677 = add nuw nsw i32 %15, 384
  %678 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %677
  %679 = load float, float addrspace(3)* %678, align 4, !tbaa !6
  %680 = add nuw nsw i32 %15, 385
  %681 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %680
  %682 = load float, float addrspace(3)* %681, align 4, !tbaa !6
  %683 = add nuw nsw i32 %15, 1272
  %684 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %683
  %685 = fadd contract float %679, %682
  %686 = fmul contract float %685, 0x3FF960CE60000000
  %687 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %688 = fadd contract float %687, %686
  store float %688, float addrspace(3)* %684, align 4, !tbaa !6
  br label %689

689:                                              ; preds = %676, %657
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %690 = add i32 %265, %15
  %691 = icmp slt i32 %690, %2
  br i1 %691, label %692, label %697

692:                                              ; preds = %689
  %693 = mul nsw i32 %3, %2
  %694 = add nsw i32 %690, %693
  %695 = mul nsw i32 %14, %2
  %696 = add nsw i32 %690, %695
  br label %697

697:                                              ; preds = %692, %689
  %698 = phi i32 [ %694, %692 ], [ 0, %689 ]
  %699 = phi i32 [ %2, %692 ], [ 0, %689 ]
  %700 = phi i32 [ %696, %692 ], [ 0, %689 ]
  %701 = add nuw nsw i32 %15, 4
  %702 = lshr i32 %701, 1
  %703 = and i32 %15, 1
  %704 = icmp eq i32 %703, 0
  %705 = select i1 %704, i32 0, i32 888
  %706 = add nuw nsw i32 %705, %702
  %707 = icmp sgt i32 %4, 0
  br i1 %707, label %708, label %3004

708:                                              ; preds = %697
  %709 = add nsw i32 %284, 476
  %710 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %709
  %711 = add nsw i32 %284, 544
  %712 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %711
  %713 = add nsw i32 %284, 612
  %714 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %713
  %715 = add nsw i32 %284, 680
  %716 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %715
  %717 = add nsw i32 %284, 748
  %718 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %717
  %719 = add nsw i32 %284, 816
  %720 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %719
  %721 = add nsw i32 %270, 476
  %722 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %721
  %723 = add nsw i32 %270, 544
  %724 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %723
  %725 = add nsw i32 %270, 612
  %726 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %725
  %727 = add nsw i32 %270, 680
  %728 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %727
  %729 = add nsw i32 %270, 748
  %730 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %729
  %731 = add nsw i32 %270, 816
  %732 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %731
  %733 = add nuw nsw i32 %15, 476
  %734 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %733
  %735 = add nuw nsw i32 %15, 1364
  %736 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %735
  %737 = add nuw nsw i32 %15, 604
  %738 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %737
  %739 = add nuw nsw i32 %15, 1492
  %740 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %739
  %741 = add nuw nsw i32 %15, 732
  %742 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %741
  %743 = add nuw nsw i32 %15, 1620
  %744 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %743
  %745 = icmp ult i32 %15, 24
  %746 = add nuw nsw i32 %15, 860
  %747 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %746
  %748 = add nuw nsw i32 %15, 1748
  %749 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %748
  %750 = add nuw nsw i32 %15, 1365
  %751 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %750
  %752 = add nuw nsw i32 %15, 477
  %753 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %752
  %754 = add nuw nsw i32 %15, 1493
  %755 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %754
  %756 = add nuw nsw i32 %15, 605
  %757 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %756
  %758 = add nuw nsw i32 %15, 1621
  %759 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %758
  %760 = add nuw nsw i32 %15, 733
  %761 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %760
  %762 = icmp ult i32 %15, 23
  %763 = add nuw nsw i32 %15, 1749
  %764 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %763
  %765 = add nuw nsw i32 %15, 861
  %766 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %765
  %767 = add nuw nsw i32 %706, 408
  %768 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %706
  %769 = add nuw nsw i32 %706, 68
  %770 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %769
  %771 = add nuw nsw i32 %706, 136
  %772 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %771
  %773 = add nuw nsw i32 %706, 204
  %774 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %773
  %775 = add nuw nsw i32 %706, 272
  %776 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %775
  %777 = add nuw nsw i32 %706, 340
  %778 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %777
  %779 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %767
  %780 = add nuw nsw i32 %706, 476
  %781 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %780
  %782 = add nuw nsw i32 %706, 544
  %783 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %782
  %784 = add nuw nsw i32 %706, 612
  %785 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %784
  %786 = add nuw nsw i32 %706, 680
  %787 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %786
  %788 = add nuw nsw i32 %706, 748
  %789 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %788
  %790 = add nuw nsw i32 %706, 816
  %791 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %790
  br label %792

792:                                              ; preds = %1186, %708
  %793 = phi i32 [ 0, %708 ], [ %1188, %1186 ]
  %794 = phi i32 [ %511, %708 ], [ %860, %1186 ]
  %795 = phi i32 [ %510, %708 ], [ %859, %1186 ]
  %796 = phi i32 [ %509, %708 ], [ %858, %1186 ]
  %797 = phi i32 [ %269, %708 ], [ %931, %1186 ]
  %798 = phi i32 [ %700, %708 ], [ %1187, %1186 ]
  %799 = phi i32 [ %267, %708 ], [ %930, %1186 ]
  %800 = phi i32 [ %266, %708 ], [ %929, %1186 ]
  %801 = add nsw i32 %796, %794
  %802 = icmp eq i32 %801, %508
  %803 = sub i32 0, %796
  %804 = sub i32 0, %795
  %805 = sub i32 %794, %795
  %806 = select i1 %802, i32 %804, i32 %796
  %807 = select i1 %802, i32 %803, i32 %795
  %808 = select i1 %802, i32 %805, i32 %801
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds float, float addrspace(1)* %0, i64 %809
  %811 = load float, float addrspace(1)* %810, align 4, !tbaa !6
  store float %811, float addrspace(3)* %710, align 4, !tbaa !6
  %812 = add nsw i32 %808, %807
  %813 = icmp eq i32 %812, %508
  %814 = sub i32 0, %807
  %815 = sub i32 0, %806
  %816 = select i1 %813, i32 %814, i32 %806
  %817 = select i1 %813, i32 %815, i32 %807
  %818 = select i1 %813, i32 %794, i32 %812
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds float, float addrspace(1)* %0, i64 %819
  %821 = load float, float addrspace(1)* %820, align 4, !tbaa !6
  store float %821, float addrspace(3)* %712, align 4, !tbaa !6
  %822 = add nsw i32 %818, %816
  %823 = icmp eq i32 %822, %508
  %824 = sub i32 0, %816
  %825 = sub i32 0, %817
  %826 = sub i32 %818, %817
  %827 = select i1 %823, i32 %825, i32 %816
  %828 = select i1 %823, i32 %824, i32 %817
  %829 = select i1 %823, i32 %826, i32 %822
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds float, float addrspace(1)* %0, i64 %830
  %832 = load float, float addrspace(1)* %831, align 4, !tbaa !6
  store float %832, float addrspace(3)* %714, align 4, !tbaa !6
  %833 = add nsw i32 %829, %828
  %834 = icmp eq i32 %833, %508
  %835 = sub i32 0, %828
  %836 = sub i32 0, %827
  %837 = select i1 %834, i32 %835, i32 %827
  %838 = select i1 %834, i32 %836, i32 %828
  %839 = select i1 %834, i32 %818, i32 %833
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds float, float addrspace(1)* %0, i64 %840
  %842 = load float, float addrspace(1)* %841, align 4, !tbaa !6
  store float %842, float addrspace(3)* %716, align 4, !tbaa !6
  %843 = add nsw i32 %839, %837
  %844 = icmp eq i32 %843, %508
  %845 = sub i32 0, %837
  %846 = sub i32 0, %838
  %847 = sub i32 %839, %838
  %848 = select i1 %844, i32 %846, i32 %837
  %849 = select i1 %844, i32 %845, i32 %838
  %850 = select i1 %844, i32 %847, i32 %843
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds float, float addrspace(1)* %0, i64 %851
  %853 = load float, float addrspace(1)* %852, align 4, !tbaa !6
  store float %853, float addrspace(3)* %718, align 4, !tbaa !6
  %854 = add nsw i32 %850, %849
  %855 = icmp eq i32 %854, %508
  %856 = sub i32 0, %849
  %857 = sub i32 0, %848
  %858 = select i1 %855, i32 %856, i32 %848
  %859 = select i1 %855, i32 %857, i32 %849
  %860 = select i1 %855, i32 %839, i32 %854
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds float, float addrspace(1)* %0, i64 %861
  %863 = load float, float addrspace(1)* %862, align 4, !tbaa !6
  store float %863, float addrspace(3)* %720, align 4, !tbaa !6
  br i1 %16, label %864, label %928

864:                                              ; preds = %792
  %865 = add nsw i32 %799, %797
  %866 = icmp eq i32 %865, %268
  %867 = sub i32 0, %799
  %868 = sub i32 0, %800
  %869 = sub i32 %797, %800
  %870 = select i1 %866, i32 %867, i32 %800
  %871 = select i1 %866, i32 %868, i32 %799
  %872 = select i1 %866, i32 %869, i32 %865
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds float, float addrspace(1)* %0, i64 %873
  %875 = load float, float addrspace(1)* %874, align 4, !tbaa !6
  store float %875, float addrspace(3)* %722, align 4, !tbaa !6
  %876 = add nsw i32 %872, %870
  %877 = icmp eq i32 %876, %268
  %878 = sub i32 0, %870
  %879 = sub i32 0, %871
  %880 = select i1 %877, i32 %879, i32 %870
  %881 = select i1 %877, i32 %878, i32 %871
  %882 = select i1 %877, i32 %797, i32 %876
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds float, float addrspace(1)* %0, i64 %883
  %885 = load float, float addrspace(1)* %884, align 4, !tbaa !6
  store float %885, float addrspace(3)* %724, align 4, !tbaa !6
  %886 = add nsw i32 %882, %881
  %887 = icmp eq i32 %886, %268
  %888 = sub i32 0, %881
  %889 = sub i32 0, %880
  %890 = sub i32 %882, %880
  %891 = select i1 %887, i32 %888, i32 %880
  %892 = select i1 %887, i32 %889, i32 %881
  %893 = select i1 %887, i32 %890, i32 %886
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds float, float addrspace(1)* %0, i64 %894
  %896 = load float, float addrspace(1)* %895, align 4, !tbaa !6
  store float %896, float addrspace(3)* %726, align 4, !tbaa !6
  %897 = add nsw i32 %893, %891
  %898 = icmp eq i32 %897, %268
  %899 = sub i32 0, %891
  %900 = sub i32 0, %892
  %901 = select i1 %898, i32 %900, i32 %891
  %902 = select i1 %898, i32 %899, i32 %892
  %903 = select i1 %898, i32 %882, i32 %897
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds float, float addrspace(1)* %0, i64 %904
  %906 = load float, float addrspace(1)* %905, align 4, !tbaa !6
  store float %906, float addrspace(3)* %728, align 4, !tbaa !6
  %907 = add nsw i32 %903, %902
  %908 = icmp eq i32 %907, %268
  %909 = sub i32 0, %902
  %910 = sub i32 0, %901
  %911 = sub i32 %903, %901
  %912 = select i1 %908, i32 %909, i32 %901
  %913 = select i1 %908, i32 %910, i32 %902
  %914 = select i1 %908, i32 %911, i32 %907
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds float, float addrspace(1)* %0, i64 %915
  %917 = load float, float addrspace(1)* %916, align 4, !tbaa !6
  store float %917, float addrspace(3)* %730, align 4, !tbaa !6
  %918 = add nsw i32 %914, %912
  %919 = icmp eq i32 %918, %268
  %920 = sub i32 0, %912
  %921 = sub i32 0, %913
  %922 = select i1 %919, i32 %921, i32 %912
  %923 = select i1 %919, i32 %920, i32 %913
  %924 = select i1 %919, i32 %903, i32 %918
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds float, float addrspace(1)* %0, i64 %925
  %927 = load float, float addrspace(1)* %926, align 4, !tbaa !6
  store float %927, float addrspace(3)* %732, align 4, !tbaa !6
  br label %928

928:                                              ; preds = %864, %792
  %929 = phi i32 [ %922, %864 ], [ %800, %792 ]
  %930 = phi i32 [ %923, %864 ], [ %799, %792 ]
  %931 = phi i32 [ %924, %864 ], [ %797, %792 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %932 = load float, float addrspace(3)* %734, align 4, !tbaa !6
  %933 = fmul contract float %932, 0x3FF3AECB00000000
  store float %933, float addrspace(3)* %734, align 4, !tbaa !6
  %934 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %935 = fmul contract float %934, 0x3FEA033860000000
  store float %935, float addrspace(3)* %736, align 4, !tbaa !6
  %936 = load float, float addrspace(3)* %738, align 4, !tbaa !6
  %937 = fmul contract float %936, 0x3FF3AECB00000000
  store float %937, float addrspace(3)* %738, align 4, !tbaa !6
  %938 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %939 = fmul contract float %938, 0x3FEA033860000000
  store float %939, float addrspace(3)* %740, align 4, !tbaa !6
  %940 = load float, float addrspace(3)* %742, align 4, !tbaa !6
  %941 = fmul contract float %940, 0x3FF3AECB00000000
  store float %941, float addrspace(3)* %742, align 4, !tbaa !6
  %942 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %943 = fmul contract float %942, 0x3FEA033860000000
  store float %943, float addrspace(3)* %744, align 4, !tbaa !6
  br i1 %745, label %944, label %949

944:                                              ; preds = %928
  %945 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %946 = fmul contract float %945, 0x3FF3AECB00000000
  store float %946, float addrspace(3)* %747, align 4, !tbaa !6
  %947 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %948 = fmul contract float %947, 0x3FEA033860000000
  store float %948, float addrspace(3)* %749, align 4, !tbaa !6
  br label %949

949:                                              ; preds = %944, %928
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %950 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %951 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %952 = fadd contract float %950, %951
  %953 = fmul contract float %952, 0x3FDC626AA0000000
  %954 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %955 = fsub contract float %954, %953
  store float %955, float addrspace(3)* %753, align 4, !tbaa !6
  %956 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %957 = load float, float addrspace(3)* %755, align 4, !tbaa !6
  %958 = fadd contract float %956, %957
  %959 = fmul contract float %958, 0x3FDC626AA0000000
  %960 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %961 = fsub contract float %960, %959
  store float %961, float addrspace(3)* %757, align 4, !tbaa !6
  %962 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %963 = load float, float addrspace(3)* %759, align 4, !tbaa !6
  %964 = fadd contract float %962, %963
  %965 = fmul contract float %964, 0x3FDC626AA0000000
  %966 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %967 = fsub contract float %966, %965
  store float %967, float addrspace(3)* %761, align 4, !tbaa !6
  br i1 %762, label %968, label %975

968:                                              ; preds = %949
  %969 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %970 = load float, float addrspace(3)* %764, align 4, !tbaa !6
  %971 = fadd contract float %969, %970
  %972 = fmul contract float %971, 0x3FDC626AA0000000
  %973 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %974 = fsub contract float %973, %972
  store float %974, float addrspace(3)* %766, align 4, !tbaa !6
  br label %975

975:                                              ; preds = %968, %949
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %976 = load float, float addrspace(3)* %734, align 4, !tbaa !6
  %977 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %978 = fadd contract float %976, %977
  %979 = fmul contract float %978, 0x3FEC40CEC0000000
  %980 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %981 = fsub contract float %980, %979
  store float %981, float addrspace(3)* %736, align 4, !tbaa !6
  %982 = load float, float addrspace(3)* %738, align 4, !tbaa !6
  %983 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %984 = fadd contract float %982, %983
  %985 = fmul contract float %984, 0x3FEC40CEC0000000
  %986 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %987 = fsub contract float %986, %985
  store float %987, float addrspace(3)* %740, align 4, !tbaa !6
  %988 = load float, float addrspace(3)* %742, align 4, !tbaa !6
  %989 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %990 = fadd contract float %988, %989
  %991 = fmul contract float %990, 0x3FEC40CEC0000000
  %992 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %993 = fsub contract float %992, %991
  store float %993, float addrspace(3)* %744, align 4, !tbaa !6
  br i1 %762, label %994, label %1001

994:                                              ; preds = %975
  %995 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %996 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %997 = fadd contract float %995, %996
  %998 = fmul contract float %997, 0x3FEC40CEC0000000
  %999 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1000 = fsub contract float %999, %998
  store float %1000, float addrspace(3)* %749, align 4, !tbaa !6
  br label %1001

1001:                                             ; preds = %994, %975
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1002 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %1003 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %1004 = fadd contract float %1002, %1003
  %1005 = fmul contract float %1004, 0x3FAB2035C0000000
  %1006 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1007 = fadd contract float %1006, %1005
  store float %1007, float addrspace(3)* %753, align 4, !tbaa !6
  %1008 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %1009 = load float, float addrspace(3)* %755, align 4, !tbaa !6
  %1010 = fadd contract float %1008, %1009
  %1011 = fmul contract float %1010, 0x3FAB2035C0000000
  %1012 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %1013 = fadd contract float %1012, %1011
  store float %1013, float addrspace(3)* %757, align 4, !tbaa !6
  %1014 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %1015 = load float, float addrspace(3)* %759, align 4, !tbaa !6
  %1016 = fadd contract float %1014, %1015
  %1017 = fmul contract float %1016, 0x3FAB2035C0000000
  %1018 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %1019 = fadd contract float %1018, %1017
  store float %1019, float addrspace(3)* %761, align 4, !tbaa !6
  br i1 %762, label %1020, label %1027

1020:                                             ; preds = %1001
  %1021 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1022 = load float, float addrspace(3)* %764, align 4, !tbaa !6
  %1023 = fadd contract float %1021, %1022
  %1024 = fmul contract float %1023, 0x3FAB2035C0000000
  %1025 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %1026 = fadd contract float %1025, %1024
  store float %1026, float addrspace(3)* %766, align 4, !tbaa !6
  br label %1027

1027:                                             ; preds = %1020, %1001
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1028 = load float, float addrspace(3)* %734, align 4, !tbaa !6
  %1029 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1030 = fadd contract float %1028, %1029
  %1031 = fmul contract float %1030, 0x3FF960CE60000000
  %1032 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %1033 = fadd contract float %1032, %1031
  store float %1033, float addrspace(3)* %736, align 4, !tbaa !6
  %1034 = load float, float addrspace(3)* %738, align 4, !tbaa !6
  %1035 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %1036 = fadd contract float %1034, %1035
  %1037 = fmul contract float %1036, 0x3FF960CE60000000
  %1038 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %1039 = fadd contract float %1038, %1037
  store float %1039, float addrspace(3)* %740, align 4, !tbaa !6
  %1040 = load float, float addrspace(3)* %742, align 4, !tbaa !6
  %1041 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %1042 = fadd contract float %1040, %1041
  %1043 = fmul contract float %1042, 0x3FF960CE60000000
  %1044 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %1045 = fadd contract float %1044, %1043
  store float %1045, float addrspace(3)* %744, align 4, !tbaa !6
  br i1 %762, label %1046, label %1053

1046:                                             ; preds = %1027
  %1047 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %1048 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %1049 = fadd contract float %1047, %1048
  %1050 = fmul contract float %1049, 0x3FF960CE60000000
  %1051 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1052 = fadd contract float %1051, %1050
  store float %1052, float addrspace(3)* %749, align 4, !tbaa !6
  br label %1053

1053:                                             ; preds = %1046, %1027
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1054 = load float, float addrspace(3)* %779, align 4, !tbaa !6
  %1055 = load float, float addrspace(3)* %781, align 4, !tbaa !6
  %1056 = load float, float addrspace(3)* %783, align 4, !tbaa !6
  %1057 = load float, float addrspace(3)* %785, align 4, !tbaa !6
  %1058 = load float, float addrspace(3)* %787, align 4, !tbaa !6
  %1059 = load float, float addrspace(3)* %789, align 4, !tbaa !6
  %1060 = load float, float addrspace(3)* %791, align 4, !tbaa !6
  %1061 = load float, float addrspace(3)* %768, align 4, !tbaa !6
  %1062 = fmul contract float %1061, 0x3FEA033860000000
  store float %1062, float addrspace(3)* %768, align 4, !tbaa !6
  %1063 = load float, float addrspace(3)* %770, align 4, !tbaa !6
  %1064 = fmul contract float %1063, 0x3FF3AECB00000000
  %1065 = load float, float addrspace(3)* %772, align 4, !tbaa !6
  %1066 = fmul contract float %1065, 0x3FEA033860000000
  %1067 = load float, float addrspace(3)* %774, align 4, !tbaa !6
  %1068 = fmul contract float %1067, 0x3FF3AECB00000000
  %1069 = load float, float addrspace(3)* %776, align 4, !tbaa !6
  %1070 = fmul contract float %1069, 0x3FEA033860000000
  %1071 = load float, float addrspace(3)* %778, align 4, !tbaa !6
  %1072 = fmul contract float %1071, 0x3FF3AECB00000000
  %1073 = fmul contract float %1054, 0x3FEA033860000000
  %1074 = fmul contract float %1055, 0x3FF3AECB00000000
  %1075 = fmul contract float %1056, 0x3FEA033860000000
  %1076 = fmul contract float %1057, 0x3FF3AECB00000000
  %1077 = fmul contract float %1058, 0x3FEA033860000000
  %1078 = fmul contract float %1059, 0x3FF3AECB00000000
  %1079 = fmul contract float %1060, 0x3FEA033860000000
  store float %1079, float addrspace(3)* %791, align 4, !tbaa !6
  %1080 = fadd contract float %1062, %1066
  %1081 = fmul contract float %1080, 0x3FDC626AA0000000
  %1082 = fsub contract float %1064, %1081
  %1083 = fadd contract float %1066, %1070
  %1084 = fmul contract float %1083, 0x3FDC626AA0000000
  %1085 = fsub contract float %1068, %1084
  %1086 = fadd contract float %1073, %1070
  %1087 = fmul contract float %1086, 0x3FDC626AA0000000
  %1088 = fsub contract float %1072, %1087
  %1089 = fadd contract float %1073, %1075
  %1090 = fmul contract float %1089, 0x3FDC626AA0000000
  %1091 = fsub contract float %1074, %1090
  %1092 = fadd contract float %1075, %1077
  %1093 = fmul contract float %1092, 0x3FDC626AA0000000
  %1094 = fsub contract float %1076, %1093
  %1095 = fadd contract float %1077, %1079
  %1096 = fmul contract float %1095, 0x3FDC626AA0000000
  %1097 = fsub contract float %1078, %1096
  %1098 = fadd contract float %1082, %1085
  %1099 = fmul contract float %1098, 0x3FEC40CEC0000000
  %1100 = fsub contract float %1066, %1099
  %1101 = fadd contract float %1085, %1088
  %1102 = fmul contract float %1101, 0x3FEC40CEC0000000
  %1103 = fsub contract float %1070, %1102
  %1104 = fadd contract float %1091, %1088
  %1105 = fmul contract float %1104, 0x3FEC40CEC0000000
  %1106 = fsub contract float %1073, %1105
  %1107 = fadd contract float %1091, %1094
  %1108 = fmul contract float %1107, 0x3FEC40CEC0000000
  %1109 = fsub contract float %1075, %1108
  %1110 = fadd contract float %1094, %1097
  %1111 = fmul contract float %1110, 0x3FEC40CEC0000000
  %1112 = fsub contract float %1077, %1111
  %1113 = fadd contract float %1062, %1100
  %1114 = fmul contract float %1113, 0x3FAB2035C0000000
  %1115 = fadd contract float %1082, %1114
  store float %1115, float addrspace(3)* %770, align 4, !tbaa !6
  %1116 = fadd contract float %1100, %1103
  %1117 = fmul contract float %1116, 0x3FAB2035C0000000
  %1118 = fadd contract float %1085, %1117
  store float %1118, float addrspace(3)* %774, align 4, !tbaa !6
  %1119 = fadd contract float %1103, %1106
  %1120 = fmul contract float %1119, 0x3FAB2035C0000000
  %1121 = fadd contract float %1088, %1120
  store float %1121, float addrspace(3)* %778, align 4, !tbaa !6
  %1122 = fadd contract float %1109, %1106
  %1123 = fmul contract float %1122, 0x3FAB2035C0000000
  %1124 = fadd contract float %1091, %1123
  store float %1124, float addrspace(3)* %781, align 4, !tbaa !6
  %1125 = fadd contract float %1109, %1112
  %1126 = fmul contract float %1125, 0x3FAB2035C0000000
  %1127 = fadd contract float %1094, %1126
  store float %1127, float addrspace(3)* %785, align 4, !tbaa !6
  %1128 = fadd contract float %1079, %1112
  %1129 = fmul contract float %1128, 0x3FAB2035C0000000
  %1130 = fadd contract float %1097, %1129
  store float %1130, float addrspace(3)* %789, align 4, !tbaa !6
  %1131 = fadd contract float %1115, %1118
  %1132 = fmul contract float %1131, 0x3FF960CE60000000
  %1133 = fadd contract float %1100, %1132
  store float %1133, float addrspace(3)* %772, align 4, !tbaa !6
  %1134 = fadd contract float %1118, %1121
  %1135 = fmul contract float %1134, 0x3FF960CE60000000
  %1136 = fadd contract float %1103, %1135
  store float %1136, float addrspace(3)* %776, align 4, !tbaa !6
  %1137 = fadd contract float %1121, %1124
  %1138 = fmul contract float %1137, 0x3FF960CE60000000
  %1139 = fadd contract float %1106, %1138
  store float %1139, float addrspace(3)* %779, align 4, !tbaa !6
  %1140 = fadd contract float %1127, %1124
  %1141 = fmul contract float %1140, 0x3FF960CE60000000
  %1142 = fadd contract float %1109, %1141
  store float %1142, float addrspace(3)* %783, align 4, !tbaa !6
  %1143 = fadd contract float %1127, %1130
  %1144 = fmul contract float %1143, 0x3FF960CE60000000
  %1145 = fadd contract float %1112, %1144
  store float %1145, float addrspace(3)* %787, align 4, !tbaa !6
  %1146 = icmp eq i32 %798, %698
  br i1 %1146, label %1151, label %1147

1147:                                             ; preds = %1053
  %1148 = add nsw i32 %798, %699
  %1149 = sext i32 %798 to i64
  %1150 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1149
  store float %1118, float addrspace(1)* %1150, align 4, !tbaa !6
  br label %1151

1151:                                             ; preds = %1147, %1053
  %1152 = phi i32 [ %698, %1053 ], [ %1148, %1147 ]
  %1153 = icmp eq i32 %1152, %698
  br i1 %1153, label %1158, label %1154

1154:                                             ; preds = %1151
  %1155 = add nsw i32 %1152, %699
  %1156 = sext i32 %1152 to i64
  %1157 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1156
  store float %1136, float addrspace(1)* %1157, align 4, !tbaa !6
  br label %1158

1158:                                             ; preds = %1154, %1151
  %1159 = phi i32 [ %698, %1151 ], [ %1155, %1154 ]
  %1160 = icmp eq i32 %1159, %698
  br i1 %1160, label %1165, label %1161

1161:                                             ; preds = %1158
  %1162 = add nsw i32 %1159, %699
  %1163 = sext i32 %1159 to i64
  %1164 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1163
  store float %1121, float addrspace(1)* %1164, align 4, !tbaa !6
  br label %1165

1165:                                             ; preds = %1161, %1158
  %1166 = phi i32 [ %698, %1158 ], [ %1162, %1161 ]
  %1167 = icmp eq i32 %1166, %698
  br i1 %1167, label %1172, label %1168

1168:                                             ; preds = %1165
  %1169 = add nsw i32 %1166, %699
  %1170 = sext i32 %1166 to i64
  %1171 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1170
  store float %1139, float addrspace(1)* %1171, align 4, !tbaa !6
  br label %1172

1172:                                             ; preds = %1168, %1165
  %1173 = phi i32 [ %698, %1165 ], [ %1169, %1168 ]
  %1174 = icmp eq i32 %1173, %698
  br i1 %1174, label %1179, label %1175

1175:                                             ; preds = %1172
  %1176 = add nsw i32 %1173, %699
  %1177 = sext i32 %1173 to i64
  %1178 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1177
  store float %1124, float addrspace(1)* %1178, align 4, !tbaa !6
  br label %1179

1179:                                             ; preds = %1175, %1172
  %1180 = phi i32 [ %698, %1172 ], [ %1176, %1175 ]
  %1181 = icmp eq i32 %1180, %698
  br i1 %1181, label %1186, label %1182

1182:                                             ; preds = %1179
  %1183 = add nsw i32 %1180, %699
  %1184 = sext i32 %1180 to i64
  %1185 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1184
  store float %1142, float addrspace(1)* %1185, align 4, !tbaa !6
  br label %1186

1186:                                             ; preds = %1182, %1179
  %1187 = phi i32 [ %698, %1179 ], [ %1183, %1182 ]
  store float %1054, float addrspace(3)* %768, align 4, !tbaa !6
  store float %1055, float addrspace(3)* %770, align 4, !tbaa !6
  store float %1056, float addrspace(3)* %772, align 4, !tbaa !6
  store float %1057, float addrspace(3)* %774, align 4, !tbaa !6
  store float %1058, float addrspace(3)* %776, align 4, !tbaa !6
  store float %1059, float addrspace(3)* %778, align 4, !tbaa !6
  store float %1060, float addrspace(3)* %779, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1188 = add nuw nsw i32 %793, 1
  %1189 = icmp eq i32 %1188, %4
  br i1 %1189, label %3004, label %792, !llvm.loop !15

1190:                                             ; preds = %5
  %1191 = shl i32 %6, 7
  %1192 = add i32 %1191, 131
  %1193 = icmp slt i32 %1192, %2
  %1194 = mul i32 %8, %4
  %1195 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %1196 = icmp ult i32 %1195, 7
  br i1 %1193, label %2118, label %1197

1197:                                             ; preds = %1190
  br i1 %1196, label %1198, label %1360

1198:                                             ; preds = %1197
  %1199 = icmp ult i32 %1195, 4
  %1200 = select i1 %1199, i32 128, i32 -7
  %1201 = add nsw i32 %1200, %1195
  %1202 = add i32 %1201, %1191
  %1203 = sub i32 0, %1202
  %1204 = trunc i32 %1201 to i16
  %1205 = add nsw i16 %1204, 4
  %1206 = sdiv i16 %1205, 2
  %1207 = sext i16 %1206 to i32
  %1208 = and i32 %1201, 1
  %1209 = icmp eq i32 %1208, 0
  %1210 = select i1 %1209, i32 0, i32 888
  %1211 = add nsw i32 %1210, %1207
  %1212 = icmp eq i32 %7, 0
  br i1 %1212, label %1213, label %1276

1213:                                             ; preds = %1198
  %1214 = icmp slt i32 %1202, %2
  br i1 %1214, label %1219, label %1215

1215:                                             ; preds = %1213
  %1216 = shl nsw i32 %2, 1
  %1217 = sub i32 -2, %1202
  %1218 = add i32 %1217, %1216
  br label %1221

1219:                                             ; preds = %1213
  %1220 = icmp slt i32 %1202, 0
  br i1 %1220, label %1221, label %1223

1221:                                             ; preds = %1219, %1215
  %1222 = phi i32 [ %1218, %1215 ], [ %1203, %1219 ]
  br label %1223

1223:                                             ; preds = %1221, %1219
  %1224 = phi i32 [ %1222, %1221 ], [ %1202, %1219 ]
  %1225 = sdiv i32 %1224, 2
  %1226 = and i32 %1224, 1
  %1227 = icmp eq i32 %1226, 0
  %1228 = sdiv i32 %2, 2
  %1229 = and i32 %2, 1
  %1230 = add nsw i32 %1228, %1229
  %1231 = sdiv i32 %3, 2
  %1232 = and i32 %3, 1
  %1233 = add nsw i32 %1231, %1232
  br i1 %1227, label %1239, label %1234

1234:                                             ; preds = %1223
  %1235 = mul nsw i32 %1233, %1230
  %1236 = add nsw i32 %1225, %1235
  %1237 = mul nsw i32 %3, %2
  %1238 = sdiv i32 %1237, 2
  br label %1241

1239:                                             ; preds = %1223
  %1240 = mul nsw i32 %1233, %2
  br label %1241

1241:                                             ; preds = %1239, %1234
  %1242 = phi i32 [ %1240, %1239 ], [ %1238, %1234 ]
  %1243 = phi i32 [ %1225, %1239 ], [ %1236, %1234 ]
  %1244 = phi i32 [ %1230, %1239 ], [ %1228, %1234 ]
  %1245 = sub nsw i32 %1244, %1242
  %1246 = sdiv i32 %1194, 2
  %1247 = mul nsw i32 %1244, %1246
  %1248 = add i32 %1247, %1243
  %1249 = sub i32 %1248, %1245
  %1250 = sext i32 %1248 to i64
  %1251 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1250
  %1252 = load float, float addrspace(1)* %1251, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1253 = add nsw i32 %1211, 204
  %1254 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1253
  store float %1252, float addrspace(3)* %1254, align 4, !tbaa !6
  %1255 = add i32 %1249, %1244
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1256
  %1258 = load float, float addrspace(1)* %1257, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1259 = add nsw i32 %1211, 136
  %1260 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1259
  store float %1258, float addrspace(3)* %1260, align 4, !tbaa !6
  %1261 = add nsw i32 %1211, 272
  %1262 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1261
  store float %1258, float addrspace(3)* %1262, align 4, !tbaa !6
  %1263 = add i32 %1248, %1244
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1264
  %1266 = load float, float addrspace(1)* %1265, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1267 = add nsw i32 %1211, 68
  %1268 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1267
  store float %1266, float addrspace(3)* %1268, align 4, !tbaa !6
  %1269 = add nsw i32 %1211, 340
  %1270 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1269
  store float %1266, float addrspace(3)* %1270, align 4, !tbaa !6
  %1271 = add i32 %1255, %1244
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1272
  %1274 = load float, float addrspace(1)* %1273, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1275 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1211
  store float %1274, float addrspace(3)* %1275, align 4, !tbaa !6
  br label %1353

1276:                                             ; preds = %1198
  %1277 = add nsw i32 %1194, -3
  %1278 = icmp slt i32 %1202, %2
  br i1 %1278, label %1283, label %1279

1279:                                             ; preds = %1276
  %1280 = shl nsw i32 %2, 1
  %1281 = sub i32 -2, %1202
  %1282 = add i32 %1281, %1280
  br label %1285

1283:                                             ; preds = %1276
  %1284 = icmp slt i32 %1202, 0
  br i1 %1284, label %1285, label %1287

1285:                                             ; preds = %1283, %1279
  %1286 = phi i32 [ %1282, %1279 ], [ %1203, %1283 ]
  br label %1287

1287:                                             ; preds = %1285, %1283
  %1288 = phi i32 [ %1286, %1285 ], [ %1202, %1283 ]
  %1289 = sdiv i32 %1288, 2
  %1290 = and i32 %1288, 1
  %1291 = icmp eq i32 %1290, 0
  %1292 = sdiv i32 %2, 2
  %1293 = and i32 %2, 1
  %1294 = add nsw i32 %1292, %1293
  %1295 = sdiv i32 %3, 2
  %1296 = and i32 %3, 1
  %1297 = add nsw i32 %1295, %1296
  br i1 %1291, label %1303, label %1298

1298:                                             ; preds = %1287
  %1299 = mul nsw i32 %1297, %1294
  %1300 = add nsw i32 %1289, %1299
  %1301 = mul nsw i32 %3, %2
  %1302 = sdiv i32 %1301, 2
  br label %1305

1303:                                             ; preds = %1287
  %1304 = mul nsw i32 %1297, %2
  br label %1305

1305:                                             ; preds = %1303, %1298
  %1306 = phi i32 [ %1304, %1303 ], [ %1302, %1298 ]
  %1307 = phi i32 [ %1289, %1303 ], [ %1300, %1298 ]
  %1308 = phi i32 [ %1294, %1303 ], [ %1292, %1298 ]
  %1309 = sub nsw i32 %1308, %1306
  %1310 = sdiv i32 %1277, 2
  %1311 = mul nsw i32 %1308, %1310
  %1312 = add i32 %1307, %1306
  %1313 = add i32 %1312, %1311
  %1314 = sub i32 %1313, %1306
  %1315 = sext i32 %1313 to i64
  %1316 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1315
  %1317 = load float, float addrspace(1)* %1316, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1318 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1211
  store float %1317, float addrspace(3)* %1318, align 4, !tbaa !6
  %1319 = add i32 %1314, %1308
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1320
  %1322 = load float, float addrspace(1)* %1321, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1323 = add nsw i32 %1211, 68
  %1324 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1323
  store float %1322, float addrspace(3)* %1324, align 4, !tbaa !6
  %1325 = add i32 %1313, %1308
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1326
  %1328 = load float, float addrspace(1)* %1327, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1329 = add nsw i32 %1211, 136
  %1330 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1329
  store float %1328, float addrspace(3)* %1330, align 4, !tbaa !6
  %1331 = add i32 %1319, %1308
  %1332 = sext i32 %1331 to i64
  %1333 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1332
  %1334 = load float, float addrspace(1)* %1333, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1335 = add nsw i32 %1211, 204
  %1336 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1335
  store float %1334, float addrspace(3)* %1336, align 4, !tbaa !6
  %1337 = add nsw i32 %1331, %1306
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1338
  %1340 = load float, float addrspace(1)* %1339, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1341 = add nsw i32 %1211, 272
  %1342 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1341
  store float %1340, float addrspace(3)* %1342, align 4, !tbaa !6
  %1343 = add i32 %1331, %1308
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1344
  %1346 = load float, float addrspace(1)* %1345, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1347 = add nsw i32 %1211, 340
  %1348 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1347
  store float %1346, float addrspace(3)* %1348, align 4, !tbaa !6
  %1349 = add nsw i32 %1343, %1306
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1350
  %1352 = load float, float addrspace(1)* %1351, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1353

1353:                                             ; preds = %1305, %1241
  %1354 = phi i32 [ %1242, %1241 ], [ %1306, %1305 ]
  %1355 = phi i32 [ %1245, %1241 ], [ %1309, %1305 ]
  %1356 = phi i32 [ %1271, %1241 ], [ %1349, %1305 ]
  %1357 = phi float [ %1274, %1241 ], [ %1352, %1305 ]
  %1358 = add nsw i32 %1211, 408
  %1359 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1358
  store float %1357, float addrspace(3)* %1359, align 4, !tbaa !6
  br label %1360

1360:                                             ; preds = %1353, %1197
  %1361 = phi i32 [ %1354, %1353 ], [ 0, %1197 ]
  %1362 = phi i32 [ %1355, %1353 ], [ 0, %1197 ]
  %1363 = phi i32 [ %1356, %1353 ], [ 0, %1197 ]
  %1364 = phi i32 [ %1211, %1353 ], [ 0, %1197 ]
  %1365 = shl nuw nsw i32 %1195, 1
  %1366 = lshr i32 %1195, 6
  %1367 = mul nsw i32 %1366, -127
  %1368 = add nsw i32 %1367, %1365
  %1369 = add i32 %1368, %1191
  %1370 = sub i32 0, %1369
  %1371 = trunc i32 %1368 to i16
  %1372 = add nsw i16 %1371, 4
  %1373 = sdiv i16 %1372, 2
  %1374 = sext i16 %1373 to i32
  %1375 = and i32 %1368, 1
  %1376 = icmp eq i32 %1375, 0
  %1377 = select i1 %1376, i32 0, i32 888
  %1378 = add nsw i32 %1377, %1374
  %1379 = icmp eq i32 %7, 0
  br i1 %1379, label %1380, label %1443

1380:                                             ; preds = %1360
  %1381 = icmp slt i32 %1369, %2
  br i1 %1381, label %1386, label %1382

1382:                                             ; preds = %1380
  %1383 = shl nsw i32 %2, 1
  %1384 = sub i32 -2, %1369
  %1385 = add i32 %1384, %1383
  br label %1388

1386:                                             ; preds = %1380
  %1387 = icmp slt i32 %1369, 0
  br i1 %1387, label %1388, label %1390

1388:                                             ; preds = %1386, %1382
  %1389 = phi i32 [ %1385, %1382 ], [ %1370, %1386 ]
  br label %1390

1390:                                             ; preds = %1388, %1386
  %1391 = phi i32 [ %1389, %1388 ], [ %1369, %1386 ]
  %1392 = sdiv i32 %1391, 2
  %1393 = and i32 %1391, 1
  %1394 = icmp eq i32 %1393, 0
  %1395 = sdiv i32 %2, 2
  %1396 = and i32 %2, 1
  %1397 = add nsw i32 %1395, %1396
  %1398 = sdiv i32 %3, 2
  %1399 = and i32 %3, 1
  %1400 = add nsw i32 %1398, %1399
  br i1 %1394, label %1406, label %1401

1401:                                             ; preds = %1390
  %1402 = mul nsw i32 %1400, %1397
  %1403 = add nsw i32 %1392, %1402
  %1404 = mul nsw i32 %3, %2
  %1405 = sdiv i32 %1404, 2
  br label %1408

1406:                                             ; preds = %1390
  %1407 = mul nsw i32 %1400, %2
  br label %1408

1408:                                             ; preds = %1406, %1401
  %1409 = phi i32 [ %1407, %1406 ], [ %1405, %1401 ]
  %1410 = phi i32 [ %1392, %1406 ], [ %1403, %1401 ]
  %1411 = phi i32 [ %1397, %1406 ], [ %1395, %1401 ]
  %1412 = sub nsw i32 %1411, %1409
  %1413 = sdiv i32 %1194, 2
  %1414 = mul nsw i32 %1411, %1413
  %1415 = add i32 %1414, %1410
  %1416 = sub i32 %1415, %1412
  %1417 = sext i32 %1415 to i64
  %1418 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1417
  %1419 = load float, float addrspace(1)* %1418, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1420 = add nsw i32 %1378, 204
  %1421 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1420
  store float %1419, float addrspace(3)* %1421, align 4, !tbaa !6
  %1422 = add i32 %1416, %1411
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1423
  %1425 = load float, float addrspace(1)* %1424, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1426 = add nsw i32 %1378, 136
  %1427 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1426
  store float %1425, float addrspace(3)* %1427, align 4, !tbaa !6
  %1428 = add nsw i32 %1378, 272
  %1429 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1428
  store float %1425, float addrspace(3)* %1429, align 4, !tbaa !6
  %1430 = add i32 %1415, %1411
  %1431 = sext i32 %1430 to i64
  %1432 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1431
  %1433 = load float, float addrspace(1)* %1432, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1434 = add nsw i32 %1378, 68
  %1435 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1434
  store float %1433, float addrspace(3)* %1435, align 4, !tbaa !6
  %1436 = add nsw i32 %1378, 340
  %1437 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1436
  store float %1433, float addrspace(3)* %1437, align 4, !tbaa !6
  %1438 = add i32 %1422, %1411
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1439
  %1441 = load float, float addrspace(1)* %1440, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1442 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1378
  store float %1441, float addrspace(3)* %1442, align 4, !tbaa !6
  br label %1520

1443:                                             ; preds = %1360
  %1444 = add nsw i32 %1194, -3
  %1445 = icmp slt i32 %1369, %2
  br i1 %1445, label %1450, label %1446

1446:                                             ; preds = %1443
  %1447 = shl nsw i32 %2, 1
  %1448 = sub i32 -2, %1369
  %1449 = add i32 %1448, %1447
  br label %1452

1450:                                             ; preds = %1443
  %1451 = icmp slt i32 %1369, 0
  br i1 %1451, label %1452, label %1454

1452:                                             ; preds = %1450, %1446
  %1453 = phi i32 [ %1449, %1446 ], [ %1370, %1450 ]
  br label %1454

1454:                                             ; preds = %1452, %1450
  %1455 = phi i32 [ %1453, %1452 ], [ %1369, %1450 ]
  %1456 = sdiv i32 %1455, 2
  %1457 = and i32 %1455, 1
  %1458 = icmp eq i32 %1457, 0
  %1459 = sdiv i32 %2, 2
  %1460 = and i32 %2, 1
  %1461 = add nsw i32 %1459, %1460
  %1462 = sdiv i32 %3, 2
  %1463 = and i32 %3, 1
  %1464 = add nsw i32 %1462, %1463
  br i1 %1458, label %1470, label %1465

1465:                                             ; preds = %1454
  %1466 = mul nsw i32 %1464, %1461
  %1467 = add nsw i32 %1456, %1466
  %1468 = mul nsw i32 %3, %2
  %1469 = sdiv i32 %1468, 2
  br label %1472

1470:                                             ; preds = %1454
  %1471 = mul nsw i32 %1464, %2
  br label %1472

1472:                                             ; preds = %1470, %1465
  %1473 = phi i32 [ %1471, %1470 ], [ %1469, %1465 ]
  %1474 = phi i32 [ %1456, %1470 ], [ %1467, %1465 ]
  %1475 = phi i32 [ %1461, %1470 ], [ %1459, %1465 ]
  %1476 = sub nsw i32 %1475, %1473
  %1477 = sdiv i32 %1444, 2
  %1478 = mul nsw i32 %1475, %1477
  %1479 = add i32 %1474, %1473
  %1480 = add i32 %1479, %1478
  %1481 = sub i32 %1480, %1473
  %1482 = sext i32 %1480 to i64
  %1483 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1482
  %1484 = load float, float addrspace(1)* %1483, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1485 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1378
  store float %1484, float addrspace(3)* %1485, align 4, !tbaa !6
  %1486 = add i32 %1481, %1475
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1487
  %1489 = load float, float addrspace(1)* %1488, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1490 = add nsw i32 %1378, 68
  %1491 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1490
  store float %1489, float addrspace(3)* %1491, align 4, !tbaa !6
  %1492 = add i32 %1480, %1475
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1493
  %1495 = load float, float addrspace(1)* %1494, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1496 = add nsw i32 %1378, 136
  %1497 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1496
  store float %1495, float addrspace(3)* %1497, align 4, !tbaa !6
  %1498 = add i32 %1486, %1475
  %1499 = sext i32 %1498 to i64
  %1500 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1499
  %1501 = load float, float addrspace(1)* %1500, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1502 = add nsw i32 %1378, 204
  %1503 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1502
  store float %1501, float addrspace(3)* %1503, align 4, !tbaa !6
  %1504 = add nsw i32 %1498, %1473
  %1505 = sext i32 %1504 to i64
  %1506 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1505
  %1507 = load float, float addrspace(1)* %1506, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1508 = add nsw i32 %1378, 272
  %1509 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1508
  store float %1507, float addrspace(3)* %1509, align 4, !tbaa !6
  %1510 = add i32 %1498, %1475
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1511
  %1513 = load float, float addrspace(1)* %1512, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1514 = add nsw i32 %1378, 340
  %1515 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1514
  store float %1513, float addrspace(3)* %1515, align 4, !tbaa !6
  %1516 = add nsw i32 %1510, %1473
  %1517 = sext i32 %1516 to i64
  %1518 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1517
  %1519 = load float, float addrspace(1)* %1518, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1520

1520:                                             ; preds = %1472, %1408
  %1521 = phi i32 [ %1412, %1408 ], [ %1476, %1472 ]
  %1522 = phi i32 [ %1409, %1408 ], [ %1473, %1472 ]
  %1523 = phi i32 [ %1438, %1408 ], [ %1516, %1472 ]
  %1524 = phi float [ %1441, %1408 ], [ %1519, %1472 ]
  %1525 = add nsw i32 %1378, 408
  %1526 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1525
  store float %1524, float addrspace(3)* %1526, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1527 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1195
  %1528 = load float, float addrspace(3)* %1527, align 4, !tbaa !6
  %1529 = fmul contract float %1528, 0x3FF3AECB00000000
  store float %1529, float addrspace(3)* %1527, align 4, !tbaa !6
  %1530 = add nuw nsw i32 %1195, 888
  %1531 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1530
  %1532 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1533 = fmul contract float %1532, 0x3FEA033860000000
  store float %1533, float addrspace(3)* %1531, align 4, !tbaa !6
  %1534 = add nuw nsw i32 %1195, 128
  %1535 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1534
  %1536 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1537 = fmul contract float %1536, 0x3FF3AECB00000000
  store float %1537, float addrspace(3)* %1535, align 4, !tbaa !6
  %1538 = add nuw nsw i32 %1195, 1016
  %1539 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1538
  %1540 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1541 = fmul contract float %1540, 0x3FEA033860000000
  store float %1541, float addrspace(3)* %1539, align 4, !tbaa !6
  %1542 = add nuw nsw i32 %1195, 256
  %1543 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1542
  %1544 = load float, float addrspace(3)* %1543, align 4, !tbaa !6
  %1545 = fmul contract float %1544, 0x3FF3AECB00000000
  store float %1545, float addrspace(3)* %1543, align 4, !tbaa !6
  %1546 = add nuw nsw i32 %1195, 1144
  %1547 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1546
  %1548 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1549 = fmul contract float %1548, 0x3FEA033860000000
  store float %1549, float addrspace(3)* %1547, align 4, !tbaa !6
  %1550 = icmp ult i32 %1195, 92
  br i1 %1550, label %1551, label %1560

1551:                                             ; preds = %1520
  %1552 = add nuw nsw i32 %1195, 384
  %1553 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1552
  %1554 = load float, float addrspace(3)* %1553, align 4, !tbaa !6
  %1555 = fmul contract float %1554, 0x3FF3AECB00000000
  store float %1555, float addrspace(3)* %1553, align 4, !tbaa !6
  %1556 = add nuw nsw i32 %1195, 1272
  %1557 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1556
  %1558 = load float, float addrspace(3)* %1557, align 4, !tbaa !6
  %1559 = fmul contract float %1558, 0x3FEA033860000000
  store float %1559, float addrspace(3)* %1557, align 4, !tbaa !6
  br label %1560

1560:                                             ; preds = %1551, %1520
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1561 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1562 = add nuw nsw i32 %1195, 889
  %1563 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1562
  %1564 = load float, float addrspace(3)* %1563, align 4, !tbaa !6
  %1565 = add nuw nsw i32 %1195, 1
  %1566 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1565
  %1567 = fadd contract float %1561, %1564
  %1568 = fmul contract float %1567, 0x3FDC626AA0000000
  %1569 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1570 = fsub contract float %1569, %1568
  store float %1570, float addrspace(3)* %1566, align 4, !tbaa !6
  %1571 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1572 = add nuw nsw i32 %1195, 1017
  %1573 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1572
  %1574 = load float, float addrspace(3)* %1573, align 4, !tbaa !6
  %1575 = add nuw nsw i32 %1195, 129
  %1576 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1575
  %1577 = fadd contract float %1571, %1574
  %1578 = fmul contract float %1577, 0x3FDC626AA0000000
  %1579 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1580 = fsub contract float %1579, %1578
  store float %1580, float addrspace(3)* %1576, align 4, !tbaa !6
  %1581 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1582 = add nuw nsw i32 %1195, 1145
  %1583 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1582
  %1584 = load float, float addrspace(3)* %1583, align 4, !tbaa !6
  %1585 = add nuw nsw i32 %1195, 257
  %1586 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1585
  %1587 = fadd contract float %1581, %1584
  %1588 = fmul contract float %1587, 0x3FDC626AA0000000
  %1589 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1590 = fsub contract float %1589, %1588
  store float %1590, float addrspace(3)* %1586, align 4, !tbaa !6
  %1591 = icmp ult i32 %1195, 91
  br i1 %1591, label %1592, label %1605

1592:                                             ; preds = %1560
  %1593 = add nuw nsw i32 %1195, 1272
  %1594 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1593
  %1595 = load float, float addrspace(3)* %1594, align 4, !tbaa !6
  %1596 = add nuw nsw i32 %1195, 1273
  %1597 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1596
  %1598 = load float, float addrspace(3)* %1597, align 4, !tbaa !6
  %1599 = add nuw nsw i32 %1195, 385
  %1600 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1599
  %1601 = fadd contract float %1595, %1598
  %1602 = fmul contract float %1601, 0x3FDC626AA0000000
  %1603 = load float, float addrspace(3)* %1600, align 4, !tbaa !6
  %1604 = fsub contract float %1603, %1602
  store float %1604, float addrspace(3)* %1600, align 4, !tbaa !6
  br label %1605

1605:                                             ; preds = %1592, %1560
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1606 = load float, float addrspace(3)* %1527, align 4, !tbaa !6
  %1607 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1608 = fadd contract float %1606, %1607
  %1609 = fmul contract float %1608, 0x3FEC40CEC0000000
  %1610 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1611 = fsub contract float %1610, %1609
  store float %1611, float addrspace(3)* %1531, align 4, !tbaa !6
  %1612 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1613 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1614 = fadd contract float %1612, %1613
  %1615 = fmul contract float %1614, 0x3FEC40CEC0000000
  %1616 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1617 = fsub contract float %1616, %1615
  store float %1617, float addrspace(3)* %1539, align 4, !tbaa !6
  %1618 = load float, float addrspace(3)* %1543, align 4, !tbaa !6
  %1619 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1620 = fadd contract float %1618, %1619
  %1621 = fmul contract float %1620, 0x3FEC40CEC0000000
  %1622 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1623 = fsub contract float %1622, %1621
  store float %1623, float addrspace(3)* %1547, align 4, !tbaa !6
  br i1 %1591, label %1624, label %1637

1624:                                             ; preds = %1605
  %1625 = add nuw nsw i32 %1195, 384
  %1626 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1625
  %1627 = load float, float addrspace(3)* %1626, align 4, !tbaa !6
  %1628 = add nuw nsw i32 %1195, 385
  %1629 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1628
  %1630 = load float, float addrspace(3)* %1629, align 4, !tbaa !6
  %1631 = add nuw nsw i32 %1195, 1272
  %1632 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1631
  %1633 = fadd contract float %1627, %1630
  %1634 = fmul contract float %1633, 0x3FEC40CEC0000000
  %1635 = load float, float addrspace(3)* %1632, align 4, !tbaa !6
  %1636 = fsub contract float %1635, %1634
  store float %1636, float addrspace(3)* %1632, align 4, !tbaa !6
  br label %1637

1637:                                             ; preds = %1624, %1605
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1638 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1639 = load float, float addrspace(3)* %1563, align 4, !tbaa !6
  %1640 = fadd contract float %1638, %1639
  %1641 = fmul contract float %1640, 0x3FAB2035C0000000
  %1642 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1643 = fadd contract float %1642, %1641
  store float %1643, float addrspace(3)* %1566, align 4, !tbaa !6
  %1644 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1645 = load float, float addrspace(3)* %1573, align 4, !tbaa !6
  %1646 = fadd contract float %1644, %1645
  %1647 = fmul contract float %1646, 0x3FAB2035C0000000
  %1648 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1649 = fadd contract float %1648, %1647
  store float %1649, float addrspace(3)* %1576, align 4, !tbaa !6
  %1650 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1651 = load float, float addrspace(3)* %1583, align 4, !tbaa !6
  %1652 = fadd contract float %1650, %1651
  %1653 = fmul contract float %1652, 0x3FAB2035C0000000
  %1654 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1655 = fadd contract float %1654, %1653
  store float %1655, float addrspace(3)* %1586, align 4, !tbaa !6
  br i1 %1591, label %1656, label %1669

1656:                                             ; preds = %1637
  %1657 = add nuw nsw i32 %1195, 1272
  %1658 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1657
  %1659 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1660 = add nuw nsw i32 %1195, 1273
  %1661 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1660
  %1662 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1663 = add nuw nsw i32 %1195, 385
  %1664 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1663
  %1665 = fadd contract float %1659, %1662
  %1666 = fmul contract float %1665, 0x3FAB2035C0000000
  %1667 = load float, float addrspace(3)* %1664, align 4, !tbaa !6
  %1668 = fadd contract float %1667, %1666
  store float %1668, float addrspace(3)* %1664, align 4, !tbaa !6
  br label %1669

1669:                                             ; preds = %1656, %1637
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1670 = load float, float addrspace(3)* %1527, align 4, !tbaa !6
  %1671 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1672 = fadd contract float %1670, %1671
  %1673 = fmul contract float %1672, 0x3FF960CE60000000
  %1674 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1675 = fadd contract float %1674, %1673
  store float %1675, float addrspace(3)* %1531, align 4, !tbaa !6
  %1676 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1677 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1678 = fadd contract float %1676, %1677
  %1679 = fmul contract float %1678, 0x3FF960CE60000000
  %1680 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1681 = fadd contract float %1680, %1679
  store float %1681, float addrspace(3)* %1539, align 4, !tbaa !6
  %1682 = load float, float addrspace(3)* %1543, align 4, !tbaa !6
  %1683 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1684 = fadd contract float %1682, %1683
  %1685 = fmul contract float %1684, 0x3FF960CE60000000
  %1686 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1687 = fadd contract float %1686, %1685
  store float %1687, float addrspace(3)* %1547, align 4, !tbaa !6
  br i1 %1591, label %1688, label %1701

1688:                                             ; preds = %1669
  %1689 = add nuw nsw i32 %1195, 384
  %1690 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1689
  %1691 = load float, float addrspace(3)* %1690, align 4, !tbaa !6
  %1692 = add nuw nsw i32 %1195, 385
  %1693 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1692
  %1694 = load float, float addrspace(3)* %1693, align 4, !tbaa !6
  %1695 = add nuw nsw i32 %1195, 1272
  %1696 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1695
  %1697 = fadd contract float %1691, %1694
  %1698 = fmul contract float %1697, 0x3FF960CE60000000
  %1699 = load float, float addrspace(3)* %1696, align 4, !tbaa !6
  %1700 = fadd contract float %1699, %1698
  store float %1700, float addrspace(3)* %1696, align 4, !tbaa !6
  br label %1701

1701:                                             ; preds = %1688, %1669
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1702 = add i32 %1191, %1195
  %1703 = icmp slt i32 %1702, %2
  br i1 %1703, label %1704, label %1709

1704:                                             ; preds = %1701
  %1705 = mul nsw i32 %3, %2
  %1706 = add nsw i32 %1705, %1702
  %1707 = mul nsw i32 %1194, %2
  %1708 = add nsw i32 %1707, %1702
  br label %1709

1709:                                             ; preds = %1704, %1701
  %1710 = phi i32 [ %1706, %1704 ], [ 0, %1701 ]
  %1711 = phi i32 [ %2, %1704 ], [ 0, %1701 ]
  %1712 = phi i32 [ %1708, %1704 ], [ 0, %1701 ]
  %1713 = add nuw nsw i32 %1195, 4
  %1714 = lshr i32 %1713, 1
  %1715 = and i32 %1195, 1
  %1716 = icmp eq i32 %1715, 0
  %1717 = select i1 %1716, i32 0, i32 888
  %1718 = add nuw nsw i32 %1717, %1714
  %1719 = icmp sgt i32 %4, 0
  br i1 %1719, label %1720, label %3004

1720:                                             ; preds = %1709
  %1721 = add nsw i32 %1378, 476
  %1722 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1721
  %1723 = add nsw i32 %1378, 544
  %1724 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1723
  %1725 = add nsw i32 %1378, 612
  %1726 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1725
  %1727 = add nsw i32 %1378, 680
  %1728 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1727
  %1729 = add nsw i32 %1378, 748
  %1730 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1729
  %1731 = add nsw i32 %1378, 816
  %1732 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1731
  %1733 = add nsw i32 %1364, 476
  %1734 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1733
  %1735 = add nsw i32 %1364, 544
  %1736 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1735
  %1737 = add nsw i32 %1364, 612
  %1738 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1737
  %1739 = add nsw i32 %1364, 680
  %1740 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1739
  %1741 = add nsw i32 %1364, 748
  %1742 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1741
  %1743 = add nsw i32 %1364, 816
  %1744 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1743
  %1745 = add nuw nsw i32 %1195, 476
  %1746 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1745
  %1747 = add nuw nsw i32 %1195, 1364
  %1748 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1747
  %1749 = add nuw nsw i32 %1195, 604
  %1750 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1749
  %1751 = add nuw nsw i32 %1195, 1492
  %1752 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1751
  %1753 = add nuw nsw i32 %1195, 732
  %1754 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1753
  %1755 = add nuw nsw i32 %1195, 1620
  %1756 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1755
  %1757 = icmp ult i32 %1195, 24
  %1758 = add nuw nsw i32 %1195, 860
  %1759 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1758
  %1760 = add nuw nsw i32 %1195, 1748
  %1761 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1760
  %1762 = add nuw nsw i32 %1195, 1365
  %1763 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1762
  %1764 = add nuw nsw i32 %1195, 477
  %1765 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1764
  %1766 = add nuw nsw i32 %1195, 1493
  %1767 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1766
  %1768 = add nuw nsw i32 %1195, 605
  %1769 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1768
  %1770 = add nuw nsw i32 %1195, 1621
  %1771 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1770
  %1772 = add nuw nsw i32 %1195, 733
  %1773 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1772
  %1774 = icmp ult i32 %1195, 23
  %1775 = add nuw nsw i32 %1195, 1749
  %1776 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1775
  %1777 = add nuw nsw i32 %1195, 861
  %1778 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1777
  %1779 = add nuw nsw i32 %1718, 408
  %1780 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1718
  %1781 = add nuw nsw i32 %1718, 68
  %1782 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1781
  %1783 = add nuw nsw i32 %1718, 136
  %1784 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1783
  %1785 = add nuw nsw i32 %1718, 204
  %1786 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1785
  %1787 = add nuw nsw i32 %1718, 272
  %1788 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1787
  %1789 = add nuw nsw i32 %1718, 340
  %1790 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1789
  %1791 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1779
  %1792 = add nuw nsw i32 %1718, 476
  %1793 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1792
  %1794 = add nuw nsw i32 %1718, 544
  %1795 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1794
  %1796 = add nuw nsw i32 %1718, 612
  %1797 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1796
  %1798 = add nuw nsw i32 %1718, 680
  %1799 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1798
  %1800 = add nuw nsw i32 %1718, 748
  %1801 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1800
  %1802 = add nuw nsw i32 %1718, 816
  %1803 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1802
  br label %1804

1804:                                             ; preds = %2114, %1720
  %1805 = phi i32 [ 0, %1720 ], [ %2116, %2114 ]
  %1806 = phi i32 [ %1523, %1720 ], [ %1829, %2114 ]
  %1807 = phi i32 [ %1363, %1720 ], [ %1859, %2114 ]
  %1808 = phi i32 [ %1712, %1720 ], [ %2115, %2114 ]
  %1809 = add nsw i32 %1806, %1521
  %1810 = sext i32 %1809 to i64
  %1811 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1810
  %1812 = load float, float addrspace(1)* %1811, align 4, !tbaa !6
  store float %1812, float addrspace(3)* %1722, align 4, !tbaa !6
  %1813 = add nsw i32 %1809, %1522
  %1814 = sext i32 %1813 to i64
  %1815 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1814
  %1816 = load float, float addrspace(1)* %1815, align 4, !tbaa !6
  store float %1816, float addrspace(3)* %1724, align 4, !tbaa !6
  %1817 = add nsw i32 %1813, %1521
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1818
  %1820 = load float, float addrspace(1)* %1819, align 4, !tbaa !6
  store float %1820, float addrspace(3)* %1726, align 4, !tbaa !6
  %1821 = add nsw i32 %1817, %1522
  %1822 = sext i32 %1821 to i64
  %1823 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1822
  %1824 = load float, float addrspace(1)* %1823, align 4, !tbaa !6
  store float %1824, float addrspace(3)* %1728, align 4, !tbaa !6
  %1825 = add nsw i32 %1821, %1521
  %1826 = sext i32 %1825 to i64
  %1827 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1826
  %1828 = load float, float addrspace(1)* %1827, align 4, !tbaa !6
  store float %1828, float addrspace(3)* %1730, align 4, !tbaa !6
  %1829 = add nsw i32 %1825, %1522
  %1830 = sext i32 %1829 to i64
  %1831 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1830
  %1832 = load float, float addrspace(1)* %1831, align 4, !tbaa !6
  store float %1832, float addrspace(3)* %1732, align 4, !tbaa !6
  br i1 %1196, label %1833, label %1858

1833:                                             ; preds = %1804
  %1834 = add nsw i32 %1807, %1362
  %1835 = sext i32 %1834 to i64
  %1836 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1835
  %1837 = load float, float addrspace(1)* %1836, align 4, !tbaa !6
  store float %1837, float addrspace(3)* %1734, align 4, !tbaa !6
  %1838 = add nsw i32 %1834, %1361
  %1839 = sext i32 %1838 to i64
  %1840 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1839
  %1841 = load float, float addrspace(1)* %1840, align 4, !tbaa !6
  store float %1841, float addrspace(3)* %1736, align 4, !tbaa !6
  %1842 = add nsw i32 %1838, %1362
  %1843 = sext i32 %1842 to i64
  %1844 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1843
  %1845 = load float, float addrspace(1)* %1844, align 4, !tbaa !6
  store float %1845, float addrspace(3)* %1738, align 4, !tbaa !6
  %1846 = add nsw i32 %1842, %1361
  %1847 = sext i32 %1846 to i64
  %1848 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1847
  %1849 = load float, float addrspace(1)* %1848, align 4, !tbaa !6
  store float %1849, float addrspace(3)* %1740, align 4, !tbaa !6
  %1850 = add nsw i32 %1846, %1362
  %1851 = sext i32 %1850 to i64
  %1852 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1851
  %1853 = load float, float addrspace(1)* %1852, align 4, !tbaa !6
  store float %1853, float addrspace(3)* %1742, align 4, !tbaa !6
  %1854 = add nsw i32 %1850, %1361
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1855
  %1857 = load float, float addrspace(1)* %1856, align 4, !tbaa !6
  store float %1857, float addrspace(3)* %1744, align 4, !tbaa !6
  br label %1858

1858:                                             ; preds = %1833, %1804
  %1859 = phi i32 [ %1854, %1833 ], [ %1807, %1804 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1860 = load float, float addrspace(3)* %1746, align 4, !tbaa !6
  %1861 = fmul contract float %1860, 0x3FF3AECB00000000
  store float %1861, float addrspace(3)* %1746, align 4, !tbaa !6
  %1862 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1863 = fmul contract float %1862, 0x3FEA033860000000
  store float %1863, float addrspace(3)* %1748, align 4, !tbaa !6
  %1864 = load float, float addrspace(3)* %1750, align 4, !tbaa !6
  %1865 = fmul contract float %1864, 0x3FF3AECB00000000
  store float %1865, float addrspace(3)* %1750, align 4, !tbaa !6
  %1866 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1867 = fmul contract float %1866, 0x3FEA033860000000
  store float %1867, float addrspace(3)* %1752, align 4, !tbaa !6
  %1868 = load float, float addrspace(3)* %1754, align 4, !tbaa !6
  %1869 = fmul contract float %1868, 0x3FF3AECB00000000
  store float %1869, float addrspace(3)* %1754, align 4, !tbaa !6
  %1870 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1871 = fmul contract float %1870, 0x3FEA033860000000
  store float %1871, float addrspace(3)* %1756, align 4, !tbaa !6
  br i1 %1757, label %1872, label %1877

1872:                                             ; preds = %1858
  %1873 = load float, float addrspace(3)* %1759, align 4, !tbaa !6
  %1874 = fmul contract float %1873, 0x3FF3AECB00000000
  store float %1874, float addrspace(3)* %1759, align 4, !tbaa !6
  %1875 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1876 = fmul contract float %1875, 0x3FEA033860000000
  store float %1876, float addrspace(3)* %1761, align 4, !tbaa !6
  br label %1877

1877:                                             ; preds = %1872, %1858
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1878 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1879 = load float, float addrspace(3)* %1763, align 4, !tbaa !6
  %1880 = fadd contract float %1878, %1879
  %1881 = fmul contract float %1880, 0x3FDC626AA0000000
  %1882 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1883 = fsub contract float %1882, %1881
  store float %1883, float addrspace(3)* %1765, align 4, !tbaa !6
  %1884 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1885 = load float, float addrspace(3)* %1767, align 4, !tbaa !6
  %1886 = fadd contract float %1884, %1885
  %1887 = fmul contract float %1886, 0x3FDC626AA0000000
  %1888 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1889 = fsub contract float %1888, %1887
  store float %1889, float addrspace(3)* %1769, align 4, !tbaa !6
  %1890 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1891 = load float, float addrspace(3)* %1771, align 4, !tbaa !6
  %1892 = fadd contract float %1890, %1891
  %1893 = fmul contract float %1892, 0x3FDC626AA0000000
  %1894 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1895 = fsub contract float %1894, %1893
  store float %1895, float addrspace(3)* %1773, align 4, !tbaa !6
  br i1 %1774, label %1896, label %1903

1896:                                             ; preds = %1877
  %1897 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1898 = load float, float addrspace(3)* %1776, align 4, !tbaa !6
  %1899 = fadd contract float %1897, %1898
  %1900 = fmul contract float %1899, 0x3FDC626AA0000000
  %1901 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1902 = fsub contract float %1901, %1900
  store float %1902, float addrspace(3)* %1778, align 4, !tbaa !6
  br label %1903

1903:                                             ; preds = %1896, %1877
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1904 = load float, float addrspace(3)* %1746, align 4, !tbaa !6
  %1905 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1906 = fadd contract float %1904, %1905
  %1907 = fmul contract float %1906, 0x3FEC40CEC0000000
  %1908 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1909 = fsub contract float %1908, %1907
  store float %1909, float addrspace(3)* %1748, align 4, !tbaa !6
  %1910 = load float, float addrspace(3)* %1750, align 4, !tbaa !6
  %1911 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1912 = fadd contract float %1910, %1911
  %1913 = fmul contract float %1912, 0x3FEC40CEC0000000
  %1914 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1915 = fsub contract float %1914, %1913
  store float %1915, float addrspace(3)* %1752, align 4, !tbaa !6
  %1916 = load float, float addrspace(3)* %1754, align 4, !tbaa !6
  %1917 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1918 = fadd contract float %1916, %1917
  %1919 = fmul contract float %1918, 0x3FEC40CEC0000000
  %1920 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1921 = fsub contract float %1920, %1919
  store float %1921, float addrspace(3)* %1756, align 4, !tbaa !6
  br i1 %1774, label %1922, label %1929

1922:                                             ; preds = %1903
  %1923 = load float, float addrspace(3)* %1759, align 4, !tbaa !6
  %1924 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1925 = fadd contract float %1923, %1924
  %1926 = fmul contract float %1925, 0x3FEC40CEC0000000
  %1927 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1928 = fsub contract float %1927, %1926
  store float %1928, float addrspace(3)* %1761, align 4, !tbaa !6
  br label %1929

1929:                                             ; preds = %1922, %1903
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1930 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1931 = load float, float addrspace(3)* %1763, align 4, !tbaa !6
  %1932 = fadd contract float %1930, %1931
  %1933 = fmul contract float %1932, 0x3FAB2035C0000000
  %1934 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1935 = fadd contract float %1934, %1933
  store float %1935, float addrspace(3)* %1765, align 4, !tbaa !6
  %1936 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1937 = load float, float addrspace(3)* %1767, align 4, !tbaa !6
  %1938 = fadd contract float %1936, %1937
  %1939 = fmul contract float %1938, 0x3FAB2035C0000000
  %1940 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1941 = fadd contract float %1940, %1939
  store float %1941, float addrspace(3)* %1769, align 4, !tbaa !6
  %1942 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1943 = load float, float addrspace(3)* %1771, align 4, !tbaa !6
  %1944 = fadd contract float %1942, %1943
  %1945 = fmul contract float %1944, 0x3FAB2035C0000000
  %1946 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1947 = fadd contract float %1946, %1945
  store float %1947, float addrspace(3)* %1773, align 4, !tbaa !6
  br i1 %1774, label %1948, label %1955

1948:                                             ; preds = %1929
  %1949 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1950 = load float, float addrspace(3)* %1776, align 4, !tbaa !6
  %1951 = fadd contract float %1949, %1950
  %1952 = fmul contract float %1951, 0x3FAB2035C0000000
  %1953 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1954 = fadd contract float %1953, %1952
  store float %1954, float addrspace(3)* %1778, align 4, !tbaa !6
  br label %1955

1955:                                             ; preds = %1948, %1929
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1956 = load float, float addrspace(3)* %1746, align 4, !tbaa !6
  %1957 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1958 = fadd contract float %1956, %1957
  %1959 = fmul contract float %1958, 0x3FF960CE60000000
  %1960 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1961 = fadd contract float %1960, %1959
  store float %1961, float addrspace(3)* %1748, align 4, !tbaa !6
  %1962 = load float, float addrspace(3)* %1750, align 4, !tbaa !6
  %1963 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1964 = fadd contract float %1962, %1963
  %1965 = fmul contract float %1964, 0x3FF960CE60000000
  %1966 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1967 = fadd contract float %1966, %1965
  store float %1967, float addrspace(3)* %1752, align 4, !tbaa !6
  %1968 = load float, float addrspace(3)* %1754, align 4, !tbaa !6
  %1969 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1970 = fadd contract float %1968, %1969
  %1971 = fmul contract float %1970, 0x3FF960CE60000000
  %1972 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1973 = fadd contract float %1972, %1971
  store float %1973, float addrspace(3)* %1756, align 4, !tbaa !6
  br i1 %1774, label %1974, label %1981

1974:                                             ; preds = %1955
  %1975 = load float, float addrspace(3)* %1759, align 4, !tbaa !6
  %1976 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1977 = fadd contract float %1975, %1976
  %1978 = fmul contract float %1977, 0x3FF960CE60000000
  %1979 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1980 = fadd contract float %1979, %1978
  store float %1980, float addrspace(3)* %1761, align 4, !tbaa !6
  br label %1981

1981:                                             ; preds = %1974, %1955
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1982 = load float, float addrspace(3)* %1791, align 4, !tbaa !6
  %1983 = load float, float addrspace(3)* %1793, align 4, !tbaa !6
  %1984 = load float, float addrspace(3)* %1795, align 4, !tbaa !6
  %1985 = load float, float addrspace(3)* %1797, align 4, !tbaa !6
  %1986 = load float, float addrspace(3)* %1799, align 4, !tbaa !6
  %1987 = load float, float addrspace(3)* %1801, align 4, !tbaa !6
  %1988 = load float, float addrspace(3)* %1803, align 4, !tbaa !6
  %1989 = load float, float addrspace(3)* %1780, align 4, !tbaa !6
  %1990 = fmul contract float %1989, 0x3FEA033860000000
  store float %1990, float addrspace(3)* %1780, align 4, !tbaa !6
  %1991 = load float, float addrspace(3)* %1782, align 4, !tbaa !6
  %1992 = fmul contract float %1991, 0x3FF3AECB00000000
  %1993 = load float, float addrspace(3)* %1784, align 4, !tbaa !6
  %1994 = fmul contract float %1993, 0x3FEA033860000000
  %1995 = load float, float addrspace(3)* %1786, align 4, !tbaa !6
  %1996 = fmul contract float %1995, 0x3FF3AECB00000000
  %1997 = load float, float addrspace(3)* %1788, align 4, !tbaa !6
  %1998 = fmul contract float %1997, 0x3FEA033860000000
  %1999 = load float, float addrspace(3)* %1790, align 4, !tbaa !6
  %2000 = fmul contract float %1999, 0x3FF3AECB00000000
  %2001 = fmul contract float %1982, 0x3FEA033860000000
  %2002 = fmul contract float %1983, 0x3FF3AECB00000000
  %2003 = fmul contract float %1984, 0x3FEA033860000000
  %2004 = fmul contract float %1985, 0x3FF3AECB00000000
  %2005 = fmul contract float %1986, 0x3FEA033860000000
  %2006 = fmul contract float %1987, 0x3FF3AECB00000000
  %2007 = fmul contract float %1988, 0x3FEA033860000000
  store float %2007, float addrspace(3)* %1803, align 4, !tbaa !6
  %2008 = fadd contract float %1990, %1994
  %2009 = fmul contract float %2008, 0x3FDC626AA0000000
  %2010 = fsub contract float %1992, %2009
  %2011 = fadd contract float %1994, %1998
  %2012 = fmul contract float %2011, 0x3FDC626AA0000000
  %2013 = fsub contract float %1996, %2012
  %2014 = fadd contract float %2001, %1998
  %2015 = fmul contract float %2014, 0x3FDC626AA0000000
  %2016 = fsub contract float %2000, %2015
  %2017 = fadd contract float %2001, %2003
  %2018 = fmul contract float %2017, 0x3FDC626AA0000000
  %2019 = fsub contract float %2002, %2018
  %2020 = fadd contract float %2003, %2005
  %2021 = fmul contract float %2020, 0x3FDC626AA0000000
  %2022 = fsub contract float %2004, %2021
  %2023 = fadd contract float %2005, %2007
  %2024 = fmul contract float %2023, 0x3FDC626AA0000000
  %2025 = fsub contract float %2006, %2024
  %2026 = fadd contract float %2010, %2013
  %2027 = fmul contract float %2026, 0x3FEC40CEC0000000
  %2028 = fsub contract float %1994, %2027
  %2029 = fadd contract float %2013, %2016
  %2030 = fmul contract float %2029, 0x3FEC40CEC0000000
  %2031 = fsub contract float %1998, %2030
  %2032 = fadd contract float %2019, %2016
  %2033 = fmul contract float %2032, 0x3FEC40CEC0000000
  %2034 = fsub contract float %2001, %2033
  %2035 = fadd contract float %2019, %2022
  %2036 = fmul contract float %2035, 0x3FEC40CEC0000000
  %2037 = fsub contract float %2003, %2036
  %2038 = fadd contract float %2022, %2025
  %2039 = fmul contract float %2038, 0x3FEC40CEC0000000
  %2040 = fsub contract float %2005, %2039
  %2041 = fadd contract float %1990, %2028
  %2042 = fmul contract float %2041, 0x3FAB2035C0000000
  %2043 = fadd contract float %2010, %2042
  store float %2043, float addrspace(3)* %1782, align 4, !tbaa !6
  %2044 = fadd contract float %2028, %2031
  %2045 = fmul contract float %2044, 0x3FAB2035C0000000
  %2046 = fadd contract float %2013, %2045
  store float %2046, float addrspace(3)* %1786, align 4, !tbaa !6
  %2047 = fadd contract float %2031, %2034
  %2048 = fmul contract float %2047, 0x3FAB2035C0000000
  %2049 = fadd contract float %2016, %2048
  store float %2049, float addrspace(3)* %1790, align 4, !tbaa !6
  %2050 = fadd contract float %2037, %2034
  %2051 = fmul contract float %2050, 0x3FAB2035C0000000
  %2052 = fadd contract float %2019, %2051
  store float %2052, float addrspace(3)* %1793, align 4, !tbaa !6
  %2053 = fadd contract float %2037, %2040
  %2054 = fmul contract float %2053, 0x3FAB2035C0000000
  %2055 = fadd contract float %2022, %2054
  store float %2055, float addrspace(3)* %1797, align 4, !tbaa !6
  %2056 = fadd contract float %2007, %2040
  %2057 = fmul contract float %2056, 0x3FAB2035C0000000
  %2058 = fadd contract float %2025, %2057
  store float %2058, float addrspace(3)* %1801, align 4, !tbaa !6
  %2059 = fadd contract float %2043, %2046
  %2060 = fmul contract float %2059, 0x3FF960CE60000000
  %2061 = fadd contract float %2028, %2060
  store float %2061, float addrspace(3)* %1784, align 4, !tbaa !6
  %2062 = fadd contract float %2046, %2049
  %2063 = fmul contract float %2062, 0x3FF960CE60000000
  %2064 = fadd contract float %2031, %2063
  store float %2064, float addrspace(3)* %1788, align 4, !tbaa !6
  %2065 = fadd contract float %2049, %2052
  %2066 = fmul contract float %2065, 0x3FF960CE60000000
  %2067 = fadd contract float %2034, %2066
  store float %2067, float addrspace(3)* %1791, align 4, !tbaa !6
  %2068 = fadd contract float %2055, %2052
  %2069 = fmul contract float %2068, 0x3FF960CE60000000
  %2070 = fadd contract float %2037, %2069
  store float %2070, float addrspace(3)* %1795, align 4, !tbaa !6
  %2071 = fadd contract float %2055, %2058
  %2072 = fmul contract float %2071, 0x3FF960CE60000000
  %2073 = fadd contract float %2040, %2072
  store float %2073, float addrspace(3)* %1799, align 4, !tbaa !6
  %2074 = icmp eq i32 %1808, %1710
  br i1 %2074, label %2079, label %2075

2075:                                             ; preds = %1981
  %2076 = add nsw i32 %1808, %1711
  %2077 = sext i32 %1808 to i64
  %2078 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2077
  store float %2046, float addrspace(1)* %2078, align 4, !tbaa !6
  br label %2079

2079:                                             ; preds = %2075, %1981
  %2080 = phi i32 [ %1710, %1981 ], [ %2076, %2075 ]
  %2081 = icmp eq i32 %2080, %1710
  br i1 %2081, label %2086, label %2082

2082:                                             ; preds = %2079
  %2083 = add nsw i32 %2080, %1711
  %2084 = sext i32 %2080 to i64
  %2085 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2084
  store float %2064, float addrspace(1)* %2085, align 4, !tbaa !6
  br label %2086

2086:                                             ; preds = %2082, %2079
  %2087 = phi i32 [ %1710, %2079 ], [ %2083, %2082 ]
  %2088 = icmp eq i32 %2087, %1710
  br i1 %2088, label %2093, label %2089

2089:                                             ; preds = %2086
  %2090 = add nsw i32 %2087, %1711
  %2091 = sext i32 %2087 to i64
  %2092 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2091
  store float %2049, float addrspace(1)* %2092, align 4, !tbaa !6
  br label %2093

2093:                                             ; preds = %2089, %2086
  %2094 = phi i32 [ %1710, %2086 ], [ %2090, %2089 ]
  %2095 = icmp eq i32 %2094, %1710
  br i1 %2095, label %2100, label %2096

2096:                                             ; preds = %2093
  %2097 = add nsw i32 %2094, %1711
  %2098 = sext i32 %2094 to i64
  %2099 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2098
  store float %2067, float addrspace(1)* %2099, align 4, !tbaa !6
  br label %2100

2100:                                             ; preds = %2096, %2093
  %2101 = phi i32 [ %1710, %2093 ], [ %2097, %2096 ]
  %2102 = icmp eq i32 %2101, %1710
  br i1 %2102, label %2107, label %2103

2103:                                             ; preds = %2100
  %2104 = add nsw i32 %2101, %1711
  %2105 = sext i32 %2101 to i64
  %2106 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2105
  store float %2052, float addrspace(1)* %2106, align 4, !tbaa !6
  br label %2107

2107:                                             ; preds = %2103, %2100
  %2108 = phi i32 [ %1710, %2100 ], [ %2104, %2103 ]
  %2109 = icmp eq i32 %2108, %1710
  br i1 %2109, label %2114, label %2110

2110:                                             ; preds = %2107
  %2111 = add nsw i32 %2108, %1711
  %2112 = sext i32 %2108 to i64
  %2113 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2112
  store float %2070, float addrspace(1)* %2113, align 4, !tbaa !6
  br label %2114

2114:                                             ; preds = %2110, %2107
  %2115 = phi i32 [ %1710, %2107 ], [ %2111, %2110 ]
  store float %1982, float addrspace(3)* %1780, align 4, !tbaa !6
  store float %1983, float addrspace(3)* %1782, align 4, !tbaa !6
  store float %1984, float addrspace(3)* %1784, align 4, !tbaa !6
  store float %1985, float addrspace(3)* %1786, align 4, !tbaa !6
  store float %1986, float addrspace(3)* %1788, align 4, !tbaa !6
  store float %1987, float addrspace(3)* %1790, align 4, !tbaa !6
  store float %1988, float addrspace(3)* %1791, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2116 = add nuw nsw i32 %1805, 1
  %2117 = icmp eq i32 %2116, %4
  br i1 %2117, label %3004, label %1804, !llvm.loop !16

2118:                                             ; preds = %1190
  br i1 %1196, label %2119, label %2281

2119:                                             ; preds = %2118
  %2120 = icmp ult i32 %1195, 4
  %2121 = select i1 %2120, i32 128, i32 -7
  %2122 = add nsw i32 %2121, %1195
  %2123 = add i32 %2122, %1191
  %2124 = sub i32 0, %2123
  %2125 = trunc i32 %2122 to i16
  %2126 = add nsw i16 %2125, 4
  %2127 = sdiv i16 %2126, 2
  %2128 = sext i16 %2127 to i32
  %2129 = and i32 %2122, 1
  %2130 = icmp eq i32 %2129, 0
  %2131 = select i1 %2130, i32 0, i32 888
  %2132 = add nsw i32 %2131, %2128
  %2133 = icmp eq i32 %7, 0
  br i1 %2133, label %2134, label %2197

2134:                                             ; preds = %2119
  %2135 = icmp slt i32 %2123, %2
  br i1 %2135, label %2140, label %2136

2136:                                             ; preds = %2134
  %2137 = shl nsw i32 %2, 1
  %2138 = sub i32 -2, %2123
  %2139 = add i32 %2138, %2137
  br label %2142

2140:                                             ; preds = %2134
  %2141 = icmp slt i32 %2123, 0
  br i1 %2141, label %2142, label %2144

2142:                                             ; preds = %2140, %2136
  %2143 = phi i32 [ %2139, %2136 ], [ %2124, %2140 ]
  br label %2144

2144:                                             ; preds = %2142, %2140
  %2145 = phi i32 [ %2143, %2142 ], [ %2123, %2140 ]
  %2146 = sdiv i32 %2145, 2
  %2147 = and i32 %2145, 1
  %2148 = icmp eq i32 %2147, 0
  %2149 = sdiv i32 %2, 2
  %2150 = and i32 %2, 1
  %2151 = add nsw i32 %2149, %2150
  %2152 = sdiv i32 %3, 2
  %2153 = and i32 %3, 1
  %2154 = add nsw i32 %2152, %2153
  br i1 %2148, label %2160, label %2155

2155:                                             ; preds = %2144
  %2156 = mul nsw i32 %2154, %2151
  %2157 = add nsw i32 %2146, %2156
  %2158 = mul nsw i32 %3, %2
  %2159 = sdiv i32 %2158, 2
  br label %2162

2160:                                             ; preds = %2144
  %2161 = mul nsw i32 %2154, %2
  br label %2162

2162:                                             ; preds = %2160, %2155
  %2163 = phi i32 [ %2161, %2160 ], [ %2159, %2155 ]
  %2164 = phi i32 [ %2146, %2160 ], [ %2157, %2155 ]
  %2165 = phi i32 [ %2151, %2160 ], [ %2149, %2155 ]
  %2166 = sub nsw i32 %2165, %2163
  %2167 = sdiv i32 %1194, 2
  %2168 = mul nsw i32 %2165, %2167
  %2169 = add i32 %2168, %2164
  %2170 = sub i32 %2169, %2166
  %2171 = sext i32 %2169 to i64
  %2172 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2171
  %2173 = load float, float addrspace(1)* %2172, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2174 = add nsw i32 %2132, 204
  %2175 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2174
  store float %2173, float addrspace(3)* %2175, align 4, !tbaa !6
  %2176 = add i32 %2170, %2165
  %2177 = sext i32 %2176 to i64
  %2178 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2177
  %2179 = load float, float addrspace(1)* %2178, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2180 = add nsw i32 %2132, 136
  %2181 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2180
  store float %2179, float addrspace(3)* %2181, align 4, !tbaa !6
  %2182 = add nsw i32 %2132, 272
  %2183 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2182
  store float %2179, float addrspace(3)* %2183, align 4, !tbaa !6
  %2184 = add i32 %2169, %2165
  %2185 = sext i32 %2184 to i64
  %2186 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2185
  %2187 = load float, float addrspace(1)* %2186, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2188 = add nsw i32 %2132, 68
  %2189 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2188
  store float %2187, float addrspace(3)* %2189, align 4, !tbaa !6
  %2190 = add nsw i32 %2132, 340
  %2191 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2190
  store float %2187, float addrspace(3)* %2191, align 4, !tbaa !6
  %2192 = add i32 %2176, %2165
  %2193 = sext i32 %2192 to i64
  %2194 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2193
  %2195 = load float, float addrspace(1)* %2194, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2196 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2132
  store float %2195, float addrspace(3)* %2196, align 4, !tbaa !6
  br label %2274

2197:                                             ; preds = %2119
  %2198 = add nsw i32 %1194, -3
  %2199 = icmp slt i32 %2123, %2
  br i1 %2199, label %2204, label %2200

2200:                                             ; preds = %2197
  %2201 = shl nsw i32 %2, 1
  %2202 = sub i32 -2, %2123
  %2203 = add i32 %2202, %2201
  br label %2206

2204:                                             ; preds = %2197
  %2205 = icmp slt i32 %2123, 0
  br i1 %2205, label %2206, label %2208

2206:                                             ; preds = %2204, %2200
  %2207 = phi i32 [ %2203, %2200 ], [ %2124, %2204 ]
  br label %2208

2208:                                             ; preds = %2206, %2204
  %2209 = phi i32 [ %2207, %2206 ], [ %2123, %2204 ]
  %2210 = sdiv i32 %2209, 2
  %2211 = and i32 %2209, 1
  %2212 = icmp eq i32 %2211, 0
  %2213 = sdiv i32 %2, 2
  %2214 = and i32 %2, 1
  %2215 = add nsw i32 %2213, %2214
  %2216 = sdiv i32 %3, 2
  %2217 = and i32 %3, 1
  %2218 = add nsw i32 %2216, %2217
  br i1 %2212, label %2224, label %2219

2219:                                             ; preds = %2208
  %2220 = mul nsw i32 %2218, %2215
  %2221 = add nsw i32 %2210, %2220
  %2222 = mul nsw i32 %3, %2
  %2223 = sdiv i32 %2222, 2
  br label %2226

2224:                                             ; preds = %2208
  %2225 = mul nsw i32 %2218, %2
  br label %2226

2226:                                             ; preds = %2224, %2219
  %2227 = phi i32 [ %2225, %2224 ], [ %2223, %2219 ]
  %2228 = phi i32 [ %2210, %2224 ], [ %2221, %2219 ]
  %2229 = phi i32 [ %2215, %2224 ], [ %2213, %2219 ]
  %2230 = sub nsw i32 %2229, %2227
  %2231 = sdiv i32 %2198, 2
  %2232 = mul nsw i32 %2229, %2231
  %2233 = add i32 %2228, %2227
  %2234 = add i32 %2233, %2232
  %2235 = sub i32 %2234, %2227
  %2236 = sext i32 %2234 to i64
  %2237 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2236
  %2238 = load float, float addrspace(1)* %2237, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2239 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2132
  store float %2238, float addrspace(3)* %2239, align 4, !tbaa !6
  %2240 = add i32 %2235, %2229
  %2241 = sext i32 %2240 to i64
  %2242 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2241
  %2243 = load float, float addrspace(1)* %2242, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2244 = add nsw i32 %2132, 68
  %2245 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2244
  store float %2243, float addrspace(3)* %2245, align 4, !tbaa !6
  %2246 = add i32 %2234, %2229
  %2247 = sext i32 %2246 to i64
  %2248 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2247
  %2249 = load float, float addrspace(1)* %2248, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2250 = add nsw i32 %2132, 136
  %2251 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2250
  store float %2249, float addrspace(3)* %2251, align 4, !tbaa !6
  %2252 = add i32 %2240, %2229
  %2253 = sext i32 %2252 to i64
  %2254 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2253
  %2255 = load float, float addrspace(1)* %2254, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2256 = add nsw i32 %2132, 204
  %2257 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2256
  store float %2255, float addrspace(3)* %2257, align 4, !tbaa !6
  %2258 = add nsw i32 %2252, %2227
  %2259 = sext i32 %2258 to i64
  %2260 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2259
  %2261 = load float, float addrspace(1)* %2260, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2262 = add nsw i32 %2132, 272
  %2263 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2262
  store float %2261, float addrspace(3)* %2263, align 4, !tbaa !6
  %2264 = add i32 %2252, %2229
  %2265 = sext i32 %2264 to i64
  %2266 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2265
  %2267 = load float, float addrspace(1)* %2266, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2268 = add nsw i32 %2132, 340
  %2269 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2268
  store float %2267, float addrspace(3)* %2269, align 4, !tbaa !6
  %2270 = add nsw i32 %2264, %2227
  %2271 = sext i32 %2270 to i64
  %2272 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2271
  %2273 = load float, float addrspace(1)* %2272, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %2274

2274:                                             ; preds = %2226, %2162
  %2275 = phi i32 [ %2163, %2162 ], [ %2227, %2226 ]
  %2276 = phi i32 [ %2166, %2162 ], [ %2230, %2226 ]
  %2277 = phi i32 [ %2192, %2162 ], [ %2270, %2226 ]
  %2278 = phi float [ %2195, %2162 ], [ %2273, %2226 ]
  %2279 = add nsw i32 %2132, 408
  %2280 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2279
  store float %2278, float addrspace(3)* %2280, align 4, !tbaa !6
  br label %2281

2281:                                             ; preds = %2274, %2118
  %2282 = phi i32 [ %2275, %2274 ], [ 0, %2118 ]
  %2283 = phi i32 [ %2276, %2274 ], [ 0, %2118 ]
  %2284 = phi i32 [ %2277, %2274 ], [ 0, %2118 ]
  %2285 = phi i32 [ %2132, %2274 ], [ 0, %2118 ]
  %2286 = shl nuw nsw i32 %1195, 1
  %2287 = lshr i32 %1195, 6
  %2288 = mul nsw i32 %2287, -127
  %2289 = add nsw i32 %2288, %2286
  %2290 = add i32 %2289, %1191
  %2291 = sub i32 0, %2290
  %2292 = trunc i32 %2289 to i16
  %2293 = add nsw i16 %2292, 4
  %2294 = sdiv i16 %2293, 2
  %2295 = sext i16 %2294 to i32
  %2296 = and i32 %2289, 1
  %2297 = icmp eq i32 %2296, 0
  %2298 = select i1 %2297, i32 0, i32 888
  %2299 = add nsw i32 %2298, %2295
  %2300 = icmp eq i32 %7, 0
  br i1 %2300, label %2301, label %2364

2301:                                             ; preds = %2281
  %2302 = icmp slt i32 %2290, %2
  br i1 %2302, label %2307, label %2303

2303:                                             ; preds = %2301
  %2304 = shl nsw i32 %2, 1
  %2305 = sub i32 -2, %2290
  %2306 = add i32 %2305, %2304
  br label %2309

2307:                                             ; preds = %2301
  %2308 = icmp slt i32 %2290, 0
  br i1 %2308, label %2309, label %2311

2309:                                             ; preds = %2307, %2303
  %2310 = phi i32 [ %2306, %2303 ], [ %2291, %2307 ]
  br label %2311

2311:                                             ; preds = %2309, %2307
  %2312 = phi i32 [ %2310, %2309 ], [ %2290, %2307 ]
  %2313 = sdiv i32 %2312, 2
  %2314 = and i32 %2312, 1
  %2315 = icmp eq i32 %2314, 0
  %2316 = sdiv i32 %2, 2
  %2317 = and i32 %2, 1
  %2318 = add nsw i32 %2316, %2317
  %2319 = sdiv i32 %3, 2
  %2320 = and i32 %3, 1
  %2321 = add nsw i32 %2319, %2320
  br i1 %2315, label %2327, label %2322

2322:                                             ; preds = %2311
  %2323 = mul nsw i32 %2321, %2318
  %2324 = add nsw i32 %2313, %2323
  %2325 = mul nsw i32 %3, %2
  %2326 = sdiv i32 %2325, 2
  br label %2329

2327:                                             ; preds = %2311
  %2328 = mul nsw i32 %2321, %2
  br label %2329

2329:                                             ; preds = %2327, %2322
  %2330 = phi i32 [ %2328, %2327 ], [ %2326, %2322 ]
  %2331 = phi i32 [ %2313, %2327 ], [ %2324, %2322 ]
  %2332 = phi i32 [ %2318, %2327 ], [ %2316, %2322 ]
  %2333 = sub nsw i32 %2332, %2330
  %2334 = sdiv i32 %1194, 2
  %2335 = mul nsw i32 %2332, %2334
  %2336 = add i32 %2335, %2331
  %2337 = sub i32 %2336, %2333
  %2338 = sext i32 %2336 to i64
  %2339 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2338
  %2340 = load float, float addrspace(1)* %2339, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2341 = add nsw i32 %2299, 204
  %2342 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2341
  store float %2340, float addrspace(3)* %2342, align 4, !tbaa !6
  %2343 = add i32 %2337, %2332
  %2344 = sext i32 %2343 to i64
  %2345 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2344
  %2346 = load float, float addrspace(1)* %2345, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2347 = add nsw i32 %2299, 136
  %2348 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2347
  store float %2346, float addrspace(3)* %2348, align 4, !tbaa !6
  %2349 = add nsw i32 %2299, 272
  %2350 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2349
  store float %2346, float addrspace(3)* %2350, align 4, !tbaa !6
  %2351 = add i32 %2336, %2332
  %2352 = sext i32 %2351 to i64
  %2353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2352
  %2354 = load float, float addrspace(1)* %2353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2355 = add nsw i32 %2299, 68
  %2356 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2355
  store float %2354, float addrspace(3)* %2356, align 4, !tbaa !6
  %2357 = add nsw i32 %2299, 340
  %2358 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2357
  store float %2354, float addrspace(3)* %2358, align 4, !tbaa !6
  %2359 = add i32 %2343, %2332
  %2360 = sext i32 %2359 to i64
  %2361 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2360
  %2362 = load float, float addrspace(1)* %2361, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2363 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2299
  store float %2362, float addrspace(3)* %2363, align 4, !tbaa !6
  br label %2441

2364:                                             ; preds = %2281
  %2365 = add nsw i32 %1194, -3
  %2366 = icmp slt i32 %2290, %2
  br i1 %2366, label %2371, label %2367

2367:                                             ; preds = %2364
  %2368 = shl nsw i32 %2, 1
  %2369 = sub i32 -2, %2290
  %2370 = add i32 %2369, %2368
  br label %2373

2371:                                             ; preds = %2364
  %2372 = icmp slt i32 %2290, 0
  br i1 %2372, label %2373, label %2375

2373:                                             ; preds = %2371, %2367
  %2374 = phi i32 [ %2370, %2367 ], [ %2291, %2371 ]
  br label %2375

2375:                                             ; preds = %2373, %2371
  %2376 = phi i32 [ %2374, %2373 ], [ %2290, %2371 ]
  %2377 = sdiv i32 %2376, 2
  %2378 = and i32 %2376, 1
  %2379 = icmp eq i32 %2378, 0
  %2380 = sdiv i32 %2, 2
  %2381 = and i32 %2, 1
  %2382 = add nsw i32 %2380, %2381
  %2383 = sdiv i32 %3, 2
  %2384 = and i32 %3, 1
  %2385 = add nsw i32 %2383, %2384
  br i1 %2379, label %2391, label %2386

2386:                                             ; preds = %2375
  %2387 = mul nsw i32 %2385, %2382
  %2388 = add nsw i32 %2377, %2387
  %2389 = mul nsw i32 %3, %2
  %2390 = sdiv i32 %2389, 2
  br label %2393

2391:                                             ; preds = %2375
  %2392 = mul nsw i32 %2385, %2
  br label %2393

2393:                                             ; preds = %2391, %2386
  %2394 = phi i32 [ %2392, %2391 ], [ %2390, %2386 ]
  %2395 = phi i32 [ %2377, %2391 ], [ %2388, %2386 ]
  %2396 = phi i32 [ %2382, %2391 ], [ %2380, %2386 ]
  %2397 = sub nsw i32 %2396, %2394
  %2398 = sdiv i32 %2365, 2
  %2399 = mul nsw i32 %2396, %2398
  %2400 = add i32 %2395, %2394
  %2401 = add i32 %2400, %2399
  %2402 = sub i32 %2401, %2394
  %2403 = sext i32 %2401 to i64
  %2404 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2403
  %2405 = load float, float addrspace(1)* %2404, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2406 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2299
  store float %2405, float addrspace(3)* %2406, align 4, !tbaa !6
  %2407 = add i32 %2402, %2396
  %2408 = sext i32 %2407 to i64
  %2409 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2408
  %2410 = load float, float addrspace(1)* %2409, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2411 = add nsw i32 %2299, 68
  %2412 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2411
  store float %2410, float addrspace(3)* %2412, align 4, !tbaa !6
  %2413 = add i32 %2401, %2396
  %2414 = sext i32 %2413 to i64
  %2415 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2414
  %2416 = load float, float addrspace(1)* %2415, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2417 = add nsw i32 %2299, 136
  %2418 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2417
  store float %2416, float addrspace(3)* %2418, align 4, !tbaa !6
  %2419 = add i32 %2407, %2396
  %2420 = sext i32 %2419 to i64
  %2421 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2420
  %2422 = load float, float addrspace(1)* %2421, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2423 = add nsw i32 %2299, 204
  %2424 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2423
  store float %2422, float addrspace(3)* %2424, align 4, !tbaa !6
  %2425 = add nsw i32 %2419, %2394
  %2426 = sext i32 %2425 to i64
  %2427 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2426
  %2428 = load float, float addrspace(1)* %2427, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2429 = add nsw i32 %2299, 272
  %2430 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2429
  store float %2428, float addrspace(3)* %2430, align 4, !tbaa !6
  %2431 = add i32 %2419, %2396
  %2432 = sext i32 %2431 to i64
  %2433 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2432
  %2434 = load float, float addrspace(1)* %2433, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2435 = add nsw i32 %2299, 340
  %2436 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2435
  store float %2434, float addrspace(3)* %2436, align 4, !tbaa !6
  %2437 = add nsw i32 %2431, %2394
  %2438 = sext i32 %2437 to i64
  %2439 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2438
  %2440 = load float, float addrspace(1)* %2439, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %2441

2441:                                             ; preds = %2393, %2329
  %2442 = phi i32 [ %2333, %2329 ], [ %2397, %2393 ]
  %2443 = phi i32 [ %2330, %2329 ], [ %2394, %2393 ]
  %2444 = phi i32 [ %2359, %2329 ], [ %2437, %2393 ]
  %2445 = phi float [ %2362, %2329 ], [ %2440, %2393 ]
  %2446 = add nsw i32 %2299, 408
  %2447 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2446
  store float %2445, float addrspace(3)* %2447, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2448 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1195
  %2449 = load float, float addrspace(3)* %2448, align 4, !tbaa !6
  %2450 = fmul contract float %2449, 0x3FF3AECB00000000
  store float %2450, float addrspace(3)* %2448, align 4, !tbaa !6
  %2451 = add nuw nsw i32 %1195, 888
  %2452 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2451
  %2453 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2454 = fmul contract float %2453, 0x3FEA033860000000
  store float %2454, float addrspace(3)* %2452, align 4, !tbaa !6
  %2455 = add nuw nsw i32 %1195, 128
  %2456 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2455
  %2457 = load float, float addrspace(3)* %2456, align 4, !tbaa !6
  %2458 = fmul contract float %2457, 0x3FF3AECB00000000
  store float %2458, float addrspace(3)* %2456, align 4, !tbaa !6
  %2459 = add nuw nsw i32 %1195, 1016
  %2460 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2459
  %2461 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2462 = fmul contract float %2461, 0x3FEA033860000000
  store float %2462, float addrspace(3)* %2460, align 4, !tbaa !6
  %2463 = add nuw nsw i32 %1195, 256
  %2464 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2463
  %2465 = load float, float addrspace(3)* %2464, align 4, !tbaa !6
  %2466 = fmul contract float %2465, 0x3FF3AECB00000000
  store float %2466, float addrspace(3)* %2464, align 4, !tbaa !6
  %2467 = add nuw nsw i32 %1195, 1144
  %2468 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2467
  %2469 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2470 = fmul contract float %2469, 0x3FEA033860000000
  store float %2470, float addrspace(3)* %2468, align 4, !tbaa !6
  %2471 = icmp ult i32 %1195, 92
  br i1 %2471, label %2472, label %2481

2472:                                             ; preds = %2441
  %2473 = add nuw nsw i32 %1195, 384
  %2474 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2473
  %2475 = load float, float addrspace(3)* %2474, align 4, !tbaa !6
  %2476 = fmul contract float %2475, 0x3FF3AECB00000000
  store float %2476, float addrspace(3)* %2474, align 4, !tbaa !6
  %2477 = add nuw nsw i32 %1195, 1272
  %2478 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2477
  %2479 = load float, float addrspace(3)* %2478, align 4, !tbaa !6
  %2480 = fmul contract float %2479, 0x3FEA033860000000
  store float %2480, float addrspace(3)* %2478, align 4, !tbaa !6
  br label %2481

2481:                                             ; preds = %2472, %2441
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2482 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2483 = add nuw nsw i32 %1195, 889
  %2484 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2483
  %2485 = load float, float addrspace(3)* %2484, align 4, !tbaa !6
  %2486 = add nuw nsw i32 %1195, 1
  %2487 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2486
  %2488 = fadd contract float %2482, %2485
  %2489 = fmul contract float %2488, 0x3FDC626AA0000000
  %2490 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2491 = fsub contract float %2490, %2489
  store float %2491, float addrspace(3)* %2487, align 4, !tbaa !6
  %2492 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2493 = add nuw nsw i32 %1195, 1017
  %2494 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2493
  %2495 = load float, float addrspace(3)* %2494, align 4, !tbaa !6
  %2496 = add nuw nsw i32 %1195, 129
  %2497 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2496
  %2498 = fadd contract float %2492, %2495
  %2499 = fmul contract float %2498, 0x3FDC626AA0000000
  %2500 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2501 = fsub contract float %2500, %2499
  store float %2501, float addrspace(3)* %2497, align 4, !tbaa !6
  %2502 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2503 = add nuw nsw i32 %1195, 1145
  %2504 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2503
  %2505 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2506 = add nuw nsw i32 %1195, 257
  %2507 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2506
  %2508 = fadd contract float %2502, %2505
  %2509 = fmul contract float %2508, 0x3FDC626AA0000000
  %2510 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2511 = fsub contract float %2510, %2509
  store float %2511, float addrspace(3)* %2507, align 4, !tbaa !6
  %2512 = icmp ult i32 %1195, 91
  br i1 %2512, label %2513, label %2526

2513:                                             ; preds = %2481
  %2514 = add nuw nsw i32 %1195, 1272
  %2515 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2514
  %2516 = load float, float addrspace(3)* %2515, align 4, !tbaa !6
  %2517 = add nuw nsw i32 %1195, 1273
  %2518 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2517
  %2519 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2520 = add nuw nsw i32 %1195, 385
  %2521 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2520
  %2522 = fadd contract float %2516, %2519
  %2523 = fmul contract float %2522, 0x3FDC626AA0000000
  %2524 = load float, float addrspace(3)* %2521, align 4, !tbaa !6
  %2525 = fsub contract float %2524, %2523
  store float %2525, float addrspace(3)* %2521, align 4, !tbaa !6
  br label %2526

2526:                                             ; preds = %2513, %2481
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2527 = load float, float addrspace(3)* %2448, align 4, !tbaa !6
  %2528 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2529 = fadd contract float %2527, %2528
  %2530 = fmul contract float %2529, 0x3FEC40CEC0000000
  %2531 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2532 = fsub contract float %2531, %2530
  store float %2532, float addrspace(3)* %2452, align 4, !tbaa !6
  %2533 = load float, float addrspace(3)* %2456, align 4, !tbaa !6
  %2534 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2535 = fadd contract float %2533, %2534
  %2536 = fmul contract float %2535, 0x3FEC40CEC0000000
  %2537 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2538 = fsub contract float %2537, %2536
  store float %2538, float addrspace(3)* %2460, align 4, !tbaa !6
  %2539 = load float, float addrspace(3)* %2464, align 4, !tbaa !6
  %2540 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2541 = fadd contract float %2539, %2540
  %2542 = fmul contract float %2541, 0x3FEC40CEC0000000
  %2543 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2544 = fsub contract float %2543, %2542
  store float %2544, float addrspace(3)* %2468, align 4, !tbaa !6
  br i1 %2512, label %2545, label %2558

2545:                                             ; preds = %2526
  %2546 = add nuw nsw i32 %1195, 384
  %2547 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2546
  %2548 = load float, float addrspace(3)* %2547, align 4, !tbaa !6
  %2549 = add nuw nsw i32 %1195, 385
  %2550 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2549
  %2551 = load float, float addrspace(3)* %2550, align 4, !tbaa !6
  %2552 = add nuw nsw i32 %1195, 1272
  %2553 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2552
  %2554 = fadd contract float %2548, %2551
  %2555 = fmul contract float %2554, 0x3FEC40CEC0000000
  %2556 = load float, float addrspace(3)* %2553, align 4, !tbaa !6
  %2557 = fsub contract float %2556, %2555
  store float %2557, float addrspace(3)* %2553, align 4, !tbaa !6
  br label %2558

2558:                                             ; preds = %2545, %2526
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2559 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2560 = load float, float addrspace(3)* %2484, align 4, !tbaa !6
  %2561 = fadd contract float %2559, %2560
  %2562 = fmul contract float %2561, 0x3FAB2035C0000000
  %2563 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2564 = fadd contract float %2563, %2562
  store float %2564, float addrspace(3)* %2487, align 4, !tbaa !6
  %2565 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2566 = load float, float addrspace(3)* %2494, align 4, !tbaa !6
  %2567 = fadd contract float %2565, %2566
  %2568 = fmul contract float %2567, 0x3FAB2035C0000000
  %2569 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2570 = fadd contract float %2569, %2568
  store float %2570, float addrspace(3)* %2497, align 4, !tbaa !6
  %2571 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2572 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2573 = fadd contract float %2571, %2572
  %2574 = fmul contract float %2573, 0x3FAB2035C0000000
  %2575 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2576 = fadd contract float %2575, %2574
  store float %2576, float addrspace(3)* %2507, align 4, !tbaa !6
  br i1 %2512, label %2577, label %2590

2577:                                             ; preds = %2558
  %2578 = add nuw nsw i32 %1195, 1272
  %2579 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2578
  %2580 = load float, float addrspace(3)* %2579, align 4, !tbaa !6
  %2581 = add nuw nsw i32 %1195, 1273
  %2582 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2581
  %2583 = load float, float addrspace(3)* %2582, align 4, !tbaa !6
  %2584 = add nuw nsw i32 %1195, 385
  %2585 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2584
  %2586 = fadd contract float %2580, %2583
  %2587 = fmul contract float %2586, 0x3FAB2035C0000000
  %2588 = load float, float addrspace(3)* %2585, align 4, !tbaa !6
  %2589 = fadd contract float %2588, %2587
  store float %2589, float addrspace(3)* %2585, align 4, !tbaa !6
  br label %2590

2590:                                             ; preds = %2577, %2558
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2591 = load float, float addrspace(3)* %2448, align 4, !tbaa !6
  %2592 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2593 = fadd contract float %2591, %2592
  %2594 = fmul contract float %2593, 0x3FF960CE60000000
  %2595 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2596 = fadd contract float %2595, %2594
  store float %2596, float addrspace(3)* %2452, align 4, !tbaa !6
  %2597 = load float, float addrspace(3)* %2456, align 4, !tbaa !6
  %2598 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2599 = fadd contract float %2597, %2598
  %2600 = fmul contract float %2599, 0x3FF960CE60000000
  %2601 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2602 = fadd contract float %2601, %2600
  store float %2602, float addrspace(3)* %2460, align 4, !tbaa !6
  %2603 = load float, float addrspace(3)* %2464, align 4, !tbaa !6
  %2604 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2605 = fadd contract float %2603, %2604
  %2606 = fmul contract float %2605, 0x3FF960CE60000000
  %2607 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2608 = fadd contract float %2607, %2606
  store float %2608, float addrspace(3)* %2468, align 4, !tbaa !6
  br i1 %2512, label %2609, label %2622

2609:                                             ; preds = %2590
  %2610 = add nuw nsw i32 %1195, 384
  %2611 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2610
  %2612 = load float, float addrspace(3)* %2611, align 4, !tbaa !6
  %2613 = add nuw nsw i32 %1195, 385
  %2614 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2613
  %2615 = load float, float addrspace(3)* %2614, align 4, !tbaa !6
  %2616 = add nuw nsw i32 %1195, 1272
  %2617 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2616
  %2618 = fadd contract float %2612, %2615
  %2619 = fmul contract float %2618, 0x3FF960CE60000000
  %2620 = load float, float addrspace(3)* %2617, align 4, !tbaa !6
  %2621 = fadd contract float %2620, %2619
  store float %2621, float addrspace(3)* %2617, align 4, !tbaa !6
  br label %2622

2622:                                             ; preds = %2609, %2590
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2623 = add i32 %1191, %1195
  %2624 = icmp slt i32 %2623, %2
  %2625 = select i1 %2624, i32 %2, i32 0
  %2626 = add nuw nsw i32 %1195, 4
  %2627 = lshr i32 %2626, 1
  %2628 = and i32 %1195, 1
  %2629 = icmp eq i32 %2628, 0
  %2630 = select i1 %2629, i32 0, i32 888
  %2631 = add nuw nsw i32 %2630, %2627
  %2632 = icmp sgt i32 %4, 0
  br i1 %2632, label %2633, label %3004

2633:                                             ; preds = %2622
  %2634 = mul nsw i32 %1194, %2
  %2635 = add nsw i32 %2634, %2623
  %2636 = select i1 %2624, i32 %2635, i32 0
  %2637 = add nsw i32 %2299, 476
  %2638 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2637
  %2639 = add nsw i32 %2299, 544
  %2640 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2639
  %2641 = add nsw i32 %2299, 612
  %2642 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2641
  %2643 = add nsw i32 %2299, 680
  %2644 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2643
  %2645 = add nsw i32 %2299, 748
  %2646 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2645
  %2647 = add nsw i32 %2299, 816
  %2648 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2647
  %2649 = add nsw i32 %2285, 476
  %2650 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2649
  %2651 = add nsw i32 %2285, 544
  %2652 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2651
  %2653 = add nsw i32 %2285, 612
  %2654 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2653
  %2655 = add nsw i32 %2285, 680
  %2656 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2655
  %2657 = add nsw i32 %2285, 748
  %2658 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2657
  %2659 = add nsw i32 %2285, 816
  %2660 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2659
  %2661 = add nuw nsw i32 %1195, 476
  %2662 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2661
  %2663 = add nuw nsw i32 %1195, 1364
  %2664 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2663
  %2665 = add nuw nsw i32 %1195, 604
  %2666 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2665
  %2667 = add nuw nsw i32 %1195, 1492
  %2668 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2667
  %2669 = add nuw nsw i32 %1195, 732
  %2670 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2669
  %2671 = add nuw nsw i32 %1195, 1620
  %2672 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2671
  %2673 = icmp ult i32 %1195, 24
  %2674 = add nuw nsw i32 %1195, 860
  %2675 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2674
  %2676 = add nuw nsw i32 %1195, 1748
  %2677 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2676
  %2678 = add nuw nsw i32 %1195, 1365
  %2679 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2678
  %2680 = add nuw nsw i32 %1195, 477
  %2681 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2680
  %2682 = add nuw nsw i32 %1195, 1493
  %2683 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2682
  %2684 = add nuw nsw i32 %1195, 605
  %2685 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2684
  %2686 = add nuw nsw i32 %1195, 1621
  %2687 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2686
  %2688 = add nuw nsw i32 %1195, 733
  %2689 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2688
  %2690 = icmp ult i32 %1195, 23
  %2691 = add nuw nsw i32 %1195, 1749
  %2692 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2691
  %2693 = add nuw nsw i32 %1195, 861
  %2694 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2693
  %2695 = add nuw nsw i32 %2631, 408
  %2696 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2631
  %2697 = add nuw nsw i32 %2631, 68
  %2698 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2697
  %2699 = add nuw nsw i32 %2631, 136
  %2700 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2699
  %2701 = add nuw nsw i32 %2631, 204
  %2702 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2701
  %2703 = add nuw nsw i32 %2631, 272
  %2704 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2703
  %2705 = add nuw nsw i32 %2631, 340
  %2706 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2705
  %2707 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2695
  %2708 = add nuw nsw i32 %2631, 476
  %2709 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2708
  %2710 = add nuw nsw i32 %2631, 544
  %2711 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2710
  %2712 = add nuw nsw i32 %2631, 612
  %2713 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2712
  %2714 = add nuw nsw i32 %2631, 680
  %2715 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2714
  %2716 = add nuw nsw i32 %2631, 748
  %2717 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2716
  %2718 = add nuw nsw i32 %2631, 816
  %2719 = getelementptr inbounds %"class.dwt_cuda::RDWT97.5", %"class.dwt_cuda::RDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi128ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2718
  br label %2720

2720:                                             ; preds = %2897, %2633
  %2721 = phi i32 [ 0, %2633 ], [ %3002, %2897 ]
  %2722 = phi i32 [ %2444, %2633 ], [ %2745, %2897 ]
  %2723 = phi i32 [ %2284, %2633 ], [ %2775, %2897 ]
  %2724 = phi i32 [ %2636, %2633 ], [ %3001, %2897 ]
  %2725 = add nsw i32 %2722, %2442
  %2726 = sext i32 %2725 to i64
  %2727 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2726
  %2728 = load float, float addrspace(1)* %2727, align 4, !tbaa !6
  store float %2728, float addrspace(3)* %2638, align 4, !tbaa !6
  %2729 = add nsw i32 %2725, %2443
  %2730 = sext i32 %2729 to i64
  %2731 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2730
  %2732 = load float, float addrspace(1)* %2731, align 4, !tbaa !6
  store float %2732, float addrspace(3)* %2640, align 4, !tbaa !6
  %2733 = add nsw i32 %2729, %2442
  %2734 = sext i32 %2733 to i64
  %2735 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2734
  %2736 = load float, float addrspace(1)* %2735, align 4, !tbaa !6
  store float %2736, float addrspace(3)* %2642, align 4, !tbaa !6
  %2737 = add nsw i32 %2733, %2443
  %2738 = sext i32 %2737 to i64
  %2739 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2738
  %2740 = load float, float addrspace(1)* %2739, align 4, !tbaa !6
  store float %2740, float addrspace(3)* %2644, align 4, !tbaa !6
  %2741 = add nsw i32 %2737, %2442
  %2742 = sext i32 %2741 to i64
  %2743 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2742
  %2744 = load float, float addrspace(1)* %2743, align 4, !tbaa !6
  store float %2744, float addrspace(3)* %2646, align 4, !tbaa !6
  %2745 = add nsw i32 %2741, %2443
  %2746 = sext i32 %2745 to i64
  %2747 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2746
  %2748 = load float, float addrspace(1)* %2747, align 4, !tbaa !6
  store float %2748, float addrspace(3)* %2648, align 4, !tbaa !6
  br i1 %1196, label %2749, label %2774

2749:                                             ; preds = %2720
  %2750 = add nsw i32 %2723, %2283
  %2751 = sext i32 %2750 to i64
  %2752 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2751
  %2753 = load float, float addrspace(1)* %2752, align 4, !tbaa !6
  store float %2753, float addrspace(3)* %2650, align 4, !tbaa !6
  %2754 = add nsw i32 %2750, %2282
  %2755 = sext i32 %2754 to i64
  %2756 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2755
  %2757 = load float, float addrspace(1)* %2756, align 4, !tbaa !6
  store float %2757, float addrspace(3)* %2652, align 4, !tbaa !6
  %2758 = add nsw i32 %2754, %2283
  %2759 = sext i32 %2758 to i64
  %2760 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2759
  %2761 = load float, float addrspace(1)* %2760, align 4, !tbaa !6
  store float %2761, float addrspace(3)* %2654, align 4, !tbaa !6
  %2762 = add nsw i32 %2758, %2282
  %2763 = sext i32 %2762 to i64
  %2764 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2763
  %2765 = load float, float addrspace(1)* %2764, align 4, !tbaa !6
  store float %2765, float addrspace(3)* %2656, align 4, !tbaa !6
  %2766 = add nsw i32 %2762, %2283
  %2767 = sext i32 %2766 to i64
  %2768 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2767
  %2769 = load float, float addrspace(1)* %2768, align 4, !tbaa !6
  store float %2769, float addrspace(3)* %2658, align 4, !tbaa !6
  %2770 = add nsw i32 %2766, %2282
  %2771 = sext i32 %2770 to i64
  %2772 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2771
  %2773 = load float, float addrspace(1)* %2772, align 4, !tbaa !6
  store float %2773, float addrspace(3)* %2660, align 4, !tbaa !6
  br label %2774

2774:                                             ; preds = %2749, %2720
  %2775 = phi i32 [ %2770, %2749 ], [ %2723, %2720 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2776 = load float, float addrspace(3)* %2662, align 4, !tbaa !6
  %2777 = fmul contract float %2776, 0x3FF3AECB00000000
  store float %2777, float addrspace(3)* %2662, align 4, !tbaa !6
  %2778 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2779 = fmul contract float %2778, 0x3FEA033860000000
  store float %2779, float addrspace(3)* %2664, align 4, !tbaa !6
  %2780 = load float, float addrspace(3)* %2666, align 4, !tbaa !6
  %2781 = fmul contract float %2780, 0x3FF3AECB00000000
  store float %2781, float addrspace(3)* %2666, align 4, !tbaa !6
  %2782 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2783 = fmul contract float %2782, 0x3FEA033860000000
  store float %2783, float addrspace(3)* %2668, align 4, !tbaa !6
  %2784 = load float, float addrspace(3)* %2670, align 4, !tbaa !6
  %2785 = fmul contract float %2784, 0x3FF3AECB00000000
  store float %2785, float addrspace(3)* %2670, align 4, !tbaa !6
  %2786 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2787 = fmul contract float %2786, 0x3FEA033860000000
  store float %2787, float addrspace(3)* %2672, align 4, !tbaa !6
  br i1 %2673, label %2788, label %2793

2788:                                             ; preds = %2774
  %2789 = load float, float addrspace(3)* %2675, align 4, !tbaa !6
  %2790 = fmul contract float %2789, 0x3FF3AECB00000000
  store float %2790, float addrspace(3)* %2675, align 4, !tbaa !6
  %2791 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2792 = fmul contract float %2791, 0x3FEA033860000000
  store float %2792, float addrspace(3)* %2677, align 4, !tbaa !6
  br label %2793

2793:                                             ; preds = %2788, %2774
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2794 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2795 = load float, float addrspace(3)* %2679, align 4, !tbaa !6
  %2796 = fadd contract float %2794, %2795
  %2797 = fmul contract float %2796, 0x3FDC626AA0000000
  %2798 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2799 = fsub contract float %2798, %2797
  store float %2799, float addrspace(3)* %2681, align 4, !tbaa !6
  %2800 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2801 = load float, float addrspace(3)* %2683, align 4, !tbaa !6
  %2802 = fadd contract float %2800, %2801
  %2803 = fmul contract float %2802, 0x3FDC626AA0000000
  %2804 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2805 = fsub contract float %2804, %2803
  store float %2805, float addrspace(3)* %2685, align 4, !tbaa !6
  %2806 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2807 = load float, float addrspace(3)* %2687, align 4, !tbaa !6
  %2808 = fadd contract float %2806, %2807
  %2809 = fmul contract float %2808, 0x3FDC626AA0000000
  %2810 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2811 = fsub contract float %2810, %2809
  store float %2811, float addrspace(3)* %2689, align 4, !tbaa !6
  br i1 %2690, label %2812, label %2819

2812:                                             ; preds = %2793
  %2813 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2814 = load float, float addrspace(3)* %2692, align 4, !tbaa !6
  %2815 = fadd contract float %2813, %2814
  %2816 = fmul contract float %2815, 0x3FDC626AA0000000
  %2817 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2818 = fsub contract float %2817, %2816
  store float %2818, float addrspace(3)* %2694, align 4, !tbaa !6
  br label %2819

2819:                                             ; preds = %2812, %2793
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2820 = load float, float addrspace(3)* %2662, align 4, !tbaa !6
  %2821 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2822 = fadd contract float %2820, %2821
  %2823 = fmul contract float %2822, 0x3FEC40CEC0000000
  %2824 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2825 = fsub contract float %2824, %2823
  store float %2825, float addrspace(3)* %2664, align 4, !tbaa !6
  %2826 = load float, float addrspace(3)* %2666, align 4, !tbaa !6
  %2827 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2828 = fadd contract float %2826, %2827
  %2829 = fmul contract float %2828, 0x3FEC40CEC0000000
  %2830 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2831 = fsub contract float %2830, %2829
  store float %2831, float addrspace(3)* %2668, align 4, !tbaa !6
  %2832 = load float, float addrspace(3)* %2670, align 4, !tbaa !6
  %2833 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2834 = fadd contract float %2832, %2833
  %2835 = fmul contract float %2834, 0x3FEC40CEC0000000
  %2836 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2837 = fsub contract float %2836, %2835
  store float %2837, float addrspace(3)* %2672, align 4, !tbaa !6
  br i1 %2690, label %2838, label %2845

2838:                                             ; preds = %2819
  %2839 = load float, float addrspace(3)* %2675, align 4, !tbaa !6
  %2840 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2841 = fadd contract float %2839, %2840
  %2842 = fmul contract float %2841, 0x3FEC40CEC0000000
  %2843 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2844 = fsub contract float %2843, %2842
  store float %2844, float addrspace(3)* %2677, align 4, !tbaa !6
  br label %2845

2845:                                             ; preds = %2838, %2819
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2846 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2847 = load float, float addrspace(3)* %2679, align 4, !tbaa !6
  %2848 = fadd contract float %2846, %2847
  %2849 = fmul contract float %2848, 0x3FAB2035C0000000
  %2850 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2851 = fadd contract float %2850, %2849
  store float %2851, float addrspace(3)* %2681, align 4, !tbaa !6
  %2852 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2853 = load float, float addrspace(3)* %2683, align 4, !tbaa !6
  %2854 = fadd contract float %2852, %2853
  %2855 = fmul contract float %2854, 0x3FAB2035C0000000
  %2856 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2857 = fadd contract float %2856, %2855
  store float %2857, float addrspace(3)* %2685, align 4, !tbaa !6
  %2858 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2859 = load float, float addrspace(3)* %2687, align 4, !tbaa !6
  %2860 = fadd contract float %2858, %2859
  %2861 = fmul contract float %2860, 0x3FAB2035C0000000
  %2862 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2863 = fadd contract float %2862, %2861
  store float %2863, float addrspace(3)* %2689, align 4, !tbaa !6
  br i1 %2690, label %2864, label %2871

2864:                                             ; preds = %2845
  %2865 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2866 = load float, float addrspace(3)* %2692, align 4, !tbaa !6
  %2867 = fadd contract float %2865, %2866
  %2868 = fmul contract float %2867, 0x3FAB2035C0000000
  %2869 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2870 = fadd contract float %2869, %2868
  store float %2870, float addrspace(3)* %2694, align 4, !tbaa !6
  br label %2871

2871:                                             ; preds = %2864, %2845
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2872 = load float, float addrspace(3)* %2662, align 4, !tbaa !6
  %2873 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2874 = fadd contract float %2872, %2873
  %2875 = fmul contract float %2874, 0x3FF960CE60000000
  %2876 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2877 = fadd contract float %2876, %2875
  store float %2877, float addrspace(3)* %2664, align 4, !tbaa !6
  %2878 = load float, float addrspace(3)* %2666, align 4, !tbaa !6
  %2879 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2880 = fadd contract float %2878, %2879
  %2881 = fmul contract float %2880, 0x3FF960CE60000000
  %2882 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2883 = fadd contract float %2882, %2881
  store float %2883, float addrspace(3)* %2668, align 4, !tbaa !6
  %2884 = load float, float addrspace(3)* %2670, align 4, !tbaa !6
  %2885 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2886 = fadd contract float %2884, %2885
  %2887 = fmul contract float %2886, 0x3FF960CE60000000
  %2888 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2889 = fadd contract float %2888, %2887
  store float %2889, float addrspace(3)* %2672, align 4, !tbaa !6
  br i1 %2690, label %2890, label %2897

2890:                                             ; preds = %2871
  %2891 = load float, float addrspace(3)* %2675, align 4, !tbaa !6
  %2892 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2893 = fadd contract float %2891, %2892
  %2894 = fmul contract float %2893, 0x3FF960CE60000000
  %2895 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2896 = fadd contract float %2895, %2894
  store float %2896, float addrspace(3)* %2677, align 4, !tbaa !6
  br label %2897

2897:                                             ; preds = %2890, %2871
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2898 = load float, float addrspace(3)* %2707, align 4, !tbaa !6
  %2899 = load float, float addrspace(3)* %2709, align 4, !tbaa !6
  %2900 = load float, float addrspace(3)* %2711, align 4, !tbaa !6
  %2901 = load float, float addrspace(3)* %2713, align 4, !tbaa !6
  %2902 = load float, float addrspace(3)* %2715, align 4, !tbaa !6
  %2903 = load float, float addrspace(3)* %2717, align 4, !tbaa !6
  %2904 = load float, float addrspace(3)* %2719, align 4, !tbaa !6
  %2905 = load float, float addrspace(3)* %2696, align 4, !tbaa !6
  %2906 = fmul contract float %2905, 0x3FEA033860000000
  %2907 = load float, float addrspace(3)* %2698, align 4, !tbaa !6
  %2908 = fmul contract float %2907, 0x3FF3AECB00000000
  %2909 = load float, float addrspace(3)* %2700, align 4, !tbaa !6
  %2910 = fmul contract float %2909, 0x3FEA033860000000
  %2911 = load float, float addrspace(3)* %2702, align 4, !tbaa !6
  %2912 = fmul contract float %2911, 0x3FF3AECB00000000
  %2913 = load float, float addrspace(3)* %2704, align 4, !tbaa !6
  %2914 = fmul contract float %2913, 0x3FEA033860000000
  %2915 = load float, float addrspace(3)* %2706, align 4, !tbaa !6
  %2916 = fmul contract float %2915, 0x3FF3AECB00000000
  %2917 = fmul contract float %2898, 0x3FEA033860000000
  %2918 = fmul contract float %2899, 0x3FF3AECB00000000
  %2919 = fmul contract float %2900, 0x3FEA033860000000
  %2920 = fmul contract float %2901, 0x3FF3AECB00000000
  %2921 = fmul contract float %2902, 0x3FEA033860000000
  %2922 = fmul contract float %2903, 0x3FF3AECB00000000
  %2923 = fmul contract float %2904, 0x3FEA033860000000
  store float %2923, float addrspace(3)* %2719, align 4, !tbaa !6
  %2924 = fadd contract float %2906, %2910
  %2925 = fmul contract float %2924, 0x3FDC626AA0000000
  %2926 = fsub contract float %2908, %2925
  %2927 = fadd contract float %2910, %2914
  %2928 = fmul contract float %2927, 0x3FDC626AA0000000
  %2929 = fsub contract float %2912, %2928
  %2930 = fadd contract float %2917, %2914
  %2931 = fmul contract float %2930, 0x3FDC626AA0000000
  %2932 = fsub contract float %2916, %2931
  %2933 = fadd contract float %2917, %2919
  %2934 = fmul contract float %2933, 0x3FDC626AA0000000
  %2935 = fsub contract float %2918, %2934
  %2936 = fadd contract float %2919, %2921
  %2937 = fmul contract float %2936, 0x3FDC626AA0000000
  %2938 = fsub contract float %2920, %2937
  %2939 = fadd contract float %2921, %2923
  %2940 = fmul contract float %2939, 0x3FDC626AA0000000
  %2941 = fsub contract float %2922, %2940
  %2942 = fadd contract float %2926, %2929
  %2943 = fmul contract float %2942, 0x3FEC40CEC0000000
  %2944 = fsub contract float %2910, %2943
  %2945 = fadd contract float %2929, %2932
  %2946 = fmul contract float %2945, 0x3FEC40CEC0000000
  %2947 = fsub contract float %2914, %2946
  %2948 = fadd contract float %2935, %2932
  %2949 = fmul contract float %2948, 0x3FEC40CEC0000000
  %2950 = fsub contract float %2917, %2949
  %2951 = fadd contract float %2935, %2938
  %2952 = fmul contract float %2951, 0x3FEC40CEC0000000
  %2953 = fsub contract float %2919, %2952
  %2954 = fadd contract float %2938, %2941
  %2955 = fmul contract float %2954, 0x3FEC40CEC0000000
  %2956 = fsub contract float %2921, %2955
  %2957 = fadd contract float %2944, %2947
  %2958 = fmul contract float %2957, 0x3FAB2035C0000000
  %2959 = fadd contract float %2929, %2958
  %2960 = fadd contract float %2947, %2950
  %2961 = fmul contract float %2960, 0x3FAB2035C0000000
  %2962 = fadd contract float %2932, %2961
  %2963 = fadd contract float %2953, %2950
  %2964 = fmul contract float %2963, 0x3FAB2035C0000000
  %2965 = fadd contract float %2935, %2964
  store float %2965, float addrspace(3)* %2709, align 4, !tbaa !6
  %2966 = fadd contract float %2953, %2956
  %2967 = fmul contract float %2966, 0x3FAB2035C0000000
  %2968 = fadd contract float %2938, %2967
  store float %2968, float addrspace(3)* %2713, align 4, !tbaa !6
  %2969 = fadd contract float %2923, %2956
  %2970 = fmul contract float %2969, 0x3FAB2035C0000000
  %2971 = fadd contract float %2941, %2970
  store float %2971, float addrspace(3)* %2717, align 4, !tbaa !6
  %2972 = fadd contract float %2959, %2962
  %2973 = fmul contract float %2972, 0x3FF960CE60000000
  %2974 = fadd contract float %2947, %2973
  %2975 = fadd contract float %2962, %2965
  %2976 = fmul contract float %2975, 0x3FF960CE60000000
  %2977 = fadd contract float %2950, %2976
  %2978 = fadd contract float %2968, %2965
  %2979 = fmul contract float %2978, 0x3FF960CE60000000
  %2980 = fadd contract float %2953, %2979
  store float %2980, float addrspace(3)* %2711, align 4, !tbaa !6
  %2981 = fadd contract float %2968, %2971
  %2982 = fmul contract float %2981, 0x3FF960CE60000000
  %2983 = fadd contract float %2956, %2982
  store float %2983, float addrspace(3)* %2715, align 4, !tbaa !6
  %2984 = sext i32 %2724 to i64
  %2985 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2984
  store float %2959, float addrspace(1)* %2985, align 4, !tbaa !6
  %2986 = add nsw i32 %2724, %2625
  %2987 = sext i32 %2986 to i64
  %2988 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2987
  store float %2974, float addrspace(1)* %2988, align 4, !tbaa !6
  %2989 = add nsw i32 %2986, %2625
  %2990 = sext i32 %2989 to i64
  %2991 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2990
  store float %2962, float addrspace(1)* %2991, align 4, !tbaa !6
  %2992 = add nsw i32 %2989, %2625
  %2993 = sext i32 %2992 to i64
  %2994 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2993
  store float %2977, float addrspace(1)* %2994, align 4, !tbaa !6
  %2995 = add nsw i32 %2992, %2625
  %2996 = sext i32 %2995 to i64
  %2997 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2996
  store float %2965, float addrspace(1)* %2997, align 4, !tbaa !6
  %2998 = add nsw i32 %2995, %2625
  %2999 = sext i32 %2998 to i64
  %3000 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2999
  store float %2980, float addrspace(1)* %3000, align 4, !tbaa !6
  store float %2898, float addrspace(3)* %2696, align 4, !tbaa !6
  store float %2899, float addrspace(3)* %2698, align 4, !tbaa !6
  store float %2900, float addrspace(3)* %2700, align 4, !tbaa !6
  store float %2901, float addrspace(3)* %2702, align 4, !tbaa !6
  store float %2902, float addrspace(3)* %2704, align 4, !tbaa !6
  store float %2903, float addrspace(3)* %2706, align 4, !tbaa !6
  store float %2904, float addrspace(3)* %2707, align 4, !tbaa !6
  %3001 = add nsw i32 %2998, %2625
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3002 = add nuw nsw i32 %2721, 1
  %3003 = icmp eq i32 %3002, %4
  br i1 %3003, label %3004, label %2720, !llvm.loop !17

3004:                                             ; preds = %1186, %2114, %2897, %697, %1709, %2622
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12rdwt97KernelILi64ELi6EEEvPKfPfiii(float addrspace(1)* readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 comdat {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = mul i32 %7, 6
  %9 = add i32 %8, 6
  %10 = mul i32 %9, %4
  %11 = add i32 %10, 3
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %1190, label %13

13:                                               ; preds = %5
  %14 = mul i32 %8, %4
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = shl i32 %6, 6
  br label %264

19:                                               ; preds = %13
  %20 = icmp ult i32 %15, 4
  %21 = select i1 %20, i32 64, i32 -7
  %22 = add nsw i32 %21, %15
  %23 = shl i32 %6, 6
  %24 = add i32 %22, %23
  %25 = sub i32 0, %24
  %26 = trunc i32 %22 to i8
  %27 = add nsw i8 %26, 4
  %28 = sdiv i8 %27, 2
  %29 = sext i8 %28 to i32
  %30 = and i32 %22, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 472
  %33 = add nsw i32 %32, %29
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %129

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
  %79 = select i1 %76, i32 %78, i32 %64
  %80 = select i1 %76, i32 %77, i32 %67
  %81 = select i1 %76, i32 %66, i32 0
  %82 = sub i32 %75, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float addrspace(1)* %0, i64 %83
  %85 = load float, float addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = add nsw i32 %33, 108
  %87 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %86
  store float %85, float addrspace(3)* %87, align 4, !tbaa !6
  %88 = add nsw i32 %82, %79
  %89 = icmp eq i32 %88, %72
  %90 = sub i32 0, %79
  %91 = sub i32 0, %80
  %92 = sub i32 %82, %80
  %93 = select i1 %89, i32 %91, i32 %79
  %94 = select i1 %89, i32 %90, i32 %80
  %95 = select i1 %89, i32 %92, i32 %88
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float addrspace(1)* %0, i64 %96
  %98 = load float, float addrspace(1)* %97, align 4, !tbaa !6, !amdgpu.noclobber !10
  %99 = add nsw i32 %33, 72
  %100 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %99
  store float %98, float addrspace(3)* %100, align 4, !tbaa !6
  %101 = add nsw i32 %33, 144
  %102 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %101
  store float %98, float addrspace(3)* %102, align 4, !tbaa !6
  %103 = add nsw i32 %95, %94
  %104 = icmp eq i32 %103, %72
  %105 = sub i32 0, %94
  %106 = sub i32 0, %93
  %107 = select i1 %104, i32 %105, i32 %93
  %108 = select i1 %104, i32 %106, i32 %94
  %109 = select i1 %104, i32 %82, i32 %103
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float addrspace(1)* %0, i64 %110
  %112 = load float, float addrspace(1)* %111, align 4, !tbaa !6, !amdgpu.noclobber !10
  %113 = add nsw i32 %33, 36
  %114 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %113
  store float %112, float addrspace(3)* %114, align 4, !tbaa !6
  %115 = add nsw i32 %33, 180
  %116 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %115
  store float %112, float addrspace(3)* %116, align 4, !tbaa !6
  %117 = add nsw i32 %109, %107
  %118 = icmp eq i32 %117, %72
  %119 = sub i32 0, %107
  %120 = sub i32 0, %108
  %121 = sub i32 %109, %108
  %122 = select i1 %118, i32 %120, i32 %107
  %123 = select i1 %118, i32 %119, i32 %108
  %124 = select i1 %118, i32 %121, i32 %117
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float addrspace(1)* %0, i64 %125
  %127 = load float, float addrspace(1)* %126, align 4, !tbaa !6, !amdgpu.noclobber !10
  %128 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %33
  store float %127, float addrspace(3)* %128, align 4, !tbaa !6
  br label %256

129:                                              ; preds = %19
  %130 = add nsw i32 %14, -3
  %131 = icmp slt i32 %24, %2
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = shl nsw i32 %2, 1
  %134 = sub i32 -2, %24
  %135 = add i32 %134, %133
  br label %138

136:                                              ; preds = %129
  %137 = icmp slt i32 %24, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %136, %132
  %139 = phi i32 [ %135, %132 ], [ %25, %136 ]
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %139, %138 ], [ %24, %136 ]
  %142 = sdiv i32 %141, 2
  %143 = and i32 %141, 1
  %144 = icmp eq i32 %143, 0
  %145 = sdiv i32 %2, 2
  %146 = and i32 %2, 1
  %147 = add nsw i32 %145, %146
  %148 = sdiv i32 %3, 2
  %149 = and i32 %3, 1
  %150 = add nsw i32 %148, %149
  br i1 %144, label %156, label %151

151:                                              ; preds = %140
  %152 = mul nsw i32 %150, %147
  %153 = add nsw i32 %142, %152
  %154 = mul nsw i32 %3, %2
  %155 = sdiv i32 %154, 2
  br label %158

156:                                              ; preds = %140
  %157 = mul nsw i32 %150, %2
  br label %158

158:                                              ; preds = %156, %151
  %159 = phi i32 [ %157, %156 ], [ %155, %151 ]
  %160 = phi i32 [ %142, %156 ], [ %153, %151 ]
  %161 = phi i32 [ %147, %156 ], [ %145, %151 ]
  %162 = sub nsw i32 %161, %159
  %163 = mul nsw i32 %161, %148
  %164 = icmp eq i32 %149, 0
  %165 = select i1 %164, i32 0, i32 %159
  %166 = add i32 %165, %160
  %167 = add i32 %166, %163
  %168 = sdiv i32 %130, 2
  %169 = mul nsw i32 %161, %168
  %170 = add i32 %160, %159
  %171 = add i32 %170, %169
  %172 = icmp eq i32 %171, %167
  %173 = sub i32 0, %162
  %174 = sub i32 0, %159
  %175 = select i1 %172, i32 %173, i32 %159
  %176 = select i1 %172, i32 %174, i32 %162
  %177 = select i1 %172, i32 %161, i32 0
  %178 = sub i32 %171, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float addrspace(1)* %0, i64 %179
  %181 = load float, float addrspace(1)* %180, align 4, !tbaa !6, !amdgpu.noclobber !10
  %182 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %33
  store float %181, float addrspace(3)* %182, align 4, !tbaa !6
  %183 = add nsw i32 %178, %176
  %184 = icmp eq i32 %183, %167
  %185 = sub i32 0, %176
  %186 = sub i32 0, %175
  %187 = sub i32 %178, %175
  %188 = select i1 %184, i32 %185, i32 %175
  %189 = select i1 %184, i32 %186, i32 %176
  %190 = select i1 %184, i32 %187, i32 %183
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float addrspace(1)* %0, i64 %191
  %193 = load float, float addrspace(1)* %192, align 4, !tbaa !6, !amdgpu.noclobber !10
  %194 = add nsw i32 %33, 36
  %195 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %194
  store float %193, float addrspace(3)* %195, align 4, !tbaa !6
  %196 = add nsw i32 %190, %188
  %197 = icmp eq i32 %196, %167
  %198 = sub i32 0, %188
  %199 = sub i32 0, %189
  %200 = select i1 %197, i32 %199, i32 %188
  %201 = select i1 %197, i32 %198, i32 %189
  %202 = select i1 %197, i32 %178, i32 %196
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float addrspace(1)* %0, i64 %203
  %205 = load float, float addrspace(1)* %204, align 4, !tbaa !6, !amdgpu.noclobber !10
  %206 = add nsw i32 %33, 72
  %207 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %206
  store float %205, float addrspace(3)* %207, align 4, !tbaa !6
  %208 = add nsw i32 %202, %201
  %209 = icmp eq i32 %208, %167
  %210 = sub i32 0, %201
  %211 = sub i32 0, %200
  %212 = sub i32 %202, %200
  %213 = select i1 %209, i32 %210, i32 %200
  %214 = select i1 %209, i32 %211, i32 %201
  %215 = select i1 %209, i32 %212, i32 %208
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float addrspace(1)* %0, i64 %216
  %218 = load float, float addrspace(1)* %217, align 4, !tbaa !6, !amdgpu.noclobber !10
  %219 = add nsw i32 %33, 108
  %220 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %219
  store float %218, float addrspace(3)* %220, align 4, !tbaa !6
  %221 = add nsw i32 %215, %213
  %222 = icmp eq i32 %221, %167
  %223 = sub i32 0, %213
  %224 = sub i32 0, %214
  %225 = select i1 %222, i32 %224, i32 %213
  %226 = select i1 %222, i32 %223, i32 %214
  %227 = select i1 %222, i32 %202, i32 %221
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float addrspace(1)* %0, i64 %228
  %230 = load float, float addrspace(1)* %229, align 4, !tbaa !6, !amdgpu.noclobber !10
  %231 = add nsw i32 %33, 144
  %232 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %231
  store float %230, float addrspace(3)* %232, align 4, !tbaa !6
  %233 = add nsw i32 %227, %226
  %234 = icmp eq i32 %233, %167
  %235 = sub i32 0, %226
  %236 = sub i32 0, %225
  %237 = sub i32 %227, %225
  %238 = select i1 %234, i32 %235, i32 %225
  %239 = select i1 %234, i32 %236, i32 %226
  %240 = select i1 %234, i32 %237, i32 %233
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float addrspace(1)* %0, i64 %241
  %243 = load float, float addrspace(1)* %242, align 4, !tbaa !6, !amdgpu.noclobber !10
  %244 = add nsw i32 %33, 180
  %245 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %244
  store float %243, float addrspace(3)* %245, align 4, !tbaa !6
  %246 = add nsw i32 %240, %238
  %247 = icmp eq i32 %246, %167
  %248 = sub i32 0, %238
  %249 = sub i32 0, %239
  %250 = select i1 %247, i32 %249, i32 %238
  %251 = select i1 %247, i32 %248, i32 %239
  %252 = select i1 %247, i32 %227, i32 %246
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float addrspace(1)* %0, i64 %253
  %255 = load float, float addrspace(1)* %254, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %256

256:                                              ; preds = %158, %63
  %257 = phi i32 [ %122, %63 ], [ %250, %158 ]
  %258 = phi i32 [ %123, %63 ], [ %251, %158 ]
  %259 = phi i32 [ %72, %63 ], [ %167, %158 ]
  %260 = phi i32 [ %124, %63 ], [ %252, %158 ]
  %261 = phi float [ %127, %63 ], [ %255, %158 ]
  %262 = add nsw i32 %33, 216
  %263 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %262
  store float %261, float addrspace(3)* %263, align 4, !tbaa !6
  br label %264

264:                                              ; preds = %256, %17
  %265 = phi i32 [ %18, %17 ], [ %23, %256 ]
  %266 = phi i32 [ 0, %17 ], [ %257, %256 ]
  %267 = phi i32 [ 0, %17 ], [ %258, %256 ]
  %268 = phi i32 [ 0, %17 ], [ %259, %256 ]
  %269 = phi i32 [ 0, %17 ], [ %260, %256 ]
  %270 = phi i32 [ 0, %17 ], [ %33, %256 ]
  %271 = shl nuw nsw i32 %15, 1
  %272 = lshr i32 %15, 5
  %273 = mul nsw i32 %272, -63
  %274 = add nsw i32 %273, %271
  %275 = add i32 %265, %274
  %276 = sub i32 0, %275
  %277 = trunc i32 %274 to i16
  %278 = add nsw i16 %277, 4
  %279 = sdiv i16 %278, 2
  %280 = sext i16 %279 to i32
  %281 = and i32 %274, 1
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %282, i32 0, i32 472
  %284 = add nsw i32 %283, %280
  %285 = icmp eq i32 %7, 0
  br i1 %285, label %286, label %380

286:                                              ; preds = %264
  %287 = icmp slt i32 %275, %2
  br i1 %287, label %292, label %288

288:                                              ; preds = %286
  %289 = shl nsw i32 %2, 1
  %290 = sub i32 %289, %275
  %291 = add i32 %290, -2
  br label %294

292:                                              ; preds = %286
  %293 = icmp slt i32 %275, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %292, %288
  %295 = phi i32 [ %291, %288 ], [ %276, %292 ]
  br label %296

296:                                              ; preds = %294, %292
  %297 = phi i32 [ %295, %294 ], [ %275, %292 ]
  %298 = sdiv i32 %297, 2
  %299 = and i32 %297, 1
  %300 = icmp eq i32 %299, 0
  %301 = sdiv i32 %2, 2
  %302 = and i32 %2, 1
  %303 = add nsw i32 %301, %302
  %304 = sdiv i32 %3, 2
  %305 = and i32 %3, 1
  %306 = add nsw i32 %304, %305
  br i1 %300, label %312, label %307

307:                                              ; preds = %296
  %308 = mul nsw i32 %306, %303
  %309 = add nsw i32 %298, %308
  %310 = mul nsw i32 %3, %2
  %311 = sdiv i32 %310, 2
  br label %314

312:                                              ; preds = %296
  %313 = mul nsw i32 %306, %2
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi i32 [ %313, %312 ], [ %311, %307 ]
  %316 = phi i32 [ %298, %312 ], [ %309, %307 ]
  %317 = phi i32 [ %303, %312 ], [ %301, %307 ]
  %318 = sub nsw i32 %317, %315
  %319 = mul nsw i32 %317, %304
  %320 = icmp eq i32 %305, 0
  %321 = select i1 %320, i32 0, i32 %315
  %322 = add i32 %321, %316
  %323 = add i32 %322, %319
  %324 = sdiv i32 %14, 2
  %325 = mul nsw i32 %317, %324
  %326 = add i32 %325, %316
  %327 = icmp eq i32 %326, %323
  %328 = sub i32 0, %315
  %329 = sub i32 0, %318
  %330 = select i1 %327, i32 %328, i32 %318
  %331 = select i1 %327, i32 %329, i32 %315
  %332 = select i1 %327, i32 %317, i32 0
  %333 = sub i32 %326, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float addrspace(1)* %0, i64 %334
  %336 = load float, float addrspace(1)* %335, align 4, !tbaa !6, !amdgpu.noclobber !10
  %337 = add nsw i32 %284, 108
  %338 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %337
  store float %336, float addrspace(3)* %338, align 4, !tbaa !6
  %339 = add nsw i32 %333, %331
  %340 = icmp eq i32 %339, %323
  %341 = sub i32 0, %331
  %342 = sub i32 0, %330
  %343 = sub i32 %333, %330
  %344 = select i1 %340, i32 %341, i32 %330
  %345 = select i1 %340, i32 %342, i32 %331
  %346 = select i1 %340, i32 %343, i32 %339
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, float addrspace(1)* %0, i64 %347
  %349 = load float, float addrspace(1)* %348, align 4, !tbaa !6, !amdgpu.noclobber !10
  %350 = add nsw i32 %284, 72
  %351 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %350
  store float %349, float addrspace(3)* %351, align 4, !tbaa !6
  %352 = add nsw i32 %284, 144
  %353 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %352
  store float %349, float addrspace(3)* %353, align 4, !tbaa !6
  %354 = add nsw i32 %346, %344
  %355 = icmp eq i32 %354, %323
  %356 = sub i32 0, %344
  %357 = sub i32 0, %345
  %358 = select i1 %355, i32 %357, i32 %344
  %359 = select i1 %355, i32 %356, i32 %345
  %360 = select i1 %355, i32 %333, i32 %354
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float addrspace(1)* %0, i64 %361
  %363 = load float, float addrspace(1)* %362, align 4, !tbaa !6, !amdgpu.noclobber !10
  %364 = add nsw i32 %284, 36
  %365 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %364
  store float %363, float addrspace(3)* %365, align 4, !tbaa !6
  %366 = add nsw i32 %284, 180
  %367 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %366
  store float %363, float addrspace(3)* %367, align 4, !tbaa !6
  %368 = add nsw i32 %360, %359
  %369 = icmp eq i32 %368, %323
  %370 = sub i32 0, %359
  %371 = sub i32 0, %358
  %372 = sub i32 %360, %358
  %373 = select i1 %369, i32 %370, i32 %358
  %374 = select i1 %369, i32 %371, i32 %359
  %375 = select i1 %369, i32 %372, i32 %368
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float addrspace(1)* %0, i64 %376
  %378 = load float, float addrspace(1)* %377, align 4, !tbaa !6, !amdgpu.noclobber !10
  %379 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %284
  store float %378, float addrspace(3)* %379, align 4, !tbaa !6
  br label %507

380:                                              ; preds = %264
  %381 = add nsw i32 %14, -3
  %382 = icmp slt i32 %275, %2
  br i1 %382, label %387, label %383

383:                                              ; preds = %380
  %384 = shl nsw i32 %2, 1
  %385 = sub i32 %384, %275
  %386 = add i32 %385, -2
  br label %389

387:                                              ; preds = %380
  %388 = icmp slt i32 %275, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %387, %383
  %390 = phi i32 [ %386, %383 ], [ %276, %387 ]
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i32 [ %390, %389 ], [ %275, %387 ]
  %393 = sdiv i32 %392, 2
  %394 = and i32 %392, 1
  %395 = icmp eq i32 %394, 0
  %396 = sdiv i32 %2, 2
  %397 = and i32 %2, 1
  %398 = add nsw i32 %396, %397
  %399 = sdiv i32 %3, 2
  %400 = and i32 %3, 1
  %401 = add nsw i32 %399, %400
  br i1 %395, label %407, label %402

402:                                              ; preds = %391
  %403 = mul nsw i32 %401, %398
  %404 = add nsw i32 %393, %403
  %405 = mul nsw i32 %3, %2
  %406 = sdiv i32 %405, 2
  br label %409

407:                                              ; preds = %391
  %408 = mul nsw i32 %401, %2
  br label %409

409:                                              ; preds = %407, %402
  %410 = phi i32 [ %408, %407 ], [ %406, %402 ]
  %411 = phi i32 [ %393, %407 ], [ %404, %402 ]
  %412 = phi i32 [ %398, %407 ], [ %396, %402 ]
  %413 = sub nsw i32 %412, %410
  %414 = mul nsw i32 %412, %399
  %415 = icmp eq i32 %400, 0
  %416 = select i1 %415, i32 0, i32 %410
  %417 = add i32 %416, %411
  %418 = add i32 %417, %414
  %419 = sdiv i32 %381, 2
  %420 = mul nsw i32 %412, %419
  %421 = add i32 %411, %410
  %422 = add i32 %421, %420
  %423 = icmp eq i32 %422, %418
  %424 = sub i32 0, %413
  %425 = sub i32 0, %410
  %426 = select i1 %423, i32 %425, i32 %413
  %427 = select i1 %423, i32 %424, i32 %410
  %428 = select i1 %423, i32 %412, i32 0
  %429 = sub i32 %422, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float addrspace(1)* %0, i64 %430
  %432 = load float, float addrspace(1)* %431, align 4, !tbaa !6, !amdgpu.noclobber !10
  %433 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %284
  store float %432, float addrspace(3)* %433, align 4, !tbaa !6
  %434 = add nsw i32 %429, %426
  %435 = icmp eq i32 %434, %418
  %436 = sub i32 0, %426
  %437 = sub i32 0, %427
  %438 = sub i32 %429, %427
  %439 = select i1 %435, i32 %437, i32 %426
  %440 = select i1 %435, i32 %436, i32 %427
  %441 = select i1 %435, i32 %438, i32 %434
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds float, float addrspace(1)* %0, i64 %442
  %444 = load float, float addrspace(1)* %443, align 4, !tbaa !6, !amdgpu.noclobber !10
  %445 = add nsw i32 %284, 36
  %446 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %445
  store float %444, float addrspace(3)* %446, align 4, !tbaa !6
  %447 = add nsw i32 %441, %440
  %448 = icmp eq i32 %447, %418
  %449 = sub i32 0, %440
  %450 = sub i32 0, %439
  %451 = select i1 %448, i32 %449, i32 %439
  %452 = select i1 %448, i32 %450, i32 %440
  %453 = select i1 %448, i32 %429, i32 %447
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds float, float addrspace(1)* %0, i64 %454
  %456 = load float, float addrspace(1)* %455, align 4, !tbaa !6, !amdgpu.noclobber !10
  %457 = add nsw i32 %284, 72
  %458 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %457
  store float %456, float addrspace(3)* %458, align 4, !tbaa !6
  %459 = add nsw i32 %453, %451
  %460 = icmp eq i32 %459, %418
  %461 = sub i32 0, %451
  %462 = sub i32 0, %452
  %463 = sub i32 %453, %452
  %464 = select i1 %460, i32 %462, i32 %451
  %465 = select i1 %460, i32 %461, i32 %452
  %466 = select i1 %460, i32 %463, i32 %459
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float addrspace(1)* %0, i64 %467
  %469 = load float, float addrspace(1)* %468, align 4, !tbaa !6, !amdgpu.noclobber !10
  %470 = add nsw i32 %284, 108
  %471 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %470
  store float %469, float addrspace(3)* %471, align 4, !tbaa !6
  %472 = add nsw i32 %466, %465
  %473 = icmp eq i32 %472, %418
  %474 = sub i32 0, %465
  %475 = sub i32 0, %464
  %476 = select i1 %473, i32 %474, i32 %464
  %477 = select i1 %473, i32 %475, i32 %465
  %478 = select i1 %473, i32 %453, i32 %472
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds float, float addrspace(1)* %0, i64 %479
  %481 = load float, float addrspace(1)* %480, align 4, !tbaa !6, !amdgpu.noclobber !10
  %482 = add nsw i32 %284, 144
  %483 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %482
  store float %481, float addrspace(3)* %483, align 4, !tbaa !6
  %484 = add nsw i32 %478, %476
  %485 = icmp eq i32 %484, %418
  %486 = sub i32 0, %476
  %487 = sub i32 0, %477
  %488 = sub i32 %478, %477
  %489 = select i1 %485, i32 %487, i32 %476
  %490 = select i1 %485, i32 %486, i32 %477
  %491 = select i1 %485, i32 %488, i32 %484
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds float, float addrspace(1)* %0, i64 %492
  %494 = load float, float addrspace(1)* %493, align 4, !tbaa !6, !amdgpu.noclobber !10
  %495 = add nsw i32 %284, 180
  %496 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %495
  store float %494, float addrspace(3)* %496, align 4, !tbaa !6
  %497 = add nsw i32 %491, %490
  %498 = icmp eq i32 %497, %418
  %499 = sub i32 0, %490
  %500 = sub i32 0, %489
  %501 = select i1 %498, i32 %499, i32 %489
  %502 = select i1 %498, i32 %500, i32 %490
  %503 = select i1 %498, i32 %478, i32 %497
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds float, float addrspace(1)* %0, i64 %504
  %506 = load float, float addrspace(1)* %505, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %507

507:                                              ; preds = %409, %314
  %508 = phi i32 [ %323, %314 ], [ %418, %409 ]
  %509 = phi i32 [ %373, %314 ], [ %501, %409 ]
  %510 = phi i32 [ %374, %314 ], [ %502, %409 ]
  %511 = phi i32 [ %375, %314 ], [ %503, %409 ]
  %512 = phi float [ %378, %314 ], [ %506, %409 ]
  %513 = add nsw i32 %284, 216
  %514 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %513
  store float %512, float addrspace(3)* %514, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %515 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %15
  %516 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %517 = fmul contract float %516, 0x3FF3AECB00000000
  store float %517, float addrspace(3)* %515, align 4, !tbaa !6
  %518 = add nuw nsw i32 %15, 472
  %519 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %518
  %520 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %521 = fmul contract float %520, 0x3FEA033860000000
  store float %521, float addrspace(3)* %519, align 4, !tbaa !6
  %522 = add nuw nsw i32 %15, 64
  %523 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %522
  %524 = load float, float addrspace(3)* %523, align 4, !tbaa !6
  %525 = fmul contract float %524, 0x3FF3AECB00000000
  store float %525, float addrspace(3)* %523, align 4, !tbaa !6
  %526 = add nuw nsw i32 %15, 536
  %527 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %526
  %528 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %529 = fmul contract float %528, 0x3FEA033860000000
  store float %529, float addrspace(3)* %527, align 4, !tbaa !6
  %530 = add nuw nsw i32 %15, 128
  %531 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %530
  %532 = load float, float addrspace(3)* %531, align 4, !tbaa !6
  %533 = fmul contract float %532, 0x3FF3AECB00000000
  store float %533, float addrspace(3)* %531, align 4, !tbaa !6
  %534 = add nuw nsw i32 %15, 600
  %535 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %534
  %536 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %537 = fmul contract float %536, 0x3FEA033860000000
  store float %537, float addrspace(3)* %535, align 4, !tbaa !6
  %538 = icmp ult i32 %15, 60
  br i1 %538, label %539, label %548

539:                                              ; preds = %507
  %540 = add nuw nsw i32 %15, 192
  %541 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %540
  %542 = load float, float addrspace(3)* %541, align 4, !tbaa !6
  %543 = fmul contract float %542, 0x3FF3AECB00000000
  store float %543, float addrspace(3)* %541, align 4, !tbaa !6
  %544 = add nuw nsw i32 %15, 664
  %545 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %544
  %546 = load float, float addrspace(3)* %545, align 4, !tbaa !6
  %547 = fmul contract float %546, 0x3FEA033860000000
  store float %547, float addrspace(3)* %545, align 4, !tbaa !6
  br label %548

548:                                              ; preds = %539, %507
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %549 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %550 = add nuw nsw i32 %15, 473
  %551 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %550
  %552 = load float, float addrspace(3)* %551, align 4, !tbaa !6
  %553 = add nuw nsw i32 %15, 1
  %554 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %553
  %555 = fadd contract float %549, %552
  %556 = fmul contract float %555, 0x3FDC626AA0000000
  %557 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %558 = fsub contract float %557, %556
  store float %558, float addrspace(3)* %554, align 4, !tbaa !6
  %559 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %560 = add nuw nsw i32 %15, 537
  %561 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %560
  %562 = load float, float addrspace(3)* %561, align 4, !tbaa !6
  %563 = add nuw nsw i32 %15, 65
  %564 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %563
  %565 = fadd contract float %559, %562
  %566 = fmul contract float %565, 0x3FDC626AA0000000
  %567 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %568 = fsub contract float %567, %566
  store float %568, float addrspace(3)* %564, align 4, !tbaa !6
  %569 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %570 = add nuw nsw i32 %15, 601
  %571 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %570
  %572 = load float, float addrspace(3)* %571, align 4, !tbaa !6
  %573 = add nuw nsw i32 %15, 129
  %574 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %573
  %575 = fadd contract float %569, %572
  %576 = fmul contract float %575, 0x3FDC626AA0000000
  %577 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %578 = fsub contract float %577, %576
  store float %578, float addrspace(3)* %574, align 4, !tbaa !6
  %579 = icmp ult i32 %15, 59
  br i1 %579, label %580, label %593

580:                                              ; preds = %548
  %581 = add nuw nsw i32 %15, 664
  %582 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %581
  %583 = load float, float addrspace(3)* %582, align 4, !tbaa !6
  %584 = add nuw nsw i32 %15, 665
  %585 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %584
  %586 = load float, float addrspace(3)* %585, align 4, !tbaa !6
  %587 = add nuw nsw i32 %15, 193
  %588 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %587
  %589 = fadd contract float %583, %586
  %590 = fmul contract float %589, 0x3FDC626AA0000000
  %591 = load float, float addrspace(3)* %588, align 4, !tbaa !6
  %592 = fsub contract float %591, %590
  store float %592, float addrspace(3)* %588, align 4, !tbaa !6
  br label %593

593:                                              ; preds = %580, %548
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %594 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %595 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %596 = fadd contract float %594, %595
  %597 = fmul contract float %596, 0x3FEC40CEC0000000
  %598 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %599 = fsub contract float %598, %597
  store float %599, float addrspace(3)* %519, align 4, !tbaa !6
  %600 = load float, float addrspace(3)* %523, align 4, !tbaa !6
  %601 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %602 = fadd contract float %600, %601
  %603 = fmul contract float %602, 0x3FEC40CEC0000000
  %604 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %605 = fsub contract float %604, %603
  store float %605, float addrspace(3)* %527, align 4, !tbaa !6
  %606 = load float, float addrspace(3)* %531, align 4, !tbaa !6
  %607 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %608 = fadd contract float %606, %607
  %609 = fmul contract float %608, 0x3FEC40CEC0000000
  %610 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %611 = fsub contract float %610, %609
  store float %611, float addrspace(3)* %535, align 4, !tbaa !6
  br i1 %579, label %612, label %625

612:                                              ; preds = %593
  %613 = add nuw nsw i32 %15, 192
  %614 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %613
  %615 = load float, float addrspace(3)* %614, align 4, !tbaa !6
  %616 = add nuw nsw i32 %15, 193
  %617 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %616
  %618 = load float, float addrspace(3)* %617, align 4, !tbaa !6
  %619 = add nuw nsw i32 %15, 664
  %620 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %619
  %621 = fadd contract float %615, %618
  %622 = fmul contract float %621, 0x3FEC40CEC0000000
  %623 = load float, float addrspace(3)* %620, align 4, !tbaa !6
  %624 = fsub contract float %623, %622
  store float %624, float addrspace(3)* %620, align 4, !tbaa !6
  br label %625

625:                                              ; preds = %612, %593
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %626 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %627 = load float, float addrspace(3)* %551, align 4, !tbaa !6
  %628 = fadd contract float %626, %627
  %629 = fmul contract float %628, 0x3FAB2035C0000000
  %630 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %631 = fadd contract float %630, %629
  store float %631, float addrspace(3)* %554, align 4, !tbaa !6
  %632 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %633 = load float, float addrspace(3)* %561, align 4, !tbaa !6
  %634 = fadd contract float %632, %633
  %635 = fmul contract float %634, 0x3FAB2035C0000000
  %636 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %637 = fadd contract float %636, %635
  store float %637, float addrspace(3)* %564, align 4, !tbaa !6
  %638 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %639 = load float, float addrspace(3)* %571, align 4, !tbaa !6
  %640 = fadd contract float %638, %639
  %641 = fmul contract float %640, 0x3FAB2035C0000000
  %642 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %643 = fadd contract float %642, %641
  store float %643, float addrspace(3)* %574, align 4, !tbaa !6
  br i1 %579, label %644, label %657

644:                                              ; preds = %625
  %645 = add nuw nsw i32 %15, 664
  %646 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %645
  %647 = load float, float addrspace(3)* %646, align 4, !tbaa !6
  %648 = add nuw nsw i32 %15, 665
  %649 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %648
  %650 = load float, float addrspace(3)* %649, align 4, !tbaa !6
  %651 = add nuw nsw i32 %15, 193
  %652 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %651
  %653 = fadd contract float %647, %650
  %654 = fmul contract float %653, 0x3FAB2035C0000000
  %655 = load float, float addrspace(3)* %652, align 4, !tbaa !6
  %656 = fadd contract float %655, %654
  store float %656, float addrspace(3)* %652, align 4, !tbaa !6
  br label %657

657:                                              ; preds = %644, %625
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %658 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %659 = load float, float addrspace(3)* %554, align 4, !tbaa !6
  %660 = fadd contract float %658, %659
  %661 = fmul contract float %660, 0x3FF960CE60000000
  %662 = load float, float addrspace(3)* %519, align 4, !tbaa !6
  %663 = fadd contract float %662, %661
  store float %663, float addrspace(3)* %519, align 4, !tbaa !6
  %664 = load float, float addrspace(3)* %523, align 4, !tbaa !6
  %665 = load float, float addrspace(3)* %564, align 4, !tbaa !6
  %666 = fadd contract float %664, %665
  %667 = fmul contract float %666, 0x3FF960CE60000000
  %668 = load float, float addrspace(3)* %527, align 4, !tbaa !6
  %669 = fadd contract float %668, %667
  store float %669, float addrspace(3)* %527, align 4, !tbaa !6
  %670 = load float, float addrspace(3)* %531, align 4, !tbaa !6
  %671 = load float, float addrspace(3)* %574, align 4, !tbaa !6
  %672 = fadd contract float %670, %671
  %673 = fmul contract float %672, 0x3FF960CE60000000
  %674 = load float, float addrspace(3)* %535, align 4, !tbaa !6
  %675 = fadd contract float %674, %673
  store float %675, float addrspace(3)* %535, align 4, !tbaa !6
  br i1 %579, label %676, label %689

676:                                              ; preds = %657
  %677 = add nuw nsw i32 %15, 192
  %678 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %677
  %679 = load float, float addrspace(3)* %678, align 4, !tbaa !6
  %680 = add nuw nsw i32 %15, 193
  %681 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %680
  %682 = load float, float addrspace(3)* %681, align 4, !tbaa !6
  %683 = add nuw nsw i32 %15, 664
  %684 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %683
  %685 = fadd contract float %679, %682
  %686 = fmul contract float %685, 0x3FF960CE60000000
  %687 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %688 = fadd contract float %687, %686
  store float %688, float addrspace(3)* %684, align 4, !tbaa !6
  br label %689

689:                                              ; preds = %676, %657
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %690 = add i32 %265, %15
  %691 = icmp slt i32 %690, %2
  br i1 %691, label %692, label %697

692:                                              ; preds = %689
  %693 = mul nsw i32 %3, %2
  %694 = add nsw i32 %690, %693
  %695 = mul nsw i32 %14, %2
  %696 = add nsw i32 %690, %695
  br label %697

697:                                              ; preds = %692, %689
  %698 = phi i32 [ %694, %692 ], [ 0, %689 ]
  %699 = phi i32 [ %2, %692 ], [ 0, %689 ]
  %700 = phi i32 [ %696, %692 ], [ 0, %689 ]
  %701 = add nuw nsw i32 %15, 4
  %702 = lshr i32 %701, 1
  %703 = and i32 %15, 1
  %704 = icmp eq i32 %703, 0
  %705 = select i1 %704, i32 0, i32 472
  %706 = add nuw nsw i32 %705, %702
  %707 = icmp sgt i32 %4, 0
  br i1 %707, label %708, label %3004

708:                                              ; preds = %697
  %709 = add nsw i32 %284, 252
  %710 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %709
  %711 = add nsw i32 %284, 288
  %712 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %711
  %713 = add nsw i32 %284, 324
  %714 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %713
  %715 = add nsw i32 %284, 360
  %716 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %715
  %717 = add nsw i32 %284, 396
  %718 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %717
  %719 = add nsw i32 %284, 432
  %720 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %719
  %721 = add nsw i32 %270, 252
  %722 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %721
  %723 = add nsw i32 %270, 288
  %724 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %723
  %725 = add nsw i32 %270, 324
  %726 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %725
  %727 = add nsw i32 %270, 360
  %728 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %727
  %729 = add nsw i32 %270, 396
  %730 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %729
  %731 = add nsw i32 %270, 432
  %732 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %731
  %733 = add nuw nsw i32 %15, 252
  %734 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %733
  %735 = add nuw nsw i32 %15, 724
  %736 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %735
  %737 = add nuw nsw i32 %15, 316
  %738 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %737
  %739 = add nuw nsw i32 %15, 788
  %740 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %739
  %741 = add nuw nsw i32 %15, 380
  %742 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %741
  %743 = add nuw nsw i32 %15, 852
  %744 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %743
  %745 = icmp ult i32 %15, 24
  %746 = add nuw nsw i32 %15, 444
  %747 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %746
  %748 = add nuw nsw i32 %15, 916
  %749 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %748
  %750 = add nuw nsw i32 %15, 725
  %751 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %750
  %752 = add nuw nsw i32 %15, 253
  %753 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %752
  %754 = add nuw nsw i32 %15, 789
  %755 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %754
  %756 = add nuw nsw i32 %15, 317
  %757 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %756
  %758 = add nuw nsw i32 %15, 853
  %759 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %758
  %760 = add nuw nsw i32 %15, 381
  %761 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %760
  %762 = icmp ult i32 %15, 23
  %763 = add nuw nsw i32 %15, 917
  %764 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %763
  %765 = add nuw nsw i32 %15, 445
  %766 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %765
  %767 = add nuw nsw i32 %706, 216
  %768 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %706
  %769 = add nuw nsw i32 %706, 36
  %770 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %769
  %771 = add nuw nsw i32 %706, 72
  %772 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %771
  %773 = add nuw nsw i32 %706, 108
  %774 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %773
  %775 = add nuw nsw i32 %706, 144
  %776 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %775
  %777 = add nuw nsw i32 %706, 180
  %778 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %777
  %779 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %767
  %780 = add nuw nsw i32 %706, 252
  %781 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %780
  %782 = add nuw nsw i32 %706, 288
  %783 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %782
  %784 = add nuw nsw i32 %706, 324
  %785 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %784
  %786 = add nuw nsw i32 %706, 360
  %787 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %786
  %788 = add nuw nsw i32 %706, 396
  %789 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %788
  %790 = add nuw nsw i32 %706, 432
  %791 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %790
  br label %792

792:                                              ; preds = %1186, %708
  %793 = phi i32 [ 0, %708 ], [ %1188, %1186 ]
  %794 = phi i32 [ %511, %708 ], [ %860, %1186 ]
  %795 = phi i32 [ %510, %708 ], [ %859, %1186 ]
  %796 = phi i32 [ %509, %708 ], [ %858, %1186 ]
  %797 = phi i32 [ %269, %708 ], [ %931, %1186 ]
  %798 = phi i32 [ %700, %708 ], [ %1187, %1186 ]
  %799 = phi i32 [ %267, %708 ], [ %930, %1186 ]
  %800 = phi i32 [ %266, %708 ], [ %929, %1186 ]
  %801 = add nsw i32 %796, %794
  %802 = icmp eq i32 %801, %508
  %803 = sub i32 0, %796
  %804 = sub i32 0, %795
  %805 = sub i32 %794, %795
  %806 = select i1 %802, i32 %804, i32 %796
  %807 = select i1 %802, i32 %803, i32 %795
  %808 = select i1 %802, i32 %805, i32 %801
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds float, float addrspace(1)* %0, i64 %809
  %811 = load float, float addrspace(1)* %810, align 4, !tbaa !6
  store float %811, float addrspace(3)* %710, align 4, !tbaa !6
  %812 = add nsw i32 %808, %807
  %813 = icmp eq i32 %812, %508
  %814 = sub i32 0, %807
  %815 = sub i32 0, %806
  %816 = select i1 %813, i32 %814, i32 %806
  %817 = select i1 %813, i32 %815, i32 %807
  %818 = select i1 %813, i32 %794, i32 %812
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds float, float addrspace(1)* %0, i64 %819
  %821 = load float, float addrspace(1)* %820, align 4, !tbaa !6
  store float %821, float addrspace(3)* %712, align 4, !tbaa !6
  %822 = add nsw i32 %818, %816
  %823 = icmp eq i32 %822, %508
  %824 = sub i32 0, %816
  %825 = sub i32 0, %817
  %826 = sub i32 %818, %817
  %827 = select i1 %823, i32 %825, i32 %816
  %828 = select i1 %823, i32 %824, i32 %817
  %829 = select i1 %823, i32 %826, i32 %822
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds float, float addrspace(1)* %0, i64 %830
  %832 = load float, float addrspace(1)* %831, align 4, !tbaa !6
  store float %832, float addrspace(3)* %714, align 4, !tbaa !6
  %833 = add nsw i32 %829, %828
  %834 = icmp eq i32 %833, %508
  %835 = sub i32 0, %828
  %836 = sub i32 0, %827
  %837 = select i1 %834, i32 %835, i32 %827
  %838 = select i1 %834, i32 %836, i32 %828
  %839 = select i1 %834, i32 %818, i32 %833
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds float, float addrspace(1)* %0, i64 %840
  %842 = load float, float addrspace(1)* %841, align 4, !tbaa !6
  store float %842, float addrspace(3)* %716, align 4, !tbaa !6
  %843 = add nsw i32 %839, %837
  %844 = icmp eq i32 %843, %508
  %845 = sub i32 0, %837
  %846 = sub i32 0, %838
  %847 = sub i32 %839, %838
  %848 = select i1 %844, i32 %846, i32 %837
  %849 = select i1 %844, i32 %845, i32 %838
  %850 = select i1 %844, i32 %847, i32 %843
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds float, float addrspace(1)* %0, i64 %851
  %853 = load float, float addrspace(1)* %852, align 4, !tbaa !6
  store float %853, float addrspace(3)* %718, align 4, !tbaa !6
  %854 = add nsw i32 %850, %849
  %855 = icmp eq i32 %854, %508
  %856 = sub i32 0, %849
  %857 = sub i32 0, %848
  %858 = select i1 %855, i32 %856, i32 %848
  %859 = select i1 %855, i32 %857, i32 %849
  %860 = select i1 %855, i32 %839, i32 %854
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds float, float addrspace(1)* %0, i64 %861
  %863 = load float, float addrspace(1)* %862, align 4, !tbaa !6
  store float %863, float addrspace(3)* %720, align 4, !tbaa !6
  br i1 %16, label %864, label %928

864:                                              ; preds = %792
  %865 = add nsw i32 %799, %797
  %866 = icmp eq i32 %865, %268
  %867 = sub i32 0, %799
  %868 = sub i32 0, %800
  %869 = sub i32 %797, %800
  %870 = select i1 %866, i32 %867, i32 %800
  %871 = select i1 %866, i32 %868, i32 %799
  %872 = select i1 %866, i32 %869, i32 %865
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds float, float addrspace(1)* %0, i64 %873
  %875 = load float, float addrspace(1)* %874, align 4, !tbaa !6
  store float %875, float addrspace(3)* %722, align 4, !tbaa !6
  %876 = add nsw i32 %872, %870
  %877 = icmp eq i32 %876, %268
  %878 = sub i32 0, %870
  %879 = sub i32 0, %871
  %880 = select i1 %877, i32 %879, i32 %870
  %881 = select i1 %877, i32 %878, i32 %871
  %882 = select i1 %877, i32 %797, i32 %876
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds float, float addrspace(1)* %0, i64 %883
  %885 = load float, float addrspace(1)* %884, align 4, !tbaa !6
  store float %885, float addrspace(3)* %724, align 4, !tbaa !6
  %886 = add nsw i32 %882, %881
  %887 = icmp eq i32 %886, %268
  %888 = sub i32 0, %881
  %889 = sub i32 0, %880
  %890 = sub i32 %882, %880
  %891 = select i1 %887, i32 %888, i32 %880
  %892 = select i1 %887, i32 %889, i32 %881
  %893 = select i1 %887, i32 %890, i32 %886
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds float, float addrspace(1)* %0, i64 %894
  %896 = load float, float addrspace(1)* %895, align 4, !tbaa !6
  store float %896, float addrspace(3)* %726, align 4, !tbaa !6
  %897 = add nsw i32 %893, %891
  %898 = icmp eq i32 %897, %268
  %899 = sub i32 0, %891
  %900 = sub i32 0, %892
  %901 = select i1 %898, i32 %900, i32 %891
  %902 = select i1 %898, i32 %899, i32 %892
  %903 = select i1 %898, i32 %882, i32 %897
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds float, float addrspace(1)* %0, i64 %904
  %906 = load float, float addrspace(1)* %905, align 4, !tbaa !6
  store float %906, float addrspace(3)* %728, align 4, !tbaa !6
  %907 = add nsw i32 %903, %902
  %908 = icmp eq i32 %907, %268
  %909 = sub i32 0, %902
  %910 = sub i32 0, %901
  %911 = sub i32 %903, %901
  %912 = select i1 %908, i32 %909, i32 %901
  %913 = select i1 %908, i32 %910, i32 %902
  %914 = select i1 %908, i32 %911, i32 %907
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds float, float addrspace(1)* %0, i64 %915
  %917 = load float, float addrspace(1)* %916, align 4, !tbaa !6
  store float %917, float addrspace(3)* %730, align 4, !tbaa !6
  %918 = add nsw i32 %914, %912
  %919 = icmp eq i32 %918, %268
  %920 = sub i32 0, %912
  %921 = sub i32 0, %913
  %922 = select i1 %919, i32 %921, i32 %912
  %923 = select i1 %919, i32 %920, i32 %913
  %924 = select i1 %919, i32 %903, i32 %918
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds float, float addrspace(1)* %0, i64 %925
  %927 = load float, float addrspace(1)* %926, align 4, !tbaa !6
  store float %927, float addrspace(3)* %732, align 4, !tbaa !6
  br label %928

928:                                              ; preds = %864, %792
  %929 = phi i32 [ %922, %864 ], [ %800, %792 ]
  %930 = phi i32 [ %923, %864 ], [ %799, %792 ]
  %931 = phi i32 [ %924, %864 ], [ %797, %792 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %932 = load float, float addrspace(3)* %734, align 4, !tbaa !6
  %933 = fmul contract float %932, 0x3FF3AECB00000000
  store float %933, float addrspace(3)* %734, align 4, !tbaa !6
  %934 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %935 = fmul contract float %934, 0x3FEA033860000000
  store float %935, float addrspace(3)* %736, align 4, !tbaa !6
  %936 = load float, float addrspace(3)* %738, align 4, !tbaa !6
  %937 = fmul contract float %936, 0x3FF3AECB00000000
  store float %937, float addrspace(3)* %738, align 4, !tbaa !6
  %938 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %939 = fmul contract float %938, 0x3FEA033860000000
  store float %939, float addrspace(3)* %740, align 4, !tbaa !6
  %940 = load float, float addrspace(3)* %742, align 4, !tbaa !6
  %941 = fmul contract float %940, 0x3FF3AECB00000000
  store float %941, float addrspace(3)* %742, align 4, !tbaa !6
  %942 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %943 = fmul contract float %942, 0x3FEA033860000000
  store float %943, float addrspace(3)* %744, align 4, !tbaa !6
  br i1 %745, label %944, label %949

944:                                              ; preds = %928
  %945 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %946 = fmul contract float %945, 0x3FF3AECB00000000
  store float %946, float addrspace(3)* %747, align 4, !tbaa !6
  %947 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %948 = fmul contract float %947, 0x3FEA033860000000
  store float %948, float addrspace(3)* %749, align 4, !tbaa !6
  br label %949

949:                                              ; preds = %944, %928
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %950 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %951 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %952 = fadd contract float %950, %951
  %953 = fmul contract float %952, 0x3FDC626AA0000000
  %954 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %955 = fsub contract float %954, %953
  store float %955, float addrspace(3)* %753, align 4, !tbaa !6
  %956 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %957 = load float, float addrspace(3)* %755, align 4, !tbaa !6
  %958 = fadd contract float %956, %957
  %959 = fmul contract float %958, 0x3FDC626AA0000000
  %960 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %961 = fsub contract float %960, %959
  store float %961, float addrspace(3)* %757, align 4, !tbaa !6
  %962 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %963 = load float, float addrspace(3)* %759, align 4, !tbaa !6
  %964 = fadd contract float %962, %963
  %965 = fmul contract float %964, 0x3FDC626AA0000000
  %966 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %967 = fsub contract float %966, %965
  store float %967, float addrspace(3)* %761, align 4, !tbaa !6
  br i1 %762, label %968, label %975

968:                                              ; preds = %949
  %969 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %970 = load float, float addrspace(3)* %764, align 4, !tbaa !6
  %971 = fadd contract float %969, %970
  %972 = fmul contract float %971, 0x3FDC626AA0000000
  %973 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %974 = fsub contract float %973, %972
  store float %974, float addrspace(3)* %766, align 4, !tbaa !6
  br label %975

975:                                              ; preds = %968, %949
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %976 = load float, float addrspace(3)* %734, align 4, !tbaa !6
  %977 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %978 = fadd contract float %976, %977
  %979 = fmul contract float %978, 0x3FEC40CEC0000000
  %980 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %981 = fsub contract float %980, %979
  store float %981, float addrspace(3)* %736, align 4, !tbaa !6
  %982 = load float, float addrspace(3)* %738, align 4, !tbaa !6
  %983 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %984 = fadd contract float %982, %983
  %985 = fmul contract float %984, 0x3FEC40CEC0000000
  %986 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %987 = fsub contract float %986, %985
  store float %987, float addrspace(3)* %740, align 4, !tbaa !6
  %988 = load float, float addrspace(3)* %742, align 4, !tbaa !6
  %989 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %990 = fadd contract float %988, %989
  %991 = fmul contract float %990, 0x3FEC40CEC0000000
  %992 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %993 = fsub contract float %992, %991
  store float %993, float addrspace(3)* %744, align 4, !tbaa !6
  br i1 %762, label %994, label %1001

994:                                              ; preds = %975
  %995 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %996 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %997 = fadd contract float %995, %996
  %998 = fmul contract float %997, 0x3FEC40CEC0000000
  %999 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1000 = fsub contract float %999, %998
  store float %1000, float addrspace(3)* %749, align 4, !tbaa !6
  br label %1001

1001:                                             ; preds = %994, %975
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1002 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %1003 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %1004 = fadd contract float %1002, %1003
  %1005 = fmul contract float %1004, 0x3FAB2035C0000000
  %1006 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1007 = fadd contract float %1006, %1005
  store float %1007, float addrspace(3)* %753, align 4, !tbaa !6
  %1008 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %1009 = load float, float addrspace(3)* %755, align 4, !tbaa !6
  %1010 = fadd contract float %1008, %1009
  %1011 = fmul contract float %1010, 0x3FAB2035C0000000
  %1012 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %1013 = fadd contract float %1012, %1011
  store float %1013, float addrspace(3)* %757, align 4, !tbaa !6
  %1014 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %1015 = load float, float addrspace(3)* %759, align 4, !tbaa !6
  %1016 = fadd contract float %1014, %1015
  %1017 = fmul contract float %1016, 0x3FAB2035C0000000
  %1018 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %1019 = fadd contract float %1018, %1017
  store float %1019, float addrspace(3)* %761, align 4, !tbaa !6
  br i1 %762, label %1020, label %1027

1020:                                             ; preds = %1001
  %1021 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1022 = load float, float addrspace(3)* %764, align 4, !tbaa !6
  %1023 = fadd contract float %1021, %1022
  %1024 = fmul contract float %1023, 0x3FAB2035C0000000
  %1025 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %1026 = fadd contract float %1025, %1024
  store float %1026, float addrspace(3)* %766, align 4, !tbaa !6
  br label %1027

1027:                                             ; preds = %1020, %1001
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1028 = load float, float addrspace(3)* %734, align 4, !tbaa !6
  %1029 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1030 = fadd contract float %1028, %1029
  %1031 = fmul contract float %1030, 0x3FF960CE60000000
  %1032 = load float, float addrspace(3)* %736, align 4, !tbaa !6
  %1033 = fadd contract float %1032, %1031
  store float %1033, float addrspace(3)* %736, align 4, !tbaa !6
  %1034 = load float, float addrspace(3)* %738, align 4, !tbaa !6
  %1035 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %1036 = fadd contract float %1034, %1035
  %1037 = fmul contract float %1036, 0x3FF960CE60000000
  %1038 = load float, float addrspace(3)* %740, align 4, !tbaa !6
  %1039 = fadd contract float %1038, %1037
  store float %1039, float addrspace(3)* %740, align 4, !tbaa !6
  %1040 = load float, float addrspace(3)* %742, align 4, !tbaa !6
  %1041 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %1042 = fadd contract float %1040, %1041
  %1043 = fmul contract float %1042, 0x3FF960CE60000000
  %1044 = load float, float addrspace(3)* %744, align 4, !tbaa !6
  %1045 = fadd contract float %1044, %1043
  store float %1045, float addrspace(3)* %744, align 4, !tbaa !6
  br i1 %762, label %1046, label %1053

1046:                                             ; preds = %1027
  %1047 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %1048 = load float, float addrspace(3)* %766, align 4, !tbaa !6
  %1049 = fadd contract float %1047, %1048
  %1050 = fmul contract float %1049, 0x3FF960CE60000000
  %1051 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1052 = fadd contract float %1051, %1050
  store float %1052, float addrspace(3)* %749, align 4, !tbaa !6
  br label %1053

1053:                                             ; preds = %1046, %1027
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1054 = load float, float addrspace(3)* %779, align 4, !tbaa !6
  %1055 = load float, float addrspace(3)* %781, align 4, !tbaa !6
  %1056 = load float, float addrspace(3)* %783, align 4, !tbaa !6
  %1057 = load float, float addrspace(3)* %785, align 4, !tbaa !6
  %1058 = load float, float addrspace(3)* %787, align 4, !tbaa !6
  %1059 = load float, float addrspace(3)* %789, align 4, !tbaa !6
  %1060 = load float, float addrspace(3)* %791, align 4, !tbaa !6
  %1061 = load float, float addrspace(3)* %768, align 4, !tbaa !6
  %1062 = fmul contract float %1061, 0x3FEA033860000000
  store float %1062, float addrspace(3)* %768, align 4, !tbaa !6
  %1063 = load float, float addrspace(3)* %770, align 4, !tbaa !6
  %1064 = fmul contract float %1063, 0x3FF3AECB00000000
  %1065 = load float, float addrspace(3)* %772, align 4, !tbaa !6
  %1066 = fmul contract float %1065, 0x3FEA033860000000
  %1067 = load float, float addrspace(3)* %774, align 4, !tbaa !6
  %1068 = fmul contract float %1067, 0x3FF3AECB00000000
  %1069 = load float, float addrspace(3)* %776, align 4, !tbaa !6
  %1070 = fmul contract float %1069, 0x3FEA033860000000
  %1071 = load float, float addrspace(3)* %778, align 4, !tbaa !6
  %1072 = fmul contract float %1071, 0x3FF3AECB00000000
  %1073 = fmul contract float %1054, 0x3FEA033860000000
  %1074 = fmul contract float %1055, 0x3FF3AECB00000000
  %1075 = fmul contract float %1056, 0x3FEA033860000000
  %1076 = fmul contract float %1057, 0x3FF3AECB00000000
  %1077 = fmul contract float %1058, 0x3FEA033860000000
  %1078 = fmul contract float %1059, 0x3FF3AECB00000000
  %1079 = fmul contract float %1060, 0x3FEA033860000000
  store float %1079, float addrspace(3)* %791, align 4, !tbaa !6
  %1080 = fadd contract float %1062, %1066
  %1081 = fmul contract float %1080, 0x3FDC626AA0000000
  %1082 = fsub contract float %1064, %1081
  %1083 = fadd contract float %1066, %1070
  %1084 = fmul contract float %1083, 0x3FDC626AA0000000
  %1085 = fsub contract float %1068, %1084
  %1086 = fadd contract float %1073, %1070
  %1087 = fmul contract float %1086, 0x3FDC626AA0000000
  %1088 = fsub contract float %1072, %1087
  %1089 = fadd contract float %1073, %1075
  %1090 = fmul contract float %1089, 0x3FDC626AA0000000
  %1091 = fsub contract float %1074, %1090
  %1092 = fadd contract float %1075, %1077
  %1093 = fmul contract float %1092, 0x3FDC626AA0000000
  %1094 = fsub contract float %1076, %1093
  %1095 = fadd contract float %1077, %1079
  %1096 = fmul contract float %1095, 0x3FDC626AA0000000
  %1097 = fsub contract float %1078, %1096
  %1098 = fadd contract float %1082, %1085
  %1099 = fmul contract float %1098, 0x3FEC40CEC0000000
  %1100 = fsub contract float %1066, %1099
  %1101 = fadd contract float %1085, %1088
  %1102 = fmul contract float %1101, 0x3FEC40CEC0000000
  %1103 = fsub contract float %1070, %1102
  %1104 = fadd contract float %1091, %1088
  %1105 = fmul contract float %1104, 0x3FEC40CEC0000000
  %1106 = fsub contract float %1073, %1105
  %1107 = fadd contract float %1091, %1094
  %1108 = fmul contract float %1107, 0x3FEC40CEC0000000
  %1109 = fsub contract float %1075, %1108
  %1110 = fadd contract float %1094, %1097
  %1111 = fmul contract float %1110, 0x3FEC40CEC0000000
  %1112 = fsub contract float %1077, %1111
  %1113 = fadd contract float %1062, %1100
  %1114 = fmul contract float %1113, 0x3FAB2035C0000000
  %1115 = fadd contract float %1082, %1114
  store float %1115, float addrspace(3)* %770, align 4, !tbaa !6
  %1116 = fadd contract float %1100, %1103
  %1117 = fmul contract float %1116, 0x3FAB2035C0000000
  %1118 = fadd contract float %1085, %1117
  store float %1118, float addrspace(3)* %774, align 4, !tbaa !6
  %1119 = fadd contract float %1103, %1106
  %1120 = fmul contract float %1119, 0x3FAB2035C0000000
  %1121 = fadd contract float %1088, %1120
  store float %1121, float addrspace(3)* %778, align 4, !tbaa !6
  %1122 = fadd contract float %1109, %1106
  %1123 = fmul contract float %1122, 0x3FAB2035C0000000
  %1124 = fadd contract float %1091, %1123
  store float %1124, float addrspace(3)* %781, align 4, !tbaa !6
  %1125 = fadd contract float %1109, %1112
  %1126 = fmul contract float %1125, 0x3FAB2035C0000000
  %1127 = fadd contract float %1094, %1126
  store float %1127, float addrspace(3)* %785, align 4, !tbaa !6
  %1128 = fadd contract float %1079, %1112
  %1129 = fmul contract float %1128, 0x3FAB2035C0000000
  %1130 = fadd contract float %1097, %1129
  store float %1130, float addrspace(3)* %789, align 4, !tbaa !6
  %1131 = fadd contract float %1115, %1118
  %1132 = fmul contract float %1131, 0x3FF960CE60000000
  %1133 = fadd contract float %1100, %1132
  store float %1133, float addrspace(3)* %772, align 4, !tbaa !6
  %1134 = fadd contract float %1118, %1121
  %1135 = fmul contract float %1134, 0x3FF960CE60000000
  %1136 = fadd contract float %1103, %1135
  store float %1136, float addrspace(3)* %776, align 4, !tbaa !6
  %1137 = fadd contract float %1121, %1124
  %1138 = fmul contract float %1137, 0x3FF960CE60000000
  %1139 = fadd contract float %1106, %1138
  store float %1139, float addrspace(3)* %779, align 4, !tbaa !6
  %1140 = fadd contract float %1127, %1124
  %1141 = fmul contract float %1140, 0x3FF960CE60000000
  %1142 = fadd contract float %1109, %1141
  store float %1142, float addrspace(3)* %783, align 4, !tbaa !6
  %1143 = fadd contract float %1127, %1130
  %1144 = fmul contract float %1143, 0x3FF960CE60000000
  %1145 = fadd contract float %1112, %1144
  store float %1145, float addrspace(3)* %787, align 4, !tbaa !6
  %1146 = icmp eq i32 %798, %698
  br i1 %1146, label %1151, label %1147

1147:                                             ; preds = %1053
  %1148 = add nsw i32 %798, %699
  %1149 = sext i32 %798 to i64
  %1150 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1149
  store float %1118, float addrspace(1)* %1150, align 4, !tbaa !6
  br label %1151

1151:                                             ; preds = %1147, %1053
  %1152 = phi i32 [ %698, %1053 ], [ %1148, %1147 ]
  %1153 = icmp eq i32 %1152, %698
  br i1 %1153, label %1158, label %1154

1154:                                             ; preds = %1151
  %1155 = add nsw i32 %1152, %699
  %1156 = sext i32 %1152 to i64
  %1157 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1156
  store float %1136, float addrspace(1)* %1157, align 4, !tbaa !6
  br label %1158

1158:                                             ; preds = %1154, %1151
  %1159 = phi i32 [ %698, %1151 ], [ %1155, %1154 ]
  %1160 = icmp eq i32 %1159, %698
  br i1 %1160, label %1165, label %1161

1161:                                             ; preds = %1158
  %1162 = add nsw i32 %1159, %699
  %1163 = sext i32 %1159 to i64
  %1164 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1163
  store float %1121, float addrspace(1)* %1164, align 4, !tbaa !6
  br label %1165

1165:                                             ; preds = %1161, %1158
  %1166 = phi i32 [ %698, %1158 ], [ %1162, %1161 ]
  %1167 = icmp eq i32 %1166, %698
  br i1 %1167, label %1172, label %1168

1168:                                             ; preds = %1165
  %1169 = add nsw i32 %1166, %699
  %1170 = sext i32 %1166 to i64
  %1171 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1170
  store float %1139, float addrspace(1)* %1171, align 4, !tbaa !6
  br label %1172

1172:                                             ; preds = %1168, %1165
  %1173 = phi i32 [ %698, %1165 ], [ %1169, %1168 ]
  %1174 = icmp eq i32 %1173, %698
  br i1 %1174, label %1179, label %1175

1175:                                             ; preds = %1172
  %1176 = add nsw i32 %1173, %699
  %1177 = sext i32 %1173 to i64
  %1178 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1177
  store float %1124, float addrspace(1)* %1178, align 4, !tbaa !6
  br label %1179

1179:                                             ; preds = %1175, %1172
  %1180 = phi i32 [ %698, %1172 ], [ %1176, %1175 ]
  %1181 = icmp eq i32 %1180, %698
  br i1 %1181, label %1186, label %1182

1182:                                             ; preds = %1179
  %1183 = add nsw i32 %1180, %699
  %1184 = sext i32 %1180 to i64
  %1185 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1184
  store float %1142, float addrspace(1)* %1185, align 4, !tbaa !6
  br label %1186

1186:                                             ; preds = %1182, %1179
  %1187 = phi i32 [ %698, %1179 ], [ %1183, %1182 ]
  store float %1054, float addrspace(3)* %768, align 4, !tbaa !6
  store float %1055, float addrspace(3)* %770, align 4, !tbaa !6
  store float %1056, float addrspace(3)* %772, align 4, !tbaa !6
  store float %1057, float addrspace(3)* %774, align 4, !tbaa !6
  store float %1058, float addrspace(3)* %776, align 4, !tbaa !6
  store float %1059, float addrspace(3)* %778, align 4, !tbaa !6
  store float %1060, float addrspace(3)* %779, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1188 = add nuw nsw i32 %793, 1
  %1189 = icmp eq i32 %1188, %4
  br i1 %1189, label %3004, label %792, !llvm.loop !18

1190:                                             ; preds = %5
  %1191 = shl i32 %6, 6
  %1192 = add i32 %1191, 67
  %1193 = icmp slt i32 %1192, %2
  %1194 = mul i32 %8, %4
  %1195 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %1196 = icmp ult i32 %1195, 7
  br i1 %1193, label %2118, label %1197

1197:                                             ; preds = %1190
  br i1 %1196, label %1198, label %1360

1198:                                             ; preds = %1197
  %1199 = icmp ult i32 %1195, 4
  %1200 = select i1 %1199, i32 64, i32 -7
  %1201 = add nsw i32 %1200, %1195
  %1202 = add i32 %1201, %1191
  %1203 = sub i32 0, %1202
  %1204 = trunc i32 %1201 to i8
  %1205 = add nsw i8 %1204, 4
  %1206 = sdiv i8 %1205, 2
  %1207 = sext i8 %1206 to i32
  %1208 = and i32 %1201, 1
  %1209 = icmp eq i32 %1208, 0
  %1210 = select i1 %1209, i32 0, i32 472
  %1211 = add nsw i32 %1210, %1207
  %1212 = icmp eq i32 %7, 0
  br i1 %1212, label %1213, label %1276

1213:                                             ; preds = %1198
  %1214 = icmp slt i32 %1202, %2
  br i1 %1214, label %1219, label %1215

1215:                                             ; preds = %1213
  %1216 = shl nsw i32 %2, 1
  %1217 = sub i32 -2, %1202
  %1218 = add i32 %1217, %1216
  br label %1221

1219:                                             ; preds = %1213
  %1220 = icmp slt i32 %1202, 0
  br i1 %1220, label %1221, label %1223

1221:                                             ; preds = %1219, %1215
  %1222 = phi i32 [ %1218, %1215 ], [ %1203, %1219 ]
  br label %1223

1223:                                             ; preds = %1221, %1219
  %1224 = phi i32 [ %1222, %1221 ], [ %1202, %1219 ]
  %1225 = sdiv i32 %1224, 2
  %1226 = and i32 %1224, 1
  %1227 = icmp eq i32 %1226, 0
  %1228 = sdiv i32 %2, 2
  %1229 = and i32 %2, 1
  %1230 = add nsw i32 %1228, %1229
  %1231 = sdiv i32 %3, 2
  %1232 = and i32 %3, 1
  %1233 = add nsw i32 %1231, %1232
  br i1 %1227, label %1239, label %1234

1234:                                             ; preds = %1223
  %1235 = mul nsw i32 %1233, %1230
  %1236 = add nsw i32 %1225, %1235
  %1237 = mul nsw i32 %3, %2
  %1238 = sdiv i32 %1237, 2
  br label %1241

1239:                                             ; preds = %1223
  %1240 = mul nsw i32 %1233, %2
  br label %1241

1241:                                             ; preds = %1239, %1234
  %1242 = phi i32 [ %1240, %1239 ], [ %1238, %1234 ]
  %1243 = phi i32 [ %1225, %1239 ], [ %1236, %1234 ]
  %1244 = phi i32 [ %1230, %1239 ], [ %1228, %1234 ]
  %1245 = sub nsw i32 %1244, %1242
  %1246 = sdiv i32 %1194, 2
  %1247 = mul nsw i32 %1244, %1246
  %1248 = add i32 %1247, %1243
  %1249 = sub i32 %1248, %1245
  %1250 = sext i32 %1248 to i64
  %1251 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1250
  %1252 = load float, float addrspace(1)* %1251, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1253 = add nsw i32 %1211, 108
  %1254 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1253
  store float %1252, float addrspace(3)* %1254, align 4, !tbaa !6
  %1255 = add i32 %1249, %1244
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1256
  %1258 = load float, float addrspace(1)* %1257, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1259 = add nsw i32 %1211, 72
  %1260 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1259
  store float %1258, float addrspace(3)* %1260, align 4, !tbaa !6
  %1261 = add nsw i32 %1211, 144
  %1262 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1261
  store float %1258, float addrspace(3)* %1262, align 4, !tbaa !6
  %1263 = add i32 %1248, %1244
  %1264 = sext i32 %1263 to i64
  %1265 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1264
  %1266 = load float, float addrspace(1)* %1265, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1267 = add nsw i32 %1211, 36
  %1268 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1267
  store float %1266, float addrspace(3)* %1268, align 4, !tbaa !6
  %1269 = add nsw i32 %1211, 180
  %1270 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1269
  store float %1266, float addrspace(3)* %1270, align 4, !tbaa !6
  %1271 = add i32 %1255, %1244
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1272
  %1274 = load float, float addrspace(1)* %1273, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1275 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1211
  store float %1274, float addrspace(3)* %1275, align 4, !tbaa !6
  br label %1353

1276:                                             ; preds = %1198
  %1277 = add nsw i32 %1194, -3
  %1278 = icmp slt i32 %1202, %2
  br i1 %1278, label %1283, label %1279

1279:                                             ; preds = %1276
  %1280 = shl nsw i32 %2, 1
  %1281 = sub i32 -2, %1202
  %1282 = add i32 %1281, %1280
  br label %1285

1283:                                             ; preds = %1276
  %1284 = icmp slt i32 %1202, 0
  br i1 %1284, label %1285, label %1287

1285:                                             ; preds = %1283, %1279
  %1286 = phi i32 [ %1282, %1279 ], [ %1203, %1283 ]
  br label %1287

1287:                                             ; preds = %1285, %1283
  %1288 = phi i32 [ %1286, %1285 ], [ %1202, %1283 ]
  %1289 = sdiv i32 %1288, 2
  %1290 = and i32 %1288, 1
  %1291 = icmp eq i32 %1290, 0
  %1292 = sdiv i32 %2, 2
  %1293 = and i32 %2, 1
  %1294 = add nsw i32 %1292, %1293
  %1295 = sdiv i32 %3, 2
  %1296 = and i32 %3, 1
  %1297 = add nsw i32 %1295, %1296
  br i1 %1291, label %1303, label %1298

1298:                                             ; preds = %1287
  %1299 = mul nsw i32 %1297, %1294
  %1300 = add nsw i32 %1289, %1299
  %1301 = mul nsw i32 %3, %2
  %1302 = sdiv i32 %1301, 2
  br label %1305

1303:                                             ; preds = %1287
  %1304 = mul nsw i32 %1297, %2
  br label %1305

1305:                                             ; preds = %1303, %1298
  %1306 = phi i32 [ %1304, %1303 ], [ %1302, %1298 ]
  %1307 = phi i32 [ %1289, %1303 ], [ %1300, %1298 ]
  %1308 = phi i32 [ %1294, %1303 ], [ %1292, %1298 ]
  %1309 = sub nsw i32 %1308, %1306
  %1310 = sdiv i32 %1277, 2
  %1311 = mul nsw i32 %1308, %1310
  %1312 = add i32 %1307, %1306
  %1313 = add i32 %1312, %1311
  %1314 = sub i32 %1313, %1306
  %1315 = sext i32 %1313 to i64
  %1316 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1315
  %1317 = load float, float addrspace(1)* %1316, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1318 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1211
  store float %1317, float addrspace(3)* %1318, align 4, !tbaa !6
  %1319 = add i32 %1314, %1308
  %1320 = sext i32 %1319 to i64
  %1321 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1320
  %1322 = load float, float addrspace(1)* %1321, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1323 = add nsw i32 %1211, 36
  %1324 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1323
  store float %1322, float addrspace(3)* %1324, align 4, !tbaa !6
  %1325 = add i32 %1313, %1308
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1326
  %1328 = load float, float addrspace(1)* %1327, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1329 = add nsw i32 %1211, 72
  %1330 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1329
  store float %1328, float addrspace(3)* %1330, align 4, !tbaa !6
  %1331 = add i32 %1319, %1308
  %1332 = sext i32 %1331 to i64
  %1333 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1332
  %1334 = load float, float addrspace(1)* %1333, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1335 = add nsw i32 %1211, 108
  %1336 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1335
  store float %1334, float addrspace(3)* %1336, align 4, !tbaa !6
  %1337 = add nsw i32 %1331, %1306
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1338
  %1340 = load float, float addrspace(1)* %1339, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1341 = add nsw i32 %1211, 144
  %1342 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1341
  store float %1340, float addrspace(3)* %1342, align 4, !tbaa !6
  %1343 = add i32 %1331, %1308
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1344
  %1346 = load float, float addrspace(1)* %1345, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1347 = add nsw i32 %1211, 180
  %1348 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1347
  store float %1346, float addrspace(3)* %1348, align 4, !tbaa !6
  %1349 = add nsw i32 %1343, %1306
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1350
  %1352 = load float, float addrspace(1)* %1351, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1353

1353:                                             ; preds = %1305, %1241
  %1354 = phi i32 [ %1242, %1241 ], [ %1306, %1305 ]
  %1355 = phi i32 [ %1245, %1241 ], [ %1309, %1305 ]
  %1356 = phi i32 [ %1271, %1241 ], [ %1349, %1305 ]
  %1357 = phi float [ %1274, %1241 ], [ %1352, %1305 ]
  %1358 = add nsw i32 %1211, 216
  %1359 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1358
  store float %1357, float addrspace(3)* %1359, align 4, !tbaa !6
  br label %1360

1360:                                             ; preds = %1353, %1197
  %1361 = phi i32 [ %1354, %1353 ], [ 0, %1197 ]
  %1362 = phi i32 [ %1355, %1353 ], [ 0, %1197 ]
  %1363 = phi i32 [ %1356, %1353 ], [ 0, %1197 ]
  %1364 = phi i32 [ %1211, %1353 ], [ 0, %1197 ]
  %1365 = shl nuw nsw i32 %1195, 1
  %1366 = lshr i32 %1195, 5
  %1367 = mul nsw i32 %1366, -63
  %1368 = add nsw i32 %1367, %1365
  %1369 = add i32 %1368, %1191
  %1370 = sub i32 0, %1369
  %1371 = trunc i32 %1368 to i16
  %1372 = add nsw i16 %1371, 4
  %1373 = sdiv i16 %1372, 2
  %1374 = sext i16 %1373 to i32
  %1375 = and i32 %1368, 1
  %1376 = icmp eq i32 %1375, 0
  %1377 = select i1 %1376, i32 0, i32 472
  %1378 = add nsw i32 %1377, %1374
  %1379 = icmp eq i32 %7, 0
  br i1 %1379, label %1380, label %1443

1380:                                             ; preds = %1360
  %1381 = icmp slt i32 %1369, %2
  br i1 %1381, label %1386, label %1382

1382:                                             ; preds = %1380
  %1383 = shl nsw i32 %2, 1
  %1384 = sub i32 -2, %1369
  %1385 = add i32 %1384, %1383
  br label %1388

1386:                                             ; preds = %1380
  %1387 = icmp slt i32 %1369, 0
  br i1 %1387, label %1388, label %1390

1388:                                             ; preds = %1386, %1382
  %1389 = phi i32 [ %1385, %1382 ], [ %1370, %1386 ]
  br label %1390

1390:                                             ; preds = %1388, %1386
  %1391 = phi i32 [ %1389, %1388 ], [ %1369, %1386 ]
  %1392 = sdiv i32 %1391, 2
  %1393 = and i32 %1391, 1
  %1394 = icmp eq i32 %1393, 0
  %1395 = sdiv i32 %2, 2
  %1396 = and i32 %2, 1
  %1397 = add nsw i32 %1395, %1396
  %1398 = sdiv i32 %3, 2
  %1399 = and i32 %3, 1
  %1400 = add nsw i32 %1398, %1399
  br i1 %1394, label %1406, label %1401

1401:                                             ; preds = %1390
  %1402 = mul nsw i32 %1400, %1397
  %1403 = add nsw i32 %1392, %1402
  %1404 = mul nsw i32 %3, %2
  %1405 = sdiv i32 %1404, 2
  br label %1408

1406:                                             ; preds = %1390
  %1407 = mul nsw i32 %1400, %2
  br label %1408

1408:                                             ; preds = %1406, %1401
  %1409 = phi i32 [ %1407, %1406 ], [ %1405, %1401 ]
  %1410 = phi i32 [ %1392, %1406 ], [ %1403, %1401 ]
  %1411 = phi i32 [ %1397, %1406 ], [ %1395, %1401 ]
  %1412 = sub nsw i32 %1411, %1409
  %1413 = sdiv i32 %1194, 2
  %1414 = mul nsw i32 %1411, %1413
  %1415 = add i32 %1414, %1410
  %1416 = sub i32 %1415, %1412
  %1417 = sext i32 %1415 to i64
  %1418 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1417
  %1419 = load float, float addrspace(1)* %1418, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1420 = add nsw i32 %1378, 108
  %1421 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1420
  store float %1419, float addrspace(3)* %1421, align 4, !tbaa !6
  %1422 = add i32 %1416, %1411
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1423
  %1425 = load float, float addrspace(1)* %1424, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1426 = add nsw i32 %1378, 72
  %1427 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1426
  store float %1425, float addrspace(3)* %1427, align 4, !tbaa !6
  %1428 = add nsw i32 %1378, 144
  %1429 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1428
  store float %1425, float addrspace(3)* %1429, align 4, !tbaa !6
  %1430 = add i32 %1415, %1411
  %1431 = sext i32 %1430 to i64
  %1432 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1431
  %1433 = load float, float addrspace(1)* %1432, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1434 = add nsw i32 %1378, 36
  %1435 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1434
  store float %1433, float addrspace(3)* %1435, align 4, !tbaa !6
  %1436 = add nsw i32 %1378, 180
  %1437 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1436
  store float %1433, float addrspace(3)* %1437, align 4, !tbaa !6
  %1438 = add i32 %1422, %1411
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1439
  %1441 = load float, float addrspace(1)* %1440, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1442 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1378
  store float %1441, float addrspace(3)* %1442, align 4, !tbaa !6
  br label %1520

1443:                                             ; preds = %1360
  %1444 = add nsw i32 %1194, -3
  %1445 = icmp slt i32 %1369, %2
  br i1 %1445, label %1450, label %1446

1446:                                             ; preds = %1443
  %1447 = shl nsw i32 %2, 1
  %1448 = sub i32 -2, %1369
  %1449 = add i32 %1448, %1447
  br label %1452

1450:                                             ; preds = %1443
  %1451 = icmp slt i32 %1369, 0
  br i1 %1451, label %1452, label %1454

1452:                                             ; preds = %1450, %1446
  %1453 = phi i32 [ %1449, %1446 ], [ %1370, %1450 ]
  br label %1454

1454:                                             ; preds = %1452, %1450
  %1455 = phi i32 [ %1453, %1452 ], [ %1369, %1450 ]
  %1456 = sdiv i32 %1455, 2
  %1457 = and i32 %1455, 1
  %1458 = icmp eq i32 %1457, 0
  %1459 = sdiv i32 %2, 2
  %1460 = and i32 %2, 1
  %1461 = add nsw i32 %1459, %1460
  %1462 = sdiv i32 %3, 2
  %1463 = and i32 %3, 1
  %1464 = add nsw i32 %1462, %1463
  br i1 %1458, label %1470, label %1465

1465:                                             ; preds = %1454
  %1466 = mul nsw i32 %1464, %1461
  %1467 = add nsw i32 %1456, %1466
  %1468 = mul nsw i32 %3, %2
  %1469 = sdiv i32 %1468, 2
  br label %1472

1470:                                             ; preds = %1454
  %1471 = mul nsw i32 %1464, %2
  br label %1472

1472:                                             ; preds = %1470, %1465
  %1473 = phi i32 [ %1471, %1470 ], [ %1469, %1465 ]
  %1474 = phi i32 [ %1456, %1470 ], [ %1467, %1465 ]
  %1475 = phi i32 [ %1461, %1470 ], [ %1459, %1465 ]
  %1476 = sub nsw i32 %1475, %1473
  %1477 = sdiv i32 %1444, 2
  %1478 = mul nsw i32 %1475, %1477
  %1479 = add i32 %1474, %1473
  %1480 = add i32 %1479, %1478
  %1481 = sub i32 %1480, %1473
  %1482 = sext i32 %1480 to i64
  %1483 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1482
  %1484 = load float, float addrspace(1)* %1483, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1485 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1378
  store float %1484, float addrspace(3)* %1485, align 4, !tbaa !6
  %1486 = add i32 %1481, %1475
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1487
  %1489 = load float, float addrspace(1)* %1488, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1490 = add nsw i32 %1378, 36
  %1491 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1490
  store float %1489, float addrspace(3)* %1491, align 4, !tbaa !6
  %1492 = add i32 %1480, %1475
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1493
  %1495 = load float, float addrspace(1)* %1494, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1496 = add nsw i32 %1378, 72
  %1497 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1496
  store float %1495, float addrspace(3)* %1497, align 4, !tbaa !6
  %1498 = add i32 %1486, %1475
  %1499 = sext i32 %1498 to i64
  %1500 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1499
  %1501 = load float, float addrspace(1)* %1500, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1502 = add nsw i32 %1378, 108
  %1503 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1502
  store float %1501, float addrspace(3)* %1503, align 4, !tbaa !6
  %1504 = add nsw i32 %1498, %1473
  %1505 = sext i32 %1504 to i64
  %1506 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1505
  %1507 = load float, float addrspace(1)* %1506, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1508 = add nsw i32 %1378, 144
  %1509 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1508
  store float %1507, float addrspace(3)* %1509, align 4, !tbaa !6
  %1510 = add i32 %1498, %1475
  %1511 = sext i32 %1510 to i64
  %1512 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1511
  %1513 = load float, float addrspace(1)* %1512, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1514 = add nsw i32 %1378, 180
  %1515 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1514
  store float %1513, float addrspace(3)* %1515, align 4, !tbaa !6
  %1516 = add nsw i32 %1510, %1473
  %1517 = sext i32 %1516 to i64
  %1518 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1517
  %1519 = load float, float addrspace(1)* %1518, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %1520

1520:                                             ; preds = %1472, %1408
  %1521 = phi i32 [ %1412, %1408 ], [ %1476, %1472 ]
  %1522 = phi i32 [ %1409, %1408 ], [ %1473, %1472 ]
  %1523 = phi i32 [ %1438, %1408 ], [ %1516, %1472 ]
  %1524 = phi float [ %1441, %1408 ], [ %1519, %1472 ]
  %1525 = add nsw i32 %1378, 216
  %1526 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1525
  store float %1524, float addrspace(3)* %1526, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1527 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1195
  %1528 = load float, float addrspace(3)* %1527, align 4, !tbaa !6
  %1529 = fmul contract float %1528, 0x3FF3AECB00000000
  store float %1529, float addrspace(3)* %1527, align 4, !tbaa !6
  %1530 = add nuw nsw i32 %1195, 472
  %1531 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1530
  %1532 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1533 = fmul contract float %1532, 0x3FEA033860000000
  store float %1533, float addrspace(3)* %1531, align 4, !tbaa !6
  %1534 = add nuw nsw i32 %1195, 64
  %1535 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1534
  %1536 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1537 = fmul contract float %1536, 0x3FF3AECB00000000
  store float %1537, float addrspace(3)* %1535, align 4, !tbaa !6
  %1538 = add nuw nsw i32 %1195, 536
  %1539 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1538
  %1540 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1541 = fmul contract float %1540, 0x3FEA033860000000
  store float %1541, float addrspace(3)* %1539, align 4, !tbaa !6
  %1542 = add nuw nsw i32 %1195, 128
  %1543 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1542
  %1544 = load float, float addrspace(3)* %1543, align 4, !tbaa !6
  %1545 = fmul contract float %1544, 0x3FF3AECB00000000
  store float %1545, float addrspace(3)* %1543, align 4, !tbaa !6
  %1546 = add nuw nsw i32 %1195, 600
  %1547 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1546
  %1548 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1549 = fmul contract float %1548, 0x3FEA033860000000
  store float %1549, float addrspace(3)* %1547, align 4, !tbaa !6
  %1550 = icmp ult i32 %1195, 60
  br i1 %1550, label %1551, label %1560

1551:                                             ; preds = %1520
  %1552 = add nuw nsw i32 %1195, 192
  %1553 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1552
  %1554 = load float, float addrspace(3)* %1553, align 4, !tbaa !6
  %1555 = fmul contract float %1554, 0x3FF3AECB00000000
  store float %1555, float addrspace(3)* %1553, align 4, !tbaa !6
  %1556 = add nuw nsw i32 %1195, 664
  %1557 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1556
  %1558 = load float, float addrspace(3)* %1557, align 4, !tbaa !6
  %1559 = fmul contract float %1558, 0x3FEA033860000000
  store float %1559, float addrspace(3)* %1557, align 4, !tbaa !6
  br label %1560

1560:                                             ; preds = %1551, %1520
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1561 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1562 = add nuw nsw i32 %1195, 473
  %1563 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1562
  %1564 = load float, float addrspace(3)* %1563, align 4, !tbaa !6
  %1565 = add nuw nsw i32 %1195, 1
  %1566 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1565
  %1567 = fadd contract float %1561, %1564
  %1568 = fmul contract float %1567, 0x3FDC626AA0000000
  %1569 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1570 = fsub contract float %1569, %1568
  store float %1570, float addrspace(3)* %1566, align 4, !tbaa !6
  %1571 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1572 = add nuw nsw i32 %1195, 537
  %1573 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1572
  %1574 = load float, float addrspace(3)* %1573, align 4, !tbaa !6
  %1575 = add nuw nsw i32 %1195, 65
  %1576 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1575
  %1577 = fadd contract float %1571, %1574
  %1578 = fmul contract float %1577, 0x3FDC626AA0000000
  %1579 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1580 = fsub contract float %1579, %1578
  store float %1580, float addrspace(3)* %1576, align 4, !tbaa !6
  %1581 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1582 = add nuw nsw i32 %1195, 601
  %1583 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1582
  %1584 = load float, float addrspace(3)* %1583, align 4, !tbaa !6
  %1585 = add nuw nsw i32 %1195, 129
  %1586 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1585
  %1587 = fadd contract float %1581, %1584
  %1588 = fmul contract float %1587, 0x3FDC626AA0000000
  %1589 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1590 = fsub contract float %1589, %1588
  store float %1590, float addrspace(3)* %1586, align 4, !tbaa !6
  %1591 = icmp ult i32 %1195, 59
  br i1 %1591, label %1592, label %1605

1592:                                             ; preds = %1560
  %1593 = add nuw nsw i32 %1195, 664
  %1594 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1593
  %1595 = load float, float addrspace(3)* %1594, align 4, !tbaa !6
  %1596 = add nuw nsw i32 %1195, 665
  %1597 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1596
  %1598 = load float, float addrspace(3)* %1597, align 4, !tbaa !6
  %1599 = add nuw nsw i32 %1195, 193
  %1600 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1599
  %1601 = fadd contract float %1595, %1598
  %1602 = fmul contract float %1601, 0x3FDC626AA0000000
  %1603 = load float, float addrspace(3)* %1600, align 4, !tbaa !6
  %1604 = fsub contract float %1603, %1602
  store float %1604, float addrspace(3)* %1600, align 4, !tbaa !6
  br label %1605

1605:                                             ; preds = %1592, %1560
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1606 = load float, float addrspace(3)* %1527, align 4, !tbaa !6
  %1607 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1608 = fadd contract float %1606, %1607
  %1609 = fmul contract float %1608, 0x3FEC40CEC0000000
  %1610 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1611 = fsub contract float %1610, %1609
  store float %1611, float addrspace(3)* %1531, align 4, !tbaa !6
  %1612 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1613 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1614 = fadd contract float %1612, %1613
  %1615 = fmul contract float %1614, 0x3FEC40CEC0000000
  %1616 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1617 = fsub contract float %1616, %1615
  store float %1617, float addrspace(3)* %1539, align 4, !tbaa !6
  %1618 = load float, float addrspace(3)* %1543, align 4, !tbaa !6
  %1619 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1620 = fadd contract float %1618, %1619
  %1621 = fmul contract float %1620, 0x3FEC40CEC0000000
  %1622 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1623 = fsub contract float %1622, %1621
  store float %1623, float addrspace(3)* %1547, align 4, !tbaa !6
  br i1 %1591, label %1624, label %1637

1624:                                             ; preds = %1605
  %1625 = add nuw nsw i32 %1195, 192
  %1626 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1625
  %1627 = load float, float addrspace(3)* %1626, align 4, !tbaa !6
  %1628 = add nuw nsw i32 %1195, 193
  %1629 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1628
  %1630 = load float, float addrspace(3)* %1629, align 4, !tbaa !6
  %1631 = add nuw nsw i32 %1195, 664
  %1632 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1631
  %1633 = fadd contract float %1627, %1630
  %1634 = fmul contract float %1633, 0x3FEC40CEC0000000
  %1635 = load float, float addrspace(3)* %1632, align 4, !tbaa !6
  %1636 = fsub contract float %1635, %1634
  store float %1636, float addrspace(3)* %1632, align 4, !tbaa !6
  br label %1637

1637:                                             ; preds = %1624, %1605
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1638 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1639 = load float, float addrspace(3)* %1563, align 4, !tbaa !6
  %1640 = fadd contract float %1638, %1639
  %1641 = fmul contract float %1640, 0x3FAB2035C0000000
  %1642 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1643 = fadd contract float %1642, %1641
  store float %1643, float addrspace(3)* %1566, align 4, !tbaa !6
  %1644 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1645 = load float, float addrspace(3)* %1573, align 4, !tbaa !6
  %1646 = fadd contract float %1644, %1645
  %1647 = fmul contract float %1646, 0x3FAB2035C0000000
  %1648 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1649 = fadd contract float %1648, %1647
  store float %1649, float addrspace(3)* %1576, align 4, !tbaa !6
  %1650 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1651 = load float, float addrspace(3)* %1583, align 4, !tbaa !6
  %1652 = fadd contract float %1650, %1651
  %1653 = fmul contract float %1652, 0x3FAB2035C0000000
  %1654 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1655 = fadd contract float %1654, %1653
  store float %1655, float addrspace(3)* %1586, align 4, !tbaa !6
  br i1 %1591, label %1656, label %1669

1656:                                             ; preds = %1637
  %1657 = add nuw nsw i32 %1195, 664
  %1658 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1657
  %1659 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1660 = add nuw nsw i32 %1195, 665
  %1661 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1660
  %1662 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1663 = add nuw nsw i32 %1195, 193
  %1664 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1663
  %1665 = fadd contract float %1659, %1662
  %1666 = fmul contract float %1665, 0x3FAB2035C0000000
  %1667 = load float, float addrspace(3)* %1664, align 4, !tbaa !6
  %1668 = fadd contract float %1667, %1666
  store float %1668, float addrspace(3)* %1664, align 4, !tbaa !6
  br label %1669

1669:                                             ; preds = %1656, %1637
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1670 = load float, float addrspace(3)* %1527, align 4, !tbaa !6
  %1671 = load float, float addrspace(3)* %1566, align 4, !tbaa !6
  %1672 = fadd contract float %1670, %1671
  %1673 = fmul contract float %1672, 0x3FF960CE60000000
  %1674 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1675 = fadd contract float %1674, %1673
  store float %1675, float addrspace(3)* %1531, align 4, !tbaa !6
  %1676 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1677 = load float, float addrspace(3)* %1576, align 4, !tbaa !6
  %1678 = fadd contract float %1676, %1677
  %1679 = fmul contract float %1678, 0x3FF960CE60000000
  %1680 = load float, float addrspace(3)* %1539, align 4, !tbaa !6
  %1681 = fadd contract float %1680, %1679
  store float %1681, float addrspace(3)* %1539, align 4, !tbaa !6
  %1682 = load float, float addrspace(3)* %1543, align 4, !tbaa !6
  %1683 = load float, float addrspace(3)* %1586, align 4, !tbaa !6
  %1684 = fadd contract float %1682, %1683
  %1685 = fmul contract float %1684, 0x3FF960CE60000000
  %1686 = load float, float addrspace(3)* %1547, align 4, !tbaa !6
  %1687 = fadd contract float %1686, %1685
  store float %1687, float addrspace(3)* %1547, align 4, !tbaa !6
  br i1 %1591, label %1688, label %1701

1688:                                             ; preds = %1669
  %1689 = add nuw nsw i32 %1195, 192
  %1690 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1689
  %1691 = load float, float addrspace(3)* %1690, align 4, !tbaa !6
  %1692 = add nuw nsw i32 %1195, 193
  %1693 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1692
  %1694 = load float, float addrspace(3)* %1693, align 4, !tbaa !6
  %1695 = add nuw nsw i32 %1195, 664
  %1696 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1695
  %1697 = fadd contract float %1691, %1694
  %1698 = fmul contract float %1697, 0x3FF960CE60000000
  %1699 = load float, float addrspace(3)* %1696, align 4, !tbaa !6
  %1700 = fadd contract float %1699, %1698
  store float %1700, float addrspace(3)* %1696, align 4, !tbaa !6
  br label %1701

1701:                                             ; preds = %1688, %1669
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1702 = add i32 %1191, %1195
  %1703 = icmp slt i32 %1702, %2
  br i1 %1703, label %1704, label %1709

1704:                                             ; preds = %1701
  %1705 = mul nsw i32 %3, %2
  %1706 = add nsw i32 %1705, %1702
  %1707 = mul nsw i32 %1194, %2
  %1708 = add nsw i32 %1707, %1702
  br label %1709

1709:                                             ; preds = %1704, %1701
  %1710 = phi i32 [ %1706, %1704 ], [ 0, %1701 ]
  %1711 = phi i32 [ %2, %1704 ], [ 0, %1701 ]
  %1712 = phi i32 [ %1708, %1704 ], [ 0, %1701 ]
  %1713 = add nuw nsw i32 %1195, 4
  %1714 = lshr i32 %1713, 1
  %1715 = and i32 %1195, 1
  %1716 = icmp eq i32 %1715, 0
  %1717 = select i1 %1716, i32 0, i32 472
  %1718 = add nuw nsw i32 %1717, %1714
  %1719 = icmp sgt i32 %4, 0
  br i1 %1719, label %1720, label %3004

1720:                                             ; preds = %1709
  %1721 = add nsw i32 %1378, 252
  %1722 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1721
  %1723 = add nsw i32 %1378, 288
  %1724 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1723
  %1725 = add nsw i32 %1378, 324
  %1726 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1725
  %1727 = add nsw i32 %1378, 360
  %1728 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1727
  %1729 = add nsw i32 %1378, 396
  %1730 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1729
  %1731 = add nsw i32 %1378, 432
  %1732 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1731
  %1733 = add nsw i32 %1364, 252
  %1734 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1733
  %1735 = add nsw i32 %1364, 288
  %1736 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1735
  %1737 = add nsw i32 %1364, 324
  %1738 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1737
  %1739 = add nsw i32 %1364, 360
  %1740 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1739
  %1741 = add nsw i32 %1364, 396
  %1742 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1741
  %1743 = add nsw i32 %1364, 432
  %1744 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1743
  %1745 = add nuw nsw i32 %1195, 252
  %1746 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1745
  %1747 = add nuw nsw i32 %1195, 724
  %1748 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1747
  %1749 = add nuw nsw i32 %1195, 316
  %1750 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1749
  %1751 = add nuw nsw i32 %1195, 788
  %1752 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1751
  %1753 = add nuw nsw i32 %1195, 380
  %1754 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1753
  %1755 = add nuw nsw i32 %1195, 852
  %1756 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1755
  %1757 = icmp ult i32 %1195, 24
  %1758 = add nuw nsw i32 %1195, 444
  %1759 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1758
  %1760 = add nuw nsw i32 %1195, 916
  %1761 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1760
  %1762 = add nuw nsw i32 %1195, 725
  %1763 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1762
  %1764 = add nuw nsw i32 %1195, 253
  %1765 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1764
  %1766 = add nuw nsw i32 %1195, 789
  %1767 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1766
  %1768 = add nuw nsw i32 %1195, 317
  %1769 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1768
  %1770 = add nuw nsw i32 %1195, 853
  %1771 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1770
  %1772 = add nuw nsw i32 %1195, 381
  %1773 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1772
  %1774 = icmp ult i32 %1195, 23
  %1775 = add nuw nsw i32 %1195, 917
  %1776 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1775
  %1777 = add nuw nsw i32 %1195, 445
  %1778 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1777
  %1779 = add nuw nsw i32 %1718, 216
  %1780 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1718
  %1781 = add nuw nsw i32 %1718, 36
  %1782 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1781
  %1783 = add nuw nsw i32 %1718, 72
  %1784 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1783
  %1785 = add nuw nsw i32 %1718, 108
  %1786 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1785
  %1787 = add nuw nsw i32 %1718, 144
  %1788 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1787
  %1789 = add nuw nsw i32 %1718, 180
  %1790 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1789
  %1791 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1779
  %1792 = add nuw nsw i32 %1718, 252
  %1793 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1792
  %1794 = add nuw nsw i32 %1718, 288
  %1795 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1794
  %1796 = add nuw nsw i32 %1718, 324
  %1797 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1796
  %1798 = add nuw nsw i32 %1718, 360
  %1799 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1798
  %1800 = add nuw nsw i32 %1718, 396
  %1801 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1800
  %1802 = add nuw nsw i32 %1718, 432
  %1803 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1802
  br label %1804

1804:                                             ; preds = %2114, %1720
  %1805 = phi i32 [ 0, %1720 ], [ %2116, %2114 ]
  %1806 = phi i32 [ %1523, %1720 ], [ %1829, %2114 ]
  %1807 = phi i32 [ %1363, %1720 ], [ %1859, %2114 ]
  %1808 = phi i32 [ %1712, %1720 ], [ %2115, %2114 ]
  %1809 = add nsw i32 %1806, %1521
  %1810 = sext i32 %1809 to i64
  %1811 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1810
  %1812 = load float, float addrspace(1)* %1811, align 4, !tbaa !6
  store float %1812, float addrspace(3)* %1722, align 4, !tbaa !6
  %1813 = add nsw i32 %1809, %1522
  %1814 = sext i32 %1813 to i64
  %1815 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1814
  %1816 = load float, float addrspace(1)* %1815, align 4, !tbaa !6
  store float %1816, float addrspace(3)* %1724, align 4, !tbaa !6
  %1817 = add nsw i32 %1813, %1521
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1818
  %1820 = load float, float addrspace(1)* %1819, align 4, !tbaa !6
  store float %1820, float addrspace(3)* %1726, align 4, !tbaa !6
  %1821 = add nsw i32 %1817, %1522
  %1822 = sext i32 %1821 to i64
  %1823 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1822
  %1824 = load float, float addrspace(1)* %1823, align 4, !tbaa !6
  store float %1824, float addrspace(3)* %1728, align 4, !tbaa !6
  %1825 = add nsw i32 %1821, %1521
  %1826 = sext i32 %1825 to i64
  %1827 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1826
  %1828 = load float, float addrspace(1)* %1827, align 4, !tbaa !6
  store float %1828, float addrspace(3)* %1730, align 4, !tbaa !6
  %1829 = add nsw i32 %1825, %1522
  %1830 = sext i32 %1829 to i64
  %1831 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1830
  %1832 = load float, float addrspace(1)* %1831, align 4, !tbaa !6
  store float %1832, float addrspace(3)* %1732, align 4, !tbaa !6
  br i1 %1196, label %1833, label %1858

1833:                                             ; preds = %1804
  %1834 = add nsw i32 %1807, %1362
  %1835 = sext i32 %1834 to i64
  %1836 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1835
  %1837 = load float, float addrspace(1)* %1836, align 4, !tbaa !6
  store float %1837, float addrspace(3)* %1734, align 4, !tbaa !6
  %1838 = add nsw i32 %1834, %1361
  %1839 = sext i32 %1838 to i64
  %1840 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1839
  %1841 = load float, float addrspace(1)* %1840, align 4, !tbaa !6
  store float %1841, float addrspace(3)* %1736, align 4, !tbaa !6
  %1842 = add nsw i32 %1838, %1362
  %1843 = sext i32 %1842 to i64
  %1844 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1843
  %1845 = load float, float addrspace(1)* %1844, align 4, !tbaa !6
  store float %1845, float addrspace(3)* %1738, align 4, !tbaa !6
  %1846 = add nsw i32 %1842, %1361
  %1847 = sext i32 %1846 to i64
  %1848 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1847
  %1849 = load float, float addrspace(1)* %1848, align 4, !tbaa !6
  store float %1849, float addrspace(3)* %1740, align 4, !tbaa !6
  %1850 = add nsw i32 %1846, %1362
  %1851 = sext i32 %1850 to i64
  %1852 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1851
  %1853 = load float, float addrspace(1)* %1852, align 4, !tbaa !6
  store float %1853, float addrspace(3)* %1742, align 4, !tbaa !6
  %1854 = add nsw i32 %1850, %1361
  %1855 = sext i32 %1854 to i64
  %1856 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1855
  %1857 = load float, float addrspace(1)* %1856, align 4, !tbaa !6
  store float %1857, float addrspace(3)* %1744, align 4, !tbaa !6
  br label %1858

1858:                                             ; preds = %1833, %1804
  %1859 = phi i32 [ %1854, %1833 ], [ %1807, %1804 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1860 = load float, float addrspace(3)* %1746, align 4, !tbaa !6
  %1861 = fmul contract float %1860, 0x3FF3AECB00000000
  store float %1861, float addrspace(3)* %1746, align 4, !tbaa !6
  %1862 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1863 = fmul contract float %1862, 0x3FEA033860000000
  store float %1863, float addrspace(3)* %1748, align 4, !tbaa !6
  %1864 = load float, float addrspace(3)* %1750, align 4, !tbaa !6
  %1865 = fmul contract float %1864, 0x3FF3AECB00000000
  store float %1865, float addrspace(3)* %1750, align 4, !tbaa !6
  %1866 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1867 = fmul contract float %1866, 0x3FEA033860000000
  store float %1867, float addrspace(3)* %1752, align 4, !tbaa !6
  %1868 = load float, float addrspace(3)* %1754, align 4, !tbaa !6
  %1869 = fmul contract float %1868, 0x3FF3AECB00000000
  store float %1869, float addrspace(3)* %1754, align 4, !tbaa !6
  %1870 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1871 = fmul contract float %1870, 0x3FEA033860000000
  store float %1871, float addrspace(3)* %1756, align 4, !tbaa !6
  br i1 %1757, label %1872, label %1877

1872:                                             ; preds = %1858
  %1873 = load float, float addrspace(3)* %1759, align 4, !tbaa !6
  %1874 = fmul contract float %1873, 0x3FF3AECB00000000
  store float %1874, float addrspace(3)* %1759, align 4, !tbaa !6
  %1875 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1876 = fmul contract float %1875, 0x3FEA033860000000
  store float %1876, float addrspace(3)* %1761, align 4, !tbaa !6
  br label %1877

1877:                                             ; preds = %1872, %1858
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1878 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1879 = load float, float addrspace(3)* %1763, align 4, !tbaa !6
  %1880 = fadd contract float %1878, %1879
  %1881 = fmul contract float %1880, 0x3FDC626AA0000000
  %1882 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1883 = fsub contract float %1882, %1881
  store float %1883, float addrspace(3)* %1765, align 4, !tbaa !6
  %1884 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1885 = load float, float addrspace(3)* %1767, align 4, !tbaa !6
  %1886 = fadd contract float %1884, %1885
  %1887 = fmul contract float %1886, 0x3FDC626AA0000000
  %1888 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1889 = fsub contract float %1888, %1887
  store float %1889, float addrspace(3)* %1769, align 4, !tbaa !6
  %1890 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1891 = load float, float addrspace(3)* %1771, align 4, !tbaa !6
  %1892 = fadd contract float %1890, %1891
  %1893 = fmul contract float %1892, 0x3FDC626AA0000000
  %1894 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1895 = fsub contract float %1894, %1893
  store float %1895, float addrspace(3)* %1773, align 4, !tbaa !6
  br i1 %1774, label %1896, label %1903

1896:                                             ; preds = %1877
  %1897 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1898 = load float, float addrspace(3)* %1776, align 4, !tbaa !6
  %1899 = fadd contract float %1897, %1898
  %1900 = fmul contract float %1899, 0x3FDC626AA0000000
  %1901 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1902 = fsub contract float %1901, %1900
  store float %1902, float addrspace(3)* %1778, align 4, !tbaa !6
  br label %1903

1903:                                             ; preds = %1896, %1877
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1904 = load float, float addrspace(3)* %1746, align 4, !tbaa !6
  %1905 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1906 = fadd contract float %1904, %1905
  %1907 = fmul contract float %1906, 0x3FEC40CEC0000000
  %1908 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1909 = fsub contract float %1908, %1907
  store float %1909, float addrspace(3)* %1748, align 4, !tbaa !6
  %1910 = load float, float addrspace(3)* %1750, align 4, !tbaa !6
  %1911 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1912 = fadd contract float %1910, %1911
  %1913 = fmul contract float %1912, 0x3FEC40CEC0000000
  %1914 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1915 = fsub contract float %1914, %1913
  store float %1915, float addrspace(3)* %1752, align 4, !tbaa !6
  %1916 = load float, float addrspace(3)* %1754, align 4, !tbaa !6
  %1917 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1918 = fadd contract float %1916, %1917
  %1919 = fmul contract float %1918, 0x3FEC40CEC0000000
  %1920 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1921 = fsub contract float %1920, %1919
  store float %1921, float addrspace(3)* %1756, align 4, !tbaa !6
  br i1 %1774, label %1922, label %1929

1922:                                             ; preds = %1903
  %1923 = load float, float addrspace(3)* %1759, align 4, !tbaa !6
  %1924 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1925 = fadd contract float %1923, %1924
  %1926 = fmul contract float %1925, 0x3FEC40CEC0000000
  %1927 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1928 = fsub contract float %1927, %1926
  store float %1928, float addrspace(3)* %1761, align 4, !tbaa !6
  br label %1929

1929:                                             ; preds = %1922, %1903
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1930 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1931 = load float, float addrspace(3)* %1763, align 4, !tbaa !6
  %1932 = fadd contract float %1930, %1931
  %1933 = fmul contract float %1932, 0x3FAB2035C0000000
  %1934 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1935 = fadd contract float %1934, %1933
  store float %1935, float addrspace(3)* %1765, align 4, !tbaa !6
  %1936 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1937 = load float, float addrspace(3)* %1767, align 4, !tbaa !6
  %1938 = fadd contract float %1936, %1937
  %1939 = fmul contract float %1938, 0x3FAB2035C0000000
  %1940 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1941 = fadd contract float %1940, %1939
  store float %1941, float addrspace(3)* %1769, align 4, !tbaa !6
  %1942 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1943 = load float, float addrspace(3)* %1771, align 4, !tbaa !6
  %1944 = fadd contract float %1942, %1943
  %1945 = fmul contract float %1944, 0x3FAB2035C0000000
  %1946 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1947 = fadd contract float %1946, %1945
  store float %1947, float addrspace(3)* %1773, align 4, !tbaa !6
  br i1 %1774, label %1948, label %1955

1948:                                             ; preds = %1929
  %1949 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1950 = load float, float addrspace(3)* %1776, align 4, !tbaa !6
  %1951 = fadd contract float %1949, %1950
  %1952 = fmul contract float %1951, 0x3FAB2035C0000000
  %1953 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1954 = fadd contract float %1953, %1952
  store float %1954, float addrspace(3)* %1778, align 4, !tbaa !6
  br label %1955

1955:                                             ; preds = %1948, %1929
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1956 = load float, float addrspace(3)* %1746, align 4, !tbaa !6
  %1957 = load float, float addrspace(3)* %1765, align 4, !tbaa !6
  %1958 = fadd contract float %1956, %1957
  %1959 = fmul contract float %1958, 0x3FF960CE60000000
  %1960 = load float, float addrspace(3)* %1748, align 4, !tbaa !6
  %1961 = fadd contract float %1960, %1959
  store float %1961, float addrspace(3)* %1748, align 4, !tbaa !6
  %1962 = load float, float addrspace(3)* %1750, align 4, !tbaa !6
  %1963 = load float, float addrspace(3)* %1769, align 4, !tbaa !6
  %1964 = fadd contract float %1962, %1963
  %1965 = fmul contract float %1964, 0x3FF960CE60000000
  %1966 = load float, float addrspace(3)* %1752, align 4, !tbaa !6
  %1967 = fadd contract float %1966, %1965
  store float %1967, float addrspace(3)* %1752, align 4, !tbaa !6
  %1968 = load float, float addrspace(3)* %1754, align 4, !tbaa !6
  %1969 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1970 = fadd contract float %1968, %1969
  %1971 = fmul contract float %1970, 0x3FF960CE60000000
  %1972 = load float, float addrspace(3)* %1756, align 4, !tbaa !6
  %1973 = fadd contract float %1972, %1971
  store float %1973, float addrspace(3)* %1756, align 4, !tbaa !6
  br i1 %1774, label %1974, label %1981

1974:                                             ; preds = %1955
  %1975 = load float, float addrspace(3)* %1759, align 4, !tbaa !6
  %1976 = load float, float addrspace(3)* %1778, align 4, !tbaa !6
  %1977 = fadd contract float %1975, %1976
  %1978 = fmul contract float %1977, 0x3FF960CE60000000
  %1979 = load float, float addrspace(3)* %1761, align 4, !tbaa !6
  %1980 = fadd contract float %1979, %1978
  store float %1980, float addrspace(3)* %1761, align 4, !tbaa !6
  br label %1981

1981:                                             ; preds = %1974, %1955
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1982 = load float, float addrspace(3)* %1791, align 4, !tbaa !6
  %1983 = load float, float addrspace(3)* %1793, align 4, !tbaa !6
  %1984 = load float, float addrspace(3)* %1795, align 4, !tbaa !6
  %1985 = load float, float addrspace(3)* %1797, align 4, !tbaa !6
  %1986 = load float, float addrspace(3)* %1799, align 4, !tbaa !6
  %1987 = load float, float addrspace(3)* %1801, align 4, !tbaa !6
  %1988 = load float, float addrspace(3)* %1803, align 4, !tbaa !6
  %1989 = load float, float addrspace(3)* %1780, align 4, !tbaa !6
  %1990 = fmul contract float %1989, 0x3FEA033860000000
  store float %1990, float addrspace(3)* %1780, align 4, !tbaa !6
  %1991 = load float, float addrspace(3)* %1782, align 4, !tbaa !6
  %1992 = fmul contract float %1991, 0x3FF3AECB00000000
  %1993 = load float, float addrspace(3)* %1784, align 4, !tbaa !6
  %1994 = fmul contract float %1993, 0x3FEA033860000000
  %1995 = load float, float addrspace(3)* %1786, align 4, !tbaa !6
  %1996 = fmul contract float %1995, 0x3FF3AECB00000000
  %1997 = load float, float addrspace(3)* %1788, align 4, !tbaa !6
  %1998 = fmul contract float %1997, 0x3FEA033860000000
  %1999 = load float, float addrspace(3)* %1790, align 4, !tbaa !6
  %2000 = fmul contract float %1999, 0x3FF3AECB00000000
  %2001 = fmul contract float %1982, 0x3FEA033860000000
  %2002 = fmul contract float %1983, 0x3FF3AECB00000000
  %2003 = fmul contract float %1984, 0x3FEA033860000000
  %2004 = fmul contract float %1985, 0x3FF3AECB00000000
  %2005 = fmul contract float %1986, 0x3FEA033860000000
  %2006 = fmul contract float %1987, 0x3FF3AECB00000000
  %2007 = fmul contract float %1988, 0x3FEA033860000000
  store float %2007, float addrspace(3)* %1803, align 4, !tbaa !6
  %2008 = fadd contract float %1990, %1994
  %2009 = fmul contract float %2008, 0x3FDC626AA0000000
  %2010 = fsub contract float %1992, %2009
  %2011 = fadd contract float %1994, %1998
  %2012 = fmul contract float %2011, 0x3FDC626AA0000000
  %2013 = fsub contract float %1996, %2012
  %2014 = fadd contract float %2001, %1998
  %2015 = fmul contract float %2014, 0x3FDC626AA0000000
  %2016 = fsub contract float %2000, %2015
  %2017 = fadd contract float %2001, %2003
  %2018 = fmul contract float %2017, 0x3FDC626AA0000000
  %2019 = fsub contract float %2002, %2018
  %2020 = fadd contract float %2003, %2005
  %2021 = fmul contract float %2020, 0x3FDC626AA0000000
  %2022 = fsub contract float %2004, %2021
  %2023 = fadd contract float %2005, %2007
  %2024 = fmul contract float %2023, 0x3FDC626AA0000000
  %2025 = fsub contract float %2006, %2024
  %2026 = fadd contract float %2010, %2013
  %2027 = fmul contract float %2026, 0x3FEC40CEC0000000
  %2028 = fsub contract float %1994, %2027
  %2029 = fadd contract float %2013, %2016
  %2030 = fmul contract float %2029, 0x3FEC40CEC0000000
  %2031 = fsub contract float %1998, %2030
  %2032 = fadd contract float %2019, %2016
  %2033 = fmul contract float %2032, 0x3FEC40CEC0000000
  %2034 = fsub contract float %2001, %2033
  %2035 = fadd contract float %2019, %2022
  %2036 = fmul contract float %2035, 0x3FEC40CEC0000000
  %2037 = fsub contract float %2003, %2036
  %2038 = fadd contract float %2022, %2025
  %2039 = fmul contract float %2038, 0x3FEC40CEC0000000
  %2040 = fsub contract float %2005, %2039
  %2041 = fadd contract float %1990, %2028
  %2042 = fmul contract float %2041, 0x3FAB2035C0000000
  %2043 = fadd contract float %2010, %2042
  store float %2043, float addrspace(3)* %1782, align 4, !tbaa !6
  %2044 = fadd contract float %2028, %2031
  %2045 = fmul contract float %2044, 0x3FAB2035C0000000
  %2046 = fadd contract float %2013, %2045
  store float %2046, float addrspace(3)* %1786, align 4, !tbaa !6
  %2047 = fadd contract float %2031, %2034
  %2048 = fmul contract float %2047, 0x3FAB2035C0000000
  %2049 = fadd contract float %2016, %2048
  store float %2049, float addrspace(3)* %1790, align 4, !tbaa !6
  %2050 = fadd contract float %2037, %2034
  %2051 = fmul contract float %2050, 0x3FAB2035C0000000
  %2052 = fadd contract float %2019, %2051
  store float %2052, float addrspace(3)* %1793, align 4, !tbaa !6
  %2053 = fadd contract float %2037, %2040
  %2054 = fmul contract float %2053, 0x3FAB2035C0000000
  %2055 = fadd contract float %2022, %2054
  store float %2055, float addrspace(3)* %1797, align 4, !tbaa !6
  %2056 = fadd contract float %2007, %2040
  %2057 = fmul contract float %2056, 0x3FAB2035C0000000
  %2058 = fadd contract float %2025, %2057
  store float %2058, float addrspace(3)* %1801, align 4, !tbaa !6
  %2059 = fadd contract float %2043, %2046
  %2060 = fmul contract float %2059, 0x3FF960CE60000000
  %2061 = fadd contract float %2028, %2060
  store float %2061, float addrspace(3)* %1784, align 4, !tbaa !6
  %2062 = fadd contract float %2046, %2049
  %2063 = fmul contract float %2062, 0x3FF960CE60000000
  %2064 = fadd contract float %2031, %2063
  store float %2064, float addrspace(3)* %1788, align 4, !tbaa !6
  %2065 = fadd contract float %2049, %2052
  %2066 = fmul contract float %2065, 0x3FF960CE60000000
  %2067 = fadd contract float %2034, %2066
  store float %2067, float addrspace(3)* %1791, align 4, !tbaa !6
  %2068 = fadd contract float %2055, %2052
  %2069 = fmul contract float %2068, 0x3FF960CE60000000
  %2070 = fadd contract float %2037, %2069
  store float %2070, float addrspace(3)* %1795, align 4, !tbaa !6
  %2071 = fadd contract float %2055, %2058
  %2072 = fmul contract float %2071, 0x3FF960CE60000000
  %2073 = fadd contract float %2040, %2072
  store float %2073, float addrspace(3)* %1799, align 4, !tbaa !6
  %2074 = icmp eq i32 %1808, %1710
  br i1 %2074, label %2079, label %2075

2075:                                             ; preds = %1981
  %2076 = add nsw i32 %1808, %1711
  %2077 = sext i32 %1808 to i64
  %2078 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2077
  store float %2046, float addrspace(1)* %2078, align 4, !tbaa !6
  br label %2079

2079:                                             ; preds = %2075, %1981
  %2080 = phi i32 [ %1710, %1981 ], [ %2076, %2075 ]
  %2081 = icmp eq i32 %2080, %1710
  br i1 %2081, label %2086, label %2082

2082:                                             ; preds = %2079
  %2083 = add nsw i32 %2080, %1711
  %2084 = sext i32 %2080 to i64
  %2085 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2084
  store float %2064, float addrspace(1)* %2085, align 4, !tbaa !6
  br label %2086

2086:                                             ; preds = %2082, %2079
  %2087 = phi i32 [ %1710, %2079 ], [ %2083, %2082 ]
  %2088 = icmp eq i32 %2087, %1710
  br i1 %2088, label %2093, label %2089

2089:                                             ; preds = %2086
  %2090 = add nsw i32 %2087, %1711
  %2091 = sext i32 %2087 to i64
  %2092 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2091
  store float %2049, float addrspace(1)* %2092, align 4, !tbaa !6
  br label %2093

2093:                                             ; preds = %2089, %2086
  %2094 = phi i32 [ %1710, %2086 ], [ %2090, %2089 ]
  %2095 = icmp eq i32 %2094, %1710
  br i1 %2095, label %2100, label %2096

2096:                                             ; preds = %2093
  %2097 = add nsw i32 %2094, %1711
  %2098 = sext i32 %2094 to i64
  %2099 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2098
  store float %2067, float addrspace(1)* %2099, align 4, !tbaa !6
  br label %2100

2100:                                             ; preds = %2096, %2093
  %2101 = phi i32 [ %1710, %2093 ], [ %2097, %2096 ]
  %2102 = icmp eq i32 %2101, %1710
  br i1 %2102, label %2107, label %2103

2103:                                             ; preds = %2100
  %2104 = add nsw i32 %2101, %1711
  %2105 = sext i32 %2101 to i64
  %2106 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2105
  store float %2052, float addrspace(1)* %2106, align 4, !tbaa !6
  br label %2107

2107:                                             ; preds = %2103, %2100
  %2108 = phi i32 [ %1710, %2100 ], [ %2104, %2103 ]
  %2109 = icmp eq i32 %2108, %1710
  br i1 %2109, label %2114, label %2110

2110:                                             ; preds = %2107
  %2111 = add nsw i32 %2108, %1711
  %2112 = sext i32 %2108 to i64
  %2113 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2112
  store float %2070, float addrspace(1)* %2113, align 4, !tbaa !6
  br label %2114

2114:                                             ; preds = %2110, %2107
  %2115 = phi i32 [ %1710, %2107 ], [ %2111, %2110 ]
  store float %1982, float addrspace(3)* %1780, align 4, !tbaa !6
  store float %1983, float addrspace(3)* %1782, align 4, !tbaa !6
  store float %1984, float addrspace(3)* %1784, align 4, !tbaa !6
  store float %1985, float addrspace(3)* %1786, align 4, !tbaa !6
  store float %1986, float addrspace(3)* %1788, align 4, !tbaa !6
  store float %1987, float addrspace(3)* %1790, align 4, !tbaa !6
  store float %1988, float addrspace(3)* %1791, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2116 = add nuw nsw i32 %1805, 1
  %2117 = icmp eq i32 %2116, %4
  br i1 %2117, label %3004, label %1804, !llvm.loop !19

2118:                                             ; preds = %1190
  br i1 %1196, label %2119, label %2281

2119:                                             ; preds = %2118
  %2120 = icmp ult i32 %1195, 4
  %2121 = select i1 %2120, i32 64, i32 -7
  %2122 = add nsw i32 %2121, %1195
  %2123 = add i32 %2122, %1191
  %2124 = sub i32 0, %2123
  %2125 = trunc i32 %2122 to i8
  %2126 = add nsw i8 %2125, 4
  %2127 = sdiv i8 %2126, 2
  %2128 = sext i8 %2127 to i32
  %2129 = and i32 %2122, 1
  %2130 = icmp eq i32 %2129, 0
  %2131 = select i1 %2130, i32 0, i32 472
  %2132 = add nsw i32 %2131, %2128
  %2133 = icmp eq i32 %7, 0
  br i1 %2133, label %2134, label %2197

2134:                                             ; preds = %2119
  %2135 = icmp slt i32 %2123, %2
  br i1 %2135, label %2140, label %2136

2136:                                             ; preds = %2134
  %2137 = shl nsw i32 %2, 1
  %2138 = sub i32 -2, %2123
  %2139 = add i32 %2138, %2137
  br label %2142

2140:                                             ; preds = %2134
  %2141 = icmp slt i32 %2123, 0
  br i1 %2141, label %2142, label %2144

2142:                                             ; preds = %2140, %2136
  %2143 = phi i32 [ %2139, %2136 ], [ %2124, %2140 ]
  br label %2144

2144:                                             ; preds = %2142, %2140
  %2145 = phi i32 [ %2143, %2142 ], [ %2123, %2140 ]
  %2146 = sdiv i32 %2145, 2
  %2147 = and i32 %2145, 1
  %2148 = icmp eq i32 %2147, 0
  %2149 = sdiv i32 %2, 2
  %2150 = and i32 %2, 1
  %2151 = add nsw i32 %2149, %2150
  %2152 = sdiv i32 %3, 2
  %2153 = and i32 %3, 1
  %2154 = add nsw i32 %2152, %2153
  br i1 %2148, label %2160, label %2155

2155:                                             ; preds = %2144
  %2156 = mul nsw i32 %2154, %2151
  %2157 = add nsw i32 %2146, %2156
  %2158 = mul nsw i32 %3, %2
  %2159 = sdiv i32 %2158, 2
  br label %2162

2160:                                             ; preds = %2144
  %2161 = mul nsw i32 %2154, %2
  br label %2162

2162:                                             ; preds = %2160, %2155
  %2163 = phi i32 [ %2161, %2160 ], [ %2159, %2155 ]
  %2164 = phi i32 [ %2146, %2160 ], [ %2157, %2155 ]
  %2165 = phi i32 [ %2151, %2160 ], [ %2149, %2155 ]
  %2166 = sub nsw i32 %2165, %2163
  %2167 = sdiv i32 %1194, 2
  %2168 = mul nsw i32 %2165, %2167
  %2169 = add i32 %2168, %2164
  %2170 = sub i32 %2169, %2166
  %2171 = sext i32 %2169 to i64
  %2172 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2171
  %2173 = load float, float addrspace(1)* %2172, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2174 = add nsw i32 %2132, 108
  %2175 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2174
  store float %2173, float addrspace(3)* %2175, align 4, !tbaa !6
  %2176 = add i32 %2170, %2165
  %2177 = sext i32 %2176 to i64
  %2178 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2177
  %2179 = load float, float addrspace(1)* %2178, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2180 = add nsw i32 %2132, 72
  %2181 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2180
  store float %2179, float addrspace(3)* %2181, align 4, !tbaa !6
  %2182 = add nsw i32 %2132, 144
  %2183 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2182
  store float %2179, float addrspace(3)* %2183, align 4, !tbaa !6
  %2184 = add i32 %2169, %2165
  %2185 = sext i32 %2184 to i64
  %2186 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2185
  %2187 = load float, float addrspace(1)* %2186, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2188 = add nsw i32 %2132, 36
  %2189 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2188
  store float %2187, float addrspace(3)* %2189, align 4, !tbaa !6
  %2190 = add nsw i32 %2132, 180
  %2191 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2190
  store float %2187, float addrspace(3)* %2191, align 4, !tbaa !6
  %2192 = add i32 %2176, %2165
  %2193 = sext i32 %2192 to i64
  %2194 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2193
  %2195 = load float, float addrspace(1)* %2194, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2196 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2132
  store float %2195, float addrspace(3)* %2196, align 4, !tbaa !6
  br label %2274

2197:                                             ; preds = %2119
  %2198 = add nsw i32 %1194, -3
  %2199 = icmp slt i32 %2123, %2
  br i1 %2199, label %2204, label %2200

2200:                                             ; preds = %2197
  %2201 = shl nsw i32 %2, 1
  %2202 = sub i32 -2, %2123
  %2203 = add i32 %2202, %2201
  br label %2206

2204:                                             ; preds = %2197
  %2205 = icmp slt i32 %2123, 0
  br i1 %2205, label %2206, label %2208

2206:                                             ; preds = %2204, %2200
  %2207 = phi i32 [ %2203, %2200 ], [ %2124, %2204 ]
  br label %2208

2208:                                             ; preds = %2206, %2204
  %2209 = phi i32 [ %2207, %2206 ], [ %2123, %2204 ]
  %2210 = sdiv i32 %2209, 2
  %2211 = and i32 %2209, 1
  %2212 = icmp eq i32 %2211, 0
  %2213 = sdiv i32 %2, 2
  %2214 = and i32 %2, 1
  %2215 = add nsw i32 %2213, %2214
  %2216 = sdiv i32 %3, 2
  %2217 = and i32 %3, 1
  %2218 = add nsw i32 %2216, %2217
  br i1 %2212, label %2224, label %2219

2219:                                             ; preds = %2208
  %2220 = mul nsw i32 %2218, %2215
  %2221 = add nsw i32 %2210, %2220
  %2222 = mul nsw i32 %3, %2
  %2223 = sdiv i32 %2222, 2
  br label %2226

2224:                                             ; preds = %2208
  %2225 = mul nsw i32 %2218, %2
  br label %2226

2226:                                             ; preds = %2224, %2219
  %2227 = phi i32 [ %2225, %2224 ], [ %2223, %2219 ]
  %2228 = phi i32 [ %2210, %2224 ], [ %2221, %2219 ]
  %2229 = phi i32 [ %2215, %2224 ], [ %2213, %2219 ]
  %2230 = sub nsw i32 %2229, %2227
  %2231 = sdiv i32 %2198, 2
  %2232 = mul nsw i32 %2229, %2231
  %2233 = add i32 %2228, %2227
  %2234 = add i32 %2233, %2232
  %2235 = sub i32 %2234, %2227
  %2236 = sext i32 %2234 to i64
  %2237 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2236
  %2238 = load float, float addrspace(1)* %2237, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2239 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2132
  store float %2238, float addrspace(3)* %2239, align 4, !tbaa !6
  %2240 = add i32 %2235, %2229
  %2241 = sext i32 %2240 to i64
  %2242 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2241
  %2243 = load float, float addrspace(1)* %2242, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2244 = add nsw i32 %2132, 36
  %2245 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2244
  store float %2243, float addrspace(3)* %2245, align 4, !tbaa !6
  %2246 = add i32 %2234, %2229
  %2247 = sext i32 %2246 to i64
  %2248 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2247
  %2249 = load float, float addrspace(1)* %2248, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2250 = add nsw i32 %2132, 72
  %2251 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2250
  store float %2249, float addrspace(3)* %2251, align 4, !tbaa !6
  %2252 = add i32 %2240, %2229
  %2253 = sext i32 %2252 to i64
  %2254 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2253
  %2255 = load float, float addrspace(1)* %2254, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2256 = add nsw i32 %2132, 108
  %2257 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2256
  store float %2255, float addrspace(3)* %2257, align 4, !tbaa !6
  %2258 = add nsw i32 %2252, %2227
  %2259 = sext i32 %2258 to i64
  %2260 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2259
  %2261 = load float, float addrspace(1)* %2260, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2262 = add nsw i32 %2132, 144
  %2263 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2262
  store float %2261, float addrspace(3)* %2263, align 4, !tbaa !6
  %2264 = add i32 %2252, %2229
  %2265 = sext i32 %2264 to i64
  %2266 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2265
  %2267 = load float, float addrspace(1)* %2266, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2268 = add nsw i32 %2132, 180
  %2269 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2268
  store float %2267, float addrspace(3)* %2269, align 4, !tbaa !6
  %2270 = add nsw i32 %2264, %2227
  %2271 = sext i32 %2270 to i64
  %2272 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2271
  %2273 = load float, float addrspace(1)* %2272, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %2274

2274:                                             ; preds = %2226, %2162
  %2275 = phi i32 [ %2163, %2162 ], [ %2227, %2226 ]
  %2276 = phi i32 [ %2166, %2162 ], [ %2230, %2226 ]
  %2277 = phi i32 [ %2192, %2162 ], [ %2270, %2226 ]
  %2278 = phi float [ %2195, %2162 ], [ %2273, %2226 ]
  %2279 = add nsw i32 %2132, 216
  %2280 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2279
  store float %2278, float addrspace(3)* %2280, align 4, !tbaa !6
  br label %2281

2281:                                             ; preds = %2274, %2118
  %2282 = phi i32 [ %2275, %2274 ], [ 0, %2118 ]
  %2283 = phi i32 [ %2276, %2274 ], [ 0, %2118 ]
  %2284 = phi i32 [ %2277, %2274 ], [ 0, %2118 ]
  %2285 = phi i32 [ %2132, %2274 ], [ 0, %2118 ]
  %2286 = shl nuw nsw i32 %1195, 1
  %2287 = lshr i32 %1195, 5
  %2288 = mul nsw i32 %2287, -63
  %2289 = add nsw i32 %2288, %2286
  %2290 = add i32 %2289, %1191
  %2291 = sub i32 0, %2290
  %2292 = trunc i32 %2289 to i16
  %2293 = add nsw i16 %2292, 4
  %2294 = sdiv i16 %2293, 2
  %2295 = sext i16 %2294 to i32
  %2296 = and i32 %2289, 1
  %2297 = icmp eq i32 %2296, 0
  %2298 = select i1 %2297, i32 0, i32 472
  %2299 = add nsw i32 %2298, %2295
  %2300 = icmp eq i32 %7, 0
  br i1 %2300, label %2301, label %2364

2301:                                             ; preds = %2281
  %2302 = icmp slt i32 %2290, %2
  br i1 %2302, label %2307, label %2303

2303:                                             ; preds = %2301
  %2304 = shl nsw i32 %2, 1
  %2305 = sub i32 -2, %2290
  %2306 = add i32 %2305, %2304
  br label %2309

2307:                                             ; preds = %2301
  %2308 = icmp slt i32 %2290, 0
  br i1 %2308, label %2309, label %2311

2309:                                             ; preds = %2307, %2303
  %2310 = phi i32 [ %2306, %2303 ], [ %2291, %2307 ]
  br label %2311

2311:                                             ; preds = %2309, %2307
  %2312 = phi i32 [ %2310, %2309 ], [ %2290, %2307 ]
  %2313 = sdiv i32 %2312, 2
  %2314 = and i32 %2312, 1
  %2315 = icmp eq i32 %2314, 0
  %2316 = sdiv i32 %2, 2
  %2317 = and i32 %2, 1
  %2318 = add nsw i32 %2316, %2317
  %2319 = sdiv i32 %3, 2
  %2320 = and i32 %3, 1
  %2321 = add nsw i32 %2319, %2320
  br i1 %2315, label %2327, label %2322

2322:                                             ; preds = %2311
  %2323 = mul nsw i32 %2321, %2318
  %2324 = add nsw i32 %2313, %2323
  %2325 = mul nsw i32 %3, %2
  %2326 = sdiv i32 %2325, 2
  br label %2329

2327:                                             ; preds = %2311
  %2328 = mul nsw i32 %2321, %2
  br label %2329

2329:                                             ; preds = %2327, %2322
  %2330 = phi i32 [ %2328, %2327 ], [ %2326, %2322 ]
  %2331 = phi i32 [ %2313, %2327 ], [ %2324, %2322 ]
  %2332 = phi i32 [ %2318, %2327 ], [ %2316, %2322 ]
  %2333 = sub nsw i32 %2332, %2330
  %2334 = sdiv i32 %1194, 2
  %2335 = mul nsw i32 %2332, %2334
  %2336 = add i32 %2335, %2331
  %2337 = sub i32 %2336, %2333
  %2338 = sext i32 %2336 to i64
  %2339 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2338
  %2340 = load float, float addrspace(1)* %2339, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2341 = add nsw i32 %2299, 108
  %2342 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2341
  store float %2340, float addrspace(3)* %2342, align 4, !tbaa !6
  %2343 = add i32 %2337, %2332
  %2344 = sext i32 %2343 to i64
  %2345 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2344
  %2346 = load float, float addrspace(1)* %2345, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2347 = add nsw i32 %2299, 72
  %2348 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2347
  store float %2346, float addrspace(3)* %2348, align 4, !tbaa !6
  %2349 = add nsw i32 %2299, 144
  %2350 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2349
  store float %2346, float addrspace(3)* %2350, align 4, !tbaa !6
  %2351 = add i32 %2336, %2332
  %2352 = sext i32 %2351 to i64
  %2353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2352
  %2354 = load float, float addrspace(1)* %2353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2355 = add nsw i32 %2299, 36
  %2356 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2355
  store float %2354, float addrspace(3)* %2356, align 4, !tbaa !6
  %2357 = add nsw i32 %2299, 180
  %2358 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2357
  store float %2354, float addrspace(3)* %2358, align 4, !tbaa !6
  %2359 = add i32 %2343, %2332
  %2360 = sext i32 %2359 to i64
  %2361 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2360
  %2362 = load float, float addrspace(1)* %2361, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2363 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2299
  store float %2362, float addrspace(3)* %2363, align 4, !tbaa !6
  br label %2441

2364:                                             ; preds = %2281
  %2365 = add nsw i32 %1194, -3
  %2366 = icmp slt i32 %2290, %2
  br i1 %2366, label %2371, label %2367

2367:                                             ; preds = %2364
  %2368 = shl nsw i32 %2, 1
  %2369 = sub i32 -2, %2290
  %2370 = add i32 %2369, %2368
  br label %2373

2371:                                             ; preds = %2364
  %2372 = icmp slt i32 %2290, 0
  br i1 %2372, label %2373, label %2375

2373:                                             ; preds = %2371, %2367
  %2374 = phi i32 [ %2370, %2367 ], [ %2291, %2371 ]
  br label %2375

2375:                                             ; preds = %2373, %2371
  %2376 = phi i32 [ %2374, %2373 ], [ %2290, %2371 ]
  %2377 = sdiv i32 %2376, 2
  %2378 = and i32 %2376, 1
  %2379 = icmp eq i32 %2378, 0
  %2380 = sdiv i32 %2, 2
  %2381 = and i32 %2, 1
  %2382 = add nsw i32 %2380, %2381
  %2383 = sdiv i32 %3, 2
  %2384 = and i32 %3, 1
  %2385 = add nsw i32 %2383, %2384
  br i1 %2379, label %2391, label %2386

2386:                                             ; preds = %2375
  %2387 = mul nsw i32 %2385, %2382
  %2388 = add nsw i32 %2377, %2387
  %2389 = mul nsw i32 %3, %2
  %2390 = sdiv i32 %2389, 2
  br label %2393

2391:                                             ; preds = %2375
  %2392 = mul nsw i32 %2385, %2
  br label %2393

2393:                                             ; preds = %2391, %2386
  %2394 = phi i32 [ %2392, %2391 ], [ %2390, %2386 ]
  %2395 = phi i32 [ %2377, %2391 ], [ %2388, %2386 ]
  %2396 = phi i32 [ %2382, %2391 ], [ %2380, %2386 ]
  %2397 = sub nsw i32 %2396, %2394
  %2398 = sdiv i32 %2365, 2
  %2399 = mul nsw i32 %2396, %2398
  %2400 = add i32 %2395, %2394
  %2401 = add i32 %2400, %2399
  %2402 = sub i32 %2401, %2394
  %2403 = sext i32 %2401 to i64
  %2404 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2403
  %2405 = load float, float addrspace(1)* %2404, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2406 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2299
  store float %2405, float addrspace(3)* %2406, align 4, !tbaa !6
  %2407 = add i32 %2402, %2396
  %2408 = sext i32 %2407 to i64
  %2409 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2408
  %2410 = load float, float addrspace(1)* %2409, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2411 = add nsw i32 %2299, 36
  %2412 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2411
  store float %2410, float addrspace(3)* %2412, align 4, !tbaa !6
  %2413 = add i32 %2401, %2396
  %2414 = sext i32 %2413 to i64
  %2415 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2414
  %2416 = load float, float addrspace(1)* %2415, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2417 = add nsw i32 %2299, 72
  %2418 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2417
  store float %2416, float addrspace(3)* %2418, align 4, !tbaa !6
  %2419 = add i32 %2407, %2396
  %2420 = sext i32 %2419 to i64
  %2421 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2420
  %2422 = load float, float addrspace(1)* %2421, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2423 = add nsw i32 %2299, 108
  %2424 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2423
  store float %2422, float addrspace(3)* %2424, align 4, !tbaa !6
  %2425 = add nsw i32 %2419, %2394
  %2426 = sext i32 %2425 to i64
  %2427 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2426
  %2428 = load float, float addrspace(1)* %2427, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2429 = add nsw i32 %2299, 144
  %2430 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2429
  store float %2428, float addrspace(3)* %2430, align 4, !tbaa !6
  %2431 = add i32 %2419, %2396
  %2432 = sext i32 %2431 to i64
  %2433 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2432
  %2434 = load float, float addrspace(1)* %2433, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2435 = add nsw i32 %2299, 180
  %2436 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2435
  store float %2434, float addrspace(3)* %2436, align 4, !tbaa !6
  %2437 = add nsw i32 %2431, %2394
  %2438 = sext i32 %2437 to i64
  %2439 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2438
  %2440 = load float, float addrspace(1)* %2439, align 4, !tbaa !6, !amdgpu.noclobber !10
  br label %2441

2441:                                             ; preds = %2393, %2329
  %2442 = phi i32 [ %2333, %2329 ], [ %2397, %2393 ]
  %2443 = phi i32 [ %2330, %2329 ], [ %2394, %2393 ]
  %2444 = phi i32 [ %2359, %2329 ], [ %2437, %2393 ]
  %2445 = phi float [ %2362, %2329 ], [ %2440, %2393 ]
  %2446 = add nsw i32 %2299, 216
  %2447 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2446
  store float %2445, float addrspace(3)* %2447, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2448 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %1195
  %2449 = load float, float addrspace(3)* %2448, align 4, !tbaa !6
  %2450 = fmul contract float %2449, 0x3FF3AECB00000000
  store float %2450, float addrspace(3)* %2448, align 4, !tbaa !6
  %2451 = add nuw nsw i32 %1195, 472
  %2452 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2451
  %2453 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2454 = fmul contract float %2453, 0x3FEA033860000000
  store float %2454, float addrspace(3)* %2452, align 4, !tbaa !6
  %2455 = add nuw nsw i32 %1195, 64
  %2456 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2455
  %2457 = load float, float addrspace(3)* %2456, align 4, !tbaa !6
  %2458 = fmul contract float %2457, 0x3FF3AECB00000000
  store float %2458, float addrspace(3)* %2456, align 4, !tbaa !6
  %2459 = add nuw nsw i32 %1195, 536
  %2460 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2459
  %2461 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2462 = fmul contract float %2461, 0x3FEA033860000000
  store float %2462, float addrspace(3)* %2460, align 4, !tbaa !6
  %2463 = add nuw nsw i32 %1195, 128
  %2464 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2463
  %2465 = load float, float addrspace(3)* %2464, align 4, !tbaa !6
  %2466 = fmul contract float %2465, 0x3FF3AECB00000000
  store float %2466, float addrspace(3)* %2464, align 4, !tbaa !6
  %2467 = add nuw nsw i32 %1195, 600
  %2468 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2467
  %2469 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2470 = fmul contract float %2469, 0x3FEA033860000000
  store float %2470, float addrspace(3)* %2468, align 4, !tbaa !6
  %2471 = icmp ult i32 %1195, 60
  br i1 %2471, label %2472, label %2481

2472:                                             ; preds = %2441
  %2473 = add nuw nsw i32 %1195, 192
  %2474 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2473
  %2475 = load float, float addrspace(3)* %2474, align 4, !tbaa !6
  %2476 = fmul contract float %2475, 0x3FF3AECB00000000
  store float %2476, float addrspace(3)* %2474, align 4, !tbaa !6
  %2477 = add nuw nsw i32 %1195, 664
  %2478 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2477
  %2479 = load float, float addrspace(3)* %2478, align 4, !tbaa !6
  %2480 = fmul contract float %2479, 0x3FEA033860000000
  store float %2480, float addrspace(3)* %2478, align 4, !tbaa !6
  br label %2481

2481:                                             ; preds = %2472, %2441
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2482 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2483 = add nuw nsw i32 %1195, 473
  %2484 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2483
  %2485 = load float, float addrspace(3)* %2484, align 4, !tbaa !6
  %2486 = add nuw nsw i32 %1195, 1
  %2487 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2486
  %2488 = fadd contract float %2482, %2485
  %2489 = fmul contract float %2488, 0x3FDC626AA0000000
  %2490 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2491 = fsub contract float %2490, %2489
  store float %2491, float addrspace(3)* %2487, align 4, !tbaa !6
  %2492 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2493 = add nuw nsw i32 %1195, 537
  %2494 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2493
  %2495 = load float, float addrspace(3)* %2494, align 4, !tbaa !6
  %2496 = add nuw nsw i32 %1195, 65
  %2497 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2496
  %2498 = fadd contract float %2492, %2495
  %2499 = fmul contract float %2498, 0x3FDC626AA0000000
  %2500 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2501 = fsub contract float %2500, %2499
  store float %2501, float addrspace(3)* %2497, align 4, !tbaa !6
  %2502 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2503 = add nuw nsw i32 %1195, 601
  %2504 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2503
  %2505 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2506 = add nuw nsw i32 %1195, 129
  %2507 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2506
  %2508 = fadd contract float %2502, %2505
  %2509 = fmul contract float %2508, 0x3FDC626AA0000000
  %2510 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2511 = fsub contract float %2510, %2509
  store float %2511, float addrspace(3)* %2507, align 4, !tbaa !6
  %2512 = icmp ult i32 %1195, 59
  br i1 %2512, label %2513, label %2526

2513:                                             ; preds = %2481
  %2514 = add nuw nsw i32 %1195, 664
  %2515 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2514
  %2516 = load float, float addrspace(3)* %2515, align 4, !tbaa !6
  %2517 = add nuw nsw i32 %1195, 665
  %2518 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2517
  %2519 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2520 = add nuw nsw i32 %1195, 193
  %2521 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2520
  %2522 = fadd contract float %2516, %2519
  %2523 = fmul contract float %2522, 0x3FDC626AA0000000
  %2524 = load float, float addrspace(3)* %2521, align 4, !tbaa !6
  %2525 = fsub contract float %2524, %2523
  store float %2525, float addrspace(3)* %2521, align 4, !tbaa !6
  br label %2526

2526:                                             ; preds = %2513, %2481
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2527 = load float, float addrspace(3)* %2448, align 4, !tbaa !6
  %2528 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2529 = fadd contract float %2527, %2528
  %2530 = fmul contract float %2529, 0x3FEC40CEC0000000
  %2531 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2532 = fsub contract float %2531, %2530
  store float %2532, float addrspace(3)* %2452, align 4, !tbaa !6
  %2533 = load float, float addrspace(3)* %2456, align 4, !tbaa !6
  %2534 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2535 = fadd contract float %2533, %2534
  %2536 = fmul contract float %2535, 0x3FEC40CEC0000000
  %2537 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2538 = fsub contract float %2537, %2536
  store float %2538, float addrspace(3)* %2460, align 4, !tbaa !6
  %2539 = load float, float addrspace(3)* %2464, align 4, !tbaa !6
  %2540 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2541 = fadd contract float %2539, %2540
  %2542 = fmul contract float %2541, 0x3FEC40CEC0000000
  %2543 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2544 = fsub contract float %2543, %2542
  store float %2544, float addrspace(3)* %2468, align 4, !tbaa !6
  br i1 %2512, label %2545, label %2558

2545:                                             ; preds = %2526
  %2546 = add nuw nsw i32 %1195, 192
  %2547 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2546
  %2548 = load float, float addrspace(3)* %2547, align 4, !tbaa !6
  %2549 = add nuw nsw i32 %1195, 193
  %2550 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2549
  %2551 = load float, float addrspace(3)* %2550, align 4, !tbaa !6
  %2552 = add nuw nsw i32 %1195, 664
  %2553 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2552
  %2554 = fadd contract float %2548, %2551
  %2555 = fmul contract float %2554, 0x3FEC40CEC0000000
  %2556 = load float, float addrspace(3)* %2553, align 4, !tbaa !6
  %2557 = fsub contract float %2556, %2555
  store float %2557, float addrspace(3)* %2553, align 4, !tbaa !6
  br label %2558

2558:                                             ; preds = %2545, %2526
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2559 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2560 = load float, float addrspace(3)* %2484, align 4, !tbaa !6
  %2561 = fadd contract float %2559, %2560
  %2562 = fmul contract float %2561, 0x3FAB2035C0000000
  %2563 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2564 = fadd contract float %2563, %2562
  store float %2564, float addrspace(3)* %2487, align 4, !tbaa !6
  %2565 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2566 = load float, float addrspace(3)* %2494, align 4, !tbaa !6
  %2567 = fadd contract float %2565, %2566
  %2568 = fmul contract float %2567, 0x3FAB2035C0000000
  %2569 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2570 = fadd contract float %2569, %2568
  store float %2570, float addrspace(3)* %2497, align 4, !tbaa !6
  %2571 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2572 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2573 = fadd contract float %2571, %2572
  %2574 = fmul contract float %2573, 0x3FAB2035C0000000
  %2575 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2576 = fadd contract float %2575, %2574
  store float %2576, float addrspace(3)* %2507, align 4, !tbaa !6
  br i1 %2512, label %2577, label %2590

2577:                                             ; preds = %2558
  %2578 = add nuw nsw i32 %1195, 664
  %2579 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2578
  %2580 = load float, float addrspace(3)* %2579, align 4, !tbaa !6
  %2581 = add nuw nsw i32 %1195, 665
  %2582 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2581
  %2583 = load float, float addrspace(3)* %2582, align 4, !tbaa !6
  %2584 = add nuw nsw i32 %1195, 193
  %2585 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2584
  %2586 = fadd contract float %2580, %2583
  %2587 = fmul contract float %2586, 0x3FAB2035C0000000
  %2588 = load float, float addrspace(3)* %2585, align 4, !tbaa !6
  %2589 = fadd contract float %2588, %2587
  store float %2589, float addrspace(3)* %2585, align 4, !tbaa !6
  br label %2590

2590:                                             ; preds = %2577, %2558
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2591 = load float, float addrspace(3)* %2448, align 4, !tbaa !6
  %2592 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2593 = fadd contract float %2591, %2592
  %2594 = fmul contract float %2593, 0x3FF960CE60000000
  %2595 = load float, float addrspace(3)* %2452, align 4, !tbaa !6
  %2596 = fadd contract float %2595, %2594
  store float %2596, float addrspace(3)* %2452, align 4, !tbaa !6
  %2597 = load float, float addrspace(3)* %2456, align 4, !tbaa !6
  %2598 = load float, float addrspace(3)* %2497, align 4, !tbaa !6
  %2599 = fadd contract float %2597, %2598
  %2600 = fmul contract float %2599, 0x3FF960CE60000000
  %2601 = load float, float addrspace(3)* %2460, align 4, !tbaa !6
  %2602 = fadd contract float %2601, %2600
  store float %2602, float addrspace(3)* %2460, align 4, !tbaa !6
  %2603 = load float, float addrspace(3)* %2464, align 4, !tbaa !6
  %2604 = load float, float addrspace(3)* %2507, align 4, !tbaa !6
  %2605 = fadd contract float %2603, %2604
  %2606 = fmul contract float %2605, 0x3FF960CE60000000
  %2607 = load float, float addrspace(3)* %2468, align 4, !tbaa !6
  %2608 = fadd contract float %2607, %2606
  store float %2608, float addrspace(3)* %2468, align 4, !tbaa !6
  br i1 %2512, label %2609, label %2622

2609:                                             ; preds = %2590
  %2610 = add nuw nsw i32 %1195, 192
  %2611 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2610
  %2612 = load float, float addrspace(3)* %2611, align 4, !tbaa !6
  %2613 = add nuw nsw i32 %1195, 193
  %2614 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2613
  %2615 = load float, float addrspace(3)* %2614, align 4, !tbaa !6
  %2616 = add nuw nsw i32 %1195, 664
  %2617 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2616
  %2618 = fadd contract float %2612, %2615
  %2619 = fmul contract float %2618, 0x3FF960CE60000000
  %2620 = load float, float addrspace(3)* %2617, align 4, !tbaa !6
  %2621 = fadd contract float %2620, %2619
  store float %2621, float addrspace(3)* %2617, align 4, !tbaa !6
  br label %2622

2622:                                             ; preds = %2609, %2590
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2623 = add i32 %1191, %1195
  %2624 = icmp slt i32 %2623, %2
  %2625 = select i1 %2624, i32 %2, i32 0
  %2626 = add nuw nsw i32 %1195, 4
  %2627 = lshr i32 %2626, 1
  %2628 = and i32 %1195, 1
  %2629 = icmp eq i32 %2628, 0
  %2630 = select i1 %2629, i32 0, i32 472
  %2631 = add nuw nsw i32 %2630, %2627
  %2632 = icmp sgt i32 %4, 0
  br i1 %2632, label %2633, label %3004

2633:                                             ; preds = %2622
  %2634 = mul nsw i32 %1194, %2
  %2635 = add nsw i32 %2634, %2623
  %2636 = select i1 %2624, i32 %2635, i32 0
  %2637 = add nsw i32 %2299, 252
  %2638 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2637
  %2639 = add nsw i32 %2299, 288
  %2640 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2639
  %2641 = add nsw i32 %2299, 324
  %2642 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2641
  %2643 = add nsw i32 %2299, 360
  %2644 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2643
  %2645 = add nsw i32 %2299, 396
  %2646 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2645
  %2647 = add nsw i32 %2299, 432
  %2648 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2647
  %2649 = add nsw i32 %2285, 252
  %2650 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2649
  %2651 = add nsw i32 %2285, 288
  %2652 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2651
  %2653 = add nsw i32 %2285, 324
  %2654 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2653
  %2655 = add nsw i32 %2285, 360
  %2656 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2655
  %2657 = add nsw i32 %2285, 396
  %2658 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2657
  %2659 = add nsw i32 %2285, 432
  %2660 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2659
  %2661 = add nuw nsw i32 %1195, 252
  %2662 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2661
  %2663 = add nuw nsw i32 %1195, 724
  %2664 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2663
  %2665 = add nuw nsw i32 %1195, 316
  %2666 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2665
  %2667 = add nuw nsw i32 %1195, 788
  %2668 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2667
  %2669 = add nuw nsw i32 %1195, 380
  %2670 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2669
  %2671 = add nuw nsw i32 %1195, 852
  %2672 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2671
  %2673 = icmp ult i32 %1195, 24
  %2674 = add nuw nsw i32 %1195, 444
  %2675 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2674
  %2676 = add nuw nsw i32 %1195, 916
  %2677 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2676
  %2678 = add nuw nsw i32 %1195, 725
  %2679 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2678
  %2680 = add nuw nsw i32 %1195, 253
  %2681 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2680
  %2682 = add nuw nsw i32 %1195, 789
  %2683 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2682
  %2684 = add nuw nsw i32 %1195, 317
  %2685 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2684
  %2686 = add nuw nsw i32 %1195, 853
  %2687 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2686
  %2688 = add nuw nsw i32 %1195, 381
  %2689 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2688
  %2690 = icmp ult i32 %1195, 23
  %2691 = add nuw nsw i32 %1195, 917
  %2692 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2691
  %2693 = add nuw nsw i32 %1195, 445
  %2694 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2693
  %2695 = add nuw nsw i32 %2631, 216
  %2696 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2631
  %2697 = add nuw nsw i32 %2631, 36
  %2698 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2697
  %2699 = add nuw nsw i32 %2631, 72
  %2700 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2699
  %2701 = add nuw nsw i32 %2631, 108
  %2702 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2701
  %2703 = add nuw nsw i32 %2631, 144
  %2704 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2703
  %2705 = add nuw nsw i32 %2631, 180
  %2706 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2705
  %2707 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2695
  %2708 = add nuw nsw i32 %2631, 252
  %2709 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2708
  %2710 = add nuw nsw i32 %2631, 288
  %2711 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2710
  %2712 = add nuw nsw i32 %2631, 324
  %2713 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2712
  %2714 = add nuw nsw i32 %2631, 360
  %2715 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2714
  %2716 = add nuw nsw i32 %2631, 396
  %2717 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2716
  %2718 = add nuw nsw i32 %2631, 432
  %2719 = getelementptr inbounds %"class.dwt_cuda::RDWT97.8", %"class.dwt_cuda::RDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6RDWT97ILi64ELi6EE3runEPKfPfiiiE6rdwt97, i32 0, i32 0, i32 0, i32 %2718
  br label %2720

2720:                                             ; preds = %2897, %2633
  %2721 = phi i32 [ 0, %2633 ], [ %3002, %2897 ]
  %2722 = phi i32 [ %2444, %2633 ], [ %2745, %2897 ]
  %2723 = phi i32 [ %2284, %2633 ], [ %2775, %2897 ]
  %2724 = phi i32 [ %2636, %2633 ], [ %3001, %2897 ]
  %2725 = add nsw i32 %2722, %2442
  %2726 = sext i32 %2725 to i64
  %2727 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2726
  %2728 = load float, float addrspace(1)* %2727, align 4, !tbaa !6
  store float %2728, float addrspace(3)* %2638, align 4, !tbaa !6
  %2729 = add nsw i32 %2725, %2443
  %2730 = sext i32 %2729 to i64
  %2731 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2730
  %2732 = load float, float addrspace(1)* %2731, align 4, !tbaa !6
  store float %2732, float addrspace(3)* %2640, align 4, !tbaa !6
  %2733 = add nsw i32 %2729, %2442
  %2734 = sext i32 %2733 to i64
  %2735 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2734
  %2736 = load float, float addrspace(1)* %2735, align 4, !tbaa !6
  store float %2736, float addrspace(3)* %2642, align 4, !tbaa !6
  %2737 = add nsw i32 %2733, %2443
  %2738 = sext i32 %2737 to i64
  %2739 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2738
  %2740 = load float, float addrspace(1)* %2739, align 4, !tbaa !6
  store float %2740, float addrspace(3)* %2644, align 4, !tbaa !6
  %2741 = add nsw i32 %2737, %2442
  %2742 = sext i32 %2741 to i64
  %2743 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2742
  %2744 = load float, float addrspace(1)* %2743, align 4, !tbaa !6
  store float %2744, float addrspace(3)* %2646, align 4, !tbaa !6
  %2745 = add nsw i32 %2741, %2443
  %2746 = sext i32 %2745 to i64
  %2747 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2746
  %2748 = load float, float addrspace(1)* %2747, align 4, !tbaa !6
  store float %2748, float addrspace(3)* %2648, align 4, !tbaa !6
  br i1 %1196, label %2749, label %2774

2749:                                             ; preds = %2720
  %2750 = add nsw i32 %2723, %2283
  %2751 = sext i32 %2750 to i64
  %2752 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2751
  %2753 = load float, float addrspace(1)* %2752, align 4, !tbaa !6
  store float %2753, float addrspace(3)* %2650, align 4, !tbaa !6
  %2754 = add nsw i32 %2750, %2282
  %2755 = sext i32 %2754 to i64
  %2756 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2755
  %2757 = load float, float addrspace(1)* %2756, align 4, !tbaa !6
  store float %2757, float addrspace(3)* %2652, align 4, !tbaa !6
  %2758 = add nsw i32 %2754, %2283
  %2759 = sext i32 %2758 to i64
  %2760 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2759
  %2761 = load float, float addrspace(1)* %2760, align 4, !tbaa !6
  store float %2761, float addrspace(3)* %2654, align 4, !tbaa !6
  %2762 = add nsw i32 %2758, %2282
  %2763 = sext i32 %2762 to i64
  %2764 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2763
  %2765 = load float, float addrspace(1)* %2764, align 4, !tbaa !6
  store float %2765, float addrspace(3)* %2656, align 4, !tbaa !6
  %2766 = add nsw i32 %2762, %2283
  %2767 = sext i32 %2766 to i64
  %2768 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2767
  %2769 = load float, float addrspace(1)* %2768, align 4, !tbaa !6
  store float %2769, float addrspace(3)* %2658, align 4, !tbaa !6
  %2770 = add nsw i32 %2766, %2282
  %2771 = sext i32 %2770 to i64
  %2772 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2771
  %2773 = load float, float addrspace(1)* %2772, align 4, !tbaa !6
  store float %2773, float addrspace(3)* %2660, align 4, !tbaa !6
  br label %2774

2774:                                             ; preds = %2749, %2720
  %2775 = phi i32 [ %2770, %2749 ], [ %2723, %2720 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2776 = load float, float addrspace(3)* %2662, align 4, !tbaa !6
  %2777 = fmul contract float %2776, 0x3FF3AECB00000000
  store float %2777, float addrspace(3)* %2662, align 4, !tbaa !6
  %2778 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2779 = fmul contract float %2778, 0x3FEA033860000000
  store float %2779, float addrspace(3)* %2664, align 4, !tbaa !6
  %2780 = load float, float addrspace(3)* %2666, align 4, !tbaa !6
  %2781 = fmul contract float %2780, 0x3FF3AECB00000000
  store float %2781, float addrspace(3)* %2666, align 4, !tbaa !6
  %2782 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2783 = fmul contract float %2782, 0x3FEA033860000000
  store float %2783, float addrspace(3)* %2668, align 4, !tbaa !6
  %2784 = load float, float addrspace(3)* %2670, align 4, !tbaa !6
  %2785 = fmul contract float %2784, 0x3FF3AECB00000000
  store float %2785, float addrspace(3)* %2670, align 4, !tbaa !6
  %2786 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2787 = fmul contract float %2786, 0x3FEA033860000000
  store float %2787, float addrspace(3)* %2672, align 4, !tbaa !6
  br i1 %2673, label %2788, label %2793

2788:                                             ; preds = %2774
  %2789 = load float, float addrspace(3)* %2675, align 4, !tbaa !6
  %2790 = fmul contract float %2789, 0x3FF3AECB00000000
  store float %2790, float addrspace(3)* %2675, align 4, !tbaa !6
  %2791 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2792 = fmul contract float %2791, 0x3FEA033860000000
  store float %2792, float addrspace(3)* %2677, align 4, !tbaa !6
  br label %2793

2793:                                             ; preds = %2788, %2774
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2794 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2795 = load float, float addrspace(3)* %2679, align 4, !tbaa !6
  %2796 = fadd contract float %2794, %2795
  %2797 = fmul contract float %2796, 0x3FDC626AA0000000
  %2798 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2799 = fsub contract float %2798, %2797
  store float %2799, float addrspace(3)* %2681, align 4, !tbaa !6
  %2800 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2801 = load float, float addrspace(3)* %2683, align 4, !tbaa !6
  %2802 = fadd contract float %2800, %2801
  %2803 = fmul contract float %2802, 0x3FDC626AA0000000
  %2804 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2805 = fsub contract float %2804, %2803
  store float %2805, float addrspace(3)* %2685, align 4, !tbaa !6
  %2806 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2807 = load float, float addrspace(3)* %2687, align 4, !tbaa !6
  %2808 = fadd contract float %2806, %2807
  %2809 = fmul contract float %2808, 0x3FDC626AA0000000
  %2810 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2811 = fsub contract float %2810, %2809
  store float %2811, float addrspace(3)* %2689, align 4, !tbaa !6
  br i1 %2690, label %2812, label %2819

2812:                                             ; preds = %2793
  %2813 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2814 = load float, float addrspace(3)* %2692, align 4, !tbaa !6
  %2815 = fadd contract float %2813, %2814
  %2816 = fmul contract float %2815, 0x3FDC626AA0000000
  %2817 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2818 = fsub contract float %2817, %2816
  store float %2818, float addrspace(3)* %2694, align 4, !tbaa !6
  br label %2819

2819:                                             ; preds = %2812, %2793
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2820 = load float, float addrspace(3)* %2662, align 4, !tbaa !6
  %2821 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2822 = fadd contract float %2820, %2821
  %2823 = fmul contract float %2822, 0x3FEC40CEC0000000
  %2824 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2825 = fsub contract float %2824, %2823
  store float %2825, float addrspace(3)* %2664, align 4, !tbaa !6
  %2826 = load float, float addrspace(3)* %2666, align 4, !tbaa !6
  %2827 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2828 = fadd contract float %2826, %2827
  %2829 = fmul contract float %2828, 0x3FEC40CEC0000000
  %2830 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2831 = fsub contract float %2830, %2829
  store float %2831, float addrspace(3)* %2668, align 4, !tbaa !6
  %2832 = load float, float addrspace(3)* %2670, align 4, !tbaa !6
  %2833 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2834 = fadd contract float %2832, %2833
  %2835 = fmul contract float %2834, 0x3FEC40CEC0000000
  %2836 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2837 = fsub contract float %2836, %2835
  store float %2837, float addrspace(3)* %2672, align 4, !tbaa !6
  br i1 %2690, label %2838, label %2845

2838:                                             ; preds = %2819
  %2839 = load float, float addrspace(3)* %2675, align 4, !tbaa !6
  %2840 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2841 = fadd contract float %2839, %2840
  %2842 = fmul contract float %2841, 0x3FEC40CEC0000000
  %2843 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2844 = fsub contract float %2843, %2842
  store float %2844, float addrspace(3)* %2677, align 4, !tbaa !6
  br label %2845

2845:                                             ; preds = %2838, %2819
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2846 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2847 = load float, float addrspace(3)* %2679, align 4, !tbaa !6
  %2848 = fadd contract float %2846, %2847
  %2849 = fmul contract float %2848, 0x3FAB2035C0000000
  %2850 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2851 = fadd contract float %2850, %2849
  store float %2851, float addrspace(3)* %2681, align 4, !tbaa !6
  %2852 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2853 = load float, float addrspace(3)* %2683, align 4, !tbaa !6
  %2854 = fadd contract float %2852, %2853
  %2855 = fmul contract float %2854, 0x3FAB2035C0000000
  %2856 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2857 = fadd contract float %2856, %2855
  store float %2857, float addrspace(3)* %2685, align 4, !tbaa !6
  %2858 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2859 = load float, float addrspace(3)* %2687, align 4, !tbaa !6
  %2860 = fadd contract float %2858, %2859
  %2861 = fmul contract float %2860, 0x3FAB2035C0000000
  %2862 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2863 = fadd contract float %2862, %2861
  store float %2863, float addrspace(3)* %2689, align 4, !tbaa !6
  br i1 %2690, label %2864, label %2871

2864:                                             ; preds = %2845
  %2865 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2866 = load float, float addrspace(3)* %2692, align 4, !tbaa !6
  %2867 = fadd contract float %2865, %2866
  %2868 = fmul contract float %2867, 0x3FAB2035C0000000
  %2869 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2870 = fadd contract float %2869, %2868
  store float %2870, float addrspace(3)* %2694, align 4, !tbaa !6
  br label %2871

2871:                                             ; preds = %2864, %2845
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2872 = load float, float addrspace(3)* %2662, align 4, !tbaa !6
  %2873 = load float, float addrspace(3)* %2681, align 4, !tbaa !6
  %2874 = fadd contract float %2872, %2873
  %2875 = fmul contract float %2874, 0x3FF960CE60000000
  %2876 = load float, float addrspace(3)* %2664, align 4, !tbaa !6
  %2877 = fadd contract float %2876, %2875
  store float %2877, float addrspace(3)* %2664, align 4, !tbaa !6
  %2878 = load float, float addrspace(3)* %2666, align 4, !tbaa !6
  %2879 = load float, float addrspace(3)* %2685, align 4, !tbaa !6
  %2880 = fadd contract float %2878, %2879
  %2881 = fmul contract float %2880, 0x3FF960CE60000000
  %2882 = load float, float addrspace(3)* %2668, align 4, !tbaa !6
  %2883 = fadd contract float %2882, %2881
  store float %2883, float addrspace(3)* %2668, align 4, !tbaa !6
  %2884 = load float, float addrspace(3)* %2670, align 4, !tbaa !6
  %2885 = load float, float addrspace(3)* %2689, align 4, !tbaa !6
  %2886 = fadd contract float %2884, %2885
  %2887 = fmul contract float %2886, 0x3FF960CE60000000
  %2888 = load float, float addrspace(3)* %2672, align 4, !tbaa !6
  %2889 = fadd contract float %2888, %2887
  store float %2889, float addrspace(3)* %2672, align 4, !tbaa !6
  br i1 %2690, label %2890, label %2897

2890:                                             ; preds = %2871
  %2891 = load float, float addrspace(3)* %2675, align 4, !tbaa !6
  %2892 = load float, float addrspace(3)* %2694, align 4, !tbaa !6
  %2893 = fadd contract float %2891, %2892
  %2894 = fmul contract float %2893, 0x3FF960CE60000000
  %2895 = load float, float addrspace(3)* %2677, align 4, !tbaa !6
  %2896 = fadd contract float %2895, %2894
  store float %2896, float addrspace(3)* %2677, align 4, !tbaa !6
  br label %2897

2897:                                             ; preds = %2890, %2871
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2898 = load float, float addrspace(3)* %2707, align 4, !tbaa !6
  %2899 = load float, float addrspace(3)* %2709, align 4, !tbaa !6
  %2900 = load float, float addrspace(3)* %2711, align 4, !tbaa !6
  %2901 = load float, float addrspace(3)* %2713, align 4, !tbaa !6
  %2902 = load float, float addrspace(3)* %2715, align 4, !tbaa !6
  %2903 = load float, float addrspace(3)* %2717, align 4, !tbaa !6
  %2904 = load float, float addrspace(3)* %2719, align 4, !tbaa !6
  %2905 = load float, float addrspace(3)* %2696, align 4, !tbaa !6
  %2906 = fmul contract float %2905, 0x3FEA033860000000
  %2907 = load float, float addrspace(3)* %2698, align 4, !tbaa !6
  %2908 = fmul contract float %2907, 0x3FF3AECB00000000
  %2909 = load float, float addrspace(3)* %2700, align 4, !tbaa !6
  %2910 = fmul contract float %2909, 0x3FEA033860000000
  %2911 = load float, float addrspace(3)* %2702, align 4, !tbaa !6
  %2912 = fmul contract float %2911, 0x3FF3AECB00000000
  %2913 = load float, float addrspace(3)* %2704, align 4, !tbaa !6
  %2914 = fmul contract float %2913, 0x3FEA033860000000
  %2915 = load float, float addrspace(3)* %2706, align 4, !tbaa !6
  %2916 = fmul contract float %2915, 0x3FF3AECB00000000
  %2917 = fmul contract float %2898, 0x3FEA033860000000
  %2918 = fmul contract float %2899, 0x3FF3AECB00000000
  %2919 = fmul contract float %2900, 0x3FEA033860000000
  %2920 = fmul contract float %2901, 0x3FF3AECB00000000
  %2921 = fmul contract float %2902, 0x3FEA033860000000
  %2922 = fmul contract float %2903, 0x3FF3AECB00000000
  %2923 = fmul contract float %2904, 0x3FEA033860000000
  store float %2923, float addrspace(3)* %2719, align 4, !tbaa !6
  %2924 = fadd contract float %2906, %2910
  %2925 = fmul contract float %2924, 0x3FDC626AA0000000
  %2926 = fsub contract float %2908, %2925
  %2927 = fadd contract float %2910, %2914
  %2928 = fmul contract float %2927, 0x3FDC626AA0000000
  %2929 = fsub contract float %2912, %2928
  %2930 = fadd contract float %2917, %2914
  %2931 = fmul contract float %2930, 0x3FDC626AA0000000
  %2932 = fsub contract float %2916, %2931
  %2933 = fadd contract float %2917, %2919
  %2934 = fmul contract float %2933, 0x3FDC626AA0000000
  %2935 = fsub contract float %2918, %2934
  %2936 = fadd contract float %2919, %2921
  %2937 = fmul contract float %2936, 0x3FDC626AA0000000
  %2938 = fsub contract float %2920, %2937
  %2939 = fadd contract float %2921, %2923
  %2940 = fmul contract float %2939, 0x3FDC626AA0000000
  %2941 = fsub contract float %2922, %2940
  %2942 = fadd contract float %2926, %2929
  %2943 = fmul contract float %2942, 0x3FEC40CEC0000000
  %2944 = fsub contract float %2910, %2943
  %2945 = fadd contract float %2929, %2932
  %2946 = fmul contract float %2945, 0x3FEC40CEC0000000
  %2947 = fsub contract float %2914, %2946
  %2948 = fadd contract float %2935, %2932
  %2949 = fmul contract float %2948, 0x3FEC40CEC0000000
  %2950 = fsub contract float %2917, %2949
  %2951 = fadd contract float %2935, %2938
  %2952 = fmul contract float %2951, 0x3FEC40CEC0000000
  %2953 = fsub contract float %2919, %2952
  %2954 = fadd contract float %2938, %2941
  %2955 = fmul contract float %2954, 0x3FEC40CEC0000000
  %2956 = fsub contract float %2921, %2955
  %2957 = fadd contract float %2944, %2947
  %2958 = fmul contract float %2957, 0x3FAB2035C0000000
  %2959 = fadd contract float %2929, %2958
  %2960 = fadd contract float %2947, %2950
  %2961 = fmul contract float %2960, 0x3FAB2035C0000000
  %2962 = fadd contract float %2932, %2961
  %2963 = fadd contract float %2953, %2950
  %2964 = fmul contract float %2963, 0x3FAB2035C0000000
  %2965 = fadd contract float %2935, %2964
  store float %2965, float addrspace(3)* %2709, align 4, !tbaa !6
  %2966 = fadd contract float %2953, %2956
  %2967 = fmul contract float %2966, 0x3FAB2035C0000000
  %2968 = fadd contract float %2938, %2967
  store float %2968, float addrspace(3)* %2713, align 4, !tbaa !6
  %2969 = fadd contract float %2923, %2956
  %2970 = fmul contract float %2969, 0x3FAB2035C0000000
  %2971 = fadd contract float %2941, %2970
  store float %2971, float addrspace(3)* %2717, align 4, !tbaa !6
  %2972 = fadd contract float %2959, %2962
  %2973 = fmul contract float %2972, 0x3FF960CE60000000
  %2974 = fadd contract float %2947, %2973
  %2975 = fadd contract float %2962, %2965
  %2976 = fmul contract float %2975, 0x3FF960CE60000000
  %2977 = fadd contract float %2950, %2976
  %2978 = fadd contract float %2968, %2965
  %2979 = fmul contract float %2978, 0x3FF960CE60000000
  %2980 = fadd contract float %2953, %2979
  store float %2980, float addrspace(3)* %2711, align 4, !tbaa !6
  %2981 = fadd contract float %2968, %2971
  %2982 = fmul contract float %2981, 0x3FF960CE60000000
  %2983 = fadd contract float %2956, %2982
  store float %2983, float addrspace(3)* %2715, align 4, !tbaa !6
  %2984 = sext i32 %2724 to i64
  %2985 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2984
  store float %2959, float addrspace(1)* %2985, align 4, !tbaa !6
  %2986 = add nsw i32 %2724, %2625
  %2987 = sext i32 %2986 to i64
  %2988 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2987
  store float %2974, float addrspace(1)* %2988, align 4, !tbaa !6
  %2989 = add nsw i32 %2986, %2625
  %2990 = sext i32 %2989 to i64
  %2991 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2990
  store float %2962, float addrspace(1)* %2991, align 4, !tbaa !6
  %2992 = add nsw i32 %2989, %2625
  %2993 = sext i32 %2992 to i64
  %2994 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2993
  store float %2977, float addrspace(1)* %2994, align 4, !tbaa !6
  %2995 = add nsw i32 %2992, %2625
  %2996 = sext i32 %2995 to i64
  %2997 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2996
  store float %2965, float addrspace(1)* %2997, align 4, !tbaa !6
  %2998 = add nsw i32 %2995, %2625
  %2999 = sext i32 %2998 to i64
  %3000 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2999
  store float %2980, float addrspace(1)* %3000, align 4, !tbaa !6
  store float %2898, float addrspace(3)* %2696, align 4, !tbaa !6
  store float %2899, float addrspace(3)* %2698, align 4, !tbaa !6
  store float %2900, float addrspace(3)* %2700, align 4, !tbaa !6
  store float %2901, float addrspace(3)* %2702, align 4, !tbaa !6
  store float %2902, float addrspace(3)* %2704, align 4, !tbaa !6
  store float %2903, float addrspace(3)* %2706, align 4, !tbaa !6
  store float %2904, float addrspace(3)* %2707, align 4, !tbaa !6
  %3001 = add nsw i32 %2998, %2625
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3002 = add nuw nsw i32 %2721, 1
  %3003 = icmp eq i32 %3002, %4
  br i1 %3003, label %3004, label %2720, !llvm.loop !20

3004:                                             ; preds = %1186, %2114, %2897, %697, %1709, %2622
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
attributes #3 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,64" "amdgpu-waves-per-eu"="4" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
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
!7 = !{!"float", !8, i64 0}
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
