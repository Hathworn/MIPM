; ModuleID = 'hip/dwt2d/dwt_cuda/fdwt97.cu'
source_filename = "hip/dwt2d/dwt_cuda/fdwt97.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"class.dwt_cuda::FDWT97" = type { %"class.dwt_cuda::TransformBuffer" }
%"class.dwt_cuda::TransformBuffer" = type { [3012 x float] }
%"class.dwt_cuda::FDWT97.5" = type { %"class.dwt_cuda::TransformBuffer.6" }
%"class.dwt_cuda::TransformBuffer.6" = type { [1772 x float] }
%"class.dwt_cuda::FDWT97.8" = type { %"class.dwt_cuda::TransformBuffer.9" }
%"class.dwt_cuda::TransformBuffer.9" = type { [940 x float] }

$_ZN8dwt_cuda12fdwt97KernelILi192ELi8EEEvPKfPfiii = comdat any

$_ZN8dwt_cuda12fdwt97KernelILi128ELi6EEEvPKfPfiii = comdat any

$_ZN8dwt_cuda12fdwt97KernelILi64ELi6EEEvPKfPfiii = comdat any

$_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97 = comdat any

$_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97 = comdat any

$_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97 = comdat any

@_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::FDWT97" undef, comdat, align 4
@_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::FDWT97.5" undef, comdat, align 4
@_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97 = linkonce_odr hidden local_unnamed_addr addrspace(3) global %"class.dwt_cuda::FDWT97.8" undef, comdat, align 4

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12fdwt97KernelILi192ELi8EEEvPKfPfiii(float addrspace(1)* readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = sub i32 0, %2
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %9 = shl i32 %8, 3
  %10 = add i32 %9, 8
  %11 = mul i32 %10, %4
  %12 = or i32 %11, 3
  %13 = icmp slt i32 %12, %3
  br i1 %13, label %1244, label %14

14:                                               ; preds = %5
  %15 = mul i32 %9, %4
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %17 = add nuw nsw i32 %16, 4
  %18 = lshr i32 %17, 1
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 1512
  %22 = add nuw nsw i32 %21, %18
  %23 = mul i32 %7, 192
  %24 = add i32 %23, %16
  %25 = sub i32 0, %24
  %26 = icmp eq i32 %8, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %14
  %28 = icmp slt i32 %24, %2
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = shl nsw i32 %2, 1
  %31 = sub i32 -2, %24
  %32 = add i32 %31, %30
  br label %35

33:                                               ; preds = %27
  %34 = icmp slt i32 %24, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %25, %33 ]
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ %24, %33 ]
  %39 = mul nsw i32 %3, %2
  %40 = add nsw i32 %38, %39
  %41 = mul nsw i32 %15, %2
  %42 = icmp eq i32 %41, %39
  %43 = mul i32 %2, -2
  %44 = shl i32 %2, 1
  %45 = select i1 %42, i32 %44, i32 %43
  %46 = select i1 %42, i32 %6, i32 %2
  %47 = select i1 %42, i32 %43, i32 0
  %48 = add i32 %47, %41
  %49 = add i32 %48, %38
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float addrspace(1)* %0, i64 %50
  %52 = load float, float addrspace(1)* %51, align 4, !tbaa !6, !amdgpu.noclobber !10
  %53 = add nuw nsw i32 %22, 400
  %54 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %53
  store float %52, float addrspace(3)* %54, align 4, !tbaa !6
  %55 = add nsw i32 %49, %46
  %56 = icmp eq i32 %55, %40
  %57 = sub nsw i32 0, %46
  %58 = shl i32 %46, 1
  %59 = select i1 %56, i32 %58, i32 %45
  %60 = select i1 %56, i32 %57, i32 %46
  %61 = select i1 %56, i32 %45, i32 0
  %62 = add i32 %61, %55
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float addrspace(1)* %0, i64 %63
  %65 = load float, float addrspace(1)* %64, align 4, !tbaa !6, !amdgpu.noclobber !10
  %66 = add nuw nsw i32 %22, 500
  %67 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %66
  store float %65, float addrspace(3)* %67, align 4, !tbaa !6
  %68 = add nuw nsw i32 %22, 300
  %69 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %68
  store float %65, float addrspace(3)* %69, align 4, !tbaa !6
  %70 = add nsw i32 %62, %60
  %71 = icmp eq i32 %70, %40
  %72 = sub nsw i32 0, %60
  %73 = shl i32 %60, 1
  %74 = select i1 %71, i32 %73, i32 %59
  %75 = select i1 %71, i32 %72, i32 %60
  %76 = select i1 %71, i32 %59, i32 0
  %77 = add i32 %76, %70
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float addrspace(1)* %0, i64 %78
  %80 = load float, float addrspace(1)* %79, align 4, !tbaa !6, !amdgpu.noclobber !10
  %81 = add nuw nsw i32 %22, 600
  %82 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %81
  store float %80, float addrspace(3)* %82, align 4, !tbaa !6
  %83 = add nuw nsw i32 %22, 200
  %84 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %83
  store float %80, float addrspace(3)* %84, align 4, !tbaa !6
  %85 = add nsw i32 %77, %75
  %86 = icmp eq i32 %85, %40
  %87 = sub nsw i32 0, %75
  %88 = shl i32 %75, 1
  %89 = select i1 %86, i32 %88, i32 %74
  %90 = select i1 %86, i32 %87, i32 %75
  %91 = select i1 %86, i32 %74, i32 0
  %92 = add i32 %91, %85
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float addrspace(1)* %0, i64 %93
  %95 = load float, float addrspace(1)* %94, align 4, !tbaa !6, !amdgpu.noclobber !10
  %96 = add nuw nsw i32 %22, 100
  %97 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %96
  store float %95, float addrspace(3)* %97, align 4, !tbaa !6
  %98 = add nsw i32 %92, %90
  %99 = icmp eq i32 %98, %40
  %100 = select i1 %99, i32 %89, i32 0
  %101 = add i32 %100, %98
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float addrspace(1)* %0, i64 %102
  %104 = load float, float addrspace(1)* %103, align 4, !tbaa !6, !amdgpu.noclobber !10
  %105 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %22
  store float %104, float addrspace(3)* %105, align 4, !tbaa !6
  %106 = or i32 %15, 3
  br i1 %28, label %110, label %107

107:                                              ; preds = %37
  %108 = sub i32 -2, %24
  %109 = add i32 %108, %44
  br label %112

110:                                              ; preds = %37
  %111 = icmp slt i32 %24, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %110, %107
  %113 = phi i32 [ %109, %107 ], [ %25, %110 ]
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %113, %112 ], [ %24, %110 ]
  %116 = add nsw i32 %115, %39
  %117 = mul nsw i32 %106, %2
  %118 = sub i32 %117, %2
  %119 = add i32 %118, %115
  br label %218

120:                                              ; preds = %14
  %121 = add nsw i32 %15, -4
  %122 = icmp slt i32 %24, %2
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = shl nsw i32 %2, 1
  %125 = sub i32 -2, %24
  %126 = add i32 %125, %124
  br label %129

127:                                              ; preds = %120
  %128 = icmp slt i32 %24, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %127, %123
  %130 = phi i32 [ %126, %123 ], [ %25, %127 ]
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %130, %129 ], [ %24, %127 ]
  %133 = mul nsw i32 %3, %2
  %134 = add nsw i32 %132, %133
  %135 = mul nsw i32 %121, %2
  %136 = add i32 %132, %135
  %137 = icmp eq i32 %135, %133
  %138 = mul i32 %2, -2
  %139 = add i32 %134, %138
  %140 = select i1 %137, i32 %6, i32 %2
  %141 = select i1 %137, i32 %139, i32 %136
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float addrspace(1)* %0, i64 %142
  %144 = load float, float addrspace(1)* %143, align 4, !tbaa !6, !amdgpu.noclobber !10
  %145 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %22
  store float %144, float addrspace(3)* %145, align 4, !tbaa !6
  %146 = add nsw i32 %141, %140
  %147 = icmp eq i32 %146, %134
  %148 = mul i32 %140, -2
  %149 = add i32 %134, %148
  %150 = sub nsw i32 0, %140
  %151 = select i1 %147, i32 %150, i32 %140
  %152 = select i1 %147, i32 %149, i32 %146
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float addrspace(1)* %0, i64 %153
  %155 = load float, float addrspace(1)* %154, align 4, !tbaa !6, !amdgpu.noclobber !10
  %156 = add nuw nsw i32 %22, 100
  %157 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %156
  store float %155, float addrspace(3)* %157, align 4, !tbaa !6
  %158 = add nsw i32 %152, %151
  %159 = icmp eq i32 %158, %134
  %160 = mul i32 %151, -2
  %161 = add i32 %160, %134
  %162 = sub nsw i32 0, %151
  %163 = select i1 %159, i32 %162, i32 %151
  %164 = select i1 %159, i32 %161, i32 %158
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float addrspace(1)* %0, i64 %165
  %167 = load float, float addrspace(1)* %166, align 4, !tbaa !6, !amdgpu.noclobber !10
  %168 = add nuw nsw i32 %22, 200
  %169 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %168
  store float %167, float addrspace(3)* %169, align 4, !tbaa !6
  %170 = add nsw i32 %164, %163
  %171 = icmp eq i32 %170, %134
  %172 = mul i32 %163, -2
  %173 = add i32 %172, %134
  %174 = sub nsw i32 0, %163
  %175 = select i1 %171, i32 %174, i32 %163
  %176 = select i1 %171, i32 %173, i32 %170
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float addrspace(1)* %0, i64 %177
  %179 = load float, float addrspace(1)* %178, align 4, !tbaa !6, !amdgpu.noclobber !10
  %180 = add nuw nsw i32 %22, 300
  %181 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %180
  store float %179, float addrspace(3)* %181, align 4, !tbaa !6
  %182 = add nsw i32 %176, %175
  %183 = icmp eq i32 %182, %134
  %184 = mul i32 %175, -2
  %185 = add i32 %184, %134
  %186 = sub nsw i32 0, %175
  %187 = select i1 %183, i32 %186, i32 %175
  %188 = select i1 %183, i32 %185, i32 %182
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float addrspace(1)* %0, i64 %189
  %191 = load float, float addrspace(1)* %190, align 4, !tbaa !6, !amdgpu.noclobber !10
  %192 = add nuw nsw i32 %22, 400
  %193 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %192
  store float %191, float addrspace(3)* %193, align 4, !tbaa !6
  %194 = add nsw i32 %188, %187
  %195 = icmp eq i32 %194, %134
  %196 = mul i32 %187, -2
  %197 = add i32 %196, %134
  %198 = sub nsw i32 0, %187
  %199 = select i1 %195, i32 %198, i32 %187
  %200 = select i1 %195, i32 %197, i32 %194
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float addrspace(1)* %0, i64 %201
  %203 = load float, float addrspace(1)* %202, align 4, !tbaa !6, !amdgpu.noclobber !10
  %204 = add nuw nsw i32 %22, 500
  %205 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %204
  store float %203, float addrspace(3)* %205, align 4, !tbaa !6
  %206 = add nsw i32 %200, %199
  %207 = icmp eq i32 %206, %134
  %208 = mul i32 %199, -2
  %209 = add i32 %208, %134
  %210 = sub nsw i32 0, %199
  %211 = select i1 %207, i32 %210, i32 %199
  %212 = select i1 %207, i32 %209, i32 %206
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float addrspace(1)* %0, i64 %213
  %215 = load float, float addrspace(1)* %214, align 4, !tbaa !6, !amdgpu.noclobber !10
  %216 = add nuw nsw i32 %22, 600
  %217 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %216
  store float %215, float addrspace(3)* %217, align 4, !tbaa !6
  br label %218

218:                                              ; preds = %131, %114
  %219 = phi i32 [ %116, %114 ], [ %134, %131 ]
  %220 = phi i32 [ %2, %114 ], [ %211, %131 ]
  %221 = phi i32 [ %119, %114 ], [ %212, %131 ]
  %222 = icmp ult i32 %16, 7
  br i1 %222, label %223, label %428

223:                                              ; preds = %218
  %224 = icmp ult i32 %16, 3
  %225 = select i1 %224, i32 192, i32 -7
  %226 = add nsw i32 %225, %16
  %227 = trunc i32 %226 to i16
  %228 = add nsw i16 %227, 4
  %229 = sdiv i16 %228, 2
  %230 = sext i16 %229 to i32
  %231 = and i32 %226, 1
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i32 0, i32 1512
  %234 = add nsw i32 %233, %230
  %235 = add i32 %226, %23
  %236 = sub i32 0, %235
  br i1 %26, label %237, label %330

237:                                              ; preds = %223
  %238 = icmp slt i32 %235, %2
  br i1 %238, label %243, label %239

239:                                              ; preds = %237
  %240 = shl nsw i32 %2, 1
  %241 = sub i32 -2, %235
  %242 = add i32 %241, %240
  br label %245

243:                                              ; preds = %237
  %244 = icmp slt i32 %235, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %243, %239
  %246 = phi i32 [ %242, %239 ], [ %236, %243 ]
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %246, %245 ], [ %235, %243 ]
  %249 = mul nsw i32 %3, %2
  %250 = add nsw i32 %248, %249
  %251 = mul nsw i32 %15, %2
  %252 = icmp eq i32 %251, %249
  %253 = mul i32 %2, -2
  %254 = shl i32 %2, 1
  %255 = select i1 %252, i32 %254, i32 %253
  %256 = select i1 %252, i32 %6, i32 %2
  %257 = select i1 %252, i32 %253, i32 0
  %258 = add i32 %257, %251
  %259 = add i32 %258, %248
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float addrspace(1)* %0, i64 %260
  %262 = load float, float addrspace(1)* %261, align 4, !tbaa !6, !amdgpu.noclobber !10
  %263 = add nsw i32 %234, 400
  %264 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %263
  store float %262, float addrspace(3)* %264, align 4, !tbaa !6
  %265 = add nsw i32 %259, %256
  %266 = icmp eq i32 %265, %250
  %267 = sub nsw i32 0, %256
  %268 = shl i32 %256, 1
  %269 = select i1 %266, i32 %268, i32 %255
  %270 = select i1 %266, i32 %267, i32 %256
  %271 = select i1 %266, i32 %255, i32 0
  %272 = add i32 %271, %265
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float addrspace(1)* %0, i64 %273
  %275 = load float, float addrspace(1)* %274, align 4, !tbaa !6, !amdgpu.noclobber !10
  %276 = add nsw i32 %234, 500
  %277 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %276
  store float %275, float addrspace(3)* %277, align 4, !tbaa !6
  %278 = add nsw i32 %234, 300
  %279 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %278
  store float %275, float addrspace(3)* %279, align 4, !tbaa !6
  %280 = add nsw i32 %272, %270
  %281 = icmp eq i32 %280, %250
  %282 = sub nsw i32 0, %270
  %283 = shl i32 %270, 1
  %284 = select i1 %281, i32 %283, i32 %269
  %285 = select i1 %281, i32 %282, i32 %270
  %286 = select i1 %281, i32 %269, i32 0
  %287 = add i32 %286, %280
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float addrspace(1)* %0, i64 %288
  %290 = load float, float addrspace(1)* %289, align 4, !tbaa !6, !amdgpu.noclobber !10
  %291 = add nsw i32 %234, 600
  %292 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %291
  store float %290, float addrspace(3)* %292, align 4, !tbaa !6
  %293 = add nsw i32 %234, 200
  %294 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %293
  store float %290, float addrspace(3)* %294, align 4, !tbaa !6
  %295 = add nsw i32 %287, %285
  %296 = icmp eq i32 %295, %250
  %297 = sub nsw i32 0, %285
  %298 = shl i32 %285, 1
  %299 = select i1 %296, i32 %298, i32 %284
  %300 = select i1 %296, i32 %297, i32 %285
  %301 = select i1 %296, i32 %284, i32 0
  %302 = add i32 %301, %295
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float addrspace(1)* %0, i64 %303
  %305 = load float, float addrspace(1)* %304, align 4, !tbaa !6, !amdgpu.noclobber !10
  %306 = add nsw i32 %234, 100
  %307 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %306
  store float %305, float addrspace(3)* %307, align 4, !tbaa !6
  %308 = add nsw i32 %302, %300
  %309 = icmp eq i32 %308, %250
  %310 = select i1 %309, i32 %299, i32 0
  %311 = add i32 %310, %308
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float addrspace(1)* %0, i64 %312
  %314 = load float, float addrspace(1)* %313, align 4, !tbaa !6, !amdgpu.noclobber !10
  %315 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %234
  store float %314, float addrspace(3)* %315, align 4, !tbaa !6
  %316 = or i32 %15, 3
  br i1 %238, label %320, label %317

317:                                              ; preds = %247
  %318 = sub i32 -2, %235
  %319 = add i32 %318, %254
  br label %322

320:                                              ; preds = %247
  %321 = icmp slt i32 %235, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %320, %317
  %323 = phi i32 [ %319, %317 ], [ %236, %320 ]
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i32 [ %323, %322 ], [ %235, %320 ]
  %326 = add nsw i32 %325, %249
  %327 = mul nsw i32 %316, %2
  %328 = sub i32 %327, %2
  %329 = add i32 %328, %325
  br label %428

330:                                              ; preds = %223
  %331 = add nsw i32 %15, -4
  %332 = icmp slt i32 %235, %2
  br i1 %332, label %337, label %333

333:                                              ; preds = %330
  %334 = shl nsw i32 %2, 1
  %335 = sub i32 -2, %235
  %336 = add i32 %335, %334
  br label %339

337:                                              ; preds = %330
  %338 = icmp slt i32 %235, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %337, %333
  %340 = phi i32 [ %336, %333 ], [ %236, %337 ]
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32 [ %340, %339 ], [ %235, %337 ]
  %343 = mul nsw i32 %3, %2
  %344 = add nsw i32 %342, %343
  %345 = mul nsw i32 %331, %2
  %346 = add i32 %342, %345
  %347 = icmp eq i32 %345, %343
  %348 = mul i32 %2, -2
  %349 = add i32 %344, %348
  %350 = select i1 %347, i32 %6, i32 %2
  %351 = select i1 %347, i32 %349, i32 %346
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %352
  %354 = load float, float addrspace(1)* %353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %355 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %234
  store float %354, float addrspace(3)* %355, align 4, !tbaa !6
  %356 = add nsw i32 %351, %350
  %357 = icmp eq i32 %356, %344
  %358 = mul i32 %350, -2
  %359 = add i32 %344, %358
  %360 = sub nsw i32 0, %350
  %361 = select i1 %357, i32 %360, i32 %350
  %362 = select i1 %357, i32 %359, i32 %356
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float addrspace(1)* %0, i64 %363
  %365 = load float, float addrspace(1)* %364, align 4, !tbaa !6, !amdgpu.noclobber !10
  %366 = add nsw i32 %234, 100
  %367 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %366
  store float %365, float addrspace(3)* %367, align 4, !tbaa !6
  %368 = add nsw i32 %362, %361
  %369 = icmp eq i32 %368, %344
  %370 = mul i32 %361, -2
  %371 = add i32 %370, %344
  %372 = sub nsw i32 0, %361
  %373 = select i1 %369, i32 %372, i32 %361
  %374 = select i1 %369, i32 %371, i32 %368
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float addrspace(1)* %0, i64 %375
  %377 = load float, float addrspace(1)* %376, align 4, !tbaa !6, !amdgpu.noclobber !10
  %378 = add nsw i32 %234, 200
  %379 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %378
  store float %377, float addrspace(3)* %379, align 4, !tbaa !6
  %380 = add nsw i32 %374, %373
  %381 = icmp eq i32 %380, %344
  %382 = mul i32 %373, -2
  %383 = add i32 %382, %344
  %384 = sub nsw i32 0, %373
  %385 = select i1 %381, i32 %384, i32 %373
  %386 = select i1 %381, i32 %383, i32 %380
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float addrspace(1)* %0, i64 %387
  %389 = load float, float addrspace(1)* %388, align 4, !tbaa !6, !amdgpu.noclobber !10
  %390 = add nsw i32 %234, 300
  %391 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %390
  store float %389, float addrspace(3)* %391, align 4, !tbaa !6
  %392 = add nsw i32 %386, %385
  %393 = icmp eq i32 %392, %344
  %394 = mul i32 %385, -2
  %395 = add i32 %394, %344
  %396 = sub nsw i32 0, %385
  %397 = select i1 %393, i32 %396, i32 %385
  %398 = select i1 %393, i32 %395, i32 %392
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float addrspace(1)* %0, i64 %399
  %401 = load float, float addrspace(1)* %400, align 4, !tbaa !6, !amdgpu.noclobber !10
  %402 = add nsw i32 %234, 400
  %403 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %402
  store float %401, float addrspace(3)* %403, align 4, !tbaa !6
  %404 = add nsw i32 %398, %397
  %405 = icmp eq i32 %404, %344
  %406 = mul i32 %397, -2
  %407 = add i32 %406, %344
  %408 = sub nsw i32 0, %397
  %409 = select i1 %405, i32 %408, i32 %397
  %410 = select i1 %405, i32 %407, i32 %404
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float addrspace(1)* %0, i64 %411
  %413 = load float, float addrspace(1)* %412, align 4, !tbaa !6, !amdgpu.noclobber !10
  %414 = add nsw i32 %234, 500
  %415 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %414
  store float %413, float addrspace(3)* %415, align 4, !tbaa !6
  %416 = add nsw i32 %410, %409
  %417 = icmp eq i32 %416, %344
  %418 = mul i32 %409, -2
  %419 = add i32 %418, %344
  %420 = sub nsw i32 0, %409
  %421 = select i1 %417, i32 %420, i32 %409
  %422 = select i1 %417, i32 %419, i32 %416
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds float, float addrspace(1)* %0, i64 %423
  %425 = load float, float addrspace(1)* %424, align 4, !tbaa !6, !amdgpu.noclobber !10
  %426 = add nsw i32 %234, 600
  %427 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %426
  store float %425, float addrspace(3)* %427, align 4, !tbaa !6
  br label %428

428:                                              ; preds = %341, %324, %218
  %429 = phi i32 [ 0, %218 ], [ %326, %324 ], [ %344, %341 ]
  %430 = phi i32 [ 0, %218 ], [ %2, %324 ], [ %421, %341 ]
  %431 = phi i32 [ 0, %218 ], [ %329, %324 ], [ %422, %341 ]
  %432 = phi i32 [ 0, %218 ], [ %234, %324 ], [ %234, %341 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %433 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %16
  %434 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %435 = add nuw nsw i32 %16, 1
  %436 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %435
  %437 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %438 = add nuw nsw i32 %16, 1512
  %439 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %438
  %440 = fadd contract float %434, %437
  %441 = fmul contract float %440, 0x3FF960CE60000000
  %442 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %443 = fsub contract float %442, %441
  store float %443, float addrspace(3)* %439, align 4, !tbaa !6
  %444 = add nuw nsw i32 %16, 192
  %445 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %444
  %446 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %447 = add nuw nsw i32 %16, 193
  %448 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %447
  %449 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %450 = add nuw nsw i32 %16, 1704
  %451 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %450
  %452 = fadd contract float %446, %449
  %453 = fmul contract float %452, 0x3FF960CE60000000
  %454 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %455 = fsub contract float %454, %453
  store float %455, float addrspace(3)* %451, align 4, !tbaa !6
  %456 = add nuw nsw i32 %16, 384
  %457 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %456
  %458 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %459 = add nuw nsw i32 %16, 385
  %460 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %459
  %461 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %462 = add nuw nsw i32 %16, 1896
  %463 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %462
  %464 = fadd contract float %458, %461
  %465 = fmul contract float %464, 0x3FF960CE60000000
  %466 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %467 = fsub contract float %466, %465
  store float %467, float addrspace(3)* %463, align 4, !tbaa !6
  %468 = icmp ult i32 %16, 123
  br i1 %468, label %469, label %482

469:                                              ; preds = %428
  %470 = add nuw nsw i32 %16, 576
  %471 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %470
  %472 = load float, float addrspace(3)* %471, align 4, !tbaa !6
  %473 = add nuw nsw i32 %16, 577
  %474 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %473
  %475 = load float, float addrspace(3)* %474, align 4, !tbaa !6
  %476 = add nuw nsw i32 %16, 2088
  %477 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %476
  %478 = fadd contract float %472, %475
  %479 = fmul contract float %478, 0x3FF960CE60000000
  %480 = load float, float addrspace(3)* %477, align 4, !tbaa !6
  %481 = fsub contract float %480, %479
  store float %481, float addrspace(3)* %477, align 4, !tbaa !6
  br label %482

482:                                              ; preds = %469, %428
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %483 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %484 = add nuw nsw i32 %16, 1513
  %485 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %484
  %486 = load float, float addrspace(3)* %485, align 4, !tbaa !6
  %487 = fadd contract float %483, %486
  %488 = fmul contract float %487, 0x3FAB2035C0000000
  %489 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %490 = fsub contract float %489, %488
  store float %490, float addrspace(3)* %436, align 4, !tbaa !6
  %491 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %492 = add nuw nsw i32 %16, 1705
  %493 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %492
  %494 = load float, float addrspace(3)* %493, align 4, !tbaa !6
  %495 = fadd contract float %491, %494
  %496 = fmul contract float %495, 0x3FAB2035C0000000
  %497 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %498 = fsub contract float %497, %496
  store float %498, float addrspace(3)* %448, align 4, !tbaa !6
  %499 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %500 = add nuw nsw i32 %16, 1897
  %501 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %500
  %502 = load float, float addrspace(3)* %501, align 4, !tbaa !6
  %503 = fadd contract float %499, %502
  %504 = fmul contract float %503, 0x3FAB2035C0000000
  %505 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %506 = fsub contract float %505, %504
  store float %506, float addrspace(3)* %460, align 4, !tbaa !6
  br i1 %468, label %507, label %520

507:                                              ; preds = %482
  %508 = add nuw nsw i32 %16, 2088
  %509 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %508
  %510 = load float, float addrspace(3)* %509, align 4, !tbaa !6
  %511 = add nuw nsw i32 %16, 2089
  %512 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %511
  %513 = load float, float addrspace(3)* %512, align 4, !tbaa !6
  %514 = add nuw nsw i32 %16, 577
  %515 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %514
  %516 = fadd contract float %510, %513
  %517 = fmul contract float %516, 0x3FAB2035C0000000
  %518 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %519 = fsub contract float %518, %517
  store float %519, float addrspace(3)* %515, align 4, !tbaa !6
  br label %520

520:                                              ; preds = %507, %482
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %521 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %522 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %523 = fadd contract float %521, %522
  %524 = fmul contract float %523, 0x3FEC40CEC0000000
  %525 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %526 = fadd contract float %525, %524
  store float %526, float addrspace(3)* %439, align 4, !tbaa !6
  %527 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %528 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %529 = fadd contract float %527, %528
  %530 = fmul contract float %529, 0x3FEC40CEC0000000
  %531 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %532 = fadd contract float %531, %530
  store float %532, float addrspace(3)* %451, align 4, !tbaa !6
  %533 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %534 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %535 = fadd contract float %533, %534
  %536 = fmul contract float %535, 0x3FEC40CEC0000000
  %537 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %538 = fadd contract float %537, %536
  store float %538, float addrspace(3)* %463, align 4, !tbaa !6
  br i1 %468, label %539, label %552

539:                                              ; preds = %520
  %540 = add nuw nsw i32 %16, 576
  %541 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %540
  %542 = load float, float addrspace(3)* %541, align 4, !tbaa !6
  %543 = add nuw nsw i32 %16, 577
  %544 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %543
  %545 = load float, float addrspace(3)* %544, align 4, !tbaa !6
  %546 = add nuw nsw i32 %16, 2088
  %547 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %546
  %548 = fadd contract float %542, %545
  %549 = fmul contract float %548, 0x3FEC40CEC0000000
  %550 = load float, float addrspace(3)* %547, align 4, !tbaa !6
  %551 = fadd contract float %550, %549
  store float %551, float addrspace(3)* %547, align 4, !tbaa !6
  br label %552

552:                                              ; preds = %539, %520
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %553 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %554 = load float, float addrspace(3)* %485, align 4, !tbaa !6
  %555 = fadd contract float %553, %554
  %556 = fmul contract float %555, 0x3FDC626AA0000000
  %557 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %558 = fadd contract float %557, %556
  store float %558, float addrspace(3)* %436, align 4, !tbaa !6
  %559 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %560 = load float, float addrspace(3)* %493, align 4, !tbaa !6
  %561 = fadd contract float %559, %560
  %562 = fmul contract float %561, 0x3FDC626AA0000000
  %563 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %564 = fadd contract float %563, %562
  store float %564, float addrspace(3)* %448, align 4, !tbaa !6
  %565 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %566 = load float, float addrspace(3)* %501, align 4, !tbaa !6
  %567 = fadd contract float %565, %566
  %568 = fmul contract float %567, 0x3FDC626AA0000000
  %569 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %570 = fadd contract float %569, %568
  store float %570, float addrspace(3)* %460, align 4, !tbaa !6
  br i1 %468, label %571, label %584

571:                                              ; preds = %552
  %572 = add nuw nsw i32 %16, 2088
  %573 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %572
  %574 = load float, float addrspace(3)* %573, align 4, !tbaa !6
  %575 = add nuw nsw i32 %16, 2089
  %576 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %575
  %577 = load float, float addrspace(3)* %576, align 4, !tbaa !6
  %578 = add nuw nsw i32 %16, 577
  %579 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %578
  %580 = fadd contract float %574, %577
  %581 = fmul contract float %580, 0x3FDC626AA0000000
  %582 = load float, float addrspace(3)* %579, align 4, !tbaa !6
  %583 = fadd contract float %582, %581
  store float %583, float addrspace(3)* %579, align 4, !tbaa !6
  br label %584

584:                                              ; preds = %571, %552
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %585 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %586 = fmul contract float %585, 0x3FEA033860000000
  store float %586, float addrspace(3)* %433, align 4, !tbaa !6
  %587 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %588 = fmul contract float %587, 0x3FF3AECB00000000
  store float %588, float addrspace(3)* %439, align 4, !tbaa !6
  %589 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %590 = fmul contract float %589, 0x3FEA033860000000
  store float %590, float addrspace(3)* %445, align 4, !tbaa !6
  %591 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %592 = fmul contract float %591, 0x3FF3AECB00000000
  store float %592, float addrspace(3)* %451, align 4, !tbaa !6
  %593 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %594 = fmul contract float %593, 0x3FEA033860000000
  store float %594, float addrspace(3)* %457, align 4, !tbaa !6
  %595 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %596 = fmul contract float %595, 0x3FF3AECB00000000
  store float %596, float addrspace(3)* %463, align 4, !tbaa !6
  %597 = icmp ult i32 %16, 124
  br i1 %597, label %598, label %607

598:                                              ; preds = %584
  %599 = add nuw nsw i32 %16, 576
  %600 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %599
  %601 = load float, float addrspace(3)* %600, align 4, !tbaa !6
  %602 = fmul contract float %601, 0x3FEA033860000000
  store float %602, float addrspace(3)* %600, align 4, !tbaa !6
  %603 = add nuw nsw i32 %16, 2088
  %604 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %603
  %605 = load float, float addrspace(3)* %604, align 4, !tbaa !6
  %606 = fmul contract float %605, 0x3FF3AECB00000000
  store float %606, float addrspace(3)* %604, align 4, !tbaa !6
  br label %607

607:                                              ; preds = %598, %584
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %608 = shl nuw nsw i32 %16, 1
  %609 = trunc i32 %16 to i16
  %610 = udiv i16 %609, 96
  %611 = zext i16 %610 to i32
  %612 = mul nsw i32 %611, -191
  %613 = add nsw i32 %612, %608
  %614 = add i32 %613, %23
  %615 = icmp slt i32 %614, %2
  br i1 %615, label %616, label %646

616:                                              ; preds = %607
  %617 = sdiv i32 %614, 2
  %618 = and i32 %614, 1
  %619 = icmp eq i32 %618, 0
  %620 = sdiv i32 %2, 2
  %621 = and i32 %2, 1
  %622 = add nsw i32 %620, %621
  %623 = sdiv i32 %3, 2
  %624 = and i32 %3, 1
  %625 = add nsw i32 %623, %624
  br i1 %619, label %631, label %626

626:                                              ; preds = %616
  %627 = mul nsw i32 %625, %622
  %628 = add nsw i32 %627, %617
  %629 = mul nsw i32 %3, %2
  %630 = sdiv i32 %629, 2
  br label %633

631:                                              ; preds = %616
  %632 = mul nsw i32 %625, %2
  br label %633

633:                                              ; preds = %631, %626
  %634 = phi i32 [ %632, %631 ], [ %630, %626 ]
  %635 = phi i32 [ %617, %631 ], [ %628, %626 ]
  %636 = phi i32 [ %622, %631 ], [ %620, %626 ]
  %637 = sub nsw i32 %636, %634
  %638 = mul nsw i32 %636, %623
  %639 = icmp eq i32 %624, 0
  %640 = select i1 %639, i32 0, i32 %634
  %641 = add i32 %640, %635
  %642 = add i32 %641, %638
  %643 = sdiv i32 %15, 2
  %644 = mul nsw i32 %636, %643
  %645 = add i32 %644, %635
  br label %646

646:                                              ; preds = %633, %607
  %647 = phi i32 [ %634, %633 ], [ 0, %607 ]
  %648 = phi i32 [ %637, %633 ], [ 0, %607 ]
  %649 = phi i32 [ %642, %633 ], [ 0, %607 ]
  %650 = phi i32 [ %645, %633 ], [ 0, %607 ]
  %651 = trunc i32 %613 to i16
  %652 = add nsw i16 %651, 4
  %653 = sdiv i16 %652, 2
  %654 = sext i16 %653 to i32
  %655 = and i32 %613, 1
  %656 = icmp eq i32 %655, 0
  %657 = select i1 %656, i32 0, i32 1512
  %658 = add nsw i32 %657, %654
  %659 = icmp sgt i32 %4, 0
  br i1 %659, label %660, label %3143

660:                                              ; preds = %646
  %661 = add nuw nsw i32 %22, 700
  %662 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %661
  %663 = add nuw nsw i32 %22, 800
  %664 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %663
  %665 = add nuw nsw i32 %22, 900
  %666 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %665
  %667 = add nuw nsw i32 %22, 1000
  %668 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %667
  %669 = add nuw nsw i32 %22, 1100
  %670 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %669
  %671 = add nuw nsw i32 %22, 1200
  %672 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %671
  %673 = add nuw nsw i32 %22, 1300
  %674 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %673
  %675 = add nuw nsw i32 %22, 1400
  %676 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %675
  %677 = add nsw i32 %432, 700
  %678 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %677
  %679 = add nsw i32 %432, 800
  %680 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %679
  %681 = add nsw i32 %432, 900
  %682 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %681
  %683 = add nsw i32 %432, 1000
  %684 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %683
  %685 = add nsw i32 %432, 1100
  %686 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %685
  %687 = add nsw i32 %432, 1200
  %688 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %687
  %689 = add nsw i32 %432, 1300
  %690 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %689
  %691 = add nsw i32 %432, 1400
  %692 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %691
  %693 = icmp ult i32 %16, 31
  %694 = add nuw nsw i32 %16, 1468
  %695 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %694
  %696 = add nuw nsw i32 %16, 1469
  %697 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %696
  %698 = add nuw nsw i32 %16, 2980
  %699 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %698
  %700 = add nuw nsw i32 %16, 2981
  %701 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %700
  %702 = add nuw nsw i32 %16, 700
  %703 = icmp ult i32 %16, 32
  %704 = add nsw i32 %658, 800
  %705 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %658
  %706 = add nsw i32 %658, 200
  %707 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %706
  %708 = add nsw i32 %658, 100
  %709 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %708
  %710 = add nsw i32 %658, 400
  %711 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %710
  %712 = add nsw i32 %658, 300
  %713 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %712
  %714 = add nsw i32 %658, 600
  %715 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %714
  %716 = add nsw i32 %658, 500
  %717 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %716
  %718 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %704
  %719 = add nsw i32 %658, 700
  %720 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %719
  %721 = add nsw i32 %658, 1000
  %722 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %721
  %723 = add nsw i32 %658, 900
  %724 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %723
  %725 = add nsw i32 %658, 1200
  %726 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %725
  %727 = add nsw i32 %658, 1100
  %728 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %727
  %729 = add nsw i32 %658, 1300
  %730 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %729
  %731 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %702
  %732 = add nuw nsw i32 %16, 701
  %733 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %732
  %734 = add nuw nsw i32 %16, 2212
  %735 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %734
  %736 = add nuw nsw i32 %16, 892
  %737 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %736
  %738 = add nuw nsw i32 %16, 893
  %739 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %738
  %740 = add nuw nsw i32 %16, 2404
  %741 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %740
  %742 = add nuw nsw i32 %16, 1084
  %743 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %742
  %744 = add nuw nsw i32 %16, 1085
  %745 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %744
  %746 = add nuw nsw i32 %16, 2596
  %747 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %746
  %748 = add nuw nsw i32 %16, 1276
  %749 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %748
  %750 = add nuw nsw i32 %16, 1277
  %751 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %750
  %752 = add nuw nsw i32 %16, 2788
  %753 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %752
  %754 = add nuw nsw i32 %16, 2213
  %755 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %754
  %756 = add nuw nsw i32 %16, 2405
  %757 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %756
  %758 = add nuw nsw i32 %16, 2597
  %759 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %758
  %760 = add nuw nsw i32 %16, 2789
  %761 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %760
  %762 = add nsw i32 %658, 1400
  %763 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %762
  br label %764

764:                                              ; preds = %1240, %660
  %765 = phi i32 [ 0, %660 ], [ %1242, %1240 ]
  %766 = phi i32 [ %221, %660 ], [ %847, %1240 ]
  %767 = phi i32 [ %220, %660 ], [ %846, %1240 ]
  %768 = phi i32 [ %431, %660 ], [ %934, %1240 ]
  %769 = phi i32 [ %430, %660 ], [ %933, %1240 ]
  %770 = phi i32 [ %650, %660 ], [ %1241, %1240 ]
  %771 = add nsw i32 %767, %766
  %772 = icmp eq i32 %771, %219
  %773 = mul i32 %767, -2
  %774 = add i32 %773, %219
  %775 = sub nsw i32 0, %767
  %776 = select i1 %772, i32 %775, i32 %767
  %777 = select i1 %772, i32 %774, i32 %771
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds float, float addrspace(1)* %0, i64 %778
  %780 = load float, float addrspace(1)* %779, align 4, !tbaa !6
  store float %780, float addrspace(3)* %662, align 4, !tbaa !6
  %781 = add nsw i32 %777, %776
  %782 = icmp eq i32 %781, %219
  %783 = mul i32 %776, -2
  %784 = add i32 %783, %219
  %785 = sub nsw i32 0, %776
  %786 = select i1 %782, i32 %785, i32 %776
  %787 = select i1 %782, i32 %784, i32 %781
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds float, float addrspace(1)* %0, i64 %788
  %790 = load float, float addrspace(1)* %789, align 4, !tbaa !6
  store float %790, float addrspace(3)* %664, align 4, !tbaa !6
  %791 = add nsw i32 %787, %786
  %792 = icmp eq i32 %791, %219
  %793 = mul i32 %786, -2
  %794 = add i32 %793, %219
  %795 = sub nsw i32 0, %786
  %796 = select i1 %792, i32 %795, i32 %786
  %797 = select i1 %792, i32 %794, i32 %791
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds float, float addrspace(1)* %0, i64 %798
  %800 = load float, float addrspace(1)* %799, align 4, !tbaa !6
  store float %800, float addrspace(3)* %666, align 4, !tbaa !6
  %801 = add nsw i32 %797, %796
  %802 = icmp eq i32 %801, %219
  %803 = mul i32 %796, -2
  %804 = add i32 %803, %219
  %805 = sub nsw i32 0, %796
  %806 = select i1 %802, i32 %805, i32 %796
  %807 = select i1 %802, i32 %804, i32 %801
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds float, float addrspace(1)* %0, i64 %808
  %810 = load float, float addrspace(1)* %809, align 4, !tbaa !6
  store float %810, float addrspace(3)* %668, align 4, !tbaa !6
  %811 = add nsw i32 %807, %806
  %812 = icmp eq i32 %811, %219
  %813 = mul i32 %806, -2
  %814 = add i32 %813, %219
  %815 = sub nsw i32 0, %806
  %816 = select i1 %812, i32 %815, i32 %806
  %817 = select i1 %812, i32 %814, i32 %811
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds float, float addrspace(1)* %0, i64 %818
  %820 = load float, float addrspace(1)* %819, align 4, !tbaa !6
  store float %820, float addrspace(3)* %670, align 4, !tbaa !6
  %821 = add nsw i32 %817, %816
  %822 = icmp eq i32 %821, %219
  %823 = mul i32 %816, -2
  %824 = add i32 %823, %219
  %825 = sub nsw i32 0, %816
  %826 = select i1 %822, i32 %825, i32 %816
  %827 = select i1 %822, i32 %824, i32 %821
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds float, float addrspace(1)* %0, i64 %828
  %830 = load float, float addrspace(1)* %829, align 4, !tbaa !6
  store float %830, float addrspace(3)* %672, align 4, !tbaa !6
  %831 = add nsw i32 %827, %826
  %832 = icmp eq i32 %831, %219
  %833 = mul i32 %826, -2
  %834 = add i32 %833, %219
  %835 = sub nsw i32 0, %826
  %836 = select i1 %832, i32 %835, i32 %826
  %837 = select i1 %832, i32 %834, i32 %831
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds float, float addrspace(1)* %0, i64 %838
  %840 = load float, float addrspace(1)* %839, align 4, !tbaa !6
  store float %840, float addrspace(3)* %674, align 4, !tbaa !6
  %841 = add nsw i32 %837, %836
  %842 = icmp eq i32 %841, %219
  %843 = mul i32 %836, -2
  %844 = add i32 %843, %219
  %845 = sub nsw i32 0, %836
  %846 = select i1 %842, i32 %845, i32 %836
  %847 = select i1 %842, i32 %844, i32 %841
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds float, float addrspace(1)* %0, i64 %848
  %850 = load float, float addrspace(1)* %849, align 4, !tbaa !6
  store float %850, float addrspace(3)* %676, align 4, !tbaa !6
  br i1 %222, label %851, label %932

851:                                              ; preds = %764
  %852 = add nsw i32 %769, %768
  %853 = icmp eq i32 %852, %429
  %854 = mul i32 %769, -2
  %855 = add i32 %854, %429
  %856 = sub nsw i32 0, %769
  %857 = select i1 %853, i32 %856, i32 %769
  %858 = select i1 %853, i32 %855, i32 %852
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds float, float addrspace(1)* %0, i64 %859
  %861 = load float, float addrspace(1)* %860, align 4, !tbaa !6
  store float %861, float addrspace(3)* %678, align 4, !tbaa !6
  %862 = add nsw i32 %858, %857
  %863 = icmp eq i32 %862, %429
  %864 = mul i32 %857, -2
  %865 = add i32 %864, %429
  %866 = sub nsw i32 0, %857
  %867 = select i1 %863, i32 %866, i32 %857
  %868 = select i1 %863, i32 %865, i32 %862
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds float, float addrspace(1)* %0, i64 %869
  %871 = load float, float addrspace(1)* %870, align 4, !tbaa !6
  store float %871, float addrspace(3)* %680, align 4, !tbaa !6
  %872 = add nsw i32 %868, %867
  %873 = icmp eq i32 %872, %429
  %874 = mul i32 %867, -2
  %875 = add i32 %874, %429
  %876 = sub nsw i32 0, %867
  %877 = select i1 %873, i32 %876, i32 %867
  %878 = select i1 %873, i32 %875, i32 %872
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds float, float addrspace(1)* %0, i64 %879
  %881 = load float, float addrspace(1)* %880, align 4, !tbaa !6
  store float %881, float addrspace(3)* %682, align 4, !tbaa !6
  %882 = add nsw i32 %878, %877
  %883 = icmp eq i32 %882, %429
  %884 = mul i32 %877, -2
  %885 = add i32 %884, %429
  %886 = sub nsw i32 0, %877
  %887 = select i1 %883, i32 %886, i32 %877
  %888 = select i1 %883, i32 %885, i32 %882
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds float, float addrspace(1)* %0, i64 %889
  %891 = load float, float addrspace(1)* %890, align 4, !tbaa !6
  store float %891, float addrspace(3)* %684, align 4, !tbaa !6
  %892 = add nsw i32 %888, %887
  %893 = icmp eq i32 %892, %429
  %894 = mul i32 %887, -2
  %895 = add i32 %894, %429
  %896 = sub nsw i32 0, %887
  %897 = select i1 %893, i32 %896, i32 %887
  %898 = select i1 %893, i32 %895, i32 %892
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds float, float addrspace(1)* %0, i64 %899
  %901 = load float, float addrspace(1)* %900, align 4, !tbaa !6
  store float %901, float addrspace(3)* %686, align 4, !tbaa !6
  %902 = add nsw i32 %898, %897
  %903 = icmp eq i32 %902, %429
  %904 = mul i32 %897, -2
  %905 = add i32 %904, %429
  %906 = sub nsw i32 0, %897
  %907 = select i1 %903, i32 %906, i32 %897
  %908 = select i1 %903, i32 %905, i32 %902
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds float, float addrspace(1)* %0, i64 %909
  %911 = load float, float addrspace(1)* %910, align 4, !tbaa !6
  store float %911, float addrspace(3)* %688, align 4, !tbaa !6
  %912 = add nsw i32 %908, %907
  %913 = icmp eq i32 %912, %429
  %914 = mul i32 %907, -2
  %915 = add i32 %914, %429
  %916 = sub nsw i32 0, %907
  %917 = select i1 %913, i32 %916, i32 %907
  %918 = select i1 %913, i32 %915, i32 %912
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds float, float addrspace(1)* %0, i64 %919
  %921 = load float, float addrspace(1)* %920, align 4, !tbaa !6
  store float %921, float addrspace(3)* %690, align 4, !tbaa !6
  %922 = add nsw i32 %918, %917
  %923 = icmp eq i32 %922, %429
  %924 = mul i32 %917, -2
  %925 = add i32 %924, %429
  %926 = sub nsw i32 0, %917
  %927 = select i1 %923, i32 %926, i32 %917
  %928 = select i1 %923, i32 %925, i32 %922
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds float, float addrspace(1)* %0, i64 %929
  %931 = load float, float addrspace(1)* %930, align 4, !tbaa !6
  store float %931, float addrspace(3)* %692, align 4, !tbaa !6
  br label %932

932:                                              ; preds = %851, %764
  %933 = phi i32 [ %927, %851 ], [ %769, %764 ]
  %934 = phi i32 [ %928, %851 ], [ %768, %764 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %935 = load float, float addrspace(3)* %731, align 4, !tbaa !6
  %936 = load float, float addrspace(3)* %733, align 4, !tbaa !6
  %937 = fadd contract float %935, %936
  %938 = fmul contract float %937, 0x3FF960CE60000000
  %939 = load float, float addrspace(3)* %735, align 4, !tbaa !6
  %940 = fsub contract float %939, %938
  store float %940, float addrspace(3)* %735, align 4, !tbaa !6
  %941 = load float, float addrspace(3)* %737, align 4, !tbaa !6
  %942 = load float, float addrspace(3)* %739, align 4, !tbaa !6
  %943 = fadd contract float %941, %942
  %944 = fmul contract float %943, 0x3FF960CE60000000
  %945 = load float, float addrspace(3)* %741, align 4, !tbaa !6
  %946 = fsub contract float %945, %944
  store float %946, float addrspace(3)* %741, align 4, !tbaa !6
  %947 = load float, float addrspace(3)* %743, align 4, !tbaa !6
  %948 = load float, float addrspace(3)* %745, align 4, !tbaa !6
  %949 = fadd contract float %947, %948
  %950 = fmul contract float %949, 0x3FF960CE60000000
  %951 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %952 = fsub contract float %951, %950
  store float %952, float addrspace(3)* %747, align 4, !tbaa !6
  %953 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %954 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %955 = fadd contract float %953, %954
  %956 = fmul contract float %955, 0x3FF960CE60000000
  %957 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %958 = fsub contract float %957, %956
  store float %958, float addrspace(3)* %753, align 4, !tbaa !6
  br i1 %693, label %959, label %966

959:                                              ; preds = %932
  %960 = load float, float addrspace(3)* %695, align 4, !tbaa !6
  %961 = load float, float addrspace(3)* %697, align 4, !tbaa !6
  %962 = fadd contract float %960, %961
  %963 = fmul contract float %962, 0x3FF960CE60000000
  %964 = load float, float addrspace(3)* %699, align 4, !tbaa !6
  %965 = fsub contract float %964, %963
  store float %965, float addrspace(3)* %699, align 4, !tbaa !6
  br label %966

966:                                              ; preds = %959, %932
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %967 = load float, float addrspace(3)* %735, align 4, !tbaa !6
  %968 = load float, float addrspace(3)* %755, align 4, !tbaa !6
  %969 = fadd contract float %967, %968
  %970 = fmul contract float %969, 0x3FAB2035C0000000
  %971 = load float, float addrspace(3)* %733, align 4, !tbaa !6
  %972 = fsub contract float %971, %970
  store float %972, float addrspace(3)* %733, align 4, !tbaa !6
  %973 = load float, float addrspace(3)* %741, align 4, !tbaa !6
  %974 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %975 = fadd contract float %973, %974
  %976 = fmul contract float %975, 0x3FAB2035C0000000
  %977 = load float, float addrspace(3)* %739, align 4, !tbaa !6
  %978 = fsub contract float %977, %976
  store float %978, float addrspace(3)* %739, align 4, !tbaa !6
  %979 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %980 = load float, float addrspace(3)* %759, align 4, !tbaa !6
  %981 = fadd contract float %979, %980
  %982 = fmul contract float %981, 0x3FAB2035C0000000
  %983 = load float, float addrspace(3)* %745, align 4, !tbaa !6
  %984 = fsub contract float %983, %982
  store float %984, float addrspace(3)* %745, align 4, !tbaa !6
  %985 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %986 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %987 = fadd contract float %985, %986
  %988 = fmul contract float %987, 0x3FAB2035C0000000
  %989 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %990 = fsub contract float %989, %988
  store float %990, float addrspace(3)* %751, align 4, !tbaa !6
  br i1 %693, label %991, label %998

991:                                              ; preds = %966
  %992 = load float, float addrspace(3)* %699, align 4, !tbaa !6
  %993 = load float, float addrspace(3)* %701, align 4, !tbaa !6
  %994 = fadd contract float %992, %993
  %995 = fmul contract float %994, 0x3FAB2035C0000000
  %996 = load float, float addrspace(3)* %697, align 4, !tbaa !6
  %997 = fsub contract float %996, %995
  store float %997, float addrspace(3)* %697, align 4, !tbaa !6
  br label %998

998:                                              ; preds = %991, %966
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %999 = load float, float addrspace(3)* %731, align 4, !tbaa !6
  %1000 = load float, float addrspace(3)* %733, align 4, !tbaa !6
  %1001 = fadd contract float %999, %1000
  %1002 = fmul contract float %1001, 0x3FEC40CEC0000000
  %1003 = load float, float addrspace(3)* %735, align 4, !tbaa !6
  %1004 = fadd contract float %1003, %1002
  store float %1004, float addrspace(3)* %735, align 4, !tbaa !6
  %1005 = load float, float addrspace(3)* %737, align 4, !tbaa !6
  %1006 = load float, float addrspace(3)* %739, align 4, !tbaa !6
  %1007 = fadd contract float %1005, %1006
  %1008 = fmul contract float %1007, 0x3FEC40CEC0000000
  %1009 = load float, float addrspace(3)* %741, align 4, !tbaa !6
  %1010 = fadd contract float %1009, %1008
  store float %1010, float addrspace(3)* %741, align 4, !tbaa !6
  %1011 = load float, float addrspace(3)* %743, align 4, !tbaa !6
  %1012 = load float, float addrspace(3)* %745, align 4, !tbaa !6
  %1013 = fadd contract float %1011, %1012
  %1014 = fmul contract float %1013, 0x3FEC40CEC0000000
  %1015 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %1016 = fadd contract float %1015, %1014
  store float %1016, float addrspace(3)* %747, align 4, !tbaa !6
  %1017 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1018 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %1019 = fadd contract float %1017, %1018
  %1020 = fmul contract float %1019, 0x3FEC40CEC0000000
  %1021 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1022 = fadd contract float %1021, %1020
  store float %1022, float addrspace(3)* %753, align 4, !tbaa !6
  br i1 %693, label %1023, label %1030

1023:                                             ; preds = %998
  %1024 = load float, float addrspace(3)* %695, align 4, !tbaa !6
  %1025 = load float, float addrspace(3)* %697, align 4, !tbaa !6
  %1026 = fadd contract float %1024, %1025
  %1027 = fmul contract float %1026, 0x3FEC40CEC0000000
  %1028 = load float, float addrspace(3)* %699, align 4, !tbaa !6
  %1029 = fadd contract float %1028, %1027
  store float %1029, float addrspace(3)* %699, align 4, !tbaa !6
  br label %1030

1030:                                             ; preds = %1023, %998
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1031 = load float, float addrspace(3)* %735, align 4, !tbaa !6
  %1032 = load float, float addrspace(3)* %755, align 4, !tbaa !6
  %1033 = fadd contract float %1031, %1032
  %1034 = fmul contract float %1033, 0x3FDC626AA0000000
  %1035 = load float, float addrspace(3)* %733, align 4, !tbaa !6
  %1036 = fadd contract float %1035, %1034
  store float %1036, float addrspace(3)* %733, align 4, !tbaa !6
  %1037 = load float, float addrspace(3)* %741, align 4, !tbaa !6
  %1038 = load float, float addrspace(3)* %757, align 4, !tbaa !6
  %1039 = fadd contract float %1037, %1038
  %1040 = fmul contract float %1039, 0x3FDC626AA0000000
  %1041 = load float, float addrspace(3)* %739, align 4, !tbaa !6
  %1042 = fadd contract float %1041, %1040
  store float %1042, float addrspace(3)* %739, align 4, !tbaa !6
  %1043 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %1044 = load float, float addrspace(3)* %759, align 4, !tbaa !6
  %1045 = fadd contract float %1043, %1044
  %1046 = fmul contract float %1045, 0x3FDC626AA0000000
  %1047 = load float, float addrspace(3)* %745, align 4, !tbaa !6
  %1048 = fadd contract float %1047, %1046
  store float %1048, float addrspace(3)* %745, align 4, !tbaa !6
  %1049 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1050 = load float, float addrspace(3)* %761, align 4, !tbaa !6
  %1051 = fadd contract float %1049, %1050
  %1052 = fmul contract float %1051, 0x3FDC626AA0000000
  %1053 = load float, float addrspace(3)* %751, align 4, !tbaa !6
  %1054 = fadd contract float %1053, %1052
  store float %1054, float addrspace(3)* %751, align 4, !tbaa !6
  br i1 %693, label %1055, label %1062

1055:                                             ; preds = %1030
  %1056 = load float, float addrspace(3)* %699, align 4, !tbaa !6
  %1057 = load float, float addrspace(3)* %701, align 4, !tbaa !6
  %1058 = fadd contract float %1056, %1057
  %1059 = fmul contract float %1058, 0x3FDC626AA0000000
  %1060 = load float, float addrspace(3)* %697, align 4, !tbaa !6
  %1061 = fadd contract float %1060, %1059
  store float %1061, float addrspace(3)* %697, align 4, !tbaa !6
  br label %1062

1062:                                             ; preds = %1055, %1030
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1063 = load float, float addrspace(3)* %731, align 4, !tbaa !6
  %1064 = fmul contract float %1063, 0x3FEA033860000000
  store float %1064, float addrspace(3)* %731, align 4, !tbaa !6
  %1065 = load float, float addrspace(3)* %735, align 4, !tbaa !6
  %1066 = fmul contract float %1065, 0x3FF3AECB00000000
  store float %1066, float addrspace(3)* %735, align 4, !tbaa !6
  %1067 = load float, float addrspace(3)* %737, align 4, !tbaa !6
  %1068 = fmul contract float %1067, 0x3FEA033860000000
  store float %1068, float addrspace(3)* %737, align 4, !tbaa !6
  %1069 = load float, float addrspace(3)* %741, align 4, !tbaa !6
  %1070 = fmul contract float %1069, 0x3FF3AECB00000000
  store float %1070, float addrspace(3)* %741, align 4, !tbaa !6
  %1071 = load float, float addrspace(3)* %743, align 4, !tbaa !6
  %1072 = fmul contract float %1071, 0x3FEA033860000000
  store float %1072, float addrspace(3)* %743, align 4, !tbaa !6
  %1073 = load float, float addrspace(3)* %747, align 4, !tbaa !6
  %1074 = fmul contract float %1073, 0x3FF3AECB00000000
  store float %1074, float addrspace(3)* %747, align 4, !tbaa !6
  %1075 = load float, float addrspace(3)* %749, align 4, !tbaa !6
  %1076 = fmul contract float %1075, 0x3FEA033860000000
  store float %1076, float addrspace(3)* %749, align 4, !tbaa !6
  %1077 = load float, float addrspace(3)* %753, align 4, !tbaa !6
  %1078 = fmul contract float %1077, 0x3FF3AECB00000000
  store float %1078, float addrspace(3)* %753, align 4, !tbaa !6
  br i1 %703, label %1079, label %1084

1079:                                             ; preds = %1062
  %1080 = load float, float addrspace(3)* %695, align 4, !tbaa !6
  %1081 = fmul contract float %1080, 0x3FEA033860000000
  store float %1081, float addrspace(3)* %695, align 4, !tbaa !6
  %1082 = load float, float addrspace(3)* %699, align 4, !tbaa !6
  %1083 = fmul contract float %1082, 0x3FF3AECB00000000
  store float %1083, float addrspace(3)* %699, align 4, !tbaa !6
  br label %1084

1084:                                             ; preds = %1079, %1062
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1085 = load float, float addrspace(3)* %718, align 4, !tbaa !6
  %1086 = load float, float addrspace(3)* %724, align 4, !tbaa !6
  %1087 = load float, float addrspace(3)* %722, align 4, !tbaa !6
  %1088 = load float, float addrspace(3)* %728, align 4, !tbaa !6
  %1089 = load float, float addrspace(3)* %726, align 4, !tbaa !6
  %1090 = load float, float addrspace(3)* %730, align 4, !tbaa !6
  %1091 = load float, float addrspace(3)* %763, align 4, !tbaa !6
  %1092 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %1093 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %1094 = fadd contract float %1092, %1093
  %1095 = fmul contract float %1094, 0x3FF960CE60000000
  %1096 = load float, float addrspace(3)* %709, align 4, !tbaa !6
  %1097 = fsub contract float %1096, %1095
  %1098 = load float, float addrspace(3)* %711, align 4, !tbaa !6
  %1099 = fadd contract float %1093, %1098
  %1100 = fmul contract float %1099, 0x3FF960CE60000000
  %1101 = load float, float addrspace(3)* %713, align 4, !tbaa !6
  %1102 = fsub contract float %1101, %1100
  %1103 = load float, float addrspace(3)* %715, align 4, !tbaa !6
  %1104 = fadd contract float %1098, %1103
  %1105 = fmul contract float %1104, 0x3FF960CE60000000
  %1106 = load float, float addrspace(3)* %717, align 4, !tbaa !6
  %1107 = fsub contract float %1106, %1105
  %1108 = fadd contract float %1085, %1103
  %1109 = fmul contract float %1108, 0x3FF960CE60000000
  %1110 = load float, float addrspace(3)* %720, align 4, !tbaa !6
  %1111 = fsub contract float %1110, %1109
  %1112 = fadd contract float %1085, %1087
  %1113 = fmul contract float %1112, 0x3FF960CE60000000
  %1114 = fsub contract float %1086, %1113
  %1115 = fadd contract float %1087, %1089
  %1116 = fmul contract float %1115, 0x3FF960CE60000000
  %1117 = fsub contract float %1088, %1116
  %1118 = fadd contract float %1089, %1091
  %1119 = fmul contract float %1118, 0x3FF960CE60000000
  %1120 = fsub contract float %1090, %1119
  %1121 = fadd contract float %1097, %1102
  %1122 = fmul contract float %1121, 0x3FAB2035C0000000
  %1123 = fsub contract float %1093, %1122
  %1124 = fadd contract float %1102, %1107
  %1125 = fmul contract float %1124, 0x3FAB2035C0000000
  %1126 = fsub contract float %1098, %1125
  %1127 = fadd contract float %1107, %1111
  %1128 = fmul contract float %1127, 0x3FAB2035C0000000
  %1129 = fsub contract float %1103, %1128
  %1130 = fadd contract float %1114, %1111
  %1131 = fmul contract float %1130, 0x3FAB2035C0000000
  %1132 = fsub contract float %1085, %1131
  %1133 = fadd contract float %1114, %1117
  %1134 = fmul contract float %1133, 0x3FAB2035C0000000
  %1135 = fsub contract float %1087, %1134
  %1136 = fadd contract float %1117, %1120
  %1137 = fmul contract float %1136, 0x3FAB2035C0000000
  %1138 = fsub contract float %1089, %1137
  %1139 = fadd contract float %1092, %1123
  %1140 = fmul contract float %1139, 0x3FEC40CEC0000000
  %1141 = fadd contract float %1097, %1140
  store float %1141, float addrspace(3)* %709, align 4, !tbaa !6
  %1142 = fadd contract float %1123, %1126
  %1143 = fmul contract float %1142, 0x3FEC40CEC0000000
  %1144 = fadd contract float %1102, %1143
  store float %1144, float addrspace(3)* %713, align 4, !tbaa !6
  %1145 = fadd contract float %1126, %1129
  %1146 = fmul contract float %1145, 0x3FEC40CEC0000000
  %1147 = fadd contract float %1107, %1146
  store float %1147, float addrspace(3)* %717, align 4, !tbaa !6
  %1148 = fadd contract float %1129, %1132
  %1149 = fmul contract float %1148, 0x3FEC40CEC0000000
  %1150 = fadd contract float %1111, %1149
  store float %1150, float addrspace(3)* %720, align 4, !tbaa !6
  %1151 = fadd contract float %1135, %1132
  %1152 = fmul contract float %1151, 0x3FEC40CEC0000000
  %1153 = fadd contract float %1114, %1152
  store float %1153, float addrspace(3)* %724, align 4, !tbaa !6
  %1154 = fadd contract float %1135, %1138
  %1155 = fmul contract float %1154, 0x3FEC40CEC0000000
  %1156 = fadd contract float %1117, %1155
  store float %1156, float addrspace(3)* %728, align 4, !tbaa !6
  %1157 = fadd contract float %1091, %1138
  %1158 = fmul contract float %1157, 0x3FEC40CEC0000000
  %1159 = fadd contract float %1120, %1158
  store float %1159, float addrspace(3)* %730, align 4, !tbaa !6
  %1160 = fadd contract float %1141, %1144
  %1161 = fmul contract float %1160, 0x3FDC626AA0000000
  %1162 = fadd contract float %1123, %1161
  store float %1162, float addrspace(3)* %707, align 4, !tbaa !6
  %1163 = fadd contract float %1144, %1147
  %1164 = fmul contract float %1163, 0x3FDC626AA0000000
  %1165 = fadd contract float %1126, %1164
  store float %1165, float addrspace(3)* %711, align 4, !tbaa !6
  %1166 = fadd contract float %1147, %1150
  %1167 = fmul contract float %1166, 0x3FDC626AA0000000
  %1168 = fadd contract float %1129, %1167
  store float %1168, float addrspace(3)* %715, align 4, !tbaa !6
  %1169 = fadd contract float %1150, %1153
  %1170 = fmul contract float %1169, 0x3FDC626AA0000000
  %1171 = fadd contract float %1132, %1170
  store float %1171, float addrspace(3)* %718, align 4, !tbaa !6
  %1172 = fadd contract float %1156, %1153
  %1173 = fmul contract float %1172, 0x3FDC626AA0000000
  %1174 = fadd contract float %1135, %1173
  store float %1174, float addrspace(3)* %722, align 4, !tbaa !6
  %1175 = fadd contract float %1156, %1159
  %1176 = fmul contract float %1175, 0x3FDC626AA0000000
  %1177 = fadd contract float %1138, %1176
  store float %1177, float addrspace(3)* %726, align 4, !tbaa !6
  %1178 = icmp eq i32 %770, %649
  br i1 %1178, label %1184, label %1179

1179:                                             ; preds = %1084
  %1180 = add nsw i32 %770, %647
  %1181 = sext i32 %770 to i64
  %1182 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1181
  %1183 = fmul contract float %1165, 0x3FEA033860000000
  store float %1183, float addrspace(1)* %1182, align 4, !tbaa !6
  br label %1184

1184:                                             ; preds = %1179, %1084
  %1185 = phi i32 [ %649, %1084 ], [ %1180, %1179 ]
  %1186 = icmp eq i32 %1185, %649
  br i1 %1186, label %1192, label %1187

1187:                                             ; preds = %1184
  %1188 = add nsw i32 %1185, %648
  %1189 = sext i32 %1185 to i64
  %1190 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1189
  %1191 = fmul contract float %1147, 0x3FF3AECB00000000
  store float %1191, float addrspace(1)* %1190, align 4, !tbaa !6
  br label %1192

1192:                                             ; preds = %1187, %1184
  %1193 = phi i32 [ %649, %1184 ], [ %1188, %1187 ]
  %1194 = icmp eq i32 %1193, %649
  br i1 %1194, label %1200, label %1195

1195:                                             ; preds = %1192
  %1196 = add nsw i32 %1193, %647
  %1197 = sext i32 %1193 to i64
  %1198 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1197
  %1199 = fmul contract float %1168, 0x3FEA033860000000
  store float %1199, float addrspace(1)* %1198, align 4, !tbaa !6
  br label %1200

1200:                                             ; preds = %1195, %1192
  %1201 = phi i32 [ %649, %1192 ], [ %1196, %1195 ]
  %1202 = icmp eq i32 %1201, %649
  br i1 %1202, label %1208, label %1203

1203:                                             ; preds = %1200
  %1204 = add nsw i32 %1201, %648
  %1205 = sext i32 %1201 to i64
  %1206 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1205
  %1207 = fmul contract float %1150, 0x3FF3AECB00000000
  store float %1207, float addrspace(1)* %1206, align 4, !tbaa !6
  br label %1208

1208:                                             ; preds = %1203, %1200
  %1209 = phi i32 [ %649, %1200 ], [ %1204, %1203 ]
  %1210 = icmp eq i32 %1209, %649
  br i1 %1210, label %1216, label %1211

1211:                                             ; preds = %1208
  %1212 = add nsw i32 %1209, %647
  %1213 = sext i32 %1209 to i64
  %1214 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1213
  %1215 = fmul contract float %1171, 0x3FEA033860000000
  store float %1215, float addrspace(1)* %1214, align 4, !tbaa !6
  br label %1216

1216:                                             ; preds = %1211, %1208
  %1217 = phi i32 [ %649, %1208 ], [ %1212, %1211 ]
  %1218 = icmp eq i32 %1217, %649
  br i1 %1218, label %1224, label %1219

1219:                                             ; preds = %1216
  %1220 = add nsw i32 %1217, %648
  %1221 = sext i32 %1217 to i64
  %1222 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1221
  %1223 = fmul contract float %1153, 0x3FF3AECB00000000
  store float %1223, float addrspace(1)* %1222, align 4, !tbaa !6
  br label %1224

1224:                                             ; preds = %1219, %1216
  %1225 = phi i32 [ %649, %1216 ], [ %1220, %1219 ]
  %1226 = icmp eq i32 %1225, %649
  br i1 %1226, label %1232, label %1227

1227:                                             ; preds = %1224
  %1228 = add nsw i32 %1225, %647
  %1229 = sext i32 %1225 to i64
  %1230 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1229
  %1231 = fmul contract float %1174, 0x3FEA033860000000
  store float %1231, float addrspace(1)* %1230, align 4, !tbaa !6
  br label %1232

1232:                                             ; preds = %1227, %1224
  %1233 = phi i32 [ %649, %1224 ], [ %1228, %1227 ]
  %1234 = icmp eq i32 %1233, %649
  br i1 %1234, label %1240, label %1235

1235:                                             ; preds = %1232
  %1236 = add nsw i32 %1233, %648
  %1237 = sext i32 %1233 to i64
  %1238 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1237
  %1239 = fmul contract float %1156, 0x3FF3AECB00000000
  store float %1239, float addrspace(1)* %1238, align 4, !tbaa !6
  br label %1240

1240:                                             ; preds = %1235, %1232
  %1241 = phi i32 [ %649, %1232 ], [ %1236, %1235 ]
  store float %1085, float addrspace(3)* %705, align 4, !tbaa !6
  store float %1086, float addrspace(3)* %709, align 4, !tbaa !6
  store float %1087, float addrspace(3)* %707, align 4, !tbaa !6
  store float %1088, float addrspace(3)* %713, align 4, !tbaa !6
  store float %1089, float addrspace(3)* %711, align 4, !tbaa !6
  store float %1090, float addrspace(3)* %717, align 4, !tbaa !6
  store float %1091, float addrspace(3)* %715, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1242 = add nuw nsw i32 %765, 1
  %1243 = icmp eq i32 %1242, %4
  br i1 %1243, label %3143, label %764, !llvm.loop !11

1244:                                             ; preds = %5
  %1245 = mul i32 %7, 192
  %1246 = add i32 %1245, 195
  %1247 = icmp slt i32 %1246, %2
  %1248 = mul i32 %9, %4
  %1249 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %1250 = add nuw nsw i32 %1249, 4
  %1251 = lshr i32 %1250, 1
  %1252 = and i32 %1249, 1
  %1253 = icmp eq i32 %1252, 0
  %1254 = select i1 %1253, i32 0, i32 1512
  %1255 = add nuw nsw i32 %1254, %1251
  %1256 = add i32 %1245, %1249
  %1257 = sub i32 0, %1256
  %1258 = icmp eq i32 %8, 0
  br i1 %1247, label %2223, label %1259

1259:                                             ; preds = %1244
  br i1 %1258, label %1260, label %1320

1260:                                             ; preds = %1259
  %1261 = icmp slt i32 %1256, %2
  br i1 %1261, label %1266, label %1262

1262:                                             ; preds = %1260
  %1263 = shl nsw i32 %2, 1
  %1264 = sub i32 -2, %1256
  %1265 = add i32 %1264, %1263
  br label %1268

1266:                                             ; preds = %1260
  %1267 = icmp slt i32 %1256, 0
  br i1 %1267, label %1268, label %1270

1268:                                             ; preds = %1266, %1262
  %1269 = phi i32 [ %1265, %1262 ], [ %1257, %1266 ]
  br label %1270

1270:                                             ; preds = %1268, %1266
  %1271 = phi i32 [ %1269, %1268 ], [ %1256, %1266 ]
  %1272 = mul nsw i32 %1248, %2
  %1273 = add i32 %1271, %1272
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1274
  %1276 = load float, float addrspace(1)* %1275, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1277 = add nuw nsw i32 %1255, 400
  %1278 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1277
  store float %1276, float addrspace(3)* %1278, align 4, !tbaa !6
  %1279 = add nsw i32 %1273, %2
  %1280 = sext i32 %1279 to i64
  %1281 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1280
  %1282 = load float, float addrspace(1)* %1281, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1283 = add nuw nsw i32 %1255, 500
  %1284 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1283
  store float %1282, float addrspace(3)* %1284, align 4, !tbaa !6
  %1285 = add nuw nsw i32 %1255, 300
  %1286 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1285
  store float %1282, float addrspace(3)* %1286, align 4, !tbaa !6
  %1287 = add nsw i32 %1279, %2
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1288
  %1290 = load float, float addrspace(1)* %1289, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1291 = add nuw nsw i32 %1255, 600
  %1292 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1291
  store float %1290, float addrspace(3)* %1292, align 4, !tbaa !6
  %1293 = add nuw nsw i32 %1255, 200
  %1294 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1293
  store float %1290, float addrspace(3)* %1294, align 4, !tbaa !6
  %1295 = add nsw i32 %1287, %2
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1296
  %1298 = load float, float addrspace(1)* %1297, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1299 = add nuw nsw i32 %1255, 100
  %1300 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1299
  store float %1298, float addrspace(3)* %1300, align 4, !tbaa !6
  %1301 = add nsw i32 %1295, %2
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1302
  %1304 = load float, float addrspace(1)* %1303, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1305 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1255
  store float %1304, float addrspace(3)* %1305, align 4, !tbaa !6
  %1306 = or i32 %1248, 3
  br i1 %1261, label %1311, label %1307

1307:                                             ; preds = %1270
  %1308 = shl nsw i32 %2, 1
  %1309 = sub i32 -2, %1256
  %1310 = add i32 %1309, %1308
  br label %1313

1311:                                             ; preds = %1270
  %1312 = icmp slt i32 %1256, 0
  br i1 %1312, label %1313, label %1315

1313:                                             ; preds = %1311, %1307
  %1314 = phi i32 [ %1310, %1307 ], [ %1257, %1311 ]
  br label %1315

1315:                                             ; preds = %1313, %1311
  %1316 = phi i32 [ %1314, %1313 ], [ %1256, %1311 ]
  %1317 = mul nsw i32 %1306, %2
  %1318 = sub i32 %1317, %2
  %1319 = add i32 %1318, %1316
  br label %1375

1320:                                             ; preds = %1259
  %1321 = add nsw i32 %1248, -4
  %1322 = icmp slt i32 %1256, %2
  br i1 %1322, label %1327, label %1323

1323:                                             ; preds = %1320
  %1324 = shl nsw i32 %2, 1
  %1325 = sub i32 -2, %1256
  %1326 = add i32 %1325, %1324
  br label %1329

1327:                                             ; preds = %1320
  %1328 = icmp slt i32 %1256, 0
  br i1 %1328, label %1329, label %1331

1329:                                             ; preds = %1327, %1323
  %1330 = phi i32 [ %1326, %1323 ], [ %1257, %1327 ]
  br label %1331

1331:                                             ; preds = %1329, %1327
  %1332 = phi i32 [ %1330, %1329 ], [ %1256, %1327 ]
  %1333 = mul nsw i32 %1321, %2
  %1334 = add i32 %1332, %1333
  %1335 = sext i32 %1334 to i64
  %1336 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1335
  %1337 = load float, float addrspace(1)* %1336, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1338 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1255
  store float %1337, float addrspace(3)* %1338, align 4, !tbaa !6
  %1339 = add nsw i32 %1334, %2
  %1340 = sext i32 %1339 to i64
  %1341 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1340
  %1342 = load float, float addrspace(1)* %1341, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1343 = add nuw nsw i32 %1255, 100
  %1344 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1343
  store float %1342, float addrspace(3)* %1344, align 4, !tbaa !6
  %1345 = add nsw i32 %1339, %2
  %1346 = sext i32 %1345 to i64
  %1347 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1346
  %1348 = load float, float addrspace(1)* %1347, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1349 = add nuw nsw i32 %1255, 200
  %1350 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1349
  store float %1348, float addrspace(3)* %1350, align 4, !tbaa !6
  %1351 = add nsw i32 %1345, %2
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1352
  %1354 = load float, float addrspace(1)* %1353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1355 = add nuw nsw i32 %1255, 300
  %1356 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1355
  store float %1354, float addrspace(3)* %1356, align 4, !tbaa !6
  %1357 = add nsw i32 %1351, %2
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1358
  %1360 = load float, float addrspace(1)* %1359, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1361 = add nuw nsw i32 %1255, 400
  %1362 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1361
  store float %1360, float addrspace(3)* %1362, align 4, !tbaa !6
  %1363 = add nsw i32 %1357, %2
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1364
  %1366 = load float, float addrspace(1)* %1365, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1367 = add nuw nsw i32 %1255, 500
  %1368 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1367
  store float %1366, float addrspace(3)* %1368, align 4, !tbaa !6
  %1369 = add nsw i32 %1363, %2
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1370
  %1372 = load float, float addrspace(1)* %1371, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1373 = add nuw nsw i32 %1255, 600
  %1374 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1373
  store float %1372, float addrspace(3)* %1374, align 4, !tbaa !6
  br label %1375

1375:                                             ; preds = %1331, %1315
  %1376 = phi i32 [ %1319, %1315 ], [ %1369, %1331 ]
  %1377 = icmp ult i32 %1249, 7
  br i1 %1377, label %1378, label %1507

1378:                                             ; preds = %1375
  %1379 = icmp ult i32 %1249, 3
  %1380 = select i1 %1379, i32 192, i32 -7
  %1381 = add nsw i32 %1380, %1249
  %1382 = trunc i32 %1381 to i16
  %1383 = add nsw i16 %1382, 4
  %1384 = sdiv i16 %1383, 2
  %1385 = sext i16 %1384 to i32
  %1386 = and i32 %1381, 1
  %1387 = icmp eq i32 %1386, 0
  %1388 = select i1 %1387, i32 0, i32 1512
  %1389 = add nsw i32 %1388, %1385
  %1390 = add i32 %1381, %1245
  %1391 = sub i32 0, %1390
  br i1 %1258, label %1392, label %1452

1392:                                             ; preds = %1378
  %1393 = icmp slt i32 %1390, %2
  br i1 %1393, label %1398, label %1394

1394:                                             ; preds = %1392
  %1395 = shl nsw i32 %2, 1
  %1396 = sub i32 -2, %1390
  %1397 = add i32 %1396, %1395
  br label %1400

1398:                                             ; preds = %1392
  %1399 = icmp slt i32 %1390, 0
  br i1 %1399, label %1400, label %1402

1400:                                             ; preds = %1398, %1394
  %1401 = phi i32 [ %1397, %1394 ], [ %1391, %1398 ]
  br label %1402

1402:                                             ; preds = %1400, %1398
  %1403 = phi i32 [ %1401, %1400 ], [ %1390, %1398 ]
  %1404 = mul nsw i32 %1248, %2
  %1405 = add i32 %1403, %1404
  %1406 = sext i32 %1405 to i64
  %1407 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1406
  %1408 = load float, float addrspace(1)* %1407, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1409 = add nsw i32 %1389, 400
  %1410 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1409
  store float %1408, float addrspace(3)* %1410, align 4, !tbaa !6
  %1411 = add nsw i32 %1405, %2
  %1412 = sext i32 %1411 to i64
  %1413 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1412
  %1414 = load float, float addrspace(1)* %1413, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1415 = add nsw i32 %1389, 500
  %1416 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1415
  store float %1414, float addrspace(3)* %1416, align 4, !tbaa !6
  %1417 = add nsw i32 %1389, 300
  %1418 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1417
  store float %1414, float addrspace(3)* %1418, align 4, !tbaa !6
  %1419 = add nsw i32 %1411, %2
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1420
  %1422 = load float, float addrspace(1)* %1421, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1423 = add nsw i32 %1389, 600
  %1424 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1423
  store float %1422, float addrspace(3)* %1424, align 4, !tbaa !6
  %1425 = add nsw i32 %1389, 200
  %1426 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1425
  store float %1422, float addrspace(3)* %1426, align 4, !tbaa !6
  %1427 = add nsw i32 %1419, %2
  %1428 = sext i32 %1427 to i64
  %1429 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1428
  %1430 = load float, float addrspace(1)* %1429, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1431 = add nsw i32 %1389, 100
  %1432 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1431
  store float %1430, float addrspace(3)* %1432, align 4, !tbaa !6
  %1433 = add nsw i32 %1427, %2
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1434
  %1436 = load float, float addrspace(1)* %1435, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1437 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1389
  store float %1436, float addrspace(3)* %1437, align 4, !tbaa !6
  %1438 = or i32 %1248, 3
  br i1 %1393, label %1443, label %1439

1439:                                             ; preds = %1402
  %1440 = shl nsw i32 %2, 1
  %1441 = sub i32 -2, %1390
  %1442 = add i32 %1441, %1440
  br label %1445

1443:                                             ; preds = %1402
  %1444 = icmp slt i32 %1390, 0
  br i1 %1444, label %1445, label %1447

1445:                                             ; preds = %1443, %1439
  %1446 = phi i32 [ %1442, %1439 ], [ %1391, %1443 ]
  br label %1447

1447:                                             ; preds = %1445, %1443
  %1448 = phi i32 [ %1446, %1445 ], [ %1390, %1443 ]
  %1449 = mul nsw i32 %1438, %2
  %1450 = sub i32 %1449, %2
  %1451 = add i32 %1450, %1448
  br label %1507

1452:                                             ; preds = %1378
  %1453 = add nsw i32 %1248, -4
  %1454 = icmp slt i32 %1390, %2
  br i1 %1454, label %1459, label %1455

1455:                                             ; preds = %1452
  %1456 = shl nsw i32 %2, 1
  %1457 = sub i32 -2, %1390
  %1458 = add i32 %1457, %1456
  br label %1461

1459:                                             ; preds = %1452
  %1460 = icmp slt i32 %1390, 0
  br i1 %1460, label %1461, label %1463

1461:                                             ; preds = %1459, %1455
  %1462 = phi i32 [ %1458, %1455 ], [ %1391, %1459 ]
  br label %1463

1463:                                             ; preds = %1461, %1459
  %1464 = phi i32 [ %1462, %1461 ], [ %1390, %1459 ]
  %1465 = mul nsw i32 %1453, %2
  %1466 = add i32 %1464, %1465
  %1467 = sext i32 %1466 to i64
  %1468 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1467
  %1469 = load float, float addrspace(1)* %1468, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1470 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1389
  store float %1469, float addrspace(3)* %1470, align 4, !tbaa !6
  %1471 = add nsw i32 %1466, %2
  %1472 = sext i32 %1471 to i64
  %1473 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1472
  %1474 = load float, float addrspace(1)* %1473, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1475 = add nsw i32 %1389, 100
  %1476 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1475
  store float %1474, float addrspace(3)* %1476, align 4, !tbaa !6
  %1477 = add nsw i32 %1471, %2
  %1478 = sext i32 %1477 to i64
  %1479 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1478
  %1480 = load float, float addrspace(1)* %1479, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1481 = add nsw i32 %1389, 200
  %1482 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1481
  store float %1480, float addrspace(3)* %1482, align 4, !tbaa !6
  %1483 = add nsw i32 %1477, %2
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1484
  %1486 = load float, float addrspace(1)* %1485, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1487 = add nsw i32 %1389, 300
  %1488 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1487
  store float %1486, float addrspace(3)* %1488, align 4, !tbaa !6
  %1489 = add nsw i32 %1483, %2
  %1490 = sext i32 %1489 to i64
  %1491 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1490
  %1492 = load float, float addrspace(1)* %1491, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1493 = add nsw i32 %1389, 400
  %1494 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1493
  store float %1492, float addrspace(3)* %1494, align 4, !tbaa !6
  %1495 = add nsw i32 %1489, %2
  %1496 = sext i32 %1495 to i64
  %1497 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1496
  %1498 = load float, float addrspace(1)* %1497, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1499 = add nsw i32 %1389, 500
  %1500 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1499
  store float %1498, float addrspace(3)* %1500, align 4, !tbaa !6
  %1501 = add nsw i32 %1495, %2
  %1502 = sext i32 %1501 to i64
  %1503 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1502
  %1504 = load float, float addrspace(1)* %1503, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1505 = add nsw i32 %1389, 600
  %1506 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1505
  store float %1504, float addrspace(3)* %1506, align 4, !tbaa !6
  br label %1507

1507:                                             ; preds = %1463, %1447, %1375
  %1508 = phi i32 [ 0, %1375 ], [ %2, %1447 ], [ %2, %1463 ]
  %1509 = phi i32 [ 0, %1375 ], [ %1451, %1447 ], [ %1501, %1463 ]
  %1510 = phi i32 [ 0, %1375 ], [ %1389, %1447 ], [ %1389, %1463 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1511 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1249
  %1512 = load float, float addrspace(3)* %1511, align 4, !tbaa !6
  %1513 = add nuw nsw i32 %1249, 1
  %1514 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1513
  %1515 = load float, float addrspace(3)* %1514, align 4, !tbaa !6
  %1516 = add nuw nsw i32 %1249, 1512
  %1517 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1516
  %1518 = fadd contract float %1512, %1515
  %1519 = fmul contract float %1518, 0x3FF960CE60000000
  %1520 = load float, float addrspace(3)* %1517, align 4, !tbaa !6
  %1521 = fsub contract float %1520, %1519
  store float %1521, float addrspace(3)* %1517, align 4, !tbaa !6
  %1522 = add nuw nsw i32 %1249, 192
  %1523 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1522
  %1524 = load float, float addrspace(3)* %1523, align 4, !tbaa !6
  %1525 = add nuw nsw i32 %1249, 193
  %1526 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1525
  %1527 = load float, float addrspace(3)* %1526, align 4, !tbaa !6
  %1528 = add nuw nsw i32 %1249, 1704
  %1529 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1528
  %1530 = fadd contract float %1524, %1527
  %1531 = fmul contract float %1530, 0x3FF960CE60000000
  %1532 = load float, float addrspace(3)* %1529, align 4, !tbaa !6
  %1533 = fsub contract float %1532, %1531
  store float %1533, float addrspace(3)* %1529, align 4, !tbaa !6
  %1534 = add nuw nsw i32 %1249, 384
  %1535 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1534
  %1536 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1537 = add nuw nsw i32 %1249, 385
  %1538 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1537
  %1539 = load float, float addrspace(3)* %1538, align 4, !tbaa !6
  %1540 = add nuw nsw i32 %1249, 1896
  %1541 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1540
  %1542 = fadd contract float %1536, %1539
  %1543 = fmul contract float %1542, 0x3FF960CE60000000
  %1544 = load float, float addrspace(3)* %1541, align 4, !tbaa !6
  %1545 = fsub contract float %1544, %1543
  store float %1545, float addrspace(3)* %1541, align 4, !tbaa !6
  %1546 = icmp ult i32 %1249, 123
  br i1 %1546, label %1547, label %1560

1547:                                             ; preds = %1507
  %1548 = add nuw nsw i32 %1249, 576
  %1549 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1548
  %1550 = load float, float addrspace(3)* %1549, align 4, !tbaa !6
  %1551 = add nuw nsw i32 %1249, 577
  %1552 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1551
  %1553 = load float, float addrspace(3)* %1552, align 4, !tbaa !6
  %1554 = add nuw nsw i32 %1249, 2088
  %1555 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1554
  %1556 = fadd contract float %1550, %1553
  %1557 = fmul contract float %1556, 0x3FF960CE60000000
  %1558 = load float, float addrspace(3)* %1555, align 4, !tbaa !6
  %1559 = fsub contract float %1558, %1557
  store float %1559, float addrspace(3)* %1555, align 4, !tbaa !6
  br label %1560

1560:                                             ; preds = %1547, %1507
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1561 = load float, float addrspace(3)* %1517, align 4, !tbaa !6
  %1562 = add nuw nsw i32 %1249, 1513
  %1563 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1562
  %1564 = load float, float addrspace(3)* %1563, align 4, !tbaa !6
  %1565 = fadd contract float %1561, %1564
  %1566 = fmul contract float %1565, 0x3FAB2035C0000000
  %1567 = load float, float addrspace(3)* %1514, align 4, !tbaa !6
  %1568 = fsub contract float %1567, %1566
  store float %1568, float addrspace(3)* %1514, align 4, !tbaa !6
  %1569 = load float, float addrspace(3)* %1529, align 4, !tbaa !6
  %1570 = add nuw nsw i32 %1249, 1705
  %1571 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1570
  %1572 = load float, float addrspace(3)* %1571, align 4, !tbaa !6
  %1573 = fadd contract float %1569, %1572
  %1574 = fmul contract float %1573, 0x3FAB2035C0000000
  %1575 = load float, float addrspace(3)* %1526, align 4, !tbaa !6
  %1576 = fsub contract float %1575, %1574
  store float %1576, float addrspace(3)* %1526, align 4, !tbaa !6
  %1577 = load float, float addrspace(3)* %1541, align 4, !tbaa !6
  %1578 = add nuw nsw i32 %1249, 1897
  %1579 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1578
  %1580 = load float, float addrspace(3)* %1579, align 4, !tbaa !6
  %1581 = fadd contract float %1577, %1580
  %1582 = fmul contract float %1581, 0x3FAB2035C0000000
  %1583 = load float, float addrspace(3)* %1538, align 4, !tbaa !6
  %1584 = fsub contract float %1583, %1582
  store float %1584, float addrspace(3)* %1538, align 4, !tbaa !6
  br i1 %1546, label %1585, label %1598

1585:                                             ; preds = %1560
  %1586 = add nuw nsw i32 %1249, 2088
  %1587 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1586
  %1588 = load float, float addrspace(3)* %1587, align 4, !tbaa !6
  %1589 = add nuw nsw i32 %1249, 2089
  %1590 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1589
  %1591 = load float, float addrspace(3)* %1590, align 4, !tbaa !6
  %1592 = add nuw nsw i32 %1249, 577
  %1593 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1592
  %1594 = fadd contract float %1588, %1591
  %1595 = fmul contract float %1594, 0x3FAB2035C0000000
  %1596 = load float, float addrspace(3)* %1593, align 4, !tbaa !6
  %1597 = fsub contract float %1596, %1595
  store float %1597, float addrspace(3)* %1593, align 4, !tbaa !6
  br label %1598

1598:                                             ; preds = %1585, %1560
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1599 = load float, float addrspace(3)* %1511, align 4, !tbaa !6
  %1600 = load float, float addrspace(3)* %1514, align 4, !tbaa !6
  %1601 = fadd contract float %1599, %1600
  %1602 = fmul contract float %1601, 0x3FEC40CEC0000000
  %1603 = load float, float addrspace(3)* %1517, align 4, !tbaa !6
  %1604 = fadd contract float %1603, %1602
  store float %1604, float addrspace(3)* %1517, align 4, !tbaa !6
  %1605 = load float, float addrspace(3)* %1523, align 4, !tbaa !6
  %1606 = load float, float addrspace(3)* %1526, align 4, !tbaa !6
  %1607 = fadd contract float %1605, %1606
  %1608 = fmul contract float %1607, 0x3FEC40CEC0000000
  %1609 = load float, float addrspace(3)* %1529, align 4, !tbaa !6
  %1610 = fadd contract float %1609, %1608
  store float %1610, float addrspace(3)* %1529, align 4, !tbaa !6
  %1611 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1612 = load float, float addrspace(3)* %1538, align 4, !tbaa !6
  %1613 = fadd contract float %1611, %1612
  %1614 = fmul contract float %1613, 0x3FEC40CEC0000000
  %1615 = load float, float addrspace(3)* %1541, align 4, !tbaa !6
  %1616 = fadd contract float %1615, %1614
  store float %1616, float addrspace(3)* %1541, align 4, !tbaa !6
  br i1 %1546, label %1617, label %1630

1617:                                             ; preds = %1598
  %1618 = add nuw nsw i32 %1249, 576
  %1619 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1618
  %1620 = load float, float addrspace(3)* %1619, align 4, !tbaa !6
  %1621 = add nuw nsw i32 %1249, 577
  %1622 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1621
  %1623 = load float, float addrspace(3)* %1622, align 4, !tbaa !6
  %1624 = add nuw nsw i32 %1249, 2088
  %1625 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1624
  %1626 = fadd contract float %1620, %1623
  %1627 = fmul contract float %1626, 0x3FEC40CEC0000000
  %1628 = load float, float addrspace(3)* %1625, align 4, !tbaa !6
  %1629 = fadd contract float %1628, %1627
  store float %1629, float addrspace(3)* %1625, align 4, !tbaa !6
  br label %1630

1630:                                             ; preds = %1617, %1598
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1631 = load float, float addrspace(3)* %1517, align 4, !tbaa !6
  %1632 = load float, float addrspace(3)* %1563, align 4, !tbaa !6
  %1633 = fadd contract float %1631, %1632
  %1634 = fmul contract float %1633, 0x3FDC626AA0000000
  %1635 = load float, float addrspace(3)* %1514, align 4, !tbaa !6
  %1636 = fadd contract float %1635, %1634
  store float %1636, float addrspace(3)* %1514, align 4, !tbaa !6
  %1637 = load float, float addrspace(3)* %1529, align 4, !tbaa !6
  %1638 = load float, float addrspace(3)* %1571, align 4, !tbaa !6
  %1639 = fadd contract float %1637, %1638
  %1640 = fmul contract float %1639, 0x3FDC626AA0000000
  %1641 = load float, float addrspace(3)* %1526, align 4, !tbaa !6
  %1642 = fadd contract float %1641, %1640
  store float %1642, float addrspace(3)* %1526, align 4, !tbaa !6
  %1643 = load float, float addrspace(3)* %1541, align 4, !tbaa !6
  %1644 = load float, float addrspace(3)* %1579, align 4, !tbaa !6
  %1645 = fadd contract float %1643, %1644
  %1646 = fmul contract float %1645, 0x3FDC626AA0000000
  %1647 = load float, float addrspace(3)* %1538, align 4, !tbaa !6
  %1648 = fadd contract float %1647, %1646
  store float %1648, float addrspace(3)* %1538, align 4, !tbaa !6
  br i1 %1546, label %1649, label %1662

1649:                                             ; preds = %1630
  %1650 = add nuw nsw i32 %1249, 2088
  %1651 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1650
  %1652 = load float, float addrspace(3)* %1651, align 4, !tbaa !6
  %1653 = add nuw nsw i32 %1249, 2089
  %1654 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1653
  %1655 = load float, float addrspace(3)* %1654, align 4, !tbaa !6
  %1656 = add nuw nsw i32 %1249, 577
  %1657 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1656
  %1658 = fadd contract float %1652, %1655
  %1659 = fmul contract float %1658, 0x3FDC626AA0000000
  %1660 = load float, float addrspace(3)* %1657, align 4, !tbaa !6
  %1661 = fadd contract float %1660, %1659
  store float %1661, float addrspace(3)* %1657, align 4, !tbaa !6
  br label %1662

1662:                                             ; preds = %1649, %1630
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1663 = load float, float addrspace(3)* %1511, align 4, !tbaa !6
  %1664 = fmul contract float %1663, 0x3FEA033860000000
  store float %1664, float addrspace(3)* %1511, align 4, !tbaa !6
  %1665 = load float, float addrspace(3)* %1517, align 4, !tbaa !6
  %1666 = fmul contract float %1665, 0x3FF3AECB00000000
  store float %1666, float addrspace(3)* %1517, align 4, !tbaa !6
  %1667 = load float, float addrspace(3)* %1523, align 4, !tbaa !6
  %1668 = fmul contract float %1667, 0x3FEA033860000000
  store float %1668, float addrspace(3)* %1523, align 4, !tbaa !6
  %1669 = load float, float addrspace(3)* %1529, align 4, !tbaa !6
  %1670 = fmul contract float %1669, 0x3FF3AECB00000000
  store float %1670, float addrspace(3)* %1529, align 4, !tbaa !6
  %1671 = load float, float addrspace(3)* %1535, align 4, !tbaa !6
  %1672 = fmul contract float %1671, 0x3FEA033860000000
  store float %1672, float addrspace(3)* %1535, align 4, !tbaa !6
  %1673 = load float, float addrspace(3)* %1541, align 4, !tbaa !6
  %1674 = fmul contract float %1673, 0x3FF3AECB00000000
  store float %1674, float addrspace(3)* %1541, align 4, !tbaa !6
  %1675 = icmp ult i32 %1249, 124
  br i1 %1675, label %1676, label %1685

1676:                                             ; preds = %1662
  %1677 = add nuw nsw i32 %1249, 576
  %1678 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1677
  %1679 = load float, float addrspace(3)* %1678, align 4, !tbaa !6
  %1680 = fmul contract float %1679, 0x3FEA033860000000
  store float %1680, float addrspace(3)* %1678, align 4, !tbaa !6
  %1681 = add nuw nsw i32 %1249, 2088
  %1682 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1681
  %1683 = load float, float addrspace(3)* %1682, align 4, !tbaa !6
  %1684 = fmul contract float %1683, 0x3FF3AECB00000000
  store float %1684, float addrspace(3)* %1682, align 4, !tbaa !6
  br label %1685

1685:                                             ; preds = %1676, %1662
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1686 = shl nuw nsw i32 %1249, 1
  %1687 = trunc i32 %1249 to i16
  %1688 = udiv i16 %1687, 96
  %1689 = zext i16 %1688 to i32
  %1690 = mul nsw i32 %1689, -191
  %1691 = add nsw i32 %1690, %1686
  %1692 = add i32 %1691, %1245
  %1693 = icmp slt i32 %1692, %2
  br i1 %1693, label %1694, label %1724

1694:                                             ; preds = %1685
  %1695 = sdiv i32 %1692, 2
  %1696 = and i32 %1692, 1
  %1697 = icmp eq i32 %1696, 0
  %1698 = sdiv i32 %2, 2
  %1699 = and i32 %2, 1
  %1700 = add nsw i32 %1698, %1699
  %1701 = sdiv i32 %3, 2
  %1702 = and i32 %3, 1
  %1703 = add nsw i32 %1701, %1702
  br i1 %1697, label %1709, label %1704

1704:                                             ; preds = %1694
  %1705 = mul nsw i32 %1703, %1700
  %1706 = add nsw i32 %1705, %1695
  %1707 = mul nsw i32 %3, %2
  %1708 = sdiv i32 %1707, 2
  br label %1711

1709:                                             ; preds = %1694
  %1710 = mul nsw i32 %1703, %2
  br label %1711

1711:                                             ; preds = %1709, %1704
  %1712 = phi i32 [ %1710, %1709 ], [ %1708, %1704 ]
  %1713 = phi i32 [ %1695, %1709 ], [ %1706, %1704 ]
  %1714 = phi i32 [ %1700, %1709 ], [ %1698, %1704 ]
  %1715 = sub nsw i32 %1714, %1712
  %1716 = mul nsw i32 %1714, %1701
  %1717 = icmp eq i32 %1702, 0
  %1718 = select i1 %1717, i32 0, i32 %1712
  %1719 = add i32 %1718, %1713
  %1720 = add i32 %1719, %1716
  %1721 = sdiv i32 %1248, 2
  %1722 = mul nsw i32 %1714, %1721
  %1723 = add i32 %1722, %1713
  br label %1724

1724:                                             ; preds = %1711, %1685
  %1725 = phi i32 [ %1712, %1711 ], [ 0, %1685 ]
  %1726 = phi i32 [ %1715, %1711 ], [ 0, %1685 ]
  %1727 = phi i32 [ %1720, %1711 ], [ 0, %1685 ]
  %1728 = phi i32 [ %1723, %1711 ], [ 0, %1685 ]
  %1729 = trunc i32 %1691 to i16
  %1730 = add nsw i16 %1729, 4
  %1731 = sdiv i16 %1730, 2
  %1732 = sext i16 %1731 to i32
  %1733 = and i32 %1691, 1
  %1734 = icmp eq i32 %1733, 0
  %1735 = select i1 %1734, i32 0, i32 1512
  %1736 = add nsw i32 %1735, %1732
  %1737 = icmp sgt i32 %4, 0
  br i1 %1737, label %1738, label %3143

1738:                                             ; preds = %1724
  %1739 = add nuw nsw i32 %1255, 700
  %1740 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1739
  %1741 = add nuw nsw i32 %1255, 800
  %1742 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1741
  %1743 = add nuw nsw i32 %1255, 900
  %1744 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1743
  %1745 = add nuw nsw i32 %1255, 1000
  %1746 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1745
  %1747 = add nuw nsw i32 %1255, 1100
  %1748 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1747
  %1749 = add nuw nsw i32 %1255, 1200
  %1750 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1749
  %1751 = add nuw nsw i32 %1255, 1300
  %1752 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1751
  %1753 = add nuw nsw i32 %1255, 1400
  %1754 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1753
  %1755 = add nsw i32 %1510, 700
  %1756 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1755
  %1757 = add nsw i32 %1510, 800
  %1758 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1757
  %1759 = add nsw i32 %1510, 900
  %1760 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1759
  %1761 = add nsw i32 %1510, 1000
  %1762 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1761
  %1763 = add nsw i32 %1510, 1100
  %1764 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1763
  %1765 = add nsw i32 %1510, 1200
  %1766 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1765
  %1767 = add nsw i32 %1510, 1300
  %1768 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1767
  %1769 = add nsw i32 %1510, 1400
  %1770 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1769
  %1771 = icmp ult i32 %1249, 31
  %1772 = add nuw nsw i32 %1249, 1468
  %1773 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1772
  %1774 = add nuw nsw i32 %1249, 1469
  %1775 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1774
  %1776 = add nuw nsw i32 %1249, 2980
  %1777 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1776
  %1778 = add nuw nsw i32 %1249, 2981
  %1779 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1778
  %1780 = add nuw nsw i32 %1249, 700
  %1781 = icmp ult i32 %1249, 32
  %1782 = add nsw i32 %1736, 800
  %1783 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1736
  %1784 = add nsw i32 %1736, 200
  %1785 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1784
  %1786 = add nsw i32 %1736, 100
  %1787 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1786
  %1788 = add nsw i32 %1736, 400
  %1789 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1788
  %1790 = add nsw i32 %1736, 300
  %1791 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1790
  %1792 = add nsw i32 %1736, 600
  %1793 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1792
  %1794 = add nsw i32 %1736, 500
  %1795 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1794
  %1796 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1782
  %1797 = add nsw i32 %1736, 700
  %1798 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1797
  %1799 = add nsw i32 %1736, 1000
  %1800 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1799
  %1801 = add nsw i32 %1736, 900
  %1802 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1801
  %1803 = add nsw i32 %1736, 1200
  %1804 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1803
  %1805 = add nsw i32 %1736, 1100
  %1806 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1805
  %1807 = add nsw i32 %1736, 1300
  %1808 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1807
  %1809 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1780
  %1810 = add nuw nsw i32 %1249, 701
  %1811 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1810
  %1812 = add nuw nsw i32 %1249, 2212
  %1813 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1812
  %1814 = add nuw nsw i32 %1249, 892
  %1815 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1814
  %1816 = add nuw nsw i32 %1249, 893
  %1817 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1816
  %1818 = add nuw nsw i32 %1249, 2404
  %1819 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1818
  %1820 = add nuw nsw i32 %1249, 1084
  %1821 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1820
  %1822 = add nuw nsw i32 %1249, 1085
  %1823 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1822
  %1824 = add nuw nsw i32 %1249, 2596
  %1825 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1824
  %1826 = add nuw nsw i32 %1249, 1276
  %1827 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1826
  %1828 = add nuw nsw i32 %1249, 1277
  %1829 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1828
  %1830 = add nuw nsw i32 %1249, 2788
  %1831 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1830
  %1832 = add nuw nsw i32 %1249, 2213
  %1833 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1832
  %1834 = add nuw nsw i32 %1249, 2405
  %1835 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1834
  %1836 = add nuw nsw i32 %1249, 2597
  %1837 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1836
  %1838 = add nuw nsw i32 %1249, 2789
  %1839 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1838
  %1840 = add nsw i32 %1736, 1400
  %1841 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1840
  br label %1842

1842:                                             ; preds = %2219, %1738
  %1843 = phi i32 [ 0, %1738 ], [ %2221, %2219 ]
  %1844 = phi i32 [ %1376, %1738 ], [ %1875, %2219 ]
  %1845 = phi i32 [ %1509, %1738 ], [ %1913, %2219 ]
  %1846 = phi i32 [ %1728, %1738 ], [ %2220, %2219 ]
  %1847 = add nsw i32 %1844, %2
  %1848 = sext i32 %1847 to i64
  %1849 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1848
  %1850 = load float, float addrspace(1)* %1849, align 4, !tbaa !6
  store float %1850, float addrspace(3)* %1740, align 4, !tbaa !6
  %1851 = add nsw i32 %1847, %2
  %1852 = sext i32 %1851 to i64
  %1853 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1852
  %1854 = load float, float addrspace(1)* %1853, align 4, !tbaa !6
  store float %1854, float addrspace(3)* %1742, align 4, !tbaa !6
  %1855 = add nsw i32 %1851, %2
  %1856 = sext i32 %1855 to i64
  %1857 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1856
  %1858 = load float, float addrspace(1)* %1857, align 4, !tbaa !6
  store float %1858, float addrspace(3)* %1744, align 4, !tbaa !6
  %1859 = add nsw i32 %1855, %2
  %1860 = sext i32 %1859 to i64
  %1861 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1860
  %1862 = load float, float addrspace(1)* %1861, align 4, !tbaa !6
  store float %1862, float addrspace(3)* %1746, align 4, !tbaa !6
  %1863 = add nsw i32 %1859, %2
  %1864 = sext i32 %1863 to i64
  %1865 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1864
  %1866 = load float, float addrspace(1)* %1865, align 4, !tbaa !6
  store float %1866, float addrspace(3)* %1748, align 4, !tbaa !6
  %1867 = add nsw i32 %1863, %2
  %1868 = sext i32 %1867 to i64
  %1869 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1868
  %1870 = load float, float addrspace(1)* %1869, align 4, !tbaa !6
  store float %1870, float addrspace(3)* %1750, align 4, !tbaa !6
  %1871 = add nsw i32 %1867, %2
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1872
  %1874 = load float, float addrspace(1)* %1873, align 4, !tbaa !6
  store float %1874, float addrspace(3)* %1752, align 4, !tbaa !6
  %1875 = add nsw i32 %1871, %2
  %1876 = sext i32 %1875 to i64
  %1877 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1876
  %1878 = load float, float addrspace(1)* %1877, align 4, !tbaa !6
  store float %1878, float addrspace(3)* %1754, align 4, !tbaa !6
  br i1 %1377, label %1879, label %1912

1879:                                             ; preds = %1842
  %1880 = add nsw i32 %1845, %1508
  %1881 = sext i32 %1880 to i64
  %1882 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1881
  %1883 = load float, float addrspace(1)* %1882, align 4, !tbaa !6
  store float %1883, float addrspace(3)* %1756, align 4, !tbaa !6
  %1884 = add nsw i32 %1880, %1508
  %1885 = sext i32 %1884 to i64
  %1886 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1885
  %1887 = load float, float addrspace(1)* %1886, align 4, !tbaa !6
  store float %1887, float addrspace(3)* %1758, align 4, !tbaa !6
  %1888 = add nsw i32 %1884, %1508
  %1889 = sext i32 %1888 to i64
  %1890 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1889
  %1891 = load float, float addrspace(1)* %1890, align 4, !tbaa !6
  store float %1891, float addrspace(3)* %1760, align 4, !tbaa !6
  %1892 = add nsw i32 %1888, %1508
  %1893 = sext i32 %1892 to i64
  %1894 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1893
  %1895 = load float, float addrspace(1)* %1894, align 4, !tbaa !6
  store float %1895, float addrspace(3)* %1762, align 4, !tbaa !6
  %1896 = add nsw i32 %1892, %1508
  %1897 = sext i32 %1896 to i64
  %1898 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1897
  %1899 = load float, float addrspace(1)* %1898, align 4, !tbaa !6
  store float %1899, float addrspace(3)* %1764, align 4, !tbaa !6
  %1900 = add nsw i32 %1896, %1508
  %1901 = sext i32 %1900 to i64
  %1902 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1901
  %1903 = load float, float addrspace(1)* %1902, align 4, !tbaa !6
  store float %1903, float addrspace(3)* %1766, align 4, !tbaa !6
  %1904 = add nsw i32 %1900, %1508
  %1905 = sext i32 %1904 to i64
  %1906 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1905
  %1907 = load float, float addrspace(1)* %1906, align 4, !tbaa !6
  store float %1907, float addrspace(3)* %1768, align 4, !tbaa !6
  %1908 = add nsw i32 %1904, %1508
  %1909 = sext i32 %1908 to i64
  %1910 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1909
  %1911 = load float, float addrspace(1)* %1910, align 4, !tbaa !6
  store float %1911, float addrspace(3)* %1770, align 4, !tbaa !6
  br label %1912

1912:                                             ; preds = %1879, %1842
  %1913 = phi i32 [ %1908, %1879 ], [ %1845, %1842 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1914 = load float, float addrspace(3)* %1809, align 4, !tbaa !6
  %1915 = load float, float addrspace(3)* %1811, align 4, !tbaa !6
  %1916 = fadd contract float %1914, %1915
  %1917 = fmul contract float %1916, 0x3FF960CE60000000
  %1918 = load float, float addrspace(3)* %1813, align 4, !tbaa !6
  %1919 = fsub contract float %1918, %1917
  store float %1919, float addrspace(3)* %1813, align 4, !tbaa !6
  %1920 = load float, float addrspace(3)* %1815, align 4, !tbaa !6
  %1921 = load float, float addrspace(3)* %1817, align 4, !tbaa !6
  %1922 = fadd contract float %1920, %1921
  %1923 = fmul contract float %1922, 0x3FF960CE60000000
  %1924 = load float, float addrspace(3)* %1819, align 4, !tbaa !6
  %1925 = fsub contract float %1924, %1923
  store float %1925, float addrspace(3)* %1819, align 4, !tbaa !6
  %1926 = load float, float addrspace(3)* %1821, align 4, !tbaa !6
  %1927 = load float, float addrspace(3)* %1823, align 4, !tbaa !6
  %1928 = fadd contract float %1926, %1927
  %1929 = fmul contract float %1928, 0x3FF960CE60000000
  %1930 = load float, float addrspace(3)* %1825, align 4, !tbaa !6
  %1931 = fsub contract float %1930, %1929
  store float %1931, float addrspace(3)* %1825, align 4, !tbaa !6
  %1932 = load float, float addrspace(3)* %1827, align 4, !tbaa !6
  %1933 = load float, float addrspace(3)* %1829, align 4, !tbaa !6
  %1934 = fadd contract float %1932, %1933
  %1935 = fmul contract float %1934, 0x3FF960CE60000000
  %1936 = load float, float addrspace(3)* %1831, align 4, !tbaa !6
  %1937 = fsub contract float %1936, %1935
  store float %1937, float addrspace(3)* %1831, align 4, !tbaa !6
  br i1 %1771, label %1938, label %1945

1938:                                             ; preds = %1912
  %1939 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %1940 = load float, float addrspace(3)* %1775, align 4, !tbaa !6
  %1941 = fadd contract float %1939, %1940
  %1942 = fmul contract float %1941, 0x3FF960CE60000000
  %1943 = load float, float addrspace(3)* %1777, align 4, !tbaa !6
  %1944 = fsub contract float %1943, %1942
  store float %1944, float addrspace(3)* %1777, align 4, !tbaa !6
  br label %1945

1945:                                             ; preds = %1938, %1912
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1946 = load float, float addrspace(3)* %1813, align 4, !tbaa !6
  %1947 = load float, float addrspace(3)* %1833, align 4, !tbaa !6
  %1948 = fadd contract float %1946, %1947
  %1949 = fmul contract float %1948, 0x3FAB2035C0000000
  %1950 = load float, float addrspace(3)* %1811, align 4, !tbaa !6
  %1951 = fsub contract float %1950, %1949
  store float %1951, float addrspace(3)* %1811, align 4, !tbaa !6
  %1952 = load float, float addrspace(3)* %1819, align 4, !tbaa !6
  %1953 = load float, float addrspace(3)* %1835, align 4, !tbaa !6
  %1954 = fadd contract float %1952, %1953
  %1955 = fmul contract float %1954, 0x3FAB2035C0000000
  %1956 = load float, float addrspace(3)* %1817, align 4, !tbaa !6
  %1957 = fsub contract float %1956, %1955
  store float %1957, float addrspace(3)* %1817, align 4, !tbaa !6
  %1958 = load float, float addrspace(3)* %1825, align 4, !tbaa !6
  %1959 = load float, float addrspace(3)* %1837, align 4, !tbaa !6
  %1960 = fadd contract float %1958, %1959
  %1961 = fmul contract float %1960, 0x3FAB2035C0000000
  %1962 = load float, float addrspace(3)* %1823, align 4, !tbaa !6
  %1963 = fsub contract float %1962, %1961
  store float %1963, float addrspace(3)* %1823, align 4, !tbaa !6
  %1964 = load float, float addrspace(3)* %1831, align 4, !tbaa !6
  %1965 = load float, float addrspace(3)* %1839, align 4, !tbaa !6
  %1966 = fadd contract float %1964, %1965
  %1967 = fmul contract float %1966, 0x3FAB2035C0000000
  %1968 = load float, float addrspace(3)* %1829, align 4, !tbaa !6
  %1969 = fsub contract float %1968, %1967
  store float %1969, float addrspace(3)* %1829, align 4, !tbaa !6
  br i1 %1771, label %1970, label %1977

1970:                                             ; preds = %1945
  %1971 = load float, float addrspace(3)* %1777, align 4, !tbaa !6
  %1972 = load float, float addrspace(3)* %1779, align 4, !tbaa !6
  %1973 = fadd contract float %1971, %1972
  %1974 = fmul contract float %1973, 0x3FAB2035C0000000
  %1975 = load float, float addrspace(3)* %1775, align 4, !tbaa !6
  %1976 = fsub contract float %1975, %1974
  store float %1976, float addrspace(3)* %1775, align 4, !tbaa !6
  br label %1977

1977:                                             ; preds = %1970, %1945
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1978 = load float, float addrspace(3)* %1809, align 4, !tbaa !6
  %1979 = load float, float addrspace(3)* %1811, align 4, !tbaa !6
  %1980 = fadd contract float %1978, %1979
  %1981 = fmul contract float %1980, 0x3FEC40CEC0000000
  %1982 = load float, float addrspace(3)* %1813, align 4, !tbaa !6
  %1983 = fadd contract float %1982, %1981
  store float %1983, float addrspace(3)* %1813, align 4, !tbaa !6
  %1984 = load float, float addrspace(3)* %1815, align 4, !tbaa !6
  %1985 = load float, float addrspace(3)* %1817, align 4, !tbaa !6
  %1986 = fadd contract float %1984, %1985
  %1987 = fmul contract float %1986, 0x3FEC40CEC0000000
  %1988 = load float, float addrspace(3)* %1819, align 4, !tbaa !6
  %1989 = fadd contract float %1988, %1987
  store float %1989, float addrspace(3)* %1819, align 4, !tbaa !6
  %1990 = load float, float addrspace(3)* %1821, align 4, !tbaa !6
  %1991 = load float, float addrspace(3)* %1823, align 4, !tbaa !6
  %1992 = fadd contract float %1990, %1991
  %1993 = fmul contract float %1992, 0x3FEC40CEC0000000
  %1994 = load float, float addrspace(3)* %1825, align 4, !tbaa !6
  %1995 = fadd contract float %1994, %1993
  store float %1995, float addrspace(3)* %1825, align 4, !tbaa !6
  %1996 = load float, float addrspace(3)* %1827, align 4, !tbaa !6
  %1997 = load float, float addrspace(3)* %1829, align 4, !tbaa !6
  %1998 = fadd contract float %1996, %1997
  %1999 = fmul contract float %1998, 0x3FEC40CEC0000000
  %2000 = load float, float addrspace(3)* %1831, align 4, !tbaa !6
  %2001 = fadd contract float %2000, %1999
  store float %2001, float addrspace(3)* %1831, align 4, !tbaa !6
  br i1 %1771, label %2002, label %2009

2002:                                             ; preds = %1977
  %2003 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %2004 = load float, float addrspace(3)* %1775, align 4, !tbaa !6
  %2005 = fadd contract float %2003, %2004
  %2006 = fmul contract float %2005, 0x3FEC40CEC0000000
  %2007 = load float, float addrspace(3)* %1777, align 4, !tbaa !6
  %2008 = fadd contract float %2007, %2006
  store float %2008, float addrspace(3)* %1777, align 4, !tbaa !6
  br label %2009

2009:                                             ; preds = %2002, %1977
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2010 = load float, float addrspace(3)* %1813, align 4, !tbaa !6
  %2011 = load float, float addrspace(3)* %1833, align 4, !tbaa !6
  %2012 = fadd contract float %2010, %2011
  %2013 = fmul contract float %2012, 0x3FDC626AA0000000
  %2014 = load float, float addrspace(3)* %1811, align 4, !tbaa !6
  %2015 = fadd contract float %2014, %2013
  store float %2015, float addrspace(3)* %1811, align 4, !tbaa !6
  %2016 = load float, float addrspace(3)* %1819, align 4, !tbaa !6
  %2017 = load float, float addrspace(3)* %1835, align 4, !tbaa !6
  %2018 = fadd contract float %2016, %2017
  %2019 = fmul contract float %2018, 0x3FDC626AA0000000
  %2020 = load float, float addrspace(3)* %1817, align 4, !tbaa !6
  %2021 = fadd contract float %2020, %2019
  store float %2021, float addrspace(3)* %1817, align 4, !tbaa !6
  %2022 = load float, float addrspace(3)* %1825, align 4, !tbaa !6
  %2023 = load float, float addrspace(3)* %1837, align 4, !tbaa !6
  %2024 = fadd contract float %2022, %2023
  %2025 = fmul contract float %2024, 0x3FDC626AA0000000
  %2026 = load float, float addrspace(3)* %1823, align 4, !tbaa !6
  %2027 = fadd contract float %2026, %2025
  store float %2027, float addrspace(3)* %1823, align 4, !tbaa !6
  %2028 = load float, float addrspace(3)* %1831, align 4, !tbaa !6
  %2029 = load float, float addrspace(3)* %1839, align 4, !tbaa !6
  %2030 = fadd contract float %2028, %2029
  %2031 = fmul contract float %2030, 0x3FDC626AA0000000
  %2032 = load float, float addrspace(3)* %1829, align 4, !tbaa !6
  %2033 = fadd contract float %2032, %2031
  store float %2033, float addrspace(3)* %1829, align 4, !tbaa !6
  br i1 %1771, label %2034, label %2041

2034:                                             ; preds = %2009
  %2035 = load float, float addrspace(3)* %1777, align 4, !tbaa !6
  %2036 = load float, float addrspace(3)* %1779, align 4, !tbaa !6
  %2037 = fadd contract float %2035, %2036
  %2038 = fmul contract float %2037, 0x3FDC626AA0000000
  %2039 = load float, float addrspace(3)* %1775, align 4, !tbaa !6
  %2040 = fadd contract float %2039, %2038
  store float %2040, float addrspace(3)* %1775, align 4, !tbaa !6
  br label %2041

2041:                                             ; preds = %2034, %2009
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2042 = load float, float addrspace(3)* %1809, align 4, !tbaa !6
  %2043 = fmul contract float %2042, 0x3FEA033860000000
  store float %2043, float addrspace(3)* %1809, align 4, !tbaa !6
  %2044 = load float, float addrspace(3)* %1813, align 4, !tbaa !6
  %2045 = fmul contract float %2044, 0x3FF3AECB00000000
  store float %2045, float addrspace(3)* %1813, align 4, !tbaa !6
  %2046 = load float, float addrspace(3)* %1815, align 4, !tbaa !6
  %2047 = fmul contract float %2046, 0x3FEA033860000000
  store float %2047, float addrspace(3)* %1815, align 4, !tbaa !6
  %2048 = load float, float addrspace(3)* %1819, align 4, !tbaa !6
  %2049 = fmul contract float %2048, 0x3FF3AECB00000000
  store float %2049, float addrspace(3)* %1819, align 4, !tbaa !6
  %2050 = load float, float addrspace(3)* %1821, align 4, !tbaa !6
  %2051 = fmul contract float %2050, 0x3FEA033860000000
  store float %2051, float addrspace(3)* %1821, align 4, !tbaa !6
  %2052 = load float, float addrspace(3)* %1825, align 4, !tbaa !6
  %2053 = fmul contract float %2052, 0x3FF3AECB00000000
  store float %2053, float addrspace(3)* %1825, align 4, !tbaa !6
  %2054 = load float, float addrspace(3)* %1827, align 4, !tbaa !6
  %2055 = fmul contract float %2054, 0x3FEA033860000000
  store float %2055, float addrspace(3)* %1827, align 4, !tbaa !6
  %2056 = load float, float addrspace(3)* %1831, align 4, !tbaa !6
  %2057 = fmul contract float %2056, 0x3FF3AECB00000000
  store float %2057, float addrspace(3)* %1831, align 4, !tbaa !6
  br i1 %1781, label %2058, label %2063

2058:                                             ; preds = %2041
  %2059 = load float, float addrspace(3)* %1773, align 4, !tbaa !6
  %2060 = fmul contract float %2059, 0x3FEA033860000000
  store float %2060, float addrspace(3)* %1773, align 4, !tbaa !6
  %2061 = load float, float addrspace(3)* %1777, align 4, !tbaa !6
  %2062 = fmul contract float %2061, 0x3FF3AECB00000000
  store float %2062, float addrspace(3)* %1777, align 4, !tbaa !6
  br label %2063

2063:                                             ; preds = %2058, %2041
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2064 = load float, float addrspace(3)* %1796, align 4, !tbaa !6
  %2065 = load float, float addrspace(3)* %1802, align 4, !tbaa !6
  %2066 = load float, float addrspace(3)* %1800, align 4, !tbaa !6
  %2067 = load float, float addrspace(3)* %1806, align 4, !tbaa !6
  %2068 = load float, float addrspace(3)* %1804, align 4, !tbaa !6
  %2069 = load float, float addrspace(3)* %1808, align 4, !tbaa !6
  %2070 = load float, float addrspace(3)* %1841, align 4, !tbaa !6
  %2071 = load float, float addrspace(3)* %1783, align 4, !tbaa !6
  %2072 = load float, float addrspace(3)* %1785, align 4, !tbaa !6
  %2073 = fadd contract float %2071, %2072
  %2074 = fmul contract float %2073, 0x3FF960CE60000000
  %2075 = load float, float addrspace(3)* %1787, align 4, !tbaa !6
  %2076 = fsub contract float %2075, %2074
  %2077 = load float, float addrspace(3)* %1789, align 4, !tbaa !6
  %2078 = fadd contract float %2072, %2077
  %2079 = fmul contract float %2078, 0x3FF960CE60000000
  %2080 = load float, float addrspace(3)* %1791, align 4, !tbaa !6
  %2081 = fsub contract float %2080, %2079
  %2082 = load float, float addrspace(3)* %1793, align 4, !tbaa !6
  %2083 = fadd contract float %2077, %2082
  %2084 = fmul contract float %2083, 0x3FF960CE60000000
  %2085 = load float, float addrspace(3)* %1795, align 4, !tbaa !6
  %2086 = fsub contract float %2085, %2084
  %2087 = fadd contract float %2064, %2082
  %2088 = fmul contract float %2087, 0x3FF960CE60000000
  %2089 = load float, float addrspace(3)* %1798, align 4, !tbaa !6
  %2090 = fsub contract float %2089, %2088
  %2091 = fadd contract float %2064, %2066
  %2092 = fmul contract float %2091, 0x3FF960CE60000000
  %2093 = fsub contract float %2065, %2092
  %2094 = fadd contract float %2066, %2068
  %2095 = fmul contract float %2094, 0x3FF960CE60000000
  %2096 = fsub contract float %2067, %2095
  %2097 = fadd contract float %2068, %2070
  %2098 = fmul contract float %2097, 0x3FF960CE60000000
  %2099 = fsub contract float %2069, %2098
  %2100 = fadd contract float %2076, %2081
  %2101 = fmul contract float %2100, 0x3FAB2035C0000000
  %2102 = fsub contract float %2072, %2101
  %2103 = fadd contract float %2081, %2086
  %2104 = fmul contract float %2103, 0x3FAB2035C0000000
  %2105 = fsub contract float %2077, %2104
  %2106 = fadd contract float %2086, %2090
  %2107 = fmul contract float %2106, 0x3FAB2035C0000000
  %2108 = fsub contract float %2082, %2107
  %2109 = fadd contract float %2093, %2090
  %2110 = fmul contract float %2109, 0x3FAB2035C0000000
  %2111 = fsub contract float %2064, %2110
  %2112 = fadd contract float %2093, %2096
  %2113 = fmul contract float %2112, 0x3FAB2035C0000000
  %2114 = fsub contract float %2066, %2113
  %2115 = fadd contract float %2096, %2099
  %2116 = fmul contract float %2115, 0x3FAB2035C0000000
  %2117 = fsub contract float %2068, %2116
  %2118 = fadd contract float %2071, %2102
  %2119 = fmul contract float %2118, 0x3FEC40CEC0000000
  %2120 = fadd contract float %2076, %2119
  store float %2120, float addrspace(3)* %1787, align 4, !tbaa !6
  %2121 = fadd contract float %2102, %2105
  %2122 = fmul contract float %2121, 0x3FEC40CEC0000000
  %2123 = fadd contract float %2081, %2122
  store float %2123, float addrspace(3)* %1791, align 4, !tbaa !6
  %2124 = fadd contract float %2105, %2108
  %2125 = fmul contract float %2124, 0x3FEC40CEC0000000
  %2126 = fadd contract float %2086, %2125
  store float %2126, float addrspace(3)* %1795, align 4, !tbaa !6
  %2127 = fadd contract float %2108, %2111
  %2128 = fmul contract float %2127, 0x3FEC40CEC0000000
  %2129 = fadd contract float %2090, %2128
  store float %2129, float addrspace(3)* %1798, align 4, !tbaa !6
  %2130 = fadd contract float %2114, %2111
  %2131 = fmul contract float %2130, 0x3FEC40CEC0000000
  %2132 = fadd contract float %2093, %2131
  store float %2132, float addrspace(3)* %1802, align 4, !tbaa !6
  %2133 = fadd contract float %2114, %2117
  %2134 = fmul contract float %2133, 0x3FEC40CEC0000000
  %2135 = fadd contract float %2096, %2134
  store float %2135, float addrspace(3)* %1806, align 4, !tbaa !6
  %2136 = fadd contract float %2070, %2117
  %2137 = fmul contract float %2136, 0x3FEC40CEC0000000
  %2138 = fadd contract float %2099, %2137
  store float %2138, float addrspace(3)* %1808, align 4, !tbaa !6
  %2139 = fadd contract float %2120, %2123
  %2140 = fmul contract float %2139, 0x3FDC626AA0000000
  %2141 = fadd contract float %2102, %2140
  store float %2141, float addrspace(3)* %1785, align 4, !tbaa !6
  %2142 = fadd contract float %2123, %2126
  %2143 = fmul contract float %2142, 0x3FDC626AA0000000
  %2144 = fadd contract float %2105, %2143
  store float %2144, float addrspace(3)* %1789, align 4, !tbaa !6
  %2145 = fadd contract float %2126, %2129
  %2146 = fmul contract float %2145, 0x3FDC626AA0000000
  %2147 = fadd contract float %2108, %2146
  store float %2147, float addrspace(3)* %1793, align 4, !tbaa !6
  %2148 = fadd contract float %2129, %2132
  %2149 = fmul contract float %2148, 0x3FDC626AA0000000
  %2150 = fadd contract float %2111, %2149
  store float %2150, float addrspace(3)* %1796, align 4, !tbaa !6
  %2151 = fadd contract float %2135, %2132
  %2152 = fmul contract float %2151, 0x3FDC626AA0000000
  %2153 = fadd contract float %2114, %2152
  store float %2153, float addrspace(3)* %1800, align 4, !tbaa !6
  %2154 = fadd contract float %2135, %2138
  %2155 = fmul contract float %2154, 0x3FDC626AA0000000
  %2156 = fadd contract float %2117, %2155
  store float %2156, float addrspace(3)* %1804, align 4, !tbaa !6
  %2157 = icmp eq i32 %1846, %1727
  br i1 %2157, label %2163, label %2158

2158:                                             ; preds = %2063
  %2159 = add nsw i32 %1846, %1725
  %2160 = sext i32 %1846 to i64
  %2161 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2160
  %2162 = fmul contract float %2144, 0x3FEA033860000000
  store float %2162, float addrspace(1)* %2161, align 4, !tbaa !6
  br label %2163

2163:                                             ; preds = %2158, %2063
  %2164 = phi i32 [ %1727, %2063 ], [ %2159, %2158 ]
  %2165 = icmp eq i32 %2164, %1727
  br i1 %2165, label %2171, label %2166

2166:                                             ; preds = %2163
  %2167 = add nsw i32 %2164, %1726
  %2168 = sext i32 %2164 to i64
  %2169 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2168
  %2170 = fmul contract float %2126, 0x3FF3AECB00000000
  store float %2170, float addrspace(1)* %2169, align 4, !tbaa !6
  br label %2171

2171:                                             ; preds = %2166, %2163
  %2172 = phi i32 [ %1727, %2163 ], [ %2167, %2166 ]
  %2173 = icmp eq i32 %2172, %1727
  br i1 %2173, label %2179, label %2174

2174:                                             ; preds = %2171
  %2175 = add nsw i32 %2172, %1725
  %2176 = sext i32 %2172 to i64
  %2177 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2176
  %2178 = fmul contract float %2147, 0x3FEA033860000000
  store float %2178, float addrspace(1)* %2177, align 4, !tbaa !6
  br label %2179

2179:                                             ; preds = %2174, %2171
  %2180 = phi i32 [ %1727, %2171 ], [ %2175, %2174 ]
  %2181 = icmp eq i32 %2180, %1727
  br i1 %2181, label %2187, label %2182

2182:                                             ; preds = %2179
  %2183 = add nsw i32 %2180, %1726
  %2184 = sext i32 %2180 to i64
  %2185 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2184
  %2186 = fmul contract float %2129, 0x3FF3AECB00000000
  store float %2186, float addrspace(1)* %2185, align 4, !tbaa !6
  br label %2187

2187:                                             ; preds = %2182, %2179
  %2188 = phi i32 [ %1727, %2179 ], [ %2183, %2182 ]
  %2189 = icmp eq i32 %2188, %1727
  br i1 %2189, label %2195, label %2190

2190:                                             ; preds = %2187
  %2191 = add nsw i32 %2188, %1725
  %2192 = sext i32 %2188 to i64
  %2193 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2192
  %2194 = fmul contract float %2150, 0x3FEA033860000000
  store float %2194, float addrspace(1)* %2193, align 4, !tbaa !6
  br label %2195

2195:                                             ; preds = %2190, %2187
  %2196 = phi i32 [ %1727, %2187 ], [ %2191, %2190 ]
  %2197 = icmp eq i32 %2196, %1727
  br i1 %2197, label %2203, label %2198

2198:                                             ; preds = %2195
  %2199 = add nsw i32 %2196, %1726
  %2200 = sext i32 %2196 to i64
  %2201 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2200
  %2202 = fmul contract float %2132, 0x3FF3AECB00000000
  store float %2202, float addrspace(1)* %2201, align 4, !tbaa !6
  br label %2203

2203:                                             ; preds = %2198, %2195
  %2204 = phi i32 [ %1727, %2195 ], [ %2199, %2198 ]
  %2205 = icmp eq i32 %2204, %1727
  br i1 %2205, label %2211, label %2206

2206:                                             ; preds = %2203
  %2207 = add nsw i32 %2204, %1725
  %2208 = sext i32 %2204 to i64
  %2209 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2208
  %2210 = fmul contract float %2153, 0x3FEA033860000000
  store float %2210, float addrspace(1)* %2209, align 4, !tbaa !6
  br label %2211

2211:                                             ; preds = %2206, %2203
  %2212 = phi i32 [ %1727, %2203 ], [ %2207, %2206 ]
  %2213 = icmp eq i32 %2212, %1727
  br i1 %2213, label %2219, label %2214

2214:                                             ; preds = %2211
  %2215 = add nsw i32 %2212, %1726
  %2216 = sext i32 %2212 to i64
  %2217 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2216
  %2218 = fmul contract float %2135, 0x3FF3AECB00000000
  store float %2218, float addrspace(1)* %2217, align 4, !tbaa !6
  br label %2219

2219:                                             ; preds = %2214, %2211
  %2220 = phi i32 [ %1727, %2211 ], [ %2215, %2214 ]
  store float %2064, float addrspace(3)* %1783, align 4, !tbaa !6
  store float %2065, float addrspace(3)* %1787, align 4, !tbaa !6
  store float %2066, float addrspace(3)* %1785, align 4, !tbaa !6
  store float %2067, float addrspace(3)* %1791, align 4, !tbaa !6
  store float %2068, float addrspace(3)* %1789, align 4, !tbaa !6
  store float %2069, float addrspace(3)* %1795, align 4, !tbaa !6
  store float %2070, float addrspace(3)* %1793, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2221 = add nuw nsw i32 %1843, 1
  %2222 = icmp eq i32 %2221, %4
  br i1 %2222, label %3143, label %1842, !llvm.loop !13

2223:                                             ; preds = %1244
  br i1 %1258, label %2224, label %2284

2224:                                             ; preds = %2223
  %2225 = icmp slt i32 %1256, %2
  br i1 %2225, label %2230, label %2226

2226:                                             ; preds = %2224
  %2227 = shl nsw i32 %2, 1
  %2228 = sub i32 -2, %1256
  %2229 = add i32 %2228, %2227
  br label %2232

2230:                                             ; preds = %2224
  %2231 = icmp slt i32 %1256, 0
  br i1 %2231, label %2232, label %2234

2232:                                             ; preds = %2230, %2226
  %2233 = phi i32 [ %2229, %2226 ], [ %1257, %2230 ]
  br label %2234

2234:                                             ; preds = %2232, %2230
  %2235 = phi i32 [ %2233, %2232 ], [ %1256, %2230 ]
  %2236 = mul nsw i32 %1248, %2
  %2237 = add i32 %2235, %2236
  %2238 = sext i32 %2237 to i64
  %2239 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2238
  %2240 = load float, float addrspace(1)* %2239, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2241 = add nuw nsw i32 %1255, 400
  %2242 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2241
  store float %2240, float addrspace(3)* %2242, align 4, !tbaa !6
  %2243 = add nsw i32 %2237, %2
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2244
  %2246 = load float, float addrspace(1)* %2245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2247 = add nuw nsw i32 %1255, 500
  %2248 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2247
  store float %2246, float addrspace(3)* %2248, align 4, !tbaa !6
  %2249 = add nuw nsw i32 %1255, 300
  %2250 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2249
  store float %2246, float addrspace(3)* %2250, align 4, !tbaa !6
  %2251 = add nsw i32 %2243, %2
  %2252 = sext i32 %2251 to i64
  %2253 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2252
  %2254 = load float, float addrspace(1)* %2253, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2255 = add nuw nsw i32 %1255, 600
  %2256 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2255
  store float %2254, float addrspace(3)* %2256, align 4, !tbaa !6
  %2257 = add nuw nsw i32 %1255, 200
  %2258 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2257
  store float %2254, float addrspace(3)* %2258, align 4, !tbaa !6
  %2259 = add nsw i32 %2251, %2
  %2260 = sext i32 %2259 to i64
  %2261 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2260
  %2262 = load float, float addrspace(1)* %2261, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2263 = add nuw nsw i32 %1255, 100
  %2264 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2263
  store float %2262, float addrspace(3)* %2264, align 4, !tbaa !6
  %2265 = add nsw i32 %2259, %2
  %2266 = sext i32 %2265 to i64
  %2267 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2266
  %2268 = load float, float addrspace(1)* %2267, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2269 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1255
  store float %2268, float addrspace(3)* %2269, align 4, !tbaa !6
  %2270 = or i32 %1248, 3
  br i1 %2225, label %2275, label %2271

2271:                                             ; preds = %2234
  %2272 = shl nsw i32 %2, 1
  %2273 = sub i32 -2, %1256
  %2274 = add i32 %2273, %2272
  br label %2277

2275:                                             ; preds = %2234
  %2276 = icmp slt i32 %1256, 0
  br i1 %2276, label %2277, label %2279

2277:                                             ; preds = %2275, %2271
  %2278 = phi i32 [ %2274, %2271 ], [ %1257, %2275 ]
  br label %2279

2279:                                             ; preds = %2277, %2275
  %2280 = phi i32 [ %2278, %2277 ], [ %1256, %2275 ]
  %2281 = mul nsw i32 %2270, %2
  %2282 = sub i32 %2281, %2
  %2283 = add i32 %2282, %2280
  br label %2339

2284:                                             ; preds = %2223
  %2285 = add nsw i32 %1248, -4
  %2286 = icmp slt i32 %1256, %2
  br i1 %2286, label %2291, label %2287

2287:                                             ; preds = %2284
  %2288 = shl nsw i32 %2, 1
  %2289 = sub i32 -2, %1256
  %2290 = add i32 %2289, %2288
  br label %2293

2291:                                             ; preds = %2284
  %2292 = icmp slt i32 %1256, 0
  br i1 %2292, label %2293, label %2295

2293:                                             ; preds = %2291, %2287
  %2294 = phi i32 [ %2290, %2287 ], [ %1257, %2291 ]
  br label %2295

2295:                                             ; preds = %2293, %2291
  %2296 = phi i32 [ %2294, %2293 ], [ %1256, %2291 ]
  %2297 = mul nsw i32 %2285, %2
  %2298 = add i32 %2296, %2297
  %2299 = sext i32 %2298 to i64
  %2300 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2299
  %2301 = load float, float addrspace(1)* %2300, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2302 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1255
  store float %2301, float addrspace(3)* %2302, align 4, !tbaa !6
  %2303 = add nsw i32 %2298, %2
  %2304 = sext i32 %2303 to i64
  %2305 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2304
  %2306 = load float, float addrspace(1)* %2305, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2307 = add nuw nsw i32 %1255, 100
  %2308 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2307
  store float %2306, float addrspace(3)* %2308, align 4, !tbaa !6
  %2309 = add nsw i32 %2303, %2
  %2310 = sext i32 %2309 to i64
  %2311 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2310
  %2312 = load float, float addrspace(1)* %2311, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2313 = add nuw nsw i32 %1255, 200
  %2314 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2313
  store float %2312, float addrspace(3)* %2314, align 4, !tbaa !6
  %2315 = add nsw i32 %2309, %2
  %2316 = sext i32 %2315 to i64
  %2317 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2316
  %2318 = load float, float addrspace(1)* %2317, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2319 = add nuw nsw i32 %1255, 300
  %2320 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2319
  store float %2318, float addrspace(3)* %2320, align 4, !tbaa !6
  %2321 = add nsw i32 %2315, %2
  %2322 = sext i32 %2321 to i64
  %2323 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2322
  %2324 = load float, float addrspace(1)* %2323, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2325 = add nuw nsw i32 %1255, 400
  %2326 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2325
  store float %2324, float addrspace(3)* %2326, align 4, !tbaa !6
  %2327 = add nsw i32 %2321, %2
  %2328 = sext i32 %2327 to i64
  %2329 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2328
  %2330 = load float, float addrspace(1)* %2329, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2331 = add nuw nsw i32 %1255, 500
  %2332 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2331
  store float %2330, float addrspace(3)* %2332, align 4, !tbaa !6
  %2333 = add nsw i32 %2327, %2
  %2334 = sext i32 %2333 to i64
  %2335 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2334
  %2336 = load float, float addrspace(1)* %2335, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2337 = add nuw nsw i32 %1255, 600
  %2338 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2337
  store float %2336, float addrspace(3)* %2338, align 4, !tbaa !6
  br label %2339

2339:                                             ; preds = %2295, %2279
  %2340 = phi i32 [ %2283, %2279 ], [ %2333, %2295 ]
  %2341 = icmp ult i32 %1249, 7
  br i1 %2341, label %2342, label %2471

2342:                                             ; preds = %2339
  %2343 = icmp ult i32 %1249, 3
  %2344 = select i1 %2343, i32 192, i32 -7
  %2345 = add nsw i32 %2344, %1249
  %2346 = trunc i32 %2345 to i16
  %2347 = add nsw i16 %2346, 4
  %2348 = sdiv i16 %2347, 2
  %2349 = sext i16 %2348 to i32
  %2350 = and i32 %2345, 1
  %2351 = icmp eq i32 %2350, 0
  %2352 = select i1 %2351, i32 0, i32 1512
  %2353 = add nsw i32 %2352, %2349
  %2354 = add i32 %2345, %1245
  %2355 = sub i32 0, %2354
  br i1 %1258, label %2356, label %2416

2356:                                             ; preds = %2342
  %2357 = icmp slt i32 %2354, %2
  br i1 %2357, label %2362, label %2358

2358:                                             ; preds = %2356
  %2359 = shl nsw i32 %2, 1
  %2360 = sub i32 -2, %2354
  %2361 = add i32 %2360, %2359
  br label %2364

2362:                                             ; preds = %2356
  %2363 = icmp slt i32 %2354, 0
  br i1 %2363, label %2364, label %2366

2364:                                             ; preds = %2362, %2358
  %2365 = phi i32 [ %2361, %2358 ], [ %2355, %2362 ]
  br label %2366

2366:                                             ; preds = %2364, %2362
  %2367 = phi i32 [ %2365, %2364 ], [ %2354, %2362 ]
  %2368 = mul nsw i32 %1248, %2
  %2369 = add i32 %2367, %2368
  %2370 = sext i32 %2369 to i64
  %2371 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2370
  %2372 = load float, float addrspace(1)* %2371, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2373 = add nsw i32 %2353, 400
  %2374 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2373
  store float %2372, float addrspace(3)* %2374, align 4, !tbaa !6
  %2375 = add nsw i32 %2369, %2
  %2376 = sext i32 %2375 to i64
  %2377 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2376
  %2378 = load float, float addrspace(1)* %2377, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2379 = add nsw i32 %2353, 500
  %2380 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2379
  store float %2378, float addrspace(3)* %2380, align 4, !tbaa !6
  %2381 = add nsw i32 %2353, 300
  %2382 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2381
  store float %2378, float addrspace(3)* %2382, align 4, !tbaa !6
  %2383 = add nsw i32 %2375, %2
  %2384 = sext i32 %2383 to i64
  %2385 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2384
  %2386 = load float, float addrspace(1)* %2385, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2387 = add nsw i32 %2353, 600
  %2388 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2387
  store float %2386, float addrspace(3)* %2388, align 4, !tbaa !6
  %2389 = add nsw i32 %2353, 200
  %2390 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2389
  store float %2386, float addrspace(3)* %2390, align 4, !tbaa !6
  %2391 = add nsw i32 %2383, %2
  %2392 = sext i32 %2391 to i64
  %2393 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2392
  %2394 = load float, float addrspace(1)* %2393, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2395 = add nsw i32 %2353, 100
  %2396 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2395
  store float %2394, float addrspace(3)* %2396, align 4, !tbaa !6
  %2397 = add nsw i32 %2391, %2
  %2398 = sext i32 %2397 to i64
  %2399 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2398
  %2400 = load float, float addrspace(1)* %2399, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2401 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2353
  store float %2400, float addrspace(3)* %2401, align 4, !tbaa !6
  %2402 = or i32 %1248, 3
  br i1 %2357, label %2407, label %2403

2403:                                             ; preds = %2366
  %2404 = shl nsw i32 %2, 1
  %2405 = sub i32 -2, %2354
  %2406 = add i32 %2405, %2404
  br label %2409

2407:                                             ; preds = %2366
  %2408 = icmp slt i32 %2354, 0
  br i1 %2408, label %2409, label %2411

2409:                                             ; preds = %2407, %2403
  %2410 = phi i32 [ %2406, %2403 ], [ %2355, %2407 ]
  br label %2411

2411:                                             ; preds = %2409, %2407
  %2412 = phi i32 [ %2410, %2409 ], [ %2354, %2407 ]
  %2413 = mul nsw i32 %2402, %2
  %2414 = sub i32 %2413, %2
  %2415 = add i32 %2414, %2412
  br label %2471

2416:                                             ; preds = %2342
  %2417 = add nsw i32 %1248, -4
  %2418 = icmp slt i32 %2354, %2
  br i1 %2418, label %2423, label %2419

2419:                                             ; preds = %2416
  %2420 = shl nsw i32 %2, 1
  %2421 = sub i32 -2, %2354
  %2422 = add i32 %2421, %2420
  br label %2425

2423:                                             ; preds = %2416
  %2424 = icmp slt i32 %2354, 0
  br i1 %2424, label %2425, label %2427

2425:                                             ; preds = %2423, %2419
  %2426 = phi i32 [ %2422, %2419 ], [ %2355, %2423 ]
  br label %2427

2427:                                             ; preds = %2425, %2423
  %2428 = phi i32 [ %2426, %2425 ], [ %2354, %2423 ]
  %2429 = mul nsw i32 %2417, %2
  %2430 = add i32 %2428, %2429
  %2431 = sext i32 %2430 to i64
  %2432 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2431
  %2433 = load float, float addrspace(1)* %2432, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2434 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2353
  store float %2433, float addrspace(3)* %2434, align 4, !tbaa !6
  %2435 = add nsw i32 %2430, %2
  %2436 = sext i32 %2435 to i64
  %2437 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2436
  %2438 = load float, float addrspace(1)* %2437, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2439 = add nsw i32 %2353, 100
  %2440 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2439
  store float %2438, float addrspace(3)* %2440, align 4, !tbaa !6
  %2441 = add nsw i32 %2435, %2
  %2442 = sext i32 %2441 to i64
  %2443 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2442
  %2444 = load float, float addrspace(1)* %2443, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2445 = add nsw i32 %2353, 200
  %2446 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2445
  store float %2444, float addrspace(3)* %2446, align 4, !tbaa !6
  %2447 = add nsw i32 %2441, %2
  %2448 = sext i32 %2447 to i64
  %2449 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2448
  %2450 = load float, float addrspace(1)* %2449, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2451 = add nsw i32 %2353, 300
  %2452 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2451
  store float %2450, float addrspace(3)* %2452, align 4, !tbaa !6
  %2453 = add nsw i32 %2447, %2
  %2454 = sext i32 %2453 to i64
  %2455 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2454
  %2456 = load float, float addrspace(1)* %2455, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2457 = add nsw i32 %2353, 400
  %2458 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2457
  store float %2456, float addrspace(3)* %2458, align 4, !tbaa !6
  %2459 = add nsw i32 %2453, %2
  %2460 = sext i32 %2459 to i64
  %2461 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2460
  %2462 = load float, float addrspace(1)* %2461, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2463 = add nsw i32 %2353, 500
  %2464 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2463
  store float %2462, float addrspace(3)* %2464, align 4, !tbaa !6
  %2465 = add nsw i32 %2459, %2
  %2466 = sext i32 %2465 to i64
  %2467 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2466
  %2468 = load float, float addrspace(1)* %2467, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2469 = add nsw i32 %2353, 600
  %2470 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2469
  store float %2468, float addrspace(3)* %2470, align 4, !tbaa !6
  br label %2471

2471:                                             ; preds = %2427, %2411, %2339
  %2472 = phi i32 [ 0, %2339 ], [ %2, %2411 ], [ %2, %2427 ]
  %2473 = phi i32 [ 0, %2339 ], [ %2415, %2411 ], [ %2465, %2427 ]
  %2474 = phi i32 [ 0, %2339 ], [ %2353, %2411 ], [ %2353, %2427 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2475 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1249
  %2476 = load float, float addrspace(3)* %2475, align 4, !tbaa !6
  %2477 = add nuw nsw i32 %1249, 1
  %2478 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2477
  %2479 = load float, float addrspace(3)* %2478, align 4, !tbaa !6
  %2480 = add nuw nsw i32 %1249, 1512
  %2481 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2480
  %2482 = fadd contract float %2476, %2479
  %2483 = fmul contract float %2482, 0x3FF960CE60000000
  %2484 = load float, float addrspace(3)* %2481, align 4, !tbaa !6
  %2485 = fsub contract float %2484, %2483
  store float %2485, float addrspace(3)* %2481, align 4, !tbaa !6
  %2486 = add nuw nsw i32 %1249, 192
  %2487 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2486
  %2488 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2489 = add nuw nsw i32 %1249, 193
  %2490 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2489
  %2491 = load float, float addrspace(3)* %2490, align 4, !tbaa !6
  %2492 = add nuw nsw i32 %1249, 1704
  %2493 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2492
  %2494 = fadd contract float %2488, %2491
  %2495 = fmul contract float %2494, 0x3FF960CE60000000
  %2496 = load float, float addrspace(3)* %2493, align 4, !tbaa !6
  %2497 = fsub contract float %2496, %2495
  store float %2497, float addrspace(3)* %2493, align 4, !tbaa !6
  %2498 = add nuw nsw i32 %1249, 384
  %2499 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2498
  %2500 = load float, float addrspace(3)* %2499, align 4, !tbaa !6
  %2501 = add nuw nsw i32 %1249, 385
  %2502 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2501
  %2503 = load float, float addrspace(3)* %2502, align 4, !tbaa !6
  %2504 = add nuw nsw i32 %1249, 1896
  %2505 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2504
  %2506 = fadd contract float %2500, %2503
  %2507 = fmul contract float %2506, 0x3FF960CE60000000
  %2508 = load float, float addrspace(3)* %2505, align 4, !tbaa !6
  %2509 = fsub contract float %2508, %2507
  store float %2509, float addrspace(3)* %2505, align 4, !tbaa !6
  %2510 = icmp ult i32 %1249, 123
  br i1 %2510, label %2511, label %2524

2511:                                             ; preds = %2471
  %2512 = add nuw nsw i32 %1249, 576
  %2513 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2512
  %2514 = load float, float addrspace(3)* %2513, align 4, !tbaa !6
  %2515 = add nuw nsw i32 %1249, 577
  %2516 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2515
  %2517 = load float, float addrspace(3)* %2516, align 4, !tbaa !6
  %2518 = add nuw nsw i32 %1249, 2088
  %2519 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2518
  %2520 = fadd contract float %2514, %2517
  %2521 = fmul contract float %2520, 0x3FF960CE60000000
  %2522 = load float, float addrspace(3)* %2519, align 4, !tbaa !6
  %2523 = fsub contract float %2522, %2521
  store float %2523, float addrspace(3)* %2519, align 4, !tbaa !6
  br label %2524

2524:                                             ; preds = %2511, %2471
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2525 = load float, float addrspace(3)* %2481, align 4, !tbaa !6
  %2526 = add nuw nsw i32 %1249, 1513
  %2527 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2526
  %2528 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2529 = fadd contract float %2525, %2528
  %2530 = fmul contract float %2529, 0x3FAB2035C0000000
  %2531 = load float, float addrspace(3)* %2478, align 4, !tbaa !6
  %2532 = fsub contract float %2531, %2530
  store float %2532, float addrspace(3)* %2478, align 4, !tbaa !6
  %2533 = load float, float addrspace(3)* %2493, align 4, !tbaa !6
  %2534 = add nuw nsw i32 %1249, 1705
  %2535 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2534
  %2536 = load float, float addrspace(3)* %2535, align 4, !tbaa !6
  %2537 = fadd contract float %2533, %2536
  %2538 = fmul contract float %2537, 0x3FAB2035C0000000
  %2539 = load float, float addrspace(3)* %2490, align 4, !tbaa !6
  %2540 = fsub contract float %2539, %2538
  store float %2540, float addrspace(3)* %2490, align 4, !tbaa !6
  %2541 = load float, float addrspace(3)* %2505, align 4, !tbaa !6
  %2542 = add nuw nsw i32 %1249, 1897
  %2543 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2542
  %2544 = load float, float addrspace(3)* %2543, align 4, !tbaa !6
  %2545 = fadd contract float %2541, %2544
  %2546 = fmul contract float %2545, 0x3FAB2035C0000000
  %2547 = load float, float addrspace(3)* %2502, align 4, !tbaa !6
  %2548 = fsub contract float %2547, %2546
  store float %2548, float addrspace(3)* %2502, align 4, !tbaa !6
  br i1 %2510, label %2549, label %2562

2549:                                             ; preds = %2524
  %2550 = add nuw nsw i32 %1249, 2088
  %2551 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2550
  %2552 = load float, float addrspace(3)* %2551, align 4, !tbaa !6
  %2553 = add nuw nsw i32 %1249, 2089
  %2554 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2553
  %2555 = load float, float addrspace(3)* %2554, align 4, !tbaa !6
  %2556 = add nuw nsw i32 %1249, 577
  %2557 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2556
  %2558 = fadd contract float %2552, %2555
  %2559 = fmul contract float %2558, 0x3FAB2035C0000000
  %2560 = load float, float addrspace(3)* %2557, align 4, !tbaa !6
  %2561 = fsub contract float %2560, %2559
  store float %2561, float addrspace(3)* %2557, align 4, !tbaa !6
  br label %2562

2562:                                             ; preds = %2549, %2524
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2563 = load float, float addrspace(3)* %2475, align 4, !tbaa !6
  %2564 = load float, float addrspace(3)* %2478, align 4, !tbaa !6
  %2565 = fadd contract float %2563, %2564
  %2566 = fmul contract float %2565, 0x3FEC40CEC0000000
  %2567 = load float, float addrspace(3)* %2481, align 4, !tbaa !6
  %2568 = fadd contract float %2567, %2566
  store float %2568, float addrspace(3)* %2481, align 4, !tbaa !6
  %2569 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2570 = load float, float addrspace(3)* %2490, align 4, !tbaa !6
  %2571 = fadd contract float %2569, %2570
  %2572 = fmul contract float %2571, 0x3FEC40CEC0000000
  %2573 = load float, float addrspace(3)* %2493, align 4, !tbaa !6
  %2574 = fadd contract float %2573, %2572
  store float %2574, float addrspace(3)* %2493, align 4, !tbaa !6
  %2575 = load float, float addrspace(3)* %2499, align 4, !tbaa !6
  %2576 = load float, float addrspace(3)* %2502, align 4, !tbaa !6
  %2577 = fadd contract float %2575, %2576
  %2578 = fmul contract float %2577, 0x3FEC40CEC0000000
  %2579 = load float, float addrspace(3)* %2505, align 4, !tbaa !6
  %2580 = fadd contract float %2579, %2578
  store float %2580, float addrspace(3)* %2505, align 4, !tbaa !6
  br i1 %2510, label %2581, label %2594

2581:                                             ; preds = %2562
  %2582 = add nuw nsw i32 %1249, 576
  %2583 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2582
  %2584 = load float, float addrspace(3)* %2583, align 4, !tbaa !6
  %2585 = add nuw nsw i32 %1249, 577
  %2586 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2585
  %2587 = load float, float addrspace(3)* %2586, align 4, !tbaa !6
  %2588 = add nuw nsw i32 %1249, 2088
  %2589 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2588
  %2590 = fadd contract float %2584, %2587
  %2591 = fmul contract float %2590, 0x3FEC40CEC0000000
  %2592 = load float, float addrspace(3)* %2589, align 4, !tbaa !6
  %2593 = fadd contract float %2592, %2591
  store float %2593, float addrspace(3)* %2589, align 4, !tbaa !6
  br label %2594

2594:                                             ; preds = %2581, %2562
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2595 = load float, float addrspace(3)* %2481, align 4, !tbaa !6
  %2596 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2597 = fadd contract float %2595, %2596
  %2598 = fmul contract float %2597, 0x3FDC626AA0000000
  %2599 = load float, float addrspace(3)* %2478, align 4, !tbaa !6
  %2600 = fadd contract float %2599, %2598
  store float %2600, float addrspace(3)* %2478, align 4, !tbaa !6
  %2601 = load float, float addrspace(3)* %2493, align 4, !tbaa !6
  %2602 = load float, float addrspace(3)* %2535, align 4, !tbaa !6
  %2603 = fadd contract float %2601, %2602
  %2604 = fmul contract float %2603, 0x3FDC626AA0000000
  %2605 = load float, float addrspace(3)* %2490, align 4, !tbaa !6
  %2606 = fadd contract float %2605, %2604
  store float %2606, float addrspace(3)* %2490, align 4, !tbaa !6
  %2607 = load float, float addrspace(3)* %2505, align 4, !tbaa !6
  %2608 = load float, float addrspace(3)* %2543, align 4, !tbaa !6
  %2609 = fadd contract float %2607, %2608
  %2610 = fmul contract float %2609, 0x3FDC626AA0000000
  %2611 = load float, float addrspace(3)* %2502, align 4, !tbaa !6
  %2612 = fadd contract float %2611, %2610
  store float %2612, float addrspace(3)* %2502, align 4, !tbaa !6
  br i1 %2510, label %2613, label %2626

2613:                                             ; preds = %2594
  %2614 = add nuw nsw i32 %1249, 2088
  %2615 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2614
  %2616 = load float, float addrspace(3)* %2615, align 4, !tbaa !6
  %2617 = add nuw nsw i32 %1249, 2089
  %2618 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2617
  %2619 = load float, float addrspace(3)* %2618, align 4, !tbaa !6
  %2620 = add nuw nsw i32 %1249, 577
  %2621 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2620
  %2622 = fadd contract float %2616, %2619
  %2623 = fmul contract float %2622, 0x3FDC626AA0000000
  %2624 = load float, float addrspace(3)* %2621, align 4, !tbaa !6
  %2625 = fadd contract float %2624, %2623
  store float %2625, float addrspace(3)* %2621, align 4, !tbaa !6
  br label %2626

2626:                                             ; preds = %2613, %2594
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2627 = load float, float addrspace(3)* %2475, align 4, !tbaa !6
  %2628 = fmul contract float %2627, 0x3FEA033860000000
  store float %2628, float addrspace(3)* %2475, align 4, !tbaa !6
  %2629 = load float, float addrspace(3)* %2481, align 4, !tbaa !6
  %2630 = fmul contract float %2629, 0x3FF3AECB00000000
  store float %2630, float addrspace(3)* %2481, align 4, !tbaa !6
  %2631 = load float, float addrspace(3)* %2487, align 4, !tbaa !6
  %2632 = fmul contract float %2631, 0x3FEA033860000000
  store float %2632, float addrspace(3)* %2487, align 4, !tbaa !6
  %2633 = load float, float addrspace(3)* %2493, align 4, !tbaa !6
  %2634 = fmul contract float %2633, 0x3FF3AECB00000000
  store float %2634, float addrspace(3)* %2493, align 4, !tbaa !6
  %2635 = load float, float addrspace(3)* %2499, align 4, !tbaa !6
  %2636 = fmul contract float %2635, 0x3FEA033860000000
  store float %2636, float addrspace(3)* %2499, align 4, !tbaa !6
  %2637 = load float, float addrspace(3)* %2505, align 4, !tbaa !6
  %2638 = fmul contract float %2637, 0x3FF3AECB00000000
  store float %2638, float addrspace(3)* %2505, align 4, !tbaa !6
  %2639 = icmp ult i32 %1249, 124
  br i1 %2639, label %2640, label %2649

2640:                                             ; preds = %2626
  %2641 = add nuw nsw i32 %1249, 576
  %2642 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2641
  %2643 = load float, float addrspace(3)* %2642, align 4, !tbaa !6
  %2644 = fmul contract float %2643, 0x3FEA033860000000
  store float %2644, float addrspace(3)* %2642, align 4, !tbaa !6
  %2645 = add nuw nsw i32 %1249, 2088
  %2646 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2645
  %2647 = load float, float addrspace(3)* %2646, align 4, !tbaa !6
  %2648 = fmul contract float %2647, 0x3FF3AECB00000000
  store float %2648, float addrspace(3)* %2646, align 4, !tbaa !6
  br label %2649

2649:                                             ; preds = %2640, %2626
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2650 = shl nuw nsw i32 %1249, 1
  %2651 = trunc i32 %1249 to i16
  %2652 = udiv i16 %2651, 96
  %2653 = zext i16 %2652 to i32
  %2654 = mul nsw i32 %2653, -191
  %2655 = add nsw i32 %2654, %2650
  %2656 = add i32 %2655, %1245
  %2657 = icmp slt i32 %2656, %2
  br i1 %2657, label %2658, label %2683

2658:                                             ; preds = %2649
  %2659 = sdiv i32 %2656, 2
  %2660 = and i32 %2656, 1
  %2661 = icmp eq i32 %2660, 0
  %2662 = sdiv i32 %2, 2
  %2663 = and i32 %2, 1
  %2664 = add nsw i32 %2662, %2663
  %2665 = sdiv i32 %3, 2
  %2666 = and i32 %3, 1
  %2667 = add nsw i32 %2665, %2666
  br i1 %2661, label %2673, label %2668

2668:                                             ; preds = %2658
  %2669 = mul nsw i32 %2667, %2664
  %2670 = add nsw i32 %2669, %2659
  %2671 = mul nsw i32 %3, %2
  %2672 = sdiv i32 %2671, 2
  br label %2675

2673:                                             ; preds = %2658
  %2674 = mul nsw i32 %2667, %2
  br label %2675

2675:                                             ; preds = %2673, %2668
  %2676 = phi i32 [ %2674, %2673 ], [ %2672, %2668 ]
  %2677 = phi i32 [ %2659, %2673 ], [ %2670, %2668 ]
  %2678 = phi i32 [ %2664, %2673 ], [ %2662, %2668 ]
  %2679 = sub nsw i32 %2678, %2676
  %2680 = sdiv i32 %1248, 2
  %2681 = mul nsw i32 %2678, %2680
  %2682 = add i32 %2681, %2677
  br label %2683

2683:                                             ; preds = %2675, %2649
  %2684 = phi i32 [ %2676, %2675 ], [ 0, %2649 ]
  %2685 = phi i32 [ %2679, %2675 ], [ 0, %2649 ]
  %2686 = phi i32 [ %2682, %2675 ], [ 0, %2649 ]
  %2687 = trunc i32 %2655 to i16
  %2688 = add nsw i16 %2687, 4
  %2689 = sdiv i16 %2688, 2
  %2690 = sext i16 %2689 to i32
  %2691 = and i32 %2655, 1
  %2692 = icmp eq i32 %2691, 0
  %2693 = select i1 %2692, i32 0, i32 1512
  %2694 = add nsw i32 %2693, %2690
  %2695 = icmp sgt i32 %4, 0
  br i1 %2695, label %2696, label %3143

2696:                                             ; preds = %2683
  %2697 = add nuw nsw i32 %1255, 700
  %2698 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2697
  %2699 = add nuw nsw i32 %1255, 800
  %2700 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2699
  %2701 = add nuw nsw i32 %1255, 900
  %2702 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2701
  %2703 = add nuw nsw i32 %1255, 1000
  %2704 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2703
  %2705 = add nuw nsw i32 %1255, 1100
  %2706 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2705
  %2707 = add nuw nsw i32 %1255, 1200
  %2708 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2707
  %2709 = add nuw nsw i32 %1255, 1300
  %2710 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2709
  %2711 = add nuw nsw i32 %1255, 1400
  %2712 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2711
  %2713 = add nsw i32 %2474, 700
  %2714 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2713
  %2715 = add nsw i32 %2474, 800
  %2716 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2715
  %2717 = add nsw i32 %2474, 900
  %2718 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2717
  %2719 = add nsw i32 %2474, 1000
  %2720 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2719
  %2721 = add nsw i32 %2474, 1100
  %2722 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2721
  %2723 = add nsw i32 %2474, 1200
  %2724 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2723
  %2725 = add nsw i32 %2474, 1300
  %2726 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2725
  %2727 = add nsw i32 %2474, 1400
  %2728 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2727
  %2729 = icmp ult i32 %1249, 31
  %2730 = add nuw nsw i32 %1249, 1468
  %2731 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2730
  %2732 = add nuw nsw i32 %1249, 1469
  %2733 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2732
  %2734 = add nuw nsw i32 %1249, 2980
  %2735 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2734
  %2736 = add nuw nsw i32 %1249, 2981
  %2737 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2736
  %2738 = add nuw nsw i32 %1249, 700
  %2739 = icmp ult i32 %1249, 32
  %2740 = add nsw i32 %2694, 800
  %2741 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2694
  %2742 = add nsw i32 %2694, 200
  %2743 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2742
  %2744 = add nsw i32 %2694, 100
  %2745 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2744
  %2746 = add nsw i32 %2694, 400
  %2747 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2746
  %2748 = add nsw i32 %2694, 300
  %2749 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2748
  %2750 = add nsw i32 %2694, 600
  %2751 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2750
  %2752 = add nsw i32 %2694, 500
  %2753 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2752
  %2754 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2740
  %2755 = add nsw i32 %2694, 700
  %2756 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2755
  %2757 = add nsw i32 %2694, 1000
  %2758 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2757
  %2759 = add nsw i32 %2694, 900
  %2760 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2759
  %2761 = add nsw i32 %2694, 1200
  %2762 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2761
  %2763 = add nsw i32 %2694, 1100
  %2764 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2763
  %2765 = add nsw i32 %2694, 1300
  %2766 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2765
  %2767 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2738
  %2768 = add nuw nsw i32 %1249, 701
  %2769 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2768
  %2770 = add nuw nsw i32 %1249, 2212
  %2771 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2770
  %2772 = add nuw nsw i32 %1249, 892
  %2773 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2772
  %2774 = add nuw nsw i32 %1249, 893
  %2775 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2774
  %2776 = add nuw nsw i32 %1249, 2404
  %2777 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2776
  %2778 = add nuw nsw i32 %1249, 1084
  %2779 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2778
  %2780 = add nuw nsw i32 %1249, 1085
  %2781 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2780
  %2782 = add nuw nsw i32 %1249, 2596
  %2783 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2782
  %2784 = add nuw nsw i32 %1249, 1276
  %2785 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2784
  %2786 = add nuw nsw i32 %1249, 1277
  %2787 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2786
  %2788 = add nuw nsw i32 %1249, 2788
  %2789 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2788
  %2790 = add nuw nsw i32 %1249, 2213
  %2791 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2790
  %2792 = add nuw nsw i32 %1249, 2405
  %2793 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2792
  %2794 = add nuw nsw i32 %1249, 2597
  %2795 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2794
  %2796 = add nuw nsw i32 %1249, 2789
  %2797 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2796
  %2798 = add nsw i32 %2694, 1400
  %2799 = getelementptr inbounds %"class.dwt_cuda::FDWT97", %"class.dwt_cuda::FDWT97" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi192ELi8EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2798
  br label %2800

2800:                                             ; preds = %3021, %2696
  %2801 = phi i32 [ 0, %2696 ], [ %3141, %3021 ]
  %2802 = phi i32 [ %2340, %2696 ], [ %2833, %3021 ]
  %2803 = phi i32 [ %2473, %2696 ], [ %2871, %3021 ]
  %2804 = phi i32 [ %2686, %2696 ], [ %3140, %3021 ]
  %2805 = add nsw i32 %2802, %2
  %2806 = sext i32 %2805 to i64
  %2807 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2806
  %2808 = load float, float addrspace(1)* %2807, align 4, !tbaa !6
  store float %2808, float addrspace(3)* %2698, align 4, !tbaa !6
  %2809 = add nsw i32 %2805, %2
  %2810 = sext i32 %2809 to i64
  %2811 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2810
  %2812 = load float, float addrspace(1)* %2811, align 4, !tbaa !6
  store float %2812, float addrspace(3)* %2700, align 4, !tbaa !6
  %2813 = add nsw i32 %2809, %2
  %2814 = sext i32 %2813 to i64
  %2815 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2814
  %2816 = load float, float addrspace(1)* %2815, align 4, !tbaa !6
  store float %2816, float addrspace(3)* %2702, align 4, !tbaa !6
  %2817 = add nsw i32 %2813, %2
  %2818 = sext i32 %2817 to i64
  %2819 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2818
  %2820 = load float, float addrspace(1)* %2819, align 4, !tbaa !6
  store float %2820, float addrspace(3)* %2704, align 4, !tbaa !6
  %2821 = add nsw i32 %2817, %2
  %2822 = sext i32 %2821 to i64
  %2823 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2822
  %2824 = load float, float addrspace(1)* %2823, align 4, !tbaa !6
  store float %2824, float addrspace(3)* %2706, align 4, !tbaa !6
  %2825 = add nsw i32 %2821, %2
  %2826 = sext i32 %2825 to i64
  %2827 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2826
  %2828 = load float, float addrspace(1)* %2827, align 4, !tbaa !6
  store float %2828, float addrspace(3)* %2708, align 4, !tbaa !6
  %2829 = add nsw i32 %2825, %2
  %2830 = sext i32 %2829 to i64
  %2831 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2830
  %2832 = load float, float addrspace(1)* %2831, align 4, !tbaa !6
  store float %2832, float addrspace(3)* %2710, align 4, !tbaa !6
  %2833 = add nsw i32 %2829, %2
  %2834 = sext i32 %2833 to i64
  %2835 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2834
  %2836 = load float, float addrspace(1)* %2835, align 4, !tbaa !6
  store float %2836, float addrspace(3)* %2712, align 4, !tbaa !6
  br i1 %2341, label %2837, label %2870

2837:                                             ; preds = %2800
  %2838 = add nsw i32 %2803, %2472
  %2839 = sext i32 %2838 to i64
  %2840 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2839
  %2841 = load float, float addrspace(1)* %2840, align 4, !tbaa !6
  store float %2841, float addrspace(3)* %2714, align 4, !tbaa !6
  %2842 = add nsw i32 %2838, %2472
  %2843 = sext i32 %2842 to i64
  %2844 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2843
  %2845 = load float, float addrspace(1)* %2844, align 4, !tbaa !6
  store float %2845, float addrspace(3)* %2716, align 4, !tbaa !6
  %2846 = add nsw i32 %2842, %2472
  %2847 = sext i32 %2846 to i64
  %2848 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2847
  %2849 = load float, float addrspace(1)* %2848, align 4, !tbaa !6
  store float %2849, float addrspace(3)* %2718, align 4, !tbaa !6
  %2850 = add nsw i32 %2846, %2472
  %2851 = sext i32 %2850 to i64
  %2852 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2851
  %2853 = load float, float addrspace(1)* %2852, align 4, !tbaa !6
  store float %2853, float addrspace(3)* %2720, align 4, !tbaa !6
  %2854 = add nsw i32 %2850, %2472
  %2855 = sext i32 %2854 to i64
  %2856 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2855
  %2857 = load float, float addrspace(1)* %2856, align 4, !tbaa !6
  store float %2857, float addrspace(3)* %2722, align 4, !tbaa !6
  %2858 = add nsw i32 %2854, %2472
  %2859 = sext i32 %2858 to i64
  %2860 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2859
  %2861 = load float, float addrspace(1)* %2860, align 4, !tbaa !6
  store float %2861, float addrspace(3)* %2724, align 4, !tbaa !6
  %2862 = add nsw i32 %2858, %2472
  %2863 = sext i32 %2862 to i64
  %2864 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2863
  %2865 = load float, float addrspace(1)* %2864, align 4, !tbaa !6
  store float %2865, float addrspace(3)* %2726, align 4, !tbaa !6
  %2866 = add nsw i32 %2862, %2472
  %2867 = sext i32 %2866 to i64
  %2868 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2867
  %2869 = load float, float addrspace(1)* %2868, align 4, !tbaa !6
  store float %2869, float addrspace(3)* %2728, align 4, !tbaa !6
  br label %2870

2870:                                             ; preds = %2837, %2800
  %2871 = phi i32 [ %2866, %2837 ], [ %2803, %2800 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2872 = load float, float addrspace(3)* %2767, align 4, !tbaa !6
  %2873 = load float, float addrspace(3)* %2769, align 4, !tbaa !6
  %2874 = fadd contract float %2872, %2873
  %2875 = fmul contract float %2874, 0x3FF960CE60000000
  %2876 = load float, float addrspace(3)* %2771, align 4, !tbaa !6
  %2877 = fsub contract float %2876, %2875
  store float %2877, float addrspace(3)* %2771, align 4, !tbaa !6
  %2878 = load float, float addrspace(3)* %2773, align 4, !tbaa !6
  %2879 = load float, float addrspace(3)* %2775, align 4, !tbaa !6
  %2880 = fadd contract float %2878, %2879
  %2881 = fmul contract float %2880, 0x3FF960CE60000000
  %2882 = load float, float addrspace(3)* %2777, align 4, !tbaa !6
  %2883 = fsub contract float %2882, %2881
  store float %2883, float addrspace(3)* %2777, align 4, !tbaa !6
  %2884 = load float, float addrspace(3)* %2779, align 4, !tbaa !6
  %2885 = load float, float addrspace(3)* %2781, align 4, !tbaa !6
  %2886 = fadd contract float %2884, %2885
  %2887 = fmul contract float %2886, 0x3FF960CE60000000
  %2888 = load float, float addrspace(3)* %2783, align 4, !tbaa !6
  %2889 = fsub contract float %2888, %2887
  store float %2889, float addrspace(3)* %2783, align 4, !tbaa !6
  %2890 = load float, float addrspace(3)* %2785, align 4, !tbaa !6
  %2891 = load float, float addrspace(3)* %2787, align 4, !tbaa !6
  %2892 = fadd contract float %2890, %2891
  %2893 = fmul contract float %2892, 0x3FF960CE60000000
  %2894 = load float, float addrspace(3)* %2789, align 4, !tbaa !6
  %2895 = fsub contract float %2894, %2893
  store float %2895, float addrspace(3)* %2789, align 4, !tbaa !6
  br i1 %2729, label %2896, label %2903

2896:                                             ; preds = %2870
  %2897 = load float, float addrspace(3)* %2731, align 4, !tbaa !6
  %2898 = load float, float addrspace(3)* %2733, align 4, !tbaa !6
  %2899 = fadd contract float %2897, %2898
  %2900 = fmul contract float %2899, 0x3FF960CE60000000
  %2901 = load float, float addrspace(3)* %2735, align 4, !tbaa !6
  %2902 = fsub contract float %2901, %2900
  store float %2902, float addrspace(3)* %2735, align 4, !tbaa !6
  br label %2903

2903:                                             ; preds = %2896, %2870
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2904 = load float, float addrspace(3)* %2771, align 4, !tbaa !6
  %2905 = load float, float addrspace(3)* %2791, align 4, !tbaa !6
  %2906 = fadd contract float %2904, %2905
  %2907 = fmul contract float %2906, 0x3FAB2035C0000000
  %2908 = load float, float addrspace(3)* %2769, align 4, !tbaa !6
  %2909 = fsub contract float %2908, %2907
  store float %2909, float addrspace(3)* %2769, align 4, !tbaa !6
  %2910 = load float, float addrspace(3)* %2777, align 4, !tbaa !6
  %2911 = load float, float addrspace(3)* %2793, align 4, !tbaa !6
  %2912 = fadd contract float %2910, %2911
  %2913 = fmul contract float %2912, 0x3FAB2035C0000000
  %2914 = load float, float addrspace(3)* %2775, align 4, !tbaa !6
  %2915 = fsub contract float %2914, %2913
  store float %2915, float addrspace(3)* %2775, align 4, !tbaa !6
  %2916 = load float, float addrspace(3)* %2783, align 4, !tbaa !6
  %2917 = load float, float addrspace(3)* %2795, align 4, !tbaa !6
  %2918 = fadd contract float %2916, %2917
  %2919 = fmul contract float %2918, 0x3FAB2035C0000000
  %2920 = load float, float addrspace(3)* %2781, align 4, !tbaa !6
  %2921 = fsub contract float %2920, %2919
  store float %2921, float addrspace(3)* %2781, align 4, !tbaa !6
  %2922 = load float, float addrspace(3)* %2789, align 4, !tbaa !6
  %2923 = load float, float addrspace(3)* %2797, align 4, !tbaa !6
  %2924 = fadd contract float %2922, %2923
  %2925 = fmul contract float %2924, 0x3FAB2035C0000000
  %2926 = load float, float addrspace(3)* %2787, align 4, !tbaa !6
  %2927 = fsub contract float %2926, %2925
  store float %2927, float addrspace(3)* %2787, align 4, !tbaa !6
  br i1 %2729, label %2928, label %2935

2928:                                             ; preds = %2903
  %2929 = load float, float addrspace(3)* %2735, align 4, !tbaa !6
  %2930 = load float, float addrspace(3)* %2737, align 4, !tbaa !6
  %2931 = fadd contract float %2929, %2930
  %2932 = fmul contract float %2931, 0x3FAB2035C0000000
  %2933 = load float, float addrspace(3)* %2733, align 4, !tbaa !6
  %2934 = fsub contract float %2933, %2932
  store float %2934, float addrspace(3)* %2733, align 4, !tbaa !6
  br label %2935

2935:                                             ; preds = %2928, %2903
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2936 = load float, float addrspace(3)* %2767, align 4, !tbaa !6
  %2937 = load float, float addrspace(3)* %2769, align 4, !tbaa !6
  %2938 = fadd contract float %2936, %2937
  %2939 = fmul contract float %2938, 0x3FEC40CEC0000000
  %2940 = load float, float addrspace(3)* %2771, align 4, !tbaa !6
  %2941 = fadd contract float %2940, %2939
  store float %2941, float addrspace(3)* %2771, align 4, !tbaa !6
  %2942 = load float, float addrspace(3)* %2773, align 4, !tbaa !6
  %2943 = load float, float addrspace(3)* %2775, align 4, !tbaa !6
  %2944 = fadd contract float %2942, %2943
  %2945 = fmul contract float %2944, 0x3FEC40CEC0000000
  %2946 = load float, float addrspace(3)* %2777, align 4, !tbaa !6
  %2947 = fadd contract float %2946, %2945
  store float %2947, float addrspace(3)* %2777, align 4, !tbaa !6
  %2948 = load float, float addrspace(3)* %2779, align 4, !tbaa !6
  %2949 = load float, float addrspace(3)* %2781, align 4, !tbaa !6
  %2950 = fadd contract float %2948, %2949
  %2951 = fmul contract float %2950, 0x3FEC40CEC0000000
  %2952 = load float, float addrspace(3)* %2783, align 4, !tbaa !6
  %2953 = fadd contract float %2952, %2951
  store float %2953, float addrspace(3)* %2783, align 4, !tbaa !6
  %2954 = load float, float addrspace(3)* %2785, align 4, !tbaa !6
  %2955 = load float, float addrspace(3)* %2787, align 4, !tbaa !6
  %2956 = fadd contract float %2954, %2955
  %2957 = fmul contract float %2956, 0x3FEC40CEC0000000
  %2958 = load float, float addrspace(3)* %2789, align 4, !tbaa !6
  %2959 = fadd contract float %2958, %2957
  store float %2959, float addrspace(3)* %2789, align 4, !tbaa !6
  br i1 %2729, label %2960, label %2967

2960:                                             ; preds = %2935
  %2961 = load float, float addrspace(3)* %2731, align 4, !tbaa !6
  %2962 = load float, float addrspace(3)* %2733, align 4, !tbaa !6
  %2963 = fadd contract float %2961, %2962
  %2964 = fmul contract float %2963, 0x3FEC40CEC0000000
  %2965 = load float, float addrspace(3)* %2735, align 4, !tbaa !6
  %2966 = fadd contract float %2965, %2964
  store float %2966, float addrspace(3)* %2735, align 4, !tbaa !6
  br label %2967

2967:                                             ; preds = %2960, %2935
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2968 = load float, float addrspace(3)* %2771, align 4, !tbaa !6
  %2969 = load float, float addrspace(3)* %2791, align 4, !tbaa !6
  %2970 = fadd contract float %2968, %2969
  %2971 = fmul contract float %2970, 0x3FDC626AA0000000
  %2972 = load float, float addrspace(3)* %2769, align 4, !tbaa !6
  %2973 = fadd contract float %2972, %2971
  store float %2973, float addrspace(3)* %2769, align 4, !tbaa !6
  %2974 = load float, float addrspace(3)* %2777, align 4, !tbaa !6
  %2975 = load float, float addrspace(3)* %2793, align 4, !tbaa !6
  %2976 = fadd contract float %2974, %2975
  %2977 = fmul contract float %2976, 0x3FDC626AA0000000
  %2978 = load float, float addrspace(3)* %2775, align 4, !tbaa !6
  %2979 = fadd contract float %2978, %2977
  store float %2979, float addrspace(3)* %2775, align 4, !tbaa !6
  %2980 = load float, float addrspace(3)* %2783, align 4, !tbaa !6
  %2981 = load float, float addrspace(3)* %2795, align 4, !tbaa !6
  %2982 = fadd contract float %2980, %2981
  %2983 = fmul contract float %2982, 0x3FDC626AA0000000
  %2984 = load float, float addrspace(3)* %2781, align 4, !tbaa !6
  %2985 = fadd contract float %2984, %2983
  store float %2985, float addrspace(3)* %2781, align 4, !tbaa !6
  %2986 = load float, float addrspace(3)* %2789, align 4, !tbaa !6
  %2987 = load float, float addrspace(3)* %2797, align 4, !tbaa !6
  %2988 = fadd contract float %2986, %2987
  %2989 = fmul contract float %2988, 0x3FDC626AA0000000
  %2990 = load float, float addrspace(3)* %2787, align 4, !tbaa !6
  %2991 = fadd contract float %2990, %2989
  store float %2991, float addrspace(3)* %2787, align 4, !tbaa !6
  br i1 %2729, label %2992, label %2999

2992:                                             ; preds = %2967
  %2993 = load float, float addrspace(3)* %2735, align 4, !tbaa !6
  %2994 = load float, float addrspace(3)* %2737, align 4, !tbaa !6
  %2995 = fadd contract float %2993, %2994
  %2996 = fmul contract float %2995, 0x3FDC626AA0000000
  %2997 = load float, float addrspace(3)* %2733, align 4, !tbaa !6
  %2998 = fadd contract float %2997, %2996
  store float %2998, float addrspace(3)* %2733, align 4, !tbaa !6
  br label %2999

2999:                                             ; preds = %2992, %2967
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3000 = load float, float addrspace(3)* %2767, align 4, !tbaa !6
  %3001 = fmul contract float %3000, 0x3FEA033860000000
  store float %3001, float addrspace(3)* %2767, align 4, !tbaa !6
  %3002 = load float, float addrspace(3)* %2771, align 4, !tbaa !6
  %3003 = fmul contract float %3002, 0x3FF3AECB00000000
  store float %3003, float addrspace(3)* %2771, align 4, !tbaa !6
  %3004 = load float, float addrspace(3)* %2773, align 4, !tbaa !6
  %3005 = fmul contract float %3004, 0x3FEA033860000000
  store float %3005, float addrspace(3)* %2773, align 4, !tbaa !6
  %3006 = load float, float addrspace(3)* %2777, align 4, !tbaa !6
  %3007 = fmul contract float %3006, 0x3FF3AECB00000000
  store float %3007, float addrspace(3)* %2777, align 4, !tbaa !6
  %3008 = load float, float addrspace(3)* %2779, align 4, !tbaa !6
  %3009 = fmul contract float %3008, 0x3FEA033860000000
  store float %3009, float addrspace(3)* %2779, align 4, !tbaa !6
  %3010 = load float, float addrspace(3)* %2783, align 4, !tbaa !6
  %3011 = fmul contract float %3010, 0x3FF3AECB00000000
  store float %3011, float addrspace(3)* %2783, align 4, !tbaa !6
  %3012 = load float, float addrspace(3)* %2785, align 4, !tbaa !6
  %3013 = fmul contract float %3012, 0x3FEA033860000000
  store float %3013, float addrspace(3)* %2785, align 4, !tbaa !6
  %3014 = load float, float addrspace(3)* %2789, align 4, !tbaa !6
  %3015 = fmul contract float %3014, 0x3FF3AECB00000000
  store float %3015, float addrspace(3)* %2789, align 4, !tbaa !6
  br i1 %2739, label %3016, label %3021

3016:                                             ; preds = %2999
  %3017 = load float, float addrspace(3)* %2731, align 4, !tbaa !6
  %3018 = fmul contract float %3017, 0x3FEA033860000000
  store float %3018, float addrspace(3)* %2731, align 4, !tbaa !6
  %3019 = load float, float addrspace(3)* %2735, align 4, !tbaa !6
  %3020 = fmul contract float %3019, 0x3FF3AECB00000000
  store float %3020, float addrspace(3)* %2735, align 4, !tbaa !6
  br label %3021

3021:                                             ; preds = %3016, %2999
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3022 = load float, float addrspace(3)* %2754, align 4, !tbaa !6
  %3023 = load float, float addrspace(3)* %2760, align 4, !tbaa !6
  %3024 = load float, float addrspace(3)* %2758, align 4, !tbaa !6
  %3025 = load float, float addrspace(3)* %2764, align 4, !tbaa !6
  %3026 = load float, float addrspace(3)* %2762, align 4, !tbaa !6
  %3027 = load float, float addrspace(3)* %2766, align 4, !tbaa !6
  %3028 = load float, float addrspace(3)* %2799, align 4, !tbaa !6
  %3029 = load float, float addrspace(3)* %2741, align 4, !tbaa !6
  %3030 = load float, float addrspace(3)* %2743, align 4, !tbaa !6
  %3031 = fadd contract float %3029, %3030
  %3032 = fmul contract float %3031, 0x3FF960CE60000000
  %3033 = load float, float addrspace(3)* %2745, align 4, !tbaa !6
  %3034 = fsub contract float %3033, %3032
  %3035 = load float, float addrspace(3)* %2747, align 4, !tbaa !6
  %3036 = fadd contract float %3030, %3035
  %3037 = fmul contract float %3036, 0x3FF960CE60000000
  %3038 = load float, float addrspace(3)* %2749, align 4, !tbaa !6
  %3039 = fsub contract float %3038, %3037
  %3040 = load float, float addrspace(3)* %2751, align 4, !tbaa !6
  %3041 = fadd contract float %3035, %3040
  %3042 = fmul contract float %3041, 0x3FF960CE60000000
  %3043 = load float, float addrspace(3)* %2753, align 4, !tbaa !6
  %3044 = fsub contract float %3043, %3042
  %3045 = fadd contract float %3022, %3040
  %3046 = fmul contract float %3045, 0x3FF960CE60000000
  %3047 = load float, float addrspace(3)* %2756, align 4, !tbaa !6
  %3048 = fsub contract float %3047, %3046
  %3049 = fadd contract float %3022, %3024
  %3050 = fmul contract float %3049, 0x3FF960CE60000000
  %3051 = fsub contract float %3023, %3050
  %3052 = fadd contract float %3024, %3026
  %3053 = fmul contract float %3052, 0x3FF960CE60000000
  %3054 = fsub contract float %3025, %3053
  %3055 = fadd contract float %3026, %3028
  %3056 = fmul contract float %3055, 0x3FF960CE60000000
  %3057 = fsub contract float %3027, %3056
  %3058 = fadd contract float %3034, %3039
  %3059 = fmul contract float %3058, 0x3FAB2035C0000000
  %3060 = fsub contract float %3030, %3059
  %3061 = fadd contract float %3039, %3044
  %3062 = fmul contract float %3061, 0x3FAB2035C0000000
  %3063 = fsub contract float %3035, %3062
  %3064 = fadd contract float %3044, %3048
  %3065 = fmul contract float %3064, 0x3FAB2035C0000000
  %3066 = fsub contract float %3040, %3065
  %3067 = fadd contract float %3051, %3048
  %3068 = fmul contract float %3067, 0x3FAB2035C0000000
  %3069 = fsub contract float %3022, %3068
  %3070 = fadd contract float %3051, %3054
  %3071 = fmul contract float %3070, 0x3FAB2035C0000000
  %3072 = fsub contract float %3024, %3071
  %3073 = fadd contract float %3054, %3057
  %3074 = fmul contract float %3073, 0x3FAB2035C0000000
  %3075 = fsub contract float %3026, %3074
  %3076 = fadd contract float %3060, %3063
  %3077 = fmul contract float %3076, 0x3FEC40CEC0000000
  %3078 = fadd contract float %3039, %3077
  %3079 = fadd contract float %3063, %3066
  %3080 = fmul contract float %3079, 0x3FEC40CEC0000000
  %3081 = fadd contract float %3044, %3080
  %3082 = fadd contract float %3066, %3069
  %3083 = fmul contract float %3082, 0x3FEC40CEC0000000
  %3084 = fadd contract float %3048, %3083
  store float %3084, float addrspace(3)* %2756, align 4, !tbaa !6
  %3085 = fadd contract float %3072, %3069
  %3086 = fmul contract float %3085, 0x3FEC40CEC0000000
  %3087 = fadd contract float %3051, %3086
  store float %3087, float addrspace(3)* %2760, align 4, !tbaa !6
  %3088 = fadd contract float %3072, %3075
  %3089 = fmul contract float %3088, 0x3FEC40CEC0000000
  %3090 = fadd contract float %3054, %3089
  store float %3090, float addrspace(3)* %2764, align 4, !tbaa !6
  %3091 = fadd contract float %3028, %3075
  %3092 = fmul contract float %3091, 0x3FEC40CEC0000000
  %3093 = fadd contract float %3057, %3092
  store float %3093, float addrspace(3)* %2766, align 4, !tbaa !6
  %3094 = fadd contract float %3078, %3081
  %3095 = fmul contract float %3094, 0x3FDC626AA0000000
  %3096 = fadd contract float %3063, %3095
  %3097 = fadd contract float %3081, %3084
  %3098 = fmul contract float %3097, 0x3FDC626AA0000000
  %3099 = fadd contract float %3066, %3098
  %3100 = fadd contract float %3084, %3087
  %3101 = fmul contract float %3100, 0x3FDC626AA0000000
  %3102 = fadd contract float %3069, %3101
  store float %3102, float addrspace(3)* %2754, align 4, !tbaa !6
  %3103 = fadd contract float %3090, %3087
  %3104 = fmul contract float %3103, 0x3FDC626AA0000000
  %3105 = fadd contract float %3072, %3104
  store float %3105, float addrspace(3)* %2758, align 4, !tbaa !6
  %3106 = fadd contract float %3090, %3093
  %3107 = fmul contract float %3106, 0x3FDC626AA0000000
  %3108 = fadd contract float %3075, %3107
  store float %3108, float addrspace(3)* %2762, align 4, !tbaa !6
  %3109 = fmul contract float %3096, 0x3FEA033860000000
  %3110 = sext i32 %2804 to i64
  %3111 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3110
  store float %3109, float addrspace(1)* %3111, align 4, !tbaa !6
  %3112 = add nsw i32 %2804, %2684
  %3113 = fmul contract float %3081, 0x3FF3AECB00000000
  %3114 = sext i32 %3112 to i64
  %3115 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3114
  store float %3113, float addrspace(1)* %3115, align 4, !tbaa !6
  %3116 = add nsw i32 %3112, %2685
  %3117 = fmul contract float %3099, 0x3FEA033860000000
  %3118 = sext i32 %3116 to i64
  %3119 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3118
  store float %3117, float addrspace(1)* %3119, align 4, !tbaa !6
  %3120 = add nsw i32 %3116, %2684
  %3121 = fmul contract float %3084, 0x3FF3AECB00000000
  %3122 = sext i32 %3120 to i64
  %3123 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3122
  store float %3121, float addrspace(1)* %3123, align 4, !tbaa !6
  %3124 = add nsw i32 %3120, %2685
  %3125 = fmul contract float %3102, 0x3FEA033860000000
  %3126 = sext i32 %3124 to i64
  %3127 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3126
  store float %3125, float addrspace(1)* %3127, align 4, !tbaa !6
  %3128 = add nsw i32 %3124, %2684
  %3129 = fmul contract float %3087, 0x3FF3AECB00000000
  %3130 = sext i32 %3128 to i64
  %3131 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3130
  store float %3129, float addrspace(1)* %3131, align 4, !tbaa !6
  %3132 = add nsw i32 %3128, %2685
  %3133 = fmul contract float %3105, 0x3FEA033860000000
  %3134 = sext i32 %3132 to i64
  %3135 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3134
  store float %3133, float addrspace(1)* %3135, align 4, !tbaa !6
  %3136 = add nsw i32 %3132, %2684
  %3137 = fmul contract float %3090, 0x3FF3AECB00000000
  %3138 = sext i32 %3136 to i64
  %3139 = getelementptr inbounds float, float addrspace(1)* %1, i64 %3138
  store float %3137, float addrspace(1)* %3139, align 4, !tbaa !6
  store float %3022, float addrspace(3)* %2741, align 4, !tbaa !6
  store float %3023, float addrspace(3)* %2745, align 4, !tbaa !6
  store float %3024, float addrspace(3)* %2743, align 4, !tbaa !6
  store float %3025, float addrspace(3)* %2749, align 4, !tbaa !6
  store float %3026, float addrspace(3)* %2747, align 4, !tbaa !6
  store float %3027, float addrspace(3)* %2753, align 4, !tbaa !6
  store float %3028, float addrspace(3)* %2751, align 4, !tbaa !6
  %3140 = add nsw i32 %3136, %2685
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %3141 = add nuw nsw i32 %2801, 1
  %3142 = icmp eq i32 %3141, %4
  br i1 %3142, label %3143, label %2800, !llvm.loop !14

3143:                                             ; preds = %1240, %2219, %3021, %646, %1724, %2683
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12fdwt97KernelILi128ELi6EEEvPKfPfiii(float addrspace(1)* readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #2 comdat {
  %6 = sub i32 0, %2
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %9 = mul i32 %8, 6
  %10 = add i32 %9, 6
  %11 = mul i32 %10, %4
  %12 = add i32 %11, 3
  %13 = icmp slt i32 %12, %3
  br i1 %13, label %1124, label %14

14:                                               ; preds = %5
  %15 = mul i32 %9, %4
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %17 = add nuw nsw i32 %16, 4
  %18 = lshr i32 %17, 1
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 888
  %22 = add nuw nsw i32 %21, %18
  %23 = shl i32 %7, 7
  %24 = add i32 %23, %16
  %25 = sub i32 0, %24
  %26 = icmp eq i32 %8, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %14
  %28 = icmp slt i32 %24, %2
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = shl nsw i32 %2, 1
  %31 = sub i32 -2, %24
  %32 = add i32 %31, %30
  br label %35

33:                                               ; preds = %27
  %34 = icmp slt i32 %24, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %25, %33 ]
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ %24, %33 ]
  %39 = mul nsw i32 %3, %2
  %40 = add nsw i32 %38, %39
  %41 = mul nsw i32 %15, %2
  %42 = icmp eq i32 %41, %39
  %43 = mul i32 %2, -2
  %44 = shl i32 %2, 1
  %45 = select i1 %42, i32 %44, i32 %43
  %46 = select i1 %42, i32 %6, i32 %2
  %47 = select i1 %42, i32 %43, i32 0
  %48 = add i32 %47, %41
  %49 = add i32 %48, %38
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float addrspace(1)* %0, i64 %50
  %52 = load float, float addrspace(1)* %51, align 4, !tbaa !6, !amdgpu.noclobber !10
  %53 = add nuw nsw i32 %22, 272
  %54 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %53
  store float %52, float addrspace(3)* %54, align 4, !tbaa !6
  %55 = add nsw i32 %49, %46
  %56 = icmp eq i32 %55, %40
  %57 = sub nsw i32 0, %46
  %58 = shl i32 %46, 1
  %59 = select i1 %56, i32 %58, i32 %45
  %60 = select i1 %56, i32 %57, i32 %46
  %61 = select i1 %56, i32 %45, i32 0
  %62 = add i32 %61, %55
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float addrspace(1)* %0, i64 %63
  %65 = load float, float addrspace(1)* %64, align 4, !tbaa !6, !amdgpu.noclobber !10
  %66 = add nuw nsw i32 %22, 340
  %67 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %66
  store float %65, float addrspace(3)* %67, align 4, !tbaa !6
  %68 = add nuw nsw i32 %22, 204
  %69 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %68
  store float %65, float addrspace(3)* %69, align 4, !tbaa !6
  %70 = add nsw i32 %62, %60
  %71 = icmp eq i32 %70, %40
  %72 = sub nsw i32 0, %60
  %73 = shl i32 %60, 1
  %74 = select i1 %71, i32 %73, i32 %59
  %75 = select i1 %71, i32 %72, i32 %60
  %76 = select i1 %71, i32 %59, i32 0
  %77 = add i32 %76, %70
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float addrspace(1)* %0, i64 %78
  %80 = load float, float addrspace(1)* %79, align 4, !tbaa !6, !amdgpu.noclobber !10
  %81 = add nuw nsw i32 %22, 408
  %82 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %81
  store float %80, float addrspace(3)* %82, align 4, !tbaa !6
  %83 = add nuw nsw i32 %22, 136
  %84 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %83
  store float %80, float addrspace(3)* %84, align 4, !tbaa !6
  %85 = add nsw i32 %77, %75
  %86 = icmp eq i32 %85, %40
  %87 = sub nsw i32 0, %75
  %88 = shl i32 %75, 1
  %89 = select i1 %86, i32 %88, i32 %74
  %90 = select i1 %86, i32 %87, i32 %75
  %91 = select i1 %86, i32 %74, i32 0
  %92 = add i32 %91, %85
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float addrspace(1)* %0, i64 %93
  %95 = load float, float addrspace(1)* %94, align 4, !tbaa !6, !amdgpu.noclobber !10
  %96 = add nuw nsw i32 %22, 68
  %97 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %96
  store float %95, float addrspace(3)* %97, align 4, !tbaa !6
  %98 = add nsw i32 %92, %90
  %99 = icmp eq i32 %98, %40
  %100 = select i1 %99, i32 %89, i32 0
  %101 = add i32 %100, %98
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float addrspace(1)* %0, i64 %102
  %104 = load float, float addrspace(1)* %103, align 4, !tbaa !6, !amdgpu.noclobber !10
  %105 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %22
  store float %104, float addrspace(3)* %105, align 4, !tbaa !6
  %106 = add nsw i32 %15, 3
  br i1 %28, label %110, label %107

107:                                              ; preds = %37
  %108 = sub i32 -2, %24
  %109 = add i32 %108, %44
  br label %112

110:                                              ; preds = %37
  %111 = icmp slt i32 %24, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %110, %107
  %113 = phi i32 [ %109, %107 ], [ %25, %110 ]
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %113, %112 ], [ %24, %110 ]
  %116 = add nsw i32 %115, %39
  %117 = mul nsw i32 %106, %2
  %118 = sub i32 %117, %2
  %119 = add i32 %118, %115
  br label %218

120:                                              ; preds = %14
  %121 = add nsw i32 %15, -4
  %122 = icmp slt i32 %24, %2
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = shl nsw i32 %2, 1
  %125 = sub i32 -2, %24
  %126 = add i32 %125, %124
  br label %129

127:                                              ; preds = %120
  %128 = icmp slt i32 %24, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %127, %123
  %130 = phi i32 [ %126, %123 ], [ %25, %127 ]
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %130, %129 ], [ %24, %127 ]
  %133 = mul nsw i32 %3, %2
  %134 = add nsw i32 %132, %133
  %135 = mul nsw i32 %121, %2
  %136 = add i32 %132, %135
  %137 = icmp eq i32 %135, %133
  %138 = mul i32 %2, -2
  %139 = add i32 %134, %138
  %140 = select i1 %137, i32 %6, i32 %2
  %141 = select i1 %137, i32 %139, i32 %136
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float addrspace(1)* %0, i64 %142
  %144 = load float, float addrspace(1)* %143, align 4, !tbaa !6, !amdgpu.noclobber !10
  %145 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %22
  store float %144, float addrspace(3)* %145, align 4, !tbaa !6
  %146 = add nsw i32 %141, %140
  %147 = icmp eq i32 %146, %134
  %148 = mul i32 %140, -2
  %149 = add i32 %134, %148
  %150 = sub nsw i32 0, %140
  %151 = select i1 %147, i32 %150, i32 %140
  %152 = select i1 %147, i32 %149, i32 %146
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float addrspace(1)* %0, i64 %153
  %155 = load float, float addrspace(1)* %154, align 4, !tbaa !6, !amdgpu.noclobber !10
  %156 = add nuw nsw i32 %22, 68
  %157 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %156
  store float %155, float addrspace(3)* %157, align 4, !tbaa !6
  %158 = add nsw i32 %152, %151
  %159 = icmp eq i32 %158, %134
  %160 = mul i32 %151, -2
  %161 = add i32 %160, %134
  %162 = sub nsw i32 0, %151
  %163 = select i1 %159, i32 %162, i32 %151
  %164 = select i1 %159, i32 %161, i32 %158
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float addrspace(1)* %0, i64 %165
  %167 = load float, float addrspace(1)* %166, align 4, !tbaa !6, !amdgpu.noclobber !10
  %168 = add nuw nsw i32 %22, 136
  %169 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %168
  store float %167, float addrspace(3)* %169, align 4, !tbaa !6
  %170 = add nsw i32 %164, %163
  %171 = icmp eq i32 %170, %134
  %172 = mul i32 %163, -2
  %173 = add i32 %172, %134
  %174 = sub nsw i32 0, %163
  %175 = select i1 %171, i32 %174, i32 %163
  %176 = select i1 %171, i32 %173, i32 %170
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float addrspace(1)* %0, i64 %177
  %179 = load float, float addrspace(1)* %178, align 4, !tbaa !6, !amdgpu.noclobber !10
  %180 = add nuw nsw i32 %22, 204
  %181 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %180
  store float %179, float addrspace(3)* %181, align 4, !tbaa !6
  %182 = add nsw i32 %176, %175
  %183 = icmp eq i32 %182, %134
  %184 = mul i32 %175, -2
  %185 = add i32 %184, %134
  %186 = sub nsw i32 0, %175
  %187 = select i1 %183, i32 %186, i32 %175
  %188 = select i1 %183, i32 %185, i32 %182
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float addrspace(1)* %0, i64 %189
  %191 = load float, float addrspace(1)* %190, align 4, !tbaa !6, !amdgpu.noclobber !10
  %192 = add nuw nsw i32 %22, 272
  %193 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %192
  store float %191, float addrspace(3)* %193, align 4, !tbaa !6
  %194 = add nsw i32 %188, %187
  %195 = icmp eq i32 %194, %134
  %196 = mul i32 %187, -2
  %197 = add i32 %196, %134
  %198 = sub nsw i32 0, %187
  %199 = select i1 %195, i32 %198, i32 %187
  %200 = select i1 %195, i32 %197, i32 %194
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float addrspace(1)* %0, i64 %201
  %203 = load float, float addrspace(1)* %202, align 4, !tbaa !6, !amdgpu.noclobber !10
  %204 = add nuw nsw i32 %22, 340
  %205 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %204
  store float %203, float addrspace(3)* %205, align 4, !tbaa !6
  %206 = add nsw i32 %200, %199
  %207 = icmp eq i32 %206, %134
  %208 = mul i32 %199, -2
  %209 = add i32 %208, %134
  %210 = sub nsw i32 0, %199
  %211 = select i1 %207, i32 %210, i32 %199
  %212 = select i1 %207, i32 %209, i32 %206
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float addrspace(1)* %0, i64 %213
  %215 = load float, float addrspace(1)* %214, align 4, !tbaa !6, !amdgpu.noclobber !10
  %216 = add nuw nsw i32 %22, 408
  %217 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %216
  store float %215, float addrspace(3)* %217, align 4, !tbaa !6
  br label %218

218:                                              ; preds = %131, %114
  %219 = phi i32 [ %116, %114 ], [ %134, %131 ]
  %220 = phi i32 [ %2, %114 ], [ %211, %131 ]
  %221 = phi i32 [ %119, %114 ], [ %212, %131 ]
  %222 = icmp ult i32 %16, 7
  br i1 %222, label %223, label %428

223:                                              ; preds = %218
  %224 = icmp ult i32 %16, 3
  %225 = select i1 %224, i32 128, i32 -7
  %226 = add nsw i32 %225, %16
  %227 = trunc i32 %226 to i16
  %228 = add nsw i16 %227, 4
  %229 = sdiv i16 %228, 2
  %230 = sext i16 %229 to i32
  %231 = and i32 %226, 1
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i32 0, i32 888
  %234 = add nsw i32 %233, %230
  %235 = add i32 %226, %23
  %236 = sub i32 0, %235
  br i1 %26, label %237, label %330

237:                                              ; preds = %223
  %238 = icmp slt i32 %235, %2
  br i1 %238, label %243, label %239

239:                                              ; preds = %237
  %240 = shl nsw i32 %2, 1
  %241 = sub i32 -2, %235
  %242 = add i32 %241, %240
  br label %245

243:                                              ; preds = %237
  %244 = icmp slt i32 %235, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %243, %239
  %246 = phi i32 [ %242, %239 ], [ %236, %243 ]
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %246, %245 ], [ %235, %243 ]
  %249 = mul nsw i32 %3, %2
  %250 = add nsw i32 %248, %249
  %251 = mul nsw i32 %15, %2
  %252 = icmp eq i32 %251, %249
  %253 = mul i32 %2, -2
  %254 = shl i32 %2, 1
  %255 = select i1 %252, i32 %254, i32 %253
  %256 = select i1 %252, i32 %6, i32 %2
  %257 = select i1 %252, i32 %253, i32 0
  %258 = add i32 %257, %251
  %259 = add i32 %258, %248
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float addrspace(1)* %0, i64 %260
  %262 = load float, float addrspace(1)* %261, align 4, !tbaa !6, !amdgpu.noclobber !10
  %263 = add nsw i32 %234, 272
  %264 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %263
  store float %262, float addrspace(3)* %264, align 4, !tbaa !6
  %265 = add nsw i32 %259, %256
  %266 = icmp eq i32 %265, %250
  %267 = sub nsw i32 0, %256
  %268 = shl i32 %256, 1
  %269 = select i1 %266, i32 %268, i32 %255
  %270 = select i1 %266, i32 %267, i32 %256
  %271 = select i1 %266, i32 %255, i32 0
  %272 = add i32 %271, %265
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float addrspace(1)* %0, i64 %273
  %275 = load float, float addrspace(1)* %274, align 4, !tbaa !6, !amdgpu.noclobber !10
  %276 = add nsw i32 %234, 340
  %277 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %276
  store float %275, float addrspace(3)* %277, align 4, !tbaa !6
  %278 = add nsw i32 %234, 204
  %279 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %278
  store float %275, float addrspace(3)* %279, align 4, !tbaa !6
  %280 = add nsw i32 %272, %270
  %281 = icmp eq i32 %280, %250
  %282 = sub nsw i32 0, %270
  %283 = shl i32 %270, 1
  %284 = select i1 %281, i32 %283, i32 %269
  %285 = select i1 %281, i32 %282, i32 %270
  %286 = select i1 %281, i32 %269, i32 0
  %287 = add i32 %286, %280
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float addrspace(1)* %0, i64 %288
  %290 = load float, float addrspace(1)* %289, align 4, !tbaa !6, !amdgpu.noclobber !10
  %291 = add nsw i32 %234, 408
  %292 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %291
  store float %290, float addrspace(3)* %292, align 4, !tbaa !6
  %293 = add nsw i32 %234, 136
  %294 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %293
  store float %290, float addrspace(3)* %294, align 4, !tbaa !6
  %295 = add nsw i32 %287, %285
  %296 = icmp eq i32 %295, %250
  %297 = sub nsw i32 0, %285
  %298 = shl i32 %285, 1
  %299 = select i1 %296, i32 %298, i32 %284
  %300 = select i1 %296, i32 %297, i32 %285
  %301 = select i1 %296, i32 %284, i32 0
  %302 = add i32 %301, %295
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float addrspace(1)* %0, i64 %303
  %305 = load float, float addrspace(1)* %304, align 4, !tbaa !6, !amdgpu.noclobber !10
  %306 = add nsw i32 %234, 68
  %307 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %306
  store float %305, float addrspace(3)* %307, align 4, !tbaa !6
  %308 = add nsw i32 %302, %300
  %309 = icmp eq i32 %308, %250
  %310 = select i1 %309, i32 %299, i32 0
  %311 = add i32 %310, %308
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float addrspace(1)* %0, i64 %312
  %314 = load float, float addrspace(1)* %313, align 4, !tbaa !6, !amdgpu.noclobber !10
  %315 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %234
  store float %314, float addrspace(3)* %315, align 4, !tbaa !6
  %316 = add nsw i32 %15, 3
  br i1 %238, label %320, label %317

317:                                              ; preds = %247
  %318 = sub i32 -2, %235
  %319 = add i32 %318, %254
  br label %322

320:                                              ; preds = %247
  %321 = icmp slt i32 %235, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %320, %317
  %323 = phi i32 [ %319, %317 ], [ %236, %320 ]
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i32 [ %323, %322 ], [ %235, %320 ]
  %326 = add nsw i32 %325, %249
  %327 = mul nsw i32 %316, %2
  %328 = sub i32 %327, %2
  %329 = add i32 %328, %325
  br label %428

330:                                              ; preds = %223
  %331 = add nsw i32 %15, -4
  %332 = icmp slt i32 %235, %2
  br i1 %332, label %337, label %333

333:                                              ; preds = %330
  %334 = shl nsw i32 %2, 1
  %335 = sub i32 -2, %235
  %336 = add i32 %335, %334
  br label %339

337:                                              ; preds = %330
  %338 = icmp slt i32 %235, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %337, %333
  %340 = phi i32 [ %336, %333 ], [ %236, %337 ]
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32 [ %340, %339 ], [ %235, %337 ]
  %343 = mul nsw i32 %3, %2
  %344 = add nsw i32 %342, %343
  %345 = mul nsw i32 %331, %2
  %346 = add i32 %342, %345
  %347 = icmp eq i32 %345, %343
  %348 = mul i32 %2, -2
  %349 = add i32 %344, %348
  %350 = select i1 %347, i32 %6, i32 %2
  %351 = select i1 %347, i32 %349, i32 %346
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %352
  %354 = load float, float addrspace(1)* %353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %355 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %234
  store float %354, float addrspace(3)* %355, align 4, !tbaa !6
  %356 = add nsw i32 %351, %350
  %357 = icmp eq i32 %356, %344
  %358 = mul i32 %350, -2
  %359 = add i32 %344, %358
  %360 = sub nsw i32 0, %350
  %361 = select i1 %357, i32 %360, i32 %350
  %362 = select i1 %357, i32 %359, i32 %356
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float addrspace(1)* %0, i64 %363
  %365 = load float, float addrspace(1)* %364, align 4, !tbaa !6, !amdgpu.noclobber !10
  %366 = add nsw i32 %234, 68
  %367 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %366
  store float %365, float addrspace(3)* %367, align 4, !tbaa !6
  %368 = add nsw i32 %362, %361
  %369 = icmp eq i32 %368, %344
  %370 = mul i32 %361, -2
  %371 = add i32 %370, %344
  %372 = sub nsw i32 0, %361
  %373 = select i1 %369, i32 %372, i32 %361
  %374 = select i1 %369, i32 %371, i32 %368
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float addrspace(1)* %0, i64 %375
  %377 = load float, float addrspace(1)* %376, align 4, !tbaa !6, !amdgpu.noclobber !10
  %378 = add nsw i32 %234, 136
  %379 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %378
  store float %377, float addrspace(3)* %379, align 4, !tbaa !6
  %380 = add nsw i32 %374, %373
  %381 = icmp eq i32 %380, %344
  %382 = mul i32 %373, -2
  %383 = add i32 %382, %344
  %384 = sub nsw i32 0, %373
  %385 = select i1 %381, i32 %384, i32 %373
  %386 = select i1 %381, i32 %383, i32 %380
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float addrspace(1)* %0, i64 %387
  %389 = load float, float addrspace(1)* %388, align 4, !tbaa !6, !amdgpu.noclobber !10
  %390 = add nsw i32 %234, 204
  %391 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %390
  store float %389, float addrspace(3)* %391, align 4, !tbaa !6
  %392 = add nsw i32 %386, %385
  %393 = icmp eq i32 %392, %344
  %394 = mul i32 %385, -2
  %395 = add i32 %394, %344
  %396 = sub nsw i32 0, %385
  %397 = select i1 %393, i32 %396, i32 %385
  %398 = select i1 %393, i32 %395, i32 %392
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float addrspace(1)* %0, i64 %399
  %401 = load float, float addrspace(1)* %400, align 4, !tbaa !6, !amdgpu.noclobber !10
  %402 = add nsw i32 %234, 272
  %403 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %402
  store float %401, float addrspace(3)* %403, align 4, !tbaa !6
  %404 = add nsw i32 %398, %397
  %405 = icmp eq i32 %404, %344
  %406 = mul i32 %397, -2
  %407 = add i32 %406, %344
  %408 = sub nsw i32 0, %397
  %409 = select i1 %405, i32 %408, i32 %397
  %410 = select i1 %405, i32 %407, i32 %404
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float addrspace(1)* %0, i64 %411
  %413 = load float, float addrspace(1)* %412, align 4, !tbaa !6, !amdgpu.noclobber !10
  %414 = add nsw i32 %234, 340
  %415 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %414
  store float %413, float addrspace(3)* %415, align 4, !tbaa !6
  %416 = add nsw i32 %410, %409
  %417 = icmp eq i32 %416, %344
  %418 = mul i32 %409, -2
  %419 = add i32 %418, %344
  %420 = sub nsw i32 0, %409
  %421 = select i1 %417, i32 %420, i32 %409
  %422 = select i1 %417, i32 %419, i32 %416
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds float, float addrspace(1)* %0, i64 %423
  %425 = load float, float addrspace(1)* %424, align 4, !tbaa !6, !amdgpu.noclobber !10
  %426 = add nsw i32 %234, 408
  %427 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %426
  store float %425, float addrspace(3)* %427, align 4, !tbaa !6
  br label %428

428:                                              ; preds = %341, %324, %218
  %429 = phi i32 [ 0, %218 ], [ %326, %324 ], [ %344, %341 ]
  %430 = phi i32 [ 0, %218 ], [ %2, %324 ], [ %421, %341 ]
  %431 = phi i32 [ 0, %218 ], [ %329, %324 ], [ %422, %341 ]
  %432 = phi i32 [ 0, %218 ], [ %234, %324 ], [ %234, %341 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %433 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %16
  %434 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %435 = add nuw nsw i32 %16, 1
  %436 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %435
  %437 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %438 = add nuw nsw i32 %16, 888
  %439 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %438
  %440 = fadd contract float %434, %437
  %441 = fmul contract float %440, 0x3FF960CE60000000
  %442 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %443 = fsub contract float %442, %441
  store float %443, float addrspace(3)* %439, align 4, !tbaa !6
  %444 = add nuw nsw i32 %16, 128
  %445 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %444
  %446 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %447 = add nuw nsw i32 %16, 129
  %448 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %447
  %449 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %450 = add nuw nsw i32 %16, 1016
  %451 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %450
  %452 = fadd contract float %446, %449
  %453 = fmul contract float %452, 0x3FF960CE60000000
  %454 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %455 = fsub contract float %454, %453
  store float %455, float addrspace(3)* %451, align 4, !tbaa !6
  %456 = add nuw nsw i32 %16, 256
  %457 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %456
  %458 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %459 = add nuw nsw i32 %16, 257
  %460 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %459
  %461 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %462 = add nuw nsw i32 %16, 1144
  %463 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %462
  %464 = fadd contract float %458, %461
  %465 = fmul contract float %464, 0x3FF960CE60000000
  %466 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %467 = fsub contract float %466, %465
  store float %467, float addrspace(3)* %463, align 4, !tbaa !6
  %468 = icmp ult i32 %16, 91
  br i1 %468, label %469, label %482

469:                                              ; preds = %428
  %470 = add nuw nsw i32 %16, 384
  %471 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %470
  %472 = load float, float addrspace(3)* %471, align 4, !tbaa !6
  %473 = add nuw nsw i32 %16, 385
  %474 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %473
  %475 = load float, float addrspace(3)* %474, align 4, !tbaa !6
  %476 = add nuw nsw i32 %16, 1272
  %477 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %476
  %478 = fadd contract float %472, %475
  %479 = fmul contract float %478, 0x3FF960CE60000000
  %480 = load float, float addrspace(3)* %477, align 4, !tbaa !6
  %481 = fsub contract float %480, %479
  store float %481, float addrspace(3)* %477, align 4, !tbaa !6
  br label %482

482:                                              ; preds = %469, %428
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %483 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %484 = add nuw nsw i32 %16, 889
  %485 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %484
  %486 = load float, float addrspace(3)* %485, align 4, !tbaa !6
  %487 = fadd contract float %483, %486
  %488 = fmul contract float %487, 0x3FAB2035C0000000
  %489 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %490 = fsub contract float %489, %488
  store float %490, float addrspace(3)* %436, align 4, !tbaa !6
  %491 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %492 = add nuw nsw i32 %16, 1017
  %493 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %492
  %494 = load float, float addrspace(3)* %493, align 4, !tbaa !6
  %495 = fadd contract float %491, %494
  %496 = fmul contract float %495, 0x3FAB2035C0000000
  %497 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %498 = fsub contract float %497, %496
  store float %498, float addrspace(3)* %448, align 4, !tbaa !6
  %499 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %500 = add nuw nsw i32 %16, 1145
  %501 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %500
  %502 = load float, float addrspace(3)* %501, align 4, !tbaa !6
  %503 = fadd contract float %499, %502
  %504 = fmul contract float %503, 0x3FAB2035C0000000
  %505 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %506 = fsub contract float %505, %504
  store float %506, float addrspace(3)* %460, align 4, !tbaa !6
  br i1 %468, label %507, label %520

507:                                              ; preds = %482
  %508 = add nuw nsw i32 %16, 1272
  %509 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %508
  %510 = load float, float addrspace(3)* %509, align 4, !tbaa !6
  %511 = add nuw nsw i32 %16, 1273
  %512 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %511
  %513 = load float, float addrspace(3)* %512, align 4, !tbaa !6
  %514 = add nuw nsw i32 %16, 385
  %515 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %514
  %516 = fadd contract float %510, %513
  %517 = fmul contract float %516, 0x3FAB2035C0000000
  %518 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %519 = fsub contract float %518, %517
  store float %519, float addrspace(3)* %515, align 4, !tbaa !6
  br label %520

520:                                              ; preds = %507, %482
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %521 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %522 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %523 = fadd contract float %521, %522
  %524 = fmul contract float %523, 0x3FEC40CEC0000000
  %525 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %526 = fadd contract float %525, %524
  store float %526, float addrspace(3)* %439, align 4, !tbaa !6
  %527 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %528 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %529 = fadd contract float %527, %528
  %530 = fmul contract float %529, 0x3FEC40CEC0000000
  %531 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %532 = fadd contract float %531, %530
  store float %532, float addrspace(3)* %451, align 4, !tbaa !6
  %533 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %534 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %535 = fadd contract float %533, %534
  %536 = fmul contract float %535, 0x3FEC40CEC0000000
  %537 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %538 = fadd contract float %537, %536
  store float %538, float addrspace(3)* %463, align 4, !tbaa !6
  br i1 %468, label %539, label %552

539:                                              ; preds = %520
  %540 = add nuw nsw i32 %16, 384
  %541 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %540
  %542 = load float, float addrspace(3)* %541, align 4, !tbaa !6
  %543 = add nuw nsw i32 %16, 385
  %544 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %543
  %545 = load float, float addrspace(3)* %544, align 4, !tbaa !6
  %546 = add nuw nsw i32 %16, 1272
  %547 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %546
  %548 = fadd contract float %542, %545
  %549 = fmul contract float %548, 0x3FEC40CEC0000000
  %550 = load float, float addrspace(3)* %547, align 4, !tbaa !6
  %551 = fadd contract float %550, %549
  store float %551, float addrspace(3)* %547, align 4, !tbaa !6
  br label %552

552:                                              ; preds = %539, %520
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %553 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %554 = load float, float addrspace(3)* %485, align 4, !tbaa !6
  %555 = fadd contract float %553, %554
  %556 = fmul contract float %555, 0x3FDC626AA0000000
  %557 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %558 = fadd contract float %557, %556
  store float %558, float addrspace(3)* %436, align 4, !tbaa !6
  %559 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %560 = load float, float addrspace(3)* %493, align 4, !tbaa !6
  %561 = fadd contract float %559, %560
  %562 = fmul contract float %561, 0x3FDC626AA0000000
  %563 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %564 = fadd contract float %563, %562
  store float %564, float addrspace(3)* %448, align 4, !tbaa !6
  %565 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %566 = load float, float addrspace(3)* %501, align 4, !tbaa !6
  %567 = fadd contract float %565, %566
  %568 = fmul contract float %567, 0x3FDC626AA0000000
  %569 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %570 = fadd contract float %569, %568
  store float %570, float addrspace(3)* %460, align 4, !tbaa !6
  br i1 %468, label %571, label %584

571:                                              ; preds = %552
  %572 = add nuw nsw i32 %16, 1272
  %573 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %572
  %574 = load float, float addrspace(3)* %573, align 4, !tbaa !6
  %575 = add nuw nsw i32 %16, 1273
  %576 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %575
  %577 = load float, float addrspace(3)* %576, align 4, !tbaa !6
  %578 = add nuw nsw i32 %16, 385
  %579 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %578
  %580 = fadd contract float %574, %577
  %581 = fmul contract float %580, 0x3FDC626AA0000000
  %582 = load float, float addrspace(3)* %579, align 4, !tbaa !6
  %583 = fadd contract float %582, %581
  store float %583, float addrspace(3)* %579, align 4, !tbaa !6
  br label %584

584:                                              ; preds = %571, %552
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %585 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %586 = fmul contract float %585, 0x3FEA033860000000
  store float %586, float addrspace(3)* %433, align 4, !tbaa !6
  %587 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %588 = fmul contract float %587, 0x3FF3AECB00000000
  store float %588, float addrspace(3)* %439, align 4, !tbaa !6
  %589 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %590 = fmul contract float %589, 0x3FEA033860000000
  store float %590, float addrspace(3)* %445, align 4, !tbaa !6
  %591 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %592 = fmul contract float %591, 0x3FF3AECB00000000
  store float %592, float addrspace(3)* %451, align 4, !tbaa !6
  %593 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %594 = fmul contract float %593, 0x3FEA033860000000
  store float %594, float addrspace(3)* %457, align 4, !tbaa !6
  %595 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %596 = fmul contract float %595, 0x3FF3AECB00000000
  store float %596, float addrspace(3)* %463, align 4, !tbaa !6
  %597 = icmp ult i32 %16, 92
  br i1 %597, label %598, label %607

598:                                              ; preds = %584
  %599 = add nuw nsw i32 %16, 384
  %600 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %599
  %601 = load float, float addrspace(3)* %600, align 4, !tbaa !6
  %602 = fmul contract float %601, 0x3FEA033860000000
  store float %602, float addrspace(3)* %600, align 4, !tbaa !6
  %603 = add nuw nsw i32 %16, 1272
  %604 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %603
  %605 = load float, float addrspace(3)* %604, align 4, !tbaa !6
  %606 = fmul contract float %605, 0x3FF3AECB00000000
  store float %606, float addrspace(3)* %604, align 4, !tbaa !6
  br label %607

607:                                              ; preds = %598, %584
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %608 = shl nuw nsw i32 %16, 1
  %609 = lshr i32 %16, 6
  %610 = mul nsw i32 %609, -127
  %611 = add nsw i32 %610, %608
  %612 = add i32 %611, %23
  %613 = icmp slt i32 %612, %2
  br i1 %613, label %614, label %644

614:                                              ; preds = %607
  %615 = sdiv i32 %612, 2
  %616 = and i32 %612, 1
  %617 = icmp eq i32 %616, 0
  %618 = sdiv i32 %2, 2
  %619 = and i32 %2, 1
  %620 = add nsw i32 %618, %619
  %621 = sdiv i32 %3, 2
  %622 = and i32 %3, 1
  %623 = add nsw i32 %621, %622
  br i1 %617, label %629, label %624

624:                                              ; preds = %614
  %625 = mul nsw i32 %623, %620
  %626 = add nsw i32 %625, %615
  %627 = mul nsw i32 %3, %2
  %628 = sdiv i32 %627, 2
  br label %631

629:                                              ; preds = %614
  %630 = mul nsw i32 %623, %2
  br label %631

631:                                              ; preds = %629, %624
  %632 = phi i32 [ %630, %629 ], [ %628, %624 ]
  %633 = phi i32 [ %615, %629 ], [ %626, %624 ]
  %634 = phi i32 [ %620, %629 ], [ %618, %624 ]
  %635 = sub nsw i32 %634, %632
  %636 = mul nsw i32 %634, %621
  %637 = icmp eq i32 %622, 0
  %638 = select i1 %637, i32 0, i32 %632
  %639 = add i32 %638, %633
  %640 = add i32 %639, %636
  %641 = sdiv i32 %15, 2
  %642 = mul nsw i32 %634, %641
  %643 = add i32 %642, %633
  br label %644

644:                                              ; preds = %631, %607
  %645 = phi i32 [ %632, %631 ], [ 0, %607 ]
  %646 = phi i32 [ %635, %631 ], [ 0, %607 ]
  %647 = phi i32 [ %640, %631 ], [ 0, %607 ]
  %648 = phi i32 [ %643, %631 ], [ 0, %607 ]
  %649 = trunc i32 %611 to i16
  %650 = add nsw i16 %649, 4
  %651 = sdiv i16 %650, 2
  %652 = sext i16 %651 to i32
  %653 = and i32 %611, 1
  %654 = icmp eq i32 %653, 0
  %655 = select i1 %654, i32 0, i32 888
  %656 = add nsw i32 %655, %652
  %657 = icmp sgt i32 %4, 0
  br i1 %657, label %658, label %2839

658:                                              ; preds = %644
  %659 = add nuw nsw i32 %22, 476
  %660 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %659
  %661 = add nuw nsw i32 %22, 544
  %662 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %661
  %663 = add nuw nsw i32 %22, 612
  %664 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %663
  %665 = add nuw nsw i32 %22, 680
  %666 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %665
  %667 = add nuw nsw i32 %22, 748
  %668 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %667
  %669 = add nuw nsw i32 %22, 816
  %670 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %669
  %671 = add nsw i32 %432, 476
  %672 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %671
  %673 = add nsw i32 %432, 544
  %674 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %673
  %675 = add nsw i32 %432, 612
  %676 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %675
  %677 = add nsw i32 %432, 680
  %678 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %677
  %679 = add nsw i32 %432, 748
  %680 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %679
  %681 = add nsw i32 %432, 816
  %682 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %681
  %683 = add nuw nsw i32 %16, 476
  %684 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %683
  %685 = add nuw nsw i32 %16, 477
  %686 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %685
  %687 = add nuw nsw i32 %16, 1364
  %688 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %687
  %689 = add nuw nsw i32 %16, 604
  %690 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %689
  %691 = add nuw nsw i32 %16, 605
  %692 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %691
  %693 = add nuw nsw i32 %16, 1492
  %694 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %693
  %695 = add nuw nsw i32 %16, 732
  %696 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %695
  %697 = add nuw nsw i32 %16, 733
  %698 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %697
  %699 = add nuw nsw i32 %16, 1620
  %700 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %699
  %701 = icmp ult i32 %16, 23
  %702 = add nuw nsw i32 %16, 860
  %703 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %702
  %704 = add nuw nsw i32 %16, 861
  %705 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %704
  %706 = add nuw nsw i32 %16, 1748
  %707 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %706
  %708 = add nuw nsw i32 %16, 1365
  %709 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %708
  %710 = add nuw nsw i32 %16, 1493
  %711 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %710
  %712 = add nuw nsw i32 %16, 1621
  %713 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %712
  %714 = add nuw nsw i32 %16, 1749
  %715 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %714
  %716 = icmp ult i32 %16, 24
  %717 = add nsw i32 %656, 408
  %718 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %656
  %719 = add nsw i32 %656, 136
  %720 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %719
  %721 = add nsw i32 %656, 68
  %722 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %721
  %723 = add nsw i32 %656, 272
  %724 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %723
  %725 = add nsw i32 %656, 204
  %726 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %725
  %727 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %717
  %728 = add nsw i32 %656, 340
  %729 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %728
  %730 = add nsw i32 %656, 544
  %731 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %730
  %732 = add nsw i32 %656, 476
  %733 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %732
  %734 = add nsw i32 %656, 680
  %735 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %734
  %736 = add nsw i32 %656, 612
  %737 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %736
  %738 = add nsw i32 %656, 748
  %739 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %738
  %740 = add nsw i32 %656, 816
  %741 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %740
  br label %742

742:                                              ; preds = %1120, %658
  %743 = phi i32 [ 0, %658 ], [ %1122, %1120 ]
  %744 = phi i32 [ %221, %658 ], [ %805, %1120 ]
  %745 = phi i32 [ %220, %658 ], [ %804, %1120 ]
  %746 = phi i32 [ %431, %658 ], [ %872, %1120 ]
  %747 = phi i32 [ %430, %658 ], [ %871, %1120 ]
  %748 = phi i32 [ %648, %658 ], [ %1121, %1120 ]
  %749 = add nsw i32 %745, %744
  %750 = icmp eq i32 %749, %219
  %751 = mul i32 %745, -2
  %752 = add i32 %751, %219
  %753 = sub nsw i32 0, %745
  %754 = select i1 %750, i32 %753, i32 %745
  %755 = select i1 %750, i32 %752, i32 %749
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds float, float addrspace(1)* %0, i64 %756
  %758 = load float, float addrspace(1)* %757, align 4, !tbaa !6
  store float %758, float addrspace(3)* %660, align 4, !tbaa !6
  %759 = add nsw i32 %755, %754
  %760 = icmp eq i32 %759, %219
  %761 = mul i32 %754, -2
  %762 = add i32 %761, %219
  %763 = sub nsw i32 0, %754
  %764 = select i1 %760, i32 %763, i32 %754
  %765 = select i1 %760, i32 %762, i32 %759
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds float, float addrspace(1)* %0, i64 %766
  %768 = load float, float addrspace(1)* %767, align 4, !tbaa !6
  store float %768, float addrspace(3)* %662, align 4, !tbaa !6
  %769 = add nsw i32 %765, %764
  %770 = icmp eq i32 %769, %219
  %771 = mul i32 %764, -2
  %772 = add i32 %771, %219
  %773 = sub nsw i32 0, %764
  %774 = select i1 %770, i32 %773, i32 %764
  %775 = select i1 %770, i32 %772, i32 %769
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds float, float addrspace(1)* %0, i64 %776
  %778 = load float, float addrspace(1)* %777, align 4, !tbaa !6
  store float %778, float addrspace(3)* %664, align 4, !tbaa !6
  %779 = add nsw i32 %775, %774
  %780 = icmp eq i32 %779, %219
  %781 = mul i32 %774, -2
  %782 = add i32 %781, %219
  %783 = sub nsw i32 0, %774
  %784 = select i1 %780, i32 %783, i32 %774
  %785 = select i1 %780, i32 %782, i32 %779
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds float, float addrspace(1)* %0, i64 %786
  %788 = load float, float addrspace(1)* %787, align 4, !tbaa !6
  store float %788, float addrspace(3)* %666, align 4, !tbaa !6
  %789 = add nsw i32 %785, %784
  %790 = icmp eq i32 %789, %219
  %791 = mul i32 %784, -2
  %792 = add i32 %791, %219
  %793 = sub nsw i32 0, %784
  %794 = select i1 %790, i32 %793, i32 %784
  %795 = select i1 %790, i32 %792, i32 %789
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds float, float addrspace(1)* %0, i64 %796
  %798 = load float, float addrspace(1)* %797, align 4, !tbaa !6
  store float %798, float addrspace(3)* %668, align 4, !tbaa !6
  %799 = add nsw i32 %795, %794
  %800 = icmp eq i32 %799, %219
  %801 = mul i32 %794, -2
  %802 = add i32 %801, %219
  %803 = sub nsw i32 0, %794
  %804 = select i1 %800, i32 %803, i32 %794
  %805 = select i1 %800, i32 %802, i32 %799
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds float, float addrspace(1)* %0, i64 %806
  %808 = load float, float addrspace(1)* %807, align 4, !tbaa !6
  store float %808, float addrspace(3)* %670, align 4, !tbaa !6
  br i1 %222, label %809, label %870

809:                                              ; preds = %742
  %810 = add nsw i32 %747, %746
  %811 = icmp eq i32 %810, %429
  %812 = mul i32 %747, -2
  %813 = add i32 %812, %429
  %814 = sub nsw i32 0, %747
  %815 = select i1 %811, i32 %814, i32 %747
  %816 = select i1 %811, i32 %813, i32 %810
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds float, float addrspace(1)* %0, i64 %817
  %819 = load float, float addrspace(1)* %818, align 4, !tbaa !6
  store float %819, float addrspace(3)* %672, align 4, !tbaa !6
  %820 = add nsw i32 %816, %815
  %821 = icmp eq i32 %820, %429
  %822 = mul i32 %815, -2
  %823 = add i32 %822, %429
  %824 = sub nsw i32 0, %815
  %825 = select i1 %821, i32 %824, i32 %815
  %826 = select i1 %821, i32 %823, i32 %820
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds float, float addrspace(1)* %0, i64 %827
  %829 = load float, float addrspace(1)* %828, align 4, !tbaa !6
  store float %829, float addrspace(3)* %674, align 4, !tbaa !6
  %830 = add nsw i32 %826, %825
  %831 = icmp eq i32 %830, %429
  %832 = mul i32 %825, -2
  %833 = add i32 %832, %429
  %834 = sub nsw i32 0, %825
  %835 = select i1 %831, i32 %834, i32 %825
  %836 = select i1 %831, i32 %833, i32 %830
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds float, float addrspace(1)* %0, i64 %837
  %839 = load float, float addrspace(1)* %838, align 4, !tbaa !6
  store float %839, float addrspace(3)* %676, align 4, !tbaa !6
  %840 = add nsw i32 %836, %835
  %841 = icmp eq i32 %840, %429
  %842 = mul i32 %835, -2
  %843 = add i32 %842, %429
  %844 = sub nsw i32 0, %835
  %845 = select i1 %841, i32 %844, i32 %835
  %846 = select i1 %841, i32 %843, i32 %840
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds float, float addrspace(1)* %0, i64 %847
  %849 = load float, float addrspace(1)* %848, align 4, !tbaa !6
  store float %849, float addrspace(3)* %678, align 4, !tbaa !6
  %850 = add nsw i32 %846, %845
  %851 = icmp eq i32 %850, %429
  %852 = mul i32 %845, -2
  %853 = add i32 %852, %429
  %854 = sub nsw i32 0, %845
  %855 = select i1 %851, i32 %854, i32 %845
  %856 = select i1 %851, i32 %853, i32 %850
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds float, float addrspace(1)* %0, i64 %857
  %859 = load float, float addrspace(1)* %858, align 4, !tbaa !6
  store float %859, float addrspace(3)* %680, align 4, !tbaa !6
  %860 = add nsw i32 %856, %855
  %861 = icmp eq i32 %860, %429
  %862 = mul i32 %855, -2
  %863 = add i32 %862, %429
  %864 = sub nsw i32 0, %855
  %865 = select i1 %861, i32 %864, i32 %855
  %866 = select i1 %861, i32 %863, i32 %860
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds float, float addrspace(1)* %0, i64 %867
  %869 = load float, float addrspace(1)* %868, align 4, !tbaa !6
  store float %869, float addrspace(3)* %682, align 4, !tbaa !6
  br label %870

870:                                              ; preds = %809, %742
  %871 = phi i32 [ %865, %809 ], [ %747, %742 ]
  %872 = phi i32 [ %866, %809 ], [ %746, %742 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %873 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %874 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %875 = fadd contract float %873, %874
  %876 = fmul contract float %875, 0x3FF960CE60000000
  %877 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %878 = fsub contract float %877, %876
  store float %878, float addrspace(3)* %688, align 4, !tbaa !6
  %879 = load float, float addrspace(3)* %690, align 4, !tbaa !6
  %880 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %881 = fadd contract float %879, %880
  %882 = fmul contract float %881, 0x3FF960CE60000000
  %883 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %884 = fsub contract float %883, %882
  store float %884, float addrspace(3)* %694, align 4, !tbaa !6
  %885 = load float, float addrspace(3)* %696, align 4, !tbaa !6
  %886 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %887 = fadd contract float %885, %886
  %888 = fmul contract float %887, 0x3FF960CE60000000
  %889 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %890 = fsub contract float %889, %888
  store float %890, float addrspace(3)* %700, align 4, !tbaa !6
  br i1 %701, label %891, label %898

891:                                              ; preds = %870
  %892 = load float, float addrspace(3)* %703, align 4, !tbaa !6
  %893 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %894 = fadd contract float %892, %893
  %895 = fmul contract float %894, 0x3FF960CE60000000
  %896 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %897 = fsub contract float %896, %895
  store float %897, float addrspace(3)* %707, align 4, !tbaa !6
  br label %898

898:                                              ; preds = %891, %870
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %899 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %900 = load float, float addrspace(3)* %709, align 4, !tbaa !6
  %901 = fadd contract float %899, %900
  %902 = fmul contract float %901, 0x3FAB2035C0000000
  %903 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %904 = fsub contract float %903, %902
  store float %904, float addrspace(3)* %686, align 4, !tbaa !6
  %905 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %906 = load float, float addrspace(3)* %711, align 4, !tbaa !6
  %907 = fadd contract float %905, %906
  %908 = fmul contract float %907, 0x3FAB2035C0000000
  %909 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %910 = fsub contract float %909, %908
  store float %910, float addrspace(3)* %692, align 4, !tbaa !6
  %911 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %912 = load float, float addrspace(3)* %713, align 4, !tbaa !6
  %913 = fadd contract float %911, %912
  %914 = fmul contract float %913, 0x3FAB2035C0000000
  %915 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %916 = fsub contract float %915, %914
  store float %916, float addrspace(3)* %698, align 4, !tbaa !6
  br i1 %701, label %917, label %924

917:                                              ; preds = %898
  %918 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %919 = load float, float addrspace(3)* %715, align 4, !tbaa !6
  %920 = fadd contract float %918, %919
  %921 = fmul contract float %920, 0x3FAB2035C0000000
  %922 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %923 = fsub contract float %922, %921
  store float %923, float addrspace(3)* %705, align 4, !tbaa !6
  br label %924

924:                                              ; preds = %917, %898
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %925 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %926 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %927 = fadd contract float %925, %926
  %928 = fmul contract float %927, 0x3FEC40CEC0000000
  %929 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %930 = fadd contract float %929, %928
  store float %930, float addrspace(3)* %688, align 4, !tbaa !6
  %931 = load float, float addrspace(3)* %690, align 4, !tbaa !6
  %932 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %933 = fadd contract float %931, %932
  %934 = fmul contract float %933, 0x3FEC40CEC0000000
  %935 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %936 = fadd contract float %935, %934
  store float %936, float addrspace(3)* %694, align 4, !tbaa !6
  %937 = load float, float addrspace(3)* %696, align 4, !tbaa !6
  %938 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %939 = fadd contract float %937, %938
  %940 = fmul contract float %939, 0x3FEC40CEC0000000
  %941 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %942 = fadd contract float %941, %940
  store float %942, float addrspace(3)* %700, align 4, !tbaa !6
  br i1 %701, label %943, label %950

943:                                              ; preds = %924
  %944 = load float, float addrspace(3)* %703, align 4, !tbaa !6
  %945 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %946 = fadd contract float %944, %945
  %947 = fmul contract float %946, 0x3FEC40CEC0000000
  %948 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %949 = fadd contract float %948, %947
  store float %949, float addrspace(3)* %707, align 4, !tbaa !6
  br label %950

950:                                              ; preds = %943, %924
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %951 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %952 = load float, float addrspace(3)* %709, align 4, !tbaa !6
  %953 = fadd contract float %951, %952
  %954 = fmul contract float %953, 0x3FDC626AA0000000
  %955 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %956 = fadd contract float %955, %954
  store float %956, float addrspace(3)* %686, align 4, !tbaa !6
  %957 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %958 = load float, float addrspace(3)* %711, align 4, !tbaa !6
  %959 = fadd contract float %957, %958
  %960 = fmul contract float %959, 0x3FDC626AA0000000
  %961 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %962 = fadd contract float %961, %960
  store float %962, float addrspace(3)* %692, align 4, !tbaa !6
  %963 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %964 = load float, float addrspace(3)* %713, align 4, !tbaa !6
  %965 = fadd contract float %963, %964
  %966 = fmul contract float %965, 0x3FDC626AA0000000
  %967 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %968 = fadd contract float %967, %966
  store float %968, float addrspace(3)* %698, align 4, !tbaa !6
  br i1 %701, label %969, label %976

969:                                              ; preds = %950
  %970 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %971 = load float, float addrspace(3)* %715, align 4, !tbaa !6
  %972 = fadd contract float %970, %971
  %973 = fmul contract float %972, 0x3FDC626AA0000000
  %974 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %975 = fadd contract float %974, %973
  store float %975, float addrspace(3)* %705, align 4, !tbaa !6
  br label %976

976:                                              ; preds = %969, %950
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %977 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %978 = fmul contract float %977, 0x3FEA033860000000
  store float %978, float addrspace(3)* %684, align 4, !tbaa !6
  %979 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %980 = fmul contract float %979, 0x3FF3AECB00000000
  store float %980, float addrspace(3)* %688, align 4, !tbaa !6
  %981 = load float, float addrspace(3)* %690, align 4, !tbaa !6
  %982 = fmul contract float %981, 0x3FEA033860000000
  store float %982, float addrspace(3)* %690, align 4, !tbaa !6
  %983 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %984 = fmul contract float %983, 0x3FF3AECB00000000
  store float %984, float addrspace(3)* %694, align 4, !tbaa !6
  %985 = load float, float addrspace(3)* %696, align 4, !tbaa !6
  %986 = fmul contract float %985, 0x3FEA033860000000
  store float %986, float addrspace(3)* %696, align 4, !tbaa !6
  %987 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %988 = fmul contract float %987, 0x3FF3AECB00000000
  store float %988, float addrspace(3)* %700, align 4, !tbaa !6
  br i1 %716, label %989, label %994

989:                                              ; preds = %976
  %990 = load float, float addrspace(3)* %703, align 4, !tbaa !6
  %991 = fmul contract float %990, 0x3FEA033860000000
  store float %991, float addrspace(3)* %703, align 4, !tbaa !6
  %992 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %993 = fmul contract float %992, 0x3FF3AECB00000000
  store float %993, float addrspace(3)* %707, align 4, !tbaa !6
  br label %994

994:                                              ; preds = %989, %976
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %995 = load float, float addrspace(3)* %727, align 4, !tbaa !6
  %996 = load float, float addrspace(3)* %733, align 4, !tbaa !6
  %997 = load float, float addrspace(3)* %731, align 4, !tbaa !6
  %998 = load float, float addrspace(3)* %737, align 4, !tbaa !6
  %999 = load float, float addrspace(3)* %735, align 4, !tbaa !6
  %1000 = load float, float addrspace(3)* %739, align 4, !tbaa !6
  %1001 = load float, float addrspace(3)* %741, align 4, !tbaa !6
  %1002 = load float, float addrspace(3)* %718, align 4, !tbaa !6
  %1003 = load float, float addrspace(3)* %720, align 4, !tbaa !6
  %1004 = fadd contract float %1002, %1003
  %1005 = fmul contract float %1004, 0x3FF960CE60000000
  %1006 = load float, float addrspace(3)* %722, align 4, !tbaa !6
  %1007 = fsub contract float %1006, %1005
  %1008 = load float, float addrspace(3)* %724, align 4, !tbaa !6
  %1009 = fadd contract float %1003, %1008
  %1010 = fmul contract float %1009, 0x3FF960CE60000000
  %1011 = load float, float addrspace(3)* %726, align 4, !tbaa !6
  %1012 = fsub contract float %1011, %1010
  %1013 = fadd contract float %995, %1008
  %1014 = fmul contract float %1013, 0x3FF960CE60000000
  %1015 = load float, float addrspace(3)* %729, align 4, !tbaa !6
  %1016 = fsub contract float %1015, %1014
  %1017 = fadd contract float %995, %997
  %1018 = fmul contract float %1017, 0x3FF960CE60000000
  %1019 = fsub contract float %996, %1018
  %1020 = fadd contract float %997, %999
  %1021 = fmul contract float %1020, 0x3FF960CE60000000
  %1022 = fsub contract float %998, %1021
  %1023 = fadd contract float %999, %1001
  %1024 = fmul contract float %1023, 0x3FF960CE60000000
  %1025 = fsub contract float %1000, %1024
  %1026 = fadd contract float %1007, %1012
  %1027 = fmul contract float %1026, 0x3FAB2035C0000000
  %1028 = fsub contract float %1003, %1027
  %1029 = fadd contract float %1012, %1016
  %1030 = fmul contract float %1029, 0x3FAB2035C0000000
  %1031 = fsub contract float %1008, %1030
  %1032 = fadd contract float %1019, %1016
  %1033 = fmul contract float %1032, 0x3FAB2035C0000000
  %1034 = fsub contract float %995, %1033
  %1035 = fadd contract float %1019, %1022
  %1036 = fmul contract float %1035, 0x3FAB2035C0000000
  %1037 = fsub contract float %997, %1036
  %1038 = fadd contract float %1022, %1025
  %1039 = fmul contract float %1038, 0x3FAB2035C0000000
  %1040 = fsub contract float %999, %1039
  %1041 = fadd contract float %1002, %1028
  %1042 = fmul contract float %1041, 0x3FEC40CEC0000000
  %1043 = fadd contract float %1007, %1042
  store float %1043, float addrspace(3)* %722, align 4, !tbaa !6
  %1044 = fadd contract float %1028, %1031
  %1045 = fmul contract float %1044, 0x3FEC40CEC0000000
  %1046 = fadd contract float %1012, %1045
  store float %1046, float addrspace(3)* %726, align 4, !tbaa !6
  %1047 = fadd contract float %1031, %1034
  %1048 = fmul contract float %1047, 0x3FEC40CEC0000000
  %1049 = fadd contract float %1016, %1048
  store float %1049, float addrspace(3)* %729, align 4, !tbaa !6
  %1050 = fadd contract float %1037, %1034
  %1051 = fmul contract float %1050, 0x3FEC40CEC0000000
  %1052 = fadd contract float %1019, %1051
  store float %1052, float addrspace(3)* %733, align 4, !tbaa !6
  %1053 = fadd contract float %1037, %1040
  %1054 = fmul contract float %1053, 0x3FEC40CEC0000000
  %1055 = fadd contract float %1022, %1054
  store float %1055, float addrspace(3)* %737, align 4, !tbaa !6
  %1056 = fadd contract float %1001, %1040
  %1057 = fmul contract float %1056, 0x3FEC40CEC0000000
  %1058 = fadd contract float %1025, %1057
  store float %1058, float addrspace(3)* %739, align 4, !tbaa !6
  %1059 = fadd contract float %1043, %1046
  %1060 = fmul contract float %1059, 0x3FDC626AA0000000
  %1061 = fadd contract float %1028, %1060
  store float %1061, float addrspace(3)* %720, align 4, !tbaa !6
  %1062 = fadd contract float %1046, %1049
  %1063 = fmul contract float %1062, 0x3FDC626AA0000000
  %1064 = fadd contract float %1031, %1063
  store float %1064, float addrspace(3)* %724, align 4, !tbaa !6
  %1065 = fadd contract float %1049, %1052
  %1066 = fmul contract float %1065, 0x3FDC626AA0000000
  %1067 = fadd contract float %1034, %1066
  store float %1067, float addrspace(3)* %727, align 4, !tbaa !6
  %1068 = fadd contract float %1055, %1052
  %1069 = fmul contract float %1068, 0x3FDC626AA0000000
  %1070 = fadd contract float %1037, %1069
  store float %1070, float addrspace(3)* %731, align 4, !tbaa !6
  %1071 = fadd contract float %1055, %1058
  %1072 = fmul contract float %1071, 0x3FDC626AA0000000
  %1073 = fadd contract float %1040, %1072
  store float %1073, float addrspace(3)* %735, align 4, !tbaa !6
  %1074 = icmp eq i32 %748, %647
  br i1 %1074, label %1080, label %1075

1075:                                             ; preds = %994
  %1076 = add nsw i32 %748, %645
  %1077 = sext i32 %748 to i64
  %1078 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1077
  %1079 = fmul contract float %1064, 0x3FEA033860000000
  store float %1079, float addrspace(1)* %1078, align 4, !tbaa !6
  br label %1080

1080:                                             ; preds = %1075, %994
  %1081 = phi i32 [ %647, %994 ], [ %1076, %1075 ]
  %1082 = icmp eq i32 %1081, %647
  br i1 %1082, label %1088, label %1083

1083:                                             ; preds = %1080
  %1084 = add nsw i32 %1081, %646
  %1085 = sext i32 %1081 to i64
  %1086 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1085
  %1087 = fmul contract float %1049, 0x3FF3AECB00000000
  store float %1087, float addrspace(1)* %1086, align 4, !tbaa !6
  br label %1088

1088:                                             ; preds = %1083, %1080
  %1089 = phi i32 [ %647, %1080 ], [ %1084, %1083 ]
  %1090 = icmp eq i32 %1089, %647
  br i1 %1090, label %1096, label %1091

1091:                                             ; preds = %1088
  %1092 = add nsw i32 %1089, %645
  %1093 = sext i32 %1089 to i64
  %1094 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1093
  %1095 = fmul contract float %1067, 0x3FEA033860000000
  store float %1095, float addrspace(1)* %1094, align 4, !tbaa !6
  br label %1096

1096:                                             ; preds = %1091, %1088
  %1097 = phi i32 [ %647, %1088 ], [ %1092, %1091 ]
  %1098 = icmp eq i32 %1097, %647
  br i1 %1098, label %1104, label %1099

1099:                                             ; preds = %1096
  %1100 = add nsw i32 %1097, %646
  %1101 = sext i32 %1097 to i64
  %1102 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1101
  %1103 = fmul contract float %1052, 0x3FF3AECB00000000
  store float %1103, float addrspace(1)* %1102, align 4, !tbaa !6
  br label %1104

1104:                                             ; preds = %1099, %1096
  %1105 = phi i32 [ %647, %1096 ], [ %1100, %1099 ]
  %1106 = icmp eq i32 %1105, %647
  br i1 %1106, label %1112, label %1107

1107:                                             ; preds = %1104
  %1108 = add nsw i32 %1105, %645
  %1109 = sext i32 %1105 to i64
  %1110 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1109
  %1111 = fmul contract float %1070, 0x3FEA033860000000
  store float %1111, float addrspace(1)* %1110, align 4, !tbaa !6
  br label %1112

1112:                                             ; preds = %1107, %1104
  %1113 = phi i32 [ %647, %1104 ], [ %1108, %1107 ]
  %1114 = icmp eq i32 %1113, %647
  br i1 %1114, label %1120, label %1115

1115:                                             ; preds = %1112
  %1116 = add nsw i32 %1113, %646
  %1117 = sext i32 %1113 to i64
  %1118 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1117
  %1119 = fmul contract float %1055, 0x3FF3AECB00000000
  store float %1119, float addrspace(1)* %1118, align 4, !tbaa !6
  br label %1120

1120:                                             ; preds = %1115, %1112
  %1121 = phi i32 [ %647, %1112 ], [ %1116, %1115 ]
  store float %995, float addrspace(3)* %718, align 4, !tbaa !6
  store float %996, float addrspace(3)* %722, align 4, !tbaa !6
  store float %997, float addrspace(3)* %720, align 4, !tbaa !6
  store float %998, float addrspace(3)* %726, align 4, !tbaa !6
  store float %999, float addrspace(3)* %724, align 4, !tbaa !6
  store float %1000, float addrspace(3)* %729, align 4, !tbaa !6
  store float %1001, float addrspace(3)* %727, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1122 = add nuw nsw i32 %743, 1
  %1123 = icmp eq i32 %1122, %4
  br i1 %1123, label %2839, label %742, !llvm.loop !15

1124:                                             ; preds = %5
  %1125 = shl i32 %7, 7
  %1126 = add i32 %1125, 131
  %1127 = icmp slt i32 %1126, %2
  %1128 = mul i32 %9, %4
  %1129 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %1130 = add nuw nsw i32 %1129, 4
  %1131 = lshr i32 %1130, 1
  %1132 = and i32 %1129, 1
  %1133 = icmp eq i32 %1132, 0
  %1134 = select i1 %1133, i32 0, i32 888
  %1135 = add nuw nsw i32 %1134, %1131
  %1136 = add i32 %1125, %1129
  %1137 = sub i32 0, %1136
  %1138 = icmp eq i32 %8, 0
  br i1 %1127, label %2007, label %1139

1139:                                             ; preds = %1124
  br i1 %1138, label %1140, label %1200

1140:                                             ; preds = %1139
  %1141 = icmp slt i32 %1136, %2
  br i1 %1141, label %1146, label %1142

1142:                                             ; preds = %1140
  %1143 = shl nsw i32 %2, 1
  %1144 = sub i32 -2, %1136
  %1145 = add i32 %1144, %1143
  br label %1148

1146:                                             ; preds = %1140
  %1147 = icmp slt i32 %1136, 0
  br i1 %1147, label %1148, label %1150

1148:                                             ; preds = %1146, %1142
  %1149 = phi i32 [ %1145, %1142 ], [ %1137, %1146 ]
  br label %1150

1150:                                             ; preds = %1148, %1146
  %1151 = phi i32 [ %1149, %1148 ], [ %1136, %1146 ]
  %1152 = mul nsw i32 %1128, %2
  %1153 = add i32 %1151, %1152
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1154
  %1156 = load float, float addrspace(1)* %1155, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1157 = add nuw nsw i32 %1135, 272
  %1158 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1157
  store float %1156, float addrspace(3)* %1158, align 4, !tbaa !6
  %1159 = add nsw i32 %1153, %2
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1160
  %1162 = load float, float addrspace(1)* %1161, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1163 = add nuw nsw i32 %1135, 340
  %1164 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1163
  store float %1162, float addrspace(3)* %1164, align 4, !tbaa !6
  %1165 = add nuw nsw i32 %1135, 204
  %1166 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1165
  store float %1162, float addrspace(3)* %1166, align 4, !tbaa !6
  %1167 = add nsw i32 %1159, %2
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1168
  %1170 = load float, float addrspace(1)* %1169, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1171 = add nuw nsw i32 %1135, 408
  %1172 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1171
  store float %1170, float addrspace(3)* %1172, align 4, !tbaa !6
  %1173 = add nuw nsw i32 %1135, 136
  %1174 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1173
  store float %1170, float addrspace(3)* %1174, align 4, !tbaa !6
  %1175 = add nsw i32 %1167, %2
  %1176 = sext i32 %1175 to i64
  %1177 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1176
  %1178 = load float, float addrspace(1)* %1177, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1179 = add nuw nsw i32 %1135, 68
  %1180 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1179
  store float %1178, float addrspace(3)* %1180, align 4, !tbaa !6
  %1181 = add nsw i32 %1175, %2
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1182
  %1184 = load float, float addrspace(1)* %1183, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1185 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %1184, float addrspace(3)* %1185, align 4, !tbaa !6
  %1186 = add nsw i32 %1128, 3
  br i1 %1141, label %1191, label %1187

1187:                                             ; preds = %1150
  %1188 = shl nsw i32 %2, 1
  %1189 = sub i32 -2, %1136
  %1190 = add i32 %1189, %1188
  br label %1193

1191:                                             ; preds = %1150
  %1192 = icmp slt i32 %1136, 0
  br i1 %1192, label %1193, label %1195

1193:                                             ; preds = %1191, %1187
  %1194 = phi i32 [ %1190, %1187 ], [ %1137, %1191 ]
  br label %1195

1195:                                             ; preds = %1193, %1191
  %1196 = phi i32 [ %1194, %1193 ], [ %1136, %1191 ]
  %1197 = mul nsw i32 %1186, %2
  %1198 = sub i32 %1197, %2
  %1199 = add i32 %1198, %1196
  br label %1255

1200:                                             ; preds = %1139
  %1201 = add nsw i32 %1128, -4
  %1202 = icmp slt i32 %1136, %2
  br i1 %1202, label %1207, label %1203

1203:                                             ; preds = %1200
  %1204 = shl nsw i32 %2, 1
  %1205 = sub i32 -2, %1136
  %1206 = add i32 %1205, %1204
  br label %1209

1207:                                             ; preds = %1200
  %1208 = icmp slt i32 %1136, 0
  br i1 %1208, label %1209, label %1211

1209:                                             ; preds = %1207, %1203
  %1210 = phi i32 [ %1206, %1203 ], [ %1137, %1207 ]
  br label %1211

1211:                                             ; preds = %1209, %1207
  %1212 = phi i32 [ %1210, %1209 ], [ %1136, %1207 ]
  %1213 = mul nsw i32 %1201, %2
  %1214 = add i32 %1212, %1213
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1215
  %1217 = load float, float addrspace(1)* %1216, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1218 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %1217, float addrspace(3)* %1218, align 4, !tbaa !6
  %1219 = add nsw i32 %1214, %2
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1220
  %1222 = load float, float addrspace(1)* %1221, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1223 = add nuw nsw i32 %1135, 68
  %1224 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1223
  store float %1222, float addrspace(3)* %1224, align 4, !tbaa !6
  %1225 = add nsw i32 %1219, %2
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1226
  %1228 = load float, float addrspace(1)* %1227, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1229 = add nuw nsw i32 %1135, 136
  %1230 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1229
  store float %1228, float addrspace(3)* %1230, align 4, !tbaa !6
  %1231 = add nsw i32 %1225, %2
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1232
  %1234 = load float, float addrspace(1)* %1233, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1235 = add nuw nsw i32 %1135, 204
  %1236 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1235
  store float %1234, float addrspace(3)* %1236, align 4, !tbaa !6
  %1237 = add nsw i32 %1231, %2
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1238
  %1240 = load float, float addrspace(1)* %1239, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1241 = add nuw nsw i32 %1135, 272
  %1242 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1241
  store float %1240, float addrspace(3)* %1242, align 4, !tbaa !6
  %1243 = add nsw i32 %1237, %2
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1244
  %1246 = load float, float addrspace(1)* %1245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1247 = add nuw nsw i32 %1135, 340
  %1248 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1247
  store float %1246, float addrspace(3)* %1248, align 4, !tbaa !6
  %1249 = add nsw i32 %1243, %2
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1250
  %1252 = load float, float addrspace(1)* %1251, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1253 = add nuw nsw i32 %1135, 408
  %1254 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1253
  store float %1252, float addrspace(3)* %1254, align 4, !tbaa !6
  br label %1255

1255:                                             ; preds = %1211, %1195
  %1256 = phi i32 [ %1199, %1195 ], [ %1249, %1211 ]
  %1257 = icmp ult i32 %1129, 7
  br i1 %1257, label %1258, label %1387

1258:                                             ; preds = %1255
  %1259 = icmp ult i32 %1129, 3
  %1260 = select i1 %1259, i32 128, i32 -7
  %1261 = add nsw i32 %1260, %1129
  %1262 = trunc i32 %1261 to i16
  %1263 = add nsw i16 %1262, 4
  %1264 = sdiv i16 %1263, 2
  %1265 = sext i16 %1264 to i32
  %1266 = and i32 %1261, 1
  %1267 = icmp eq i32 %1266, 0
  %1268 = select i1 %1267, i32 0, i32 888
  %1269 = add nsw i32 %1268, %1265
  %1270 = add i32 %1261, %1125
  %1271 = sub i32 0, %1270
  br i1 %1138, label %1272, label %1332

1272:                                             ; preds = %1258
  %1273 = icmp slt i32 %1270, %2
  br i1 %1273, label %1278, label %1274

1274:                                             ; preds = %1272
  %1275 = shl nsw i32 %2, 1
  %1276 = sub i32 -2, %1270
  %1277 = add i32 %1276, %1275
  br label %1280

1278:                                             ; preds = %1272
  %1279 = icmp slt i32 %1270, 0
  br i1 %1279, label %1280, label %1282

1280:                                             ; preds = %1278, %1274
  %1281 = phi i32 [ %1277, %1274 ], [ %1271, %1278 ]
  br label %1282

1282:                                             ; preds = %1280, %1278
  %1283 = phi i32 [ %1281, %1280 ], [ %1270, %1278 ]
  %1284 = mul nsw i32 %1128, %2
  %1285 = add i32 %1283, %1284
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1286
  %1288 = load float, float addrspace(1)* %1287, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1289 = add nsw i32 %1269, 272
  %1290 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1289
  store float %1288, float addrspace(3)* %1290, align 4, !tbaa !6
  %1291 = add nsw i32 %1285, %2
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1292
  %1294 = load float, float addrspace(1)* %1293, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1295 = add nsw i32 %1269, 340
  %1296 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1295
  store float %1294, float addrspace(3)* %1296, align 4, !tbaa !6
  %1297 = add nsw i32 %1269, 204
  %1298 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1297
  store float %1294, float addrspace(3)* %1298, align 4, !tbaa !6
  %1299 = add nsw i32 %1291, %2
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1300
  %1302 = load float, float addrspace(1)* %1301, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1303 = add nsw i32 %1269, 408
  %1304 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1303
  store float %1302, float addrspace(3)* %1304, align 4, !tbaa !6
  %1305 = add nsw i32 %1269, 136
  %1306 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1305
  store float %1302, float addrspace(3)* %1306, align 4, !tbaa !6
  %1307 = add nsw i32 %1299, %2
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1308
  %1310 = load float, float addrspace(1)* %1309, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1311 = add nsw i32 %1269, 68
  %1312 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1311
  store float %1310, float addrspace(3)* %1312, align 4, !tbaa !6
  %1313 = add nsw i32 %1307, %2
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1314
  %1316 = load float, float addrspace(1)* %1315, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1317 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1269
  store float %1316, float addrspace(3)* %1317, align 4, !tbaa !6
  %1318 = add nsw i32 %1128, 3
  br i1 %1273, label %1323, label %1319

1319:                                             ; preds = %1282
  %1320 = shl nsw i32 %2, 1
  %1321 = sub i32 -2, %1270
  %1322 = add i32 %1321, %1320
  br label %1325

1323:                                             ; preds = %1282
  %1324 = icmp slt i32 %1270, 0
  br i1 %1324, label %1325, label %1327

1325:                                             ; preds = %1323, %1319
  %1326 = phi i32 [ %1322, %1319 ], [ %1271, %1323 ]
  br label %1327

1327:                                             ; preds = %1325, %1323
  %1328 = phi i32 [ %1326, %1325 ], [ %1270, %1323 ]
  %1329 = mul nsw i32 %1318, %2
  %1330 = sub i32 %1329, %2
  %1331 = add i32 %1330, %1328
  br label %1387

1332:                                             ; preds = %1258
  %1333 = add nsw i32 %1128, -4
  %1334 = icmp slt i32 %1270, %2
  br i1 %1334, label %1339, label %1335

1335:                                             ; preds = %1332
  %1336 = shl nsw i32 %2, 1
  %1337 = sub i32 -2, %1270
  %1338 = add i32 %1337, %1336
  br label %1341

1339:                                             ; preds = %1332
  %1340 = icmp slt i32 %1270, 0
  br i1 %1340, label %1341, label %1343

1341:                                             ; preds = %1339, %1335
  %1342 = phi i32 [ %1338, %1335 ], [ %1271, %1339 ]
  br label %1343

1343:                                             ; preds = %1341, %1339
  %1344 = phi i32 [ %1342, %1341 ], [ %1270, %1339 ]
  %1345 = mul nsw i32 %1333, %2
  %1346 = add i32 %1344, %1345
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1347
  %1349 = load float, float addrspace(1)* %1348, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1350 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1269
  store float %1349, float addrspace(3)* %1350, align 4, !tbaa !6
  %1351 = add nsw i32 %1346, %2
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1352
  %1354 = load float, float addrspace(1)* %1353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1355 = add nsw i32 %1269, 68
  %1356 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1355
  store float %1354, float addrspace(3)* %1356, align 4, !tbaa !6
  %1357 = add nsw i32 %1351, %2
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1358
  %1360 = load float, float addrspace(1)* %1359, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1361 = add nsw i32 %1269, 136
  %1362 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1361
  store float %1360, float addrspace(3)* %1362, align 4, !tbaa !6
  %1363 = add nsw i32 %1357, %2
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1364
  %1366 = load float, float addrspace(1)* %1365, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1367 = add nsw i32 %1269, 204
  %1368 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1367
  store float %1366, float addrspace(3)* %1368, align 4, !tbaa !6
  %1369 = add nsw i32 %1363, %2
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1370
  %1372 = load float, float addrspace(1)* %1371, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1373 = add nsw i32 %1269, 272
  %1374 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1373
  store float %1372, float addrspace(3)* %1374, align 4, !tbaa !6
  %1375 = add nsw i32 %1369, %2
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1376
  %1378 = load float, float addrspace(1)* %1377, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1379 = add nsw i32 %1269, 340
  %1380 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1379
  store float %1378, float addrspace(3)* %1380, align 4, !tbaa !6
  %1381 = add nsw i32 %1375, %2
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1382
  %1384 = load float, float addrspace(1)* %1383, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1385 = add nsw i32 %1269, 408
  %1386 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1385
  store float %1384, float addrspace(3)* %1386, align 4, !tbaa !6
  br label %1387

1387:                                             ; preds = %1343, %1327, %1255
  %1388 = phi i32 [ 0, %1255 ], [ %2, %1327 ], [ %2, %1343 ]
  %1389 = phi i32 [ 0, %1255 ], [ %1331, %1327 ], [ %1381, %1343 ]
  %1390 = phi i32 [ 0, %1255 ], [ %1269, %1327 ], [ %1269, %1343 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1391 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1129
  %1392 = load float, float addrspace(3)* %1391, align 4, !tbaa !6
  %1393 = add nuw nsw i32 %1129, 1
  %1394 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1393
  %1395 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1396 = add nuw nsw i32 %1129, 888
  %1397 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1396
  %1398 = fadd contract float %1392, %1395
  %1399 = fmul contract float %1398, 0x3FF960CE60000000
  %1400 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1401 = fsub contract float %1400, %1399
  store float %1401, float addrspace(3)* %1397, align 4, !tbaa !6
  %1402 = add nuw nsw i32 %1129, 128
  %1403 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1402
  %1404 = load float, float addrspace(3)* %1403, align 4, !tbaa !6
  %1405 = add nuw nsw i32 %1129, 129
  %1406 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1405
  %1407 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1408 = add nuw nsw i32 %1129, 1016
  %1409 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1408
  %1410 = fadd contract float %1404, %1407
  %1411 = fmul contract float %1410, 0x3FF960CE60000000
  %1412 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1413 = fsub contract float %1412, %1411
  store float %1413, float addrspace(3)* %1409, align 4, !tbaa !6
  %1414 = add nuw nsw i32 %1129, 256
  %1415 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1414
  %1416 = load float, float addrspace(3)* %1415, align 4, !tbaa !6
  %1417 = add nuw nsw i32 %1129, 257
  %1418 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1417
  %1419 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1420 = add nuw nsw i32 %1129, 1144
  %1421 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1420
  %1422 = fadd contract float %1416, %1419
  %1423 = fmul contract float %1422, 0x3FF960CE60000000
  %1424 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1425 = fsub contract float %1424, %1423
  store float %1425, float addrspace(3)* %1421, align 4, !tbaa !6
  %1426 = icmp ult i32 %1129, 91
  br i1 %1426, label %1427, label %1440

1427:                                             ; preds = %1387
  %1428 = add nuw nsw i32 %1129, 384
  %1429 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1428
  %1430 = load float, float addrspace(3)* %1429, align 4, !tbaa !6
  %1431 = add nuw nsw i32 %1129, 385
  %1432 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1431
  %1433 = load float, float addrspace(3)* %1432, align 4, !tbaa !6
  %1434 = add nuw nsw i32 %1129, 1272
  %1435 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1434
  %1436 = fadd contract float %1430, %1433
  %1437 = fmul contract float %1436, 0x3FF960CE60000000
  %1438 = load float, float addrspace(3)* %1435, align 4, !tbaa !6
  %1439 = fsub contract float %1438, %1437
  store float %1439, float addrspace(3)* %1435, align 4, !tbaa !6
  br label %1440

1440:                                             ; preds = %1427, %1387
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1441 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1442 = add nuw nsw i32 %1129, 889
  %1443 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1442
  %1444 = load float, float addrspace(3)* %1443, align 4, !tbaa !6
  %1445 = fadd contract float %1441, %1444
  %1446 = fmul contract float %1445, 0x3FAB2035C0000000
  %1447 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1448 = fsub contract float %1447, %1446
  store float %1448, float addrspace(3)* %1394, align 4, !tbaa !6
  %1449 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1450 = add nuw nsw i32 %1129, 1017
  %1451 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1450
  %1452 = load float, float addrspace(3)* %1451, align 4, !tbaa !6
  %1453 = fadd contract float %1449, %1452
  %1454 = fmul contract float %1453, 0x3FAB2035C0000000
  %1455 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1456 = fsub contract float %1455, %1454
  store float %1456, float addrspace(3)* %1406, align 4, !tbaa !6
  %1457 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1458 = add nuw nsw i32 %1129, 1145
  %1459 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1458
  %1460 = load float, float addrspace(3)* %1459, align 4, !tbaa !6
  %1461 = fadd contract float %1457, %1460
  %1462 = fmul contract float %1461, 0x3FAB2035C0000000
  %1463 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1464 = fsub contract float %1463, %1462
  store float %1464, float addrspace(3)* %1418, align 4, !tbaa !6
  br i1 %1426, label %1465, label %1478

1465:                                             ; preds = %1440
  %1466 = add nuw nsw i32 %1129, 1272
  %1467 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1466
  %1468 = load float, float addrspace(3)* %1467, align 4, !tbaa !6
  %1469 = add nuw nsw i32 %1129, 1273
  %1470 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1469
  %1471 = load float, float addrspace(3)* %1470, align 4, !tbaa !6
  %1472 = add nuw nsw i32 %1129, 385
  %1473 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1472
  %1474 = fadd contract float %1468, %1471
  %1475 = fmul contract float %1474, 0x3FAB2035C0000000
  %1476 = load float, float addrspace(3)* %1473, align 4, !tbaa !6
  %1477 = fsub contract float %1476, %1475
  store float %1477, float addrspace(3)* %1473, align 4, !tbaa !6
  br label %1478

1478:                                             ; preds = %1465, %1440
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1479 = load float, float addrspace(3)* %1391, align 4, !tbaa !6
  %1480 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1481 = fadd contract float %1479, %1480
  %1482 = fmul contract float %1481, 0x3FEC40CEC0000000
  %1483 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1484 = fadd contract float %1483, %1482
  store float %1484, float addrspace(3)* %1397, align 4, !tbaa !6
  %1485 = load float, float addrspace(3)* %1403, align 4, !tbaa !6
  %1486 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1487 = fadd contract float %1485, %1486
  %1488 = fmul contract float %1487, 0x3FEC40CEC0000000
  %1489 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1490 = fadd contract float %1489, %1488
  store float %1490, float addrspace(3)* %1409, align 4, !tbaa !6
  %1491 = load float, float addrspace(3)* %1415, align 4, !tbaa !6
  %1492 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1493 = fadd contract float %1491, %1492
  %1494 = fmul contract float %1493, 0x3FEC40CEC0000000
  %1495 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1496 = fadd contract float %1495, %1494
  store float %1496, float addrspace(3)* %1421, align 4, !tbaa !6
  br i1 %1426, label %1497, label %1510

1497:                                             ; preds = %1478
  %1498 = add nuw nsw i32 %1129, 384
  %1499 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1498
  %1500 = load float, float addrspace(3)* %1499, align 4, !tbaa !6
  %1501 = add nuw nsw i32 %1129, 385
  %1502 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1501
  %1503 = load float, float addrspace(3)* %1502, align 4, !tbaa !6
  %1504 = add nuw nsw i32 %1129, 1272
  %1505 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1504
  %1506 = fadd contract float %1500, %1503
  %1507 = fmul contract float %1506, 0x3FEC40CEC0000000
  %1508 = load float, float addrspace(3)* %1505, align 4, !tbaa !6
  %1509 = fadd contract float %1508, %1507
  store float %1509, float addrspace(3)* %1505, align 4, !tbaa !6
  br label %1510

1510:                                             ; preds = %1497, %1478
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1511 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1512 = load float, float addrspace(3)* %1443, align 4, !tbaa !6
  %1513 = fadd contract float %1511, %1512
  %1514 = fmul contract float %1513, 0x3FDC626AA0000000
  %1515 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1516 = fadd contract float %1515, %1514
  store float %1516, float addrspace(3)* %1394, align 4, !tbaa !6
  %1517 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1518 = load float, float addrspace(3)* %1451, align 4, !tbaa !6
  %1519 = fadd contract float %1517, %1518
  %1520 = fmul contract float %1519, 0x3FDC626AA0000000
  %1521 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1522 = fadd contract float %1521, %1520
  store float %1522, float addrspace(3)* %1406, align 4, !tbaa !6
  %1523 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1524 = load float, float addrspace(3)* %1459, align 4, !tbaa !6
  %1525 = fadd contract float %1523, %1524
  %1526 = fmul contract float %1525, 0x3FDC626AA0000000
  %1527 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1528 = fadd contract float %1527, %1526
  store float %1528, float addrspace(3)* %1418, align 4, !tbaa !6
  br i1 %1426, label %1529, label %1542

1529:                                             ; preds = %1510
  %1530 = add nuw nsw i32 %1129, 1272
  %1531 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1530
  %1532 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1533 = add nuw nsw i32 %1129, 1273
  %1534 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1533
  %1535 = load float, float addrspace(3)* %1534, align 4, !tbaa !6
  %1536 = add nuw nsw i32 %1129, 385
  %1537 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1536
  %1538 = fadd contract float %1532, %1535
  %1539 = fmul contract float %1538, 0x3FDC626AA0000000
  %1540 = load float, float addrspace(3)* %1537, align 4, !tbaa !6
  %1541 = fadd contract float %1540, %1539
  store float %1541, float addrspace(3)* %1537, align 4, !tbaa !6
  br label %1542

1542:                                             ; preds = %1529, %1510
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1543 = load float, float addrspace(3)* %1391, align 4, !tbaa !6
  %1544 = fmul contract float %1543, 0x3FEA033860000000
  store float %1544, float addrspace(3)* %1391, align 4, !tbaa !6
  %1545 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1546 = fmul contract float %1545, 0x3FF3AECB00000000
  store float %1546, float addrspace(3)* %1397, align 4, !tbaa !6
  %1547 = load float, float addrspace(3)* %1403, align 4, !tbaa !6
  %1548 = fmul contract float %1547, 0x3FEA033860000000
  store float %1548, float addrspace(3)* %1403, align 4, !tbaa !6
  %1549 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1550 = fmul contract float %1549, 0x3FF3AECB00000000
  store float %1550, float addrspace(3)* %1409, align 4, !tbaa !6
  %1551 = load float, float addrspace(3)* %1415, align 4, !tbaa !6
  %1552 = fmul contract float %1551, 0x3FEA033860000000
  store float %1552, float addrspace(3)* %1415, align 4, !tbaa !6
  %1553 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1554 = fmul contract float %1553, 0x3FF3AECB00000000
  store float %1554, float addrspace(3)* %1421, align 4, !tbaa !6
  %1555 = icmp ult i32 %1129, 92
  br i1 %1555, label %1556, label %1565

1556:                                             ; preds = %1542
  %1557 = add nuw nsw i32 %1129, 384
  %1558 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1557
  %1559 = load float, float addrspace(3)* %1558, align 4, !tbaa !6
  %1560 = fmul contract float %1559, 0x3FEA033860000000
  store float %1560, float addrspace(3)* %1558, align 4, !tbaa !6
  %1561 = add nuw nsw i32 %1129, 1272
  %1562 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1561
  %1563 = load float, float addrspace(3)* %1562, align 4, !tbaa !6
  %1564 = fmul contract float %1563, 0x3FF3AECB00000000
  store float %1564, float addrspace(3)* %1562, align 4, !tbaa !6
  br label %1565

1565:                                             ; preds = %1556, %1542
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1566 = shl nuw nsw i32 %1129, 1
  %1567 = lshr i32 %1129, 6
  %1568 = mul nsw i32 %1567, -127
  %1569 = add nsw i32 %1568, %1566
  %1570 = add i32 %1569, %1125
  %1571 = icmp slt i32 %1570, %2
  br i1 %1571, label %1572, label %1602

1572:                                             ; preds = %1565
  %1573 = sdiv i32 %1570, 2
  %1574 = and i32 %1570, 1
  %1575 = icmp eq i32 %1574, 0
  %1576 = sdiv i32 %2, 2
  %1577 = and i32 %2, 1
  %1578 = add nsw i32 %1576, %1577
  %1579 = sdiv i32 %3, 2
  %1580 = and i32 %3, 1
  %1581 = add nsw i32 %1579, %1580
  br i1 %1575, label %1587, label %1582

1582:                                             ; preds = %1572
  %1583 = mul nsw i32 %1581, %1578
  %1584 = add nsw i32 %1583, %1573
  %1585 = mul nsw i32 %3, %2
  %1586 = sdiv i32 %1585, 2
  br label %1589

1587:                                             ; preds = %1572
  %1588 = mul nsw i32 %1581, %2
  br label %1589

1589:                                             ; preds = %1587, %1582
  %1590 = phi i32 [ %1588, %1587 ], [ %1586, %1582 ]
  %1591 = phi i32 [ %1573, %1587 ], [ %1584, %1582 ]
  %1592 = phi i32 [ %1578, %1587 ], [ %1576, %1582 ]
  %1593 = sub nsw i32 %1592, %1590
  %1594 = mul nsw i32 %1592, %1579
  %1595 = icmp eq i32 %1580, 0
  %1596 = select i1 %1595, i32 0, i32 %1590
  %1597 = add i32 %1596, %1591
  %1598 = add i32 %1597, %1594
  %1599 = sdiv i32 %1128, 2
  %1600 = mul nsw i32 %1592, %1599
  %1601 = add i32 %1600, %1591
  br label %1602

1602:                                             ; preds = %1589, %1565
  %1603 = phi i32 [ %1590, %1589 ], [ 0, %1565 ]
  %1604 = phi i32 [ %1593, %1589 ], [ 0, %1565 ]
  %1605 = phi i32 [ %1598, %1589 ], [ 0, %1565 ]
  %1606 = phi i32 [ %1601, %1589 ], [ 0, %1565 ]
  %1607 = trunc i32 %1569 to i16
  %1608 = add nsw i16 %1607, 4
  %1609 = sdiv i16 %1608, 2
  %1610 = sext i16 %1609 to i32
  %1611 = and i32 %1569, 1
  %1612 = icmp eq i32 %1611, 0
  %1613 = select i1 %1612, i32 0, i32 888
  %1614 = add nsw i32 %1613, %1610
  %1615 = icmp sgt i32 %4, 0
  br i1 %1615, label %1616, label %2839

1616:                                             ; preds = %1602
  %1617 = add nuw nsw i32 %1135, 476
  %1618 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1617
  %1619 = add nuw nsw i32 %1135, 544
  %1620 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1619
  %1621 = add nuw nsw i32 %1135, 612
  %1622 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1621
  %1623 = add nuw nsw i32 %1135, 680
  %1624 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1623
  %1625 = add nuw nsw i32 %1135, 748
  %1626 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1625
  %1627 = add nuw nsw i32 %1135, 816
  %1628 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1627
  %1629 = add nsw i32 %1390, 476
  %1630 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1629
  %1631 = add nsw i32 %1390, 544
  %1632 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1631
  %1633 = add nsw i32 %1390, 612
  %1634 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1633
  %1635 = add nsw i32 %1390, 680
  %1636 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1635
  %1637 = add nsw i32 %1390, 748
  %1638 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1637
  %1639 = add nsw i32 %1390, 816
  %1640 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1639
  %1641 = add nuw nsw i32 %1129, 476
  %1642 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1641
  %1643 = add nuw nsw i32 %1129, 477
  %1644 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1643
  %1645 = add nuw nsw i32 %1129, 1364
  %1646 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1645
  %1647 = add nuw nsw i32 %1129, 604
  %1648 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1647
  %1649 = add nuw nsw i32 %1129, 605
  %1650 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1649
  %1651 = add nuw nsw i32 %1129, 1492
  %1652 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1651
  %1653 = add nuw nsw i32 %1129, 732
  %1654 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1653
  %1655 = add nuw nsw i32 %1129, 733
  %1656 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1655
  %1657 = add nuw nsw i32 %1129, 1620
  %1658 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1657
  %1659 = icmp ult i32 %1129, 23
  %1660 = add nuw nsw i32 %1129, 860
  %1661 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1660
  %1662 = add nuw nsw i32 %1129, 861
  %1663 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1662
  %1664 = add nuw nsw i32 %1129, 1748
  %1665 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1664
  %1666 = add nuw nsw i32 %1129, 1365
  %1667 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1666
  %1668 = add nuw nsw i32 %1129, 1493
  %1669 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1668
  %1670 = add nuw nsw i32 %1129, 1621
  %1671 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1670
  %1672 = add nuw nsw i32 %1129, 1749
  %1673 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1672
  %1674 = icmp ult i32 %1129, 24
  %1675 = add nsw i32 %1614, 408
  %1676 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1614
  %1677 = add nsw i32 %1614, 136
  %1678 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1677
  %1679 = add nsw i32 %1614, 68
  %1680 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1679
  %1681 = add nsw i32 %1614, 272
  %1682 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1681
  %1683 = add nsw i32 %1614, 204
  %1684 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1683
  %1685 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1675
  %1686 = add nsw i32 %1614, 340
  %1687 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1686
  %1688 = add nsw i32 %1614, 544
  %1689 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1688
  %1690 = add nsw i32 %1614, 476
  %1691 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1690
  %1692 = add nsw i32 %1614, 680
  %1693 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1692
  %1694 = add nsw i32 %1614, 612
  %1695 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1694
  %1696 = add nsw i32 %1614, 748
  %1697 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1696
  %1698 = add nsw i32 %1614, 816
  %1699 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1698
  br label %1700

1700:                                             ; preds = %2003, %1616
  %1701 = phi i32 [ 0, %1616 ], [ %2005, %2003 ]
  %1702 = phi i32 [ %1256, %1616 ], [ %1725, %2003 ]
  %1703 = phi i32 [ %1389, %1616 ], [ %1755, %2003 ]
  %1704 = phi i32 [ %1606, %1616 ], [ %2004, %2003 ]
  %1705 = add nsw i32 %1702, %2
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1706
  %1708 = load float, float addrspace(1)* %1707, align 4, !tbaa !6
  store float %1708, float addrspace(3)* %1618, align 4, !tbaa !6
  %1709 = add nsw i32 %1705, %2
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1710
  %1712 = load float, float addrspace(1)* %1711, align 4, !tbaa !6
  store float %1712, float addrspace(3)* %1620, align 4, !tbaa !6
  %1713 = add nsw i32 %1709, %2
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1714
  %1716 = load float, float addrspace(1)* %1715, align 4, !tbaa !6
  store float %1716, float addrspace(3)* %1622, align 4, !tbaa !6
  %1717 = add nsw i32 %1713, %2
  %1718 = sext i32 %1717 to i64
  %1719 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1718
  %1720 = load float, float addrspace(1)* %1719, align 4, !tbaa !6
  store float %1720, float addrspace(3)* %1624, align 4, !tbaa !6
  %1721 = add nsw i32 %1717, %2
  %1722 = sext i32 %1721 to i64
  %1723 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1722
  %1724 = load float, float addrspace(1)* %1723, align 4, !tbaa !6
  store float %1724, float addrspace(3)* %1626, align 4, !tbaa !6
  %1725 = add nsw i32 %1721, %2
  %1726 = sext i32 %1725 to i64
  %1727 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1726
  %1728 = load float, float addrspace(1)* %1727, align 4, !tbaa !6
  store float %1728, float addrspace(3)* %1628, align 4, !tbaa !6
  br i1 %1257, label %1729, label %1754

1729:                                             ; preds = %1700
  %1730 = add nsw i32 %1703, %1388
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1731
  %1733 = load float, float addrspace(1)* %1732, align 4, !tbaa !6
  store float %1733, float addrspace(3)* %1630, align 4, !tbaa !6
  %1734 = add nsw i32 %1730, %1388
  %1735 = sext i32 %1734 to i64
  %1736 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1735
  %1737 = load float, float addrspace(1)* %1736, align 4, !tbaa !6
  store float %1737, float addrspace(3)* %1632, align 4, !tbaa !6
  %1738 = add nsw i32 %1734, %1388
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1739
  %1741 = load float, float addrspace(1)* %1740, align 4, !tbaa !6
  store float %1741, float addrspace(3)* %1634, align 4, !tbaa !6
  %1742 = add nsw i32 %1738, %1388
  %1743 = sext i32 %1742 to i64
  %1744 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1743
  %1745 = load float, float addrspace(1)* %1744, align 4, !tbaa !6
  store float %1745, float addrspace(3)* %1636, align 4, !tbaa !6
  %1746 = add nsw i32 %1742, %1388
  %1747 = sext i32 %1746 to i64
  %1748 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1747
  %1749 = load float, float addrspace(1)* %1748, align 4, !tbaa !6
  store float %1749, float addrspace(3)* %1638, align 4, !tbaa !6
  %1750 = add nsw i32 %1746, %1388
  %1751 = sext i32 %1750 to i64
  %1752 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1751
  %1753 = load float, float addrspace(1)* %1752, align 4, !tbaa !6
  store float %1753, float addrspace(3)* %1640, align 4, !tbaa !6
  br label %1754

1754:                                             ; preds = %1729, %1700
  %1755 = phi i32 [ %1750, %1729 ], [ %1703, %1700 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1756 = load float, float addrspace(3)* %1642, align 4, !tbaa !6
  %1757 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1758 = fadd contract float %1756, %1757
  %1759 = fmul contract float %1758, 0x3FF960CE60000000
  %1760 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1761 = fsub contract float %1760, %1759
  store float %1761, float addrspace(3)* %1646, align 4, !tbaa !6
  %1762 = load float, float addrspace(3)* %1648, align 4, !tbaa !6
  %1763 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1764 = fadd contract float %1762, %1763
  %1765 = fmul contract float %1764, 0x3FF960CE60000000
  %1766 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1767 = fsub contract float %1766, %1765
  store float %1767, float addrspace(3)* %1652, align 4, !tbaa !6
  %1768 = load float, float addrspace(3)* %1654, align 4, !tbaa !6
  %1769 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1770 = fadd contract float %1768, %1769
  %1771 = fmul contract float %1770, 0x3FF960CE60000000
  %1772 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1773 = fsub contract float %1772, %1771
  store float %1773, float addrspace(3)* %1658, align 4, !tbaa !6
  br i1 %1659, label %1774, label %1781

1774:                                             ; preds = %1754
  %1775 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1776 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1777 = fadd contract float %1775, %1776
  %1778 = fmul contract float %1777, 0x3FF960CE60000000
  %1779 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1780 = fsub contract float %1779, %1778
  store float %1780, float addrspace(3)* %1665, align 4, !tbaa !6
  br label %1781

1781:                                             ; preds = %1774, %1754
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1782 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1783 = load float, float addrspace(3)* %1667, align 4, !tbaa !6
  %1784 = fadd contract float %1782, %1783
  %1785 = fmul contract float %1784, 0x3FAB2035C0000000
  %1786 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1787 = fsub contract float %1786, %1785
  store float %1787, float addrspace(3)* %1644, align 4, !tbaa !6
  %1788 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1789 = load float, float addrspace(3)* %1669, align 4, !tbaa !6
  %1790 = fadd contract float %1788, %1789
  %1791 = fmul contract float %1790, 0x3FAB2035C0000000
  %1792 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1793 = fsub contract float %1792, %1791
  store float %1793, float addrspace(3)* %1650, align 4, !tbaa !6
  %1794 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1795 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1796 = fadd contract float %1794, %1795
  %1797 = fmul contract float %1796, 0x3FAB2035C0000000
  %1798 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1799 = fsub contract float %1798, %1797
  store float %1799, float addrspace(3)* %1656, align 4, !tbaa !6
  br i1 %1659, label %1800, label %1807

1800:                                             ; preds = %1781
  %1801 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1802 = load float, float addrspace(3)* %1673, align 4, !tbaa !6
  %1803 = fadd contract float %1801, %1802
  %1804 = fmul contract float %1803, 0x3FAB2035C0000000
  %1805 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1806 = fsub contract float %1805, %1804
  store float %1806, float addrspace(3)* %1663, align 4, !tbaa !6
  br label %1807

1807:                                             ; preds = %1800, %1781
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1808 = load float, float addrspace(3)* %1642, align 4, !tbaa !6
  %1809 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1810 = fadd contract float %1808, %1809
  %1811 = fmul contract float %1810, 0x3FEC40CEC0000000
  %1812 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1813 = fadd contract float %1812, %1811
  store float %1813, float addrspace(3)* %1646, align 4, !tbaa !6
  %1814 = load float, float addrspace(3)* %1648, align 4, !tbaa !6
  %1815 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1816 = fadd contract float %1814, %1815
  %1817 = fmul contract float %1816, 0x3FEC40CEC0000000
  %1818 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1819 = fadd contract float %1818, %1817
  store float %1819, float addrspace(3)* %1652, align 4, !tbaa !6
  %1820 = load float, float addrspace(3)* %1654, align 4, !tbaa !6
  %1821 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1822 = fadd contract float %1820, %1821
  %1823 = fmul contract float %1822, 0x3FEC40CEC0000000
  %1824 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1825 = fadd contract float %1824, %1823
  store float %1825, float addrspace(3)* %1658, align 4, !tbaa !6
  br i1 %1659, label %1826, label %1833

1826:                                             ; preds = %1807
  %1827 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1828 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1829 = fadd contract float %1827, %1828
  %1830 = fmul contract float %1829, 0x3FEC40CEC0000000
  %1831 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1832 = fadd contract float %1831, %1830
  store float %1832, float addrspace(3)* %1665, align 4, !tbaa !6
  br label %1833

1833:                                             ; preds = %1826, %1807
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1834 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1835 = load float, float addrspace(3)* %1667, align 4, !tbaa !6
  %1836 = fadd contract float %1834, %1835
  %1837 = fmul contract float %1836, 0x3FDC626AA0000000
  %1838 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1839 = fadd contract float %1838, %1837
  store float %1839, float addrspace(3)* %1644, align 4, !tbaa !6
  %1840 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1841 = load float, float addrspace(3)* %1669, align 4, !tbaa !6
  %1842 = fadd contract float %1840, %1841
  %1843 = fmul contract float %1842, 0x3FDC626AA0000000
  %1844 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1845 = fadd contract float %1844, %1843
  store float %1845, float addrspace(3)* %1650, align 4, !tbaa !6
  %1846 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1847 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1848 = fadd contract float %1846, %1847
  %1849 = fmul contract float %1848, 0x3FDC626AA0000000
  %1850 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1851 = fadd contract float %1850, %1849
  store float %1851, float addrspace(3)* %1656, align 4, !tbaa !6
  br i1 %1659, label %1852, label %1859

1852:                                             ; preds = %1833
  %1853 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1854 = load float, float addrspace(3)* %1673, align 4, !tbaa !6
  %1855 = fadd contract float %1853, %1854
  %1856 = fmul contract float %1855, 0x3FDC626AA0000000
  %1857 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1858 = fadd contract float %1857, %1856
  store float %1858, float addrspace(3)* %1663, align 4, !tbaa !6
  br label %1859

1859:                                             ; preds = %1852, %1833
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1860 = load float, float addrspace(3)* %1642, align 4, !tbaa !6
  %1861 = fmul contract float %1860, 0x3FEA033860000000
  store float %1861, float addrspace(3)* %1642, align 4, !tbaa !6
  %1862 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1863 = fmul contract float %1862, 0x3FF3AECB00000000
  store float %1863, float addrspace(3)* %1646, align 4, !tbaa !6
  %1864 = load float, float addrspace(3)* %1648, align 4, !tbaa !6
  %1865 = fmul contract float %1864, 0x3FEA033860000000
  store float %1865, float addrspace(3)* %1648, align 4, !tbaa !6
  %1866 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1867 = fmul contract float %1866, 0x3FF3AECB00000000
  store float %1867, float addrspace(3)* %1652, align 4, !tbaa !6
  %1868 = load float, float addrspace(3)* %1654, align 4, !tbaa !6
  %1869 = fmul contract float %1868, 0x3FEA033860000000
  store float %1869, float addrspace(3)* %1654, align 4, !tbaa !6
  %1870 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1871 = fmul contract float %1870, 0x3FF3AECB00000000
  store float %1871, float addrspace(3)* %1658, align 4, !tbaa !6
  br i1 %1674, label %1872, label %1877

1872:                                             ; preds = %1859
  %1873 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1874 = fmul contract float %1873, 0x3FEA033860000000
  store float %1874, float addrspace(3)* %1661, align 4, !tbaa !6
  %1875 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1876 = fmul contract float %1875, 0x3FF3AECB00000000
  store float %1876, float addrspace(3)* %1665, align 4, !tbaa !6
  br label %1877

1877:                                             ; preds = %1872, %1859
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1878 = load float, float addrspace(3)* %1685, align 4, !tbaa !6
  %1879 = load float, float addrspace(3)* %1691, align 4, !tbaa !6
  %1880 = load float, float addrspace(3)* %1689, align 4, !tbaa !6
  %1881 = load float, float addrspace(3)* %1695, align 4, !tbaa !6
  %1882 = load float, float addrspace(3)* %1693, align 4, !tbaa !6
  %1883 = load float, float addrspace(3)* %1697, align 4, !tbaa !6
  %1884 = load float, float addrspace(3)* %1699, align 4, !tbaa !6
  %1885 = load float, float addrspace(3)* %1676, align 4, !tbaa !6
  %1886 = load float, float addrspace(3)* %1678, align 4, !tbaa !6
  %1887 = fadd contract float %1885, %1886
  %1888 = fmul contract float %1887, 0x3FF960CE60000000
  %1889 = load float, float addrspace(3)* %1680, align 4, !tbaa !6
  %1890 = fsub contract float %1889, %1888
  %1891 = load float, float addrspace(3)* %1682, align 4, !tbaa !6
  %1892 = fadd contract float %1886, %1891
  %1893 = fmul contract float %1892, 0x3FF960CE60000000
  %1894 = load float, float addrspace(3)* %1684, align 4, !tbaa !6
  %1895 = fsub contract float %1894, %1893
  %1896 = fadd contract float %1878, %1891
  %1897 = fmul contract float %1896, 0x3FF960CE60000000
  %1898 = load float, float addrspace(3)* %1687, align 4, !tbaa !6
  %1899 = fsub contract float %1898, %1897
  %1900 = fadd contract float %1878, %1880
  %1901 = fmul contract float %1900, 0x3FF960CE60000000
  %1902 = fsub contract float %1879, %1901
  %1903 = fadd contract float %1880, %1882
  %1904 = fmul contract float %1903, 0x3FF960CE60000000
  %1905 = fsub contract float %1881, %1904
  %1906 = fadd contract float %1882, %1884
  %1907 = fmul contract float %1906, 0x3FF960CE60000000
  %1908 = fsub contract float %1883, %1907
  %1909 = fadd contract float %1890, %1895
  %1910 = fmul contract float %1909, 0x3FAB2035C0000000
  %1911 = fsub contract float %1886, %1910
  %1912 = fadd contract float %1895, %1899
  %1913 = fmul contract float %1912, 0x3FAB2035C0000000
  %1914 = fsub contract float %1891, %1913
  %1915 = fadd contract float %1902, %1899
  %1916 = fmul contract float %1915, 0x3FAB2035C0000000
  %1917 = fsub contract float %1878, %1916
  %1918 = fadd contract float %1902, %1905
  %1919 = fmul contract float %1918, 0x3FAB2035C0000000
  %1920 = fsub contract float %1880, %1919
  %1921 = fadd contract float %1905, %1908
  %1922 = fmul contract float %1921, 0x3FAB2035C0000000
  %1923 = fsub contract float %1882, %1922
  %1924 = fadd contract float %1885, %1911
  %1925 = fmul contract float %1924, 0x3FEC40CEC0000000
  %1926 = fadd contract float %1890, %1925
  store float %1926, float addrspace(3)* %1680, align 4, !tbaa !6
  %1927 = fadd contract float %1911, %1914
  %1928 = fmul contract float %1927, 0x3FEC40CEC0000000
  %1929 = fadd contract float %1895, %1928
  store float %1929, float addrspace(3)* %1684, align 4, !tbaa !6
  %1930 = fadd contract float %1914, %1917
  %1931 = fmul contract float %1930, 0x3FEC40CEC0000000
  %1932 = fadd contract float %1899, %1931
  store float %1932, float addrspace(3)* %1687, align 4, !tbaa !6
  %1933 = fadd contract float %1920, %1917
  %1934 = fmul contract float %1933, 0x3FEC40CEC0000000
  %1935 = fadd contract float %1902, %1934
  store float %1935, float addrspace(3)* %1691, align 4, !tbaa !6
  %1936 = fadd contract float %1920, %1923
  %1937 = fmul contract float %1936, 0x3FEC40CEC0000000
  %1938 = fadd contract float %1905, %1937
  store float %1938, float addrspace(3)* %1695, align 4, !tbaa !6
  %1939 = fadd contract float %1884, %1923
  %1940 = fmul contract float %1939, 0x3FEC40CEC0000000
  %1941 = fadd contract float %1908, %1940
  store float %1941, float addrspace(3)* %1697, align 4, !tbaa !6
  %1942 = fadd contract float %1926, %1929
  %1943 = fmul contract float %1942, 0x3FDC626AA0000000
  %1944 = fadd contract float %1911, %1943
  store float %1944, float addrspace(3)* %1678, align 4, !tbaa !6
  %1945 = fadd contract float %1929, %1932
  %1946 = fmul contract float %1945, 0x3FDC626AA0000000
  %1947 = fadd contract float %1914, %1946
  store float %1947, float addrspace(3)* %1682, align 4, !tbaa !6
  %1948 = fadd contract float %1932, %1935
  %1949 = fmul contract float %1948, 0x3FDC626AA0000000
  %1950 = fadd contract float %1917, %1949
  store float %1950, float addrspace(3)* %1685, align 4, !tbaa !6
  %1951 = fadd contract float %1938, %1935
  %1952 = fmul contract float %1951, 0x3FDC626AA0000000
  %1953 = fadd contract float %1920, %1952
  store float %1953, float addrspace(3)* %1689, align 4, !tbaa !6
  %1954 = fadd contract float %1938, %1941
  %1955 = fmul contract float %1954, 0x3FDC626AA0000000
  %1956 = fadd contract float %1923, %1955
  store float %1956, float addrspace(3)* %1693, align 4, !tbaa !6
  %1957 = icmp eq i32 %1704, %1605
  br i1 %1957, label %1963, label %1958

1958:                                             ; preds = %1877
  %1959 = add nsw i32 %1704, %1603
  %1960 = sext i32 %1704 to i64
  %1961 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1960
  %1962 = fmul contract float %1947, 0x3FEA033860000000
  store float %1962, float addrspace(1)* %1961, align 4, !tbaa !6
  br label %1963

1963:                                             ; preds = %1958, %1877
  %1964 = phi i32 [ %1605, %1877 ], [ %1959, %1958 ]
  %1965 = icmp eq i32 %1964, %1605
  br i1 %1965, label %1971, label %1966

1966:                                             ; preds = %1963
  %1967 = add nsw i32 %1964, %1604
  %1968 = sext i32 %1964 to i64
  %1969 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1968
  %1970 = fmul contract float %1932, 0x3FF3AECB00000000
  store float %1970, float addrspace(1)* %1969, align 4, !tbaa !6
  br label %1971

1971:                                             ; preds = %1966, %1963
  %1972 = phi i32 [ %1605, %1963 ], [ %1967, %1966 ]
  %1973 = icmp eq i32 %1972, %1605
  br i1 %1973, label %1979, label %1974

1974:                                             ; preds = %1971
  %1975 = add nsw i32 %1972, %1603
  %1976 = sext i32 %1972 to i64
  %1977 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1976
  %1978 = fmul contract float %1950, 0x3FEA033860000000
  store float %1978, float addrspace(1)* %1977, align 4, !tbaa !6
  br label %1979

1979:                                             ; preds = %1974, %1971
  %1980 = phi i32 [ %1605, %1971 ], [ %1975, %1974 ]
  %1981 = icmp eq i32 %1980, %1605
  br i1 %1981, label %1987, label %1982

1982:                                             ; preds = %1979
  %1983 = add nsw i32 %1980, %1604
  %1984 = sext i32 %1980 to i64
  %1985 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1984
  %1986 = fmul contract float %1935, 0x3FF3AECB00000000
  store float %1986, float addrspace(1)* %1985, align 4, !tbaa !6
  br label %1987

1987:                                             ; preds = %1982, %1979
  %1988 = phi i32 [ %1605, %1979 ], [ %1983, %1982 ]
  %1989 = icmp eq i32 %1988, %1605
  br i1 %1989, label %1995, label %1990

1990:                                             ; preds = %1987
  %1991 = add nsw i32 %1988, %1603
  %1992 = sext i32 %1988 to i64
  %1993 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1992
  %1994 = fmul contract float %1953, 0x3FEA033860000000
  store float %1994, float addrspace(1)* %1993, align 4, !tbaa !6
  br label %1995

1995:                                             ; preds = %1990, %1987
  %1996 = phi i32 [ %1605, %1987 ], [ %1991, %1990 ]
  %1997 = icmp eq i32 %1996, %1605
  br i1 %1997, label %2003, label %1998

1998:                                             ; preds = %1995
  %1999 = add nsw i32 %1996, %1604
  %2000 = sext i32 %1996 to i64
  %2001 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2000
  %2002 = fmul contract float %1938, 0x3FF3AECB00000000
  store float %2002, float addrspace(1)* %2001, align 4, !tbaa !6
  br label %2003

2003:                                             ; preds = %1998, %1995
  %2004 = phi i32 [ %1605, %1995 ], [ %1999, %1998 ]
  store float %1878, float addrspace(3)* %1676, align 4, !tbaa !6
  store float %1879, float addrspace(3)* %1680, align 4, !tbaa !6
  store float %1880, float addrspace(3)* %1678, align 4, !tbaa !6
  store float %1881, float addrspace(3)* %1684, align 4, !tbaa !6
  store float %1882, float addrspace(3)* %1682, align 4, !tbaa !6
  store float %1883, float addrspace(3)* %1687, align 4, !tbaa !6
  store float %1884, float addrspace(3)* %1685, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2005 = add nuw nsw i32 %1701, 1
  %2006 = icmp eq i32 %2005, %4
  br i1 %2006, label %2839, label %1700, !llvm.loop !16

2007:                                             ; preds = %1124
  br i1 %1138, label %2008, label %2068

2008:                                             ; preds = %2007
  %2009 = icmp slt i32 %1136, %2
  br i1 %2009, label %2014, label %2010

2010:                                             ; preds = %2008
  %2011 = shl nsw i32 %2, 1
  %2012 = sub i32 -2, %1136
  %2013 = add i32 %2012, %2011
  br label %2016

2014:                                             ; preds = %2008
  %2015 = icmp slt i32 %1136, 0
  br i1 %2015, label %2016, label %2018

2016:                                             ; preds = %2014, %2010
  %2017 = phi i32 [ %2013, %2010 ], [ %1137, %2014 ]
  br label %2018

2018:                                             ; preds = %2016, %2014
  %2019 = phi i32 [ %2017, %2016 ], [ %1136, %2014 ]
  %2020 = mul nsw i32 %1128, %2
  %2021 = add i32 %2019, %2020
  %2022 = sext i32 %2021 to i64
  %2023 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2022
  %2024 = load float, float addrspace(1)* %2023, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2025 = add nuw nsw i32 %1135, 272
  %2026 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2025
  store float %2024, float addrspace(3)* %2026, align 4, !tbaa !6
  %2027 = add nsw i32 %2021, %2
  %2028 = sext i32 %2027 to i64
  %2029 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2028
  %2030 = load float, float addrspace(1)* %2029, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2031 = add nuw nsw i32 %1135, 340
  %2032 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2031
  store float %2030, float addrspace(3)* %2032, align 4, !tbaa !6
  %2033 = add nuw nsw i32 %1135, 204
  %2034 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2033
  store float %2030, float addrspace(3)* %2034, align 4, !tbaa !6
  %2035 = add nsw i32 %2027, %2
  %2036 = sext i32 %2035 to i64
  %2037 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2036
  %2038 = load float, float addrspace(1)* %2037, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2039 = add nuw nsw i32 %1135, 408
  %2040 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2039
  store float %2038, float addrspace(3)* %2040, align 4, !tbaa !6
  %2041 = add nuw nsw i32 %1135, 136
  %2042 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2041
  store float %2038, float addrspace(3)* %2042, align 4, !tbaa !6
  %2043 = add nsw i32 %2035, %2
  %2044 = sext i32 %2043 to i64
  %2045 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2044
  %2046 = load float, float addrspace(1)* %2045, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2047 = add nuw nsw i32 %1135, 68
  %2048 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2047
  store float %2046, float addrspace(3)* %2048, align 4, !tbaa !6
  %2049 = add nsw i32 %2043, %2
  %2050 = sext i32 %2049 to i64
  %2051 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2050
  %2052 = load float, float addrspace(1)* %2051, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2053 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %2052, float addrspace(3)* %2053, align 4, !tbaa !6
  %2054 = add nsw i32 %1128, 3
  br i1 %2009, label %2059, label %2055

2055:                                             ; preds = %2018
  %2056 = shl nsw i32 %2, 1
  %2057 = sub i32 -2, %1136
  %2058 = add i32 %2057, %2056
  br label %2061

2059:                                             ; preds = %2018
  %2060 = icmp slt i32 %1136, 0
  br i1 %2060, label %2061, label %2063

2061:                                             ; preds = %2059, %2055
  %2062 = phi i32 [ %2058, %2055 ], [ %1137, %2059 ]
  br label %2063

2063:                                             ; preds = %2061, %2059
  %2064 = phi i32 [ %2062, %2061 ], [ %1136, %2059 ]
  %2065 = mul nsw i32 %2054, %2
  %2066 = sub i32 %2065, %2
  %2067 = add i32 %2066, %2064
  br label %2123

2068:                                             ; preds = %2007
  %2069 = add nsw i32 %1128, -4
  %2070 = icmp slt i32 %1136, %2
  br i1 %2070, label %2075, label %2071

2071:                                             ; preds = %2068
  %2072 = shl nsw i32 %2, 1
  %2073 = sub i32 -2, %1136
  %2074 = add i32 %2073, %2072
  br label %2077

2075:                                             ; preds = %2068
  %2076 = icmp slt i32 %1136, 0
  br i1 %2076, label %2077, label %2079

2077:                                             ; preds = %2075, %2071
  %2078 = phi i32 [ %2074, %2071 ], [ %1137, %2075 ]
  br label %2079

2079:                                             ; preds = %2077, %2075
  %2080 = phi i32 [ %2078, %2077 ], [ %1136, %2075 ]
  %2081 = mul nsw i32 %2069, %2
  %2082 = add i32 %2080, %2081
  %2083 = sext i32 %2082 to i64
  %2084 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2083
  %2085 = load float, float addrspace(1)* %2084, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2086 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %2085, float addrspace(3)* %2086, align 4, !tbaa !6
  %2087 = add nsw i32 %2082, %2
  %2088 = sext i32 %2087 to i64
  %2089 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2088
  %2090 = load float, float addrspace(1)* %2089, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2091 = add nuw nsw i32 %1135, 68
  %2092 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2091
  store float %2090, float addrspace(3)* %2092, align 4, !tbaa !6
  %2093 = add nsw i32 %2087, %2
  %2094 = sext i32 %2093 to i64
  %2095 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2094
  %2096 = load float, float addrspace(1)* %2095, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2097 = add nuw nsw i32 %1135, 136
  %2098 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2097
  store float %2096, float addrspace(3)* %2098, align 4, !tbaa !6
  %2099 = add nsw i32 %2093, %2
  %2100 = sext i32 %2099 to i64
  %2101 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2100
  %2102 = load float, float addrspace(1)* %2101, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2103 = add nuw nsw i32 %1135, 204
  %2104 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2103
  store float %2102, float addrspace(3)* %2104, align 4, !tbaa !6
  %2105 = add nsw i32 %2099, %2
  %2106 = sext i32 %2105 to i64
  %2107 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2106
  %2108 = load float, float addrspace(1)* %2107, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2109 = add nuw nsw i32 %1135, 272
  %2110 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2109
  store float %2108, float addrspace(3)* %2110, align 4, !tbaa !6
  %2111 = add nsw i32 %2105, %2
  %2112 = sext i32 %2111 to i64
  %2113 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2112
  %2114 = load float, float addrspace(1)* %2113, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2115 = add nuw nsw i32 %1135, 340
  %2116 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2115
  store float %2114, float addrspace(3)* %2116, align 4, !tbaa !6
  %2117 = add nsw i32 %2111, %2
  %2118 = sext i32 %2117 to i64
  %2119 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2118
  %2120 = load float, float addrspace(1)* %2119, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2121 = add nuw nsw i32 %1135, 408
  %2122 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2121
  store float %2120, float addrspace(3)* %2122, align 4, !tbaa !6
  br label %2123

2123:                                             ; preds = %2079, %2063
  %2124 = phi i32 [ %2067, %2063 ], [ %2117, %2079 ]
  %2125 = icmp ult i32 %1129, 7
  br i1 %2125, label %2126, label %2255

2126:                                             ; preds = %2123
  %2127 = icmp ult i32 %1129, 3
  %2128 = select i1 %2127, i32 128, i32 -7
  %2129 = add nsw i32 %2128, %1129
  %2130 = trunc i32 %2129 to i16
  %2131 = add nsw i16 %2130, 4
  %2132 = sdiv i16 %2131, 2
  %2133 = sext i16 %2132 to i32
  %2134 = and i32 %2129, 1
  %2135 = icmp eq i32 %2134, 0
  %2136 = select i1 %2135, i32 0, i32 888
  %2137 = add nsw i32 %2136, %2133
  %2138 = add i32 %2129, %1125
  %2139 = sub i32 0, %2138
  br i1 %1138, label %2140, label %2200

2140:                                             ; preds = %2126
  %2141 = icmp slt i32 %2138, %2
  br i1 %2141, label %2146, label %2142

2142:                                             ; preds = %2140
  %2143 = shl nsw i32 %2, 1
  %2144 = sub i32 -2, %2138
  %2145 = add i32 %2144, %2143
  br label %2148

2146:                                             ; preds = %2140
  %2147 = icmp slt i32 %2138, 0
  br i1 %2147, label %2148, label %2150

2148:                                             ; preds = %2146, %2142
  %2149 = phi i32 [ %2145, %2142 ], [ %2139, %2146 ]
  br label %2150

2150:                                             ; preds = %2148, %2146
  %2151 = phi i32 [ %2149, %2148 ], [ %2138, %2146 ]
  %2152 = mul nsw i32 %1128, %2
  %2153 = add i32 %2151, %2152
  %2154 = sext i32 %2153 to i64
  %2155 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2154
  %2156 = load float, float addrspace(1)* %2155, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2157 = add nsw i32 %2137, 272
  %2158 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2157
  store float %2156, float addrspace(3)* %2158, align 4, !tbaa !6
  %2159 = add nsw i32 %2153, %2
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2160
  %2162 = load float, float addrspace(1)* %2161, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2163 = add nsw i32 %2137, 340
  %2164 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2163
  store float %2162, float addrspace(3)* %2164, align 4, !tbaa !6
  %2165 = add nsw i32 %2137, 204
  %2166 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2165
  store float %2162, float addrspace(3)* %2166, align 4, !tbaa !6
  %2167 = add nsw i32 %2159, %2
  %2168 = sext i32 %2167 to i64
  %2169 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2168
  %2170 = load float, float addrspace(1)* %2169, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2171 = add nsw i32 %2137, 408
  %2172 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2171
  store float %2170, float addrspace(3)* %2172, align 4, !tbaa !6
  %2173 = add nsw i32 %2137, 136
  %2174 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2173
  store float %2170, float addrspace(3)* %2174, align 4, !tbaa !6
  %2175 = add nsw i32 %2167, %2
  %2176 = sext i32 %2175 to i64
  %2177 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2176
  %2178 = load float, float addrspace(1)* %2177, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2179 = add nsw i32 %2137, 68
  %2180 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2179
  store float %2178, float addrspace(3)* %2180, align 4, !tbaa !6
  %2181 = add nsw i32 %2175, %2
  %2182 = sext i32 %2181 to i64
  %2183 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2182
  %2184 = load float, float addrspace(1)* %2183, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2185 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2137
  store float %2184, float addrspace(3)* %2185, align 4, !tbaa !6
  %2186 = add nsw i32 %1128, 3
  br i1 %2141, label %2191, label %2187

2187:                                             ; preds = %2150
  %2188 = shl nsw i32 %2, 1
  %2189 = sub i32 -2, %2138
  %2190 = add i32 %2189, %2188
  br label %2193

2191:                                             ; preds = %2150
  %2192 = icmp slt i32 %2138, 0
  br i1 %2192, label %2193, label %2195

2193:                                             ; preds = %2191, %2187
  %2194 = phi i32 [ %2190, %2187 ], [ %2139, %2191 ]
  br label %2195

2195:                                             ; preds = %2193, %2191
  %2196 = phi i32 [ %2194, %2193 ], [ %2138, %2191 ]
  %2197 = mul nsw i32 %2186, %2
  %2198 = sub i32 %2197, %2
  %2199 = add i32 %2198, %2196
  br label %2255

2200:                                             ; preds = %2126
  %2201 = add nsw i32 %1128, -4
  %2202 = icmp slt i32 %2138, %2
  br i1 %2202, label %2207, label %2203

2203:                                             ; preds = %2200
  %2204 = shl nsw i32 %2, 1
  %2205 = sub i32 -2, %2138
  %2206 = add i32 %2205, %2204
  br label %2209

2207:                                             ; preds = %2200
  %2208 = icmp slt i32 %2138, 0
  br i1 %2208, label %2209, label %2211

2209:                                             ; preds = %2207, %2203
  %2210 = phi i32 [ %2206, %2203 ], [ %2139, %2207 ]
  br label %2211

2211:                                             ; preds = %2209, %2207
  %2212 = phi i32 [ %2210, %2209 ], [ %2138, %2207 ]
  %2213 = mul nsw i32 %2201, %2
  %2214 = add i32 %2212, %2213
  %2215 = sext i32 %2214 to i64
  %2216 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2215
  %2217 = load float, float addrspace(1)* %2216, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2218 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2137
  store float %2217, float addrspace(3)* %2218, align 4, !tbaa !6
  %2219 = add nsw i32 %2214, %2
  %2220 = sext i32 %2219 to i64
  %2221 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2220
  %2222 = load float, float addrspace(1)* %2221, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2223 = add nsw i32 %2137, 68
  %2224 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2223
  store float %2222, float addrspace(3)* %2224, align 4, !tbaa !6
  %2225 = add nsw i32 %2219, %2
  %2226 = sext i32 %2225 to i64
  %2227 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2226
  %2228 = load float, float addrspace(1)* %2227, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2229 = add nsw i32 %2137, 136
  %2230 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2229
  store float %2228, float addrspace(3)* %2230, align 4, !tbaa !6
  %2231 = add nsw i32 %2225, %2
  %2232 = sext i32 %2231 to i64
  %2233 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2232
  %2234 = load float, float addrspace(1)* %2233, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2235 = add nsw i32 %2137, 204
  %2236 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2235
  store float %2234, float addrspace(3)* %2236, align 4, !tbaa !6
  %2237 = add nsw i32 %2231, %2
  %2238 = sext i32 %2237 to i64
  %2239 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2238
  %2240 = load float, float addrspace(1)* %2239, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2241 = add nsw i32 %2137, 272
  %2242 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2241
  store float %2240, float addrspace(3)* %2242, align 4, !tbaa !6
  %2243 = add nsw i32 %2237, %2
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2244
  %2246 = load float, float addrspace(1)* %2245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2247 = add nsw i32 %2137, 340
  %2248 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2247
  store float %2246, float addrspace(3)* %2248, align 4, !tbaa !6
  %2249 = add nsw i32 %2243, %2
  %2250 = sext i32 %2249 to i64
  %2251 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2250
  %2252 = load float, float addrspace(1)* %2251, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2253 = add nsw i32 %2137, 408
  %2254 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2253
  store float %2252, float addrspace(3)* %2254, align 4, !tbaa !6
  br label %2255

2255:                                             ; preds = %2211, %2195, %2123
  %2256 = phi i32 [ 0, %2123 ], [ %2, %2195 ], [ %2, %2211 ]
  %2257 = phi i32 [ 0, %2123 ], [ %2199, %2195 ], [ %2249, %2211 ]
  %2258 = phi i32 [ 0, %2123 ], [ %2137, %2195 ], [ %2137, %2211 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2259 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1129
  %2260 = load float, float addrspace(3)* %2259, align 4, !tbaa !6
  %2261 = add nuw nsw i32 %1129, 1
  %2262 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2261
  %2263 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2264 = add nuw nsw i32 %1129, 888
  %2265 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2264
  %2266 = fadd contract float %2260, %2263
  %2267 = fmul contract float %2266, 0x3FF960CE60000000
  %2268 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2269 = fsub contract float %2268, %2267
  store float %2269, float addrspace(3)* %2265, align 4, !tbaa !6
  %2270 = add nuw nsw i32 %1129, 128
  %2271 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2270
  %2272 = load float, float addrspace(3)* %2271, align 4, !tbaa !6
  %2273 = add nuw nsw i32 %1129, 129
  %2274 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2273
  %2275 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2276 = add nuw nsw i32 %1129, 1016
  %2277 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2276
  %2278 = fadd contract float %2272, %2275
  %2279 = fmul contract float %2278, 0x3FF960CE60000000
  %2280 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2281 = fsub contract float %2280, %2279
  store float %2281, float addrspace(3)* %2277, align 4, !tbaa !6
  %2282 = add nuw nsw i32 %1129, 256
  %2283 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2282
  %2284 = load float, float addrspace(3)* %2283, align 4, !tbaa !6
  %2285 = add nuw nsw i32 %1129, 257
  %2286 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2285
  %2287 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2288 = add nuw nsw i32 %1129, 1144
  %2289 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2288
  %2290 = fadd contract float %2284, %2287
  %2291 = fmul contract float %2290, 0x3FF960CE60000000
  %2292 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2293 = fsub contract float %2292, %2291
  store float %2293, float addrspace(3)* %2289, align 4, !tbaa !6
  %2294 = icmp ult i32 %1129, 91
  br i1 %2294, label %2295, label %2308

2295:                                             ; preds = %2255
  %2296 = add nuw nsw i32 %1129, 384
  %2297 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2296
  %2298 = load float, float addrspace(3)* %2297, align 4, !tbaa !6
  %2299 = add nuw nsw i32 %1129, 385
  %2300 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2299
  %2301 = load float, float addrspace(3)* %2300, align 4, !tbaa !6
  %2302 = add nuw nsw i32 %1129, 1272
  %2303 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2302
  %2304 = fadd contract float %2298, %2301
  %2305 = fmul contract float %2304, 0x3FF960CE60000000
  %2306 = load float, float addrspace(3)* %2303, align 4, !tbaa !6
  %2307 = fsub contract float %2306, %2305
  store float %2307, float addrspace(3)* %2303, align 4, !tbaa !6
  br label %2308

2308:                                             ; preds = %2295, %2255
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2309 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2310 = add nuw nsw i32 %1129, 889
  %2311 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2310
  %2312 = load float, float addrspace(3)* %2311, align 4, !tbaa !6
  %2313 = fadd contract float %2309, %2312
  %2314 = fmul contract float %2313, 0x3FAB2035C0000000
  %2315 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2316 = fsub contract float %2315, %2314
  store float %2316, float addrspace(3)* %2262, align 4, !tbaa !6
  %2317 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2318 = add nuw nsw i32 %1129, 1017
  %2319 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2318
  %2320 = load float, float addrspace(3)* %2319, align 4, !tbaa !6
  %2321 = fadd contract float %2317, %2320
  %2322 = fmul contract float %2321, 0x3FAB2035C0000000
  %2323 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2324 = fsub contract float %2323, %2322
  store float %2324, float addrspace(3)* %2274, align 4, !tbaa !6
  %2325 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2326 = add nuw nsw i32 %1129, 1145
  %2327 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2326
  %2328 = load float, float addrspace(3)* %2327, align 4, !tbaa !6
  %2329 = fadd contract float %2325, %2328
  %2330 = fmul contract float %2329, 0x3FAB2035C0000000
  %2331 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2332 = fsub contract float %2331, %2330
  store float %2332, float addrspace(3)* %2286, align 4, !tbaa !6
  br i1 %2294, label %2333, label %2346

2333:                                             ; preds = %2308
  %2334 = add nuw nsw i32 %1129, 1272
  %2335 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2334
  %2336 = load float, float addrspace(3)* %2335, align 4, !tbaa !6
  %2337 = add nuw nsw i32 %1129, 1273
  %2338 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2337
  %2339 = load float, float addrspace(3)* %2338, align 4, !tbaa !6
  %2340 = add nuw nsw i32 %1129, 385
  %2341 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2340
  %2342 = fadd contract float %2336, %2339
  %2343 = fmul contract float %2342, 0x3FAB2035C0000000
  %2344 = load float, float addrspace(3)* %2341, align 4, !tbaa !6
  %2345 = fsub contract float %2344, %2343
  store float %2345, float addrspace(3)* %2341, align 4, !tbaa !6
  br label %2346

2346:                                             ; preds = %2333, %2308
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2347 = load float, float addrspace(3)* %2259, align 4, !tbaa !6
  %2348 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2349 = fadd contract float %2347, %2348
  %2350 = fmul contract float %2349, 0x3FEC40CEC0000000
  %2351 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2352 = fadd contract float %2351, %2350
  store float %2352, float addrspace(3)* %2265, align 4, !tbaa !6
  %2353 = load float, float addrspace(3)* %2271, align 4, !tbaa !6
  %2354 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2355 = fadd contract float %2353, %2354
  %2356 = fmul contract float %2355, 0x3FEC40CEC0000000
  %2357 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2358 = fadd contract float %2357, %2356
  store float %2358, float addrspace(3)* %2277, align 4, !tbaa !6
  %2359 = load float, float addrspace(3)* %2283, align 4, !tbaa !6
  %2360 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2361 = fadd contract float %2359, %2360
  %2362 = fmul contract float %2361, 0x3FEC40CEC0000000
  %2363 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2364 = fadd contract float %2363, %2362
  store float %2364, float addrspace(3)* %2289, align 4, !tbaa !6
  br i1 %2294, label %2365, label %2378

2365:                                             ; preds = %2346
  %2366 = add nuw nsw i32 %1129, 384
  %2367 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2366
  %2368 = load float, float addrspace(3)* %2367, align 4, !tbaa !6
  %2369 = add nuw nsw i32 %1129, 385
  %2370 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2369
  %2371 = load float, float addrspace(3)* %2370, align 4, !tbaa !6
  %2372 = add nuw nsw i32 %1129, 1272
  %2373 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2372
  %2374 = fadd contract float %2368, %2371
  %2375 = fmul contract float %2374, 0x3FEC40CEC0000000
  %2376 = load float, float addrspace(3)* %2373, align 4, !tbaa !6
  %2377 = fadd contract float %2376, %2375
  store float %2377, float addrspace(3)* %2373, align 4, !tbaa !6
  br label %2378

2378:                                             ; preds = %2365, %2346
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2379 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2380 = load float, float addrspace(3)* %2311, align 4, !tbaa !6
  %2381 = fadd contract float %2379, %2380
  %2382 = fmul contract float %2381, 0x3FDC626AA0000000
  %2383 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2384 = fadd contract float %2383, %2382
  store float %2384, float addrspace(3)* %2262, align 4, !tbaa !6
  %2385 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2386 = load float, float addrspace(3)* %2319, align 4, !tbaa !6
  %2387 = fadd contract float %2385, %2386
  %2388 = fmul contract float %2387, 0x3FDC626AA0000000
  %2389 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2390 = fadd contract float %2389, %2388
  store float %2390, float addrspace(3)* %2274, align 4, !tbaa !6
  %2391 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2392 = load float, float addrspace(3)* %2327, align 4, !tbaa !6
  %2393 = fadd contract float %2391, %2392
  %2394 = fmul contract float %2393, 0x3FDC626AA0000000
  %2395 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2396 = fadd contract float %2395, %2394
  store float %2396, float addrspace(3)* %2286, align 4, !tbaa !6
  br i1 %2294, label %2397, label %2410

2397:                                             ; preds = %2378
  %2398 = add nuw nsw i32 %1129, 1272
  %2399 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2398
  %2400 = load float, float addrspace(3)* %2399, align 4, !tbaa !6
  %2401 = add nuw nsw i32 %1129, 1273
  %2402 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2401
  %2403 = load float, float addrspace(3)* %2402, align 4, !tbaa !6
  %2404 = add nuw nsw i32 %1129, 385
  %2405 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2404
  %2406 = fadd contract float %2400, %2403
  %2407 = fmul contract float %2406, 0x3FDC626AA0000000
  %2408 = load float, float addrspace(3)* %2405, align 4, !tbaa !6
  %2409 = fadd contract float %2408, %2407
  store float %2409, float addrspace(3)* %2405, align 4, !tbaa !6
  br label %2410

2410:                                             ; preds = %2397, %2378
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2411 = load float, float addrspace(3)* %2259, align 4, !tbaa !6
  %2412 = fmul contract float %2411, 0x3FEA033860000000
  store float %2412, float addrspace(3)* %2259, align 4, !tbaa !6
  %2413 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2414 = fmul contract float %2413, 0x3FF3AECB00000000
  store float %2414, float addrspace(3)* %2265, align 4, !tbaa !6
  %2415 = load float, float addrspace(3)* %2271, align 4, !tbaa !6
  %2416 = fmul contract float %2415, 0x3FEA033860000000
  store float %2416, float addrspace(3)* %2271, align 4, !tbaa !6
  %2417 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2418 = fmul contract float %2417, 0x3FF3AECB00000000
  store float %2418, float addrspace(3)* %2277, align 4, !tbaa !6
  %2419 = load float, float addrspace(3)* %2283, align 4, !tbaa !6
  %2420 = fmul contract float %2419, 0x3FEA033860000000
  store float %2420, float addrspace(3)* %2283, align 4, !tbaa !6
  %2421 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2422 = fmul contract float %2421, 0x3FF3AECB00000000
  store float %2422, float addrspace(3)* %2289, align 4, !tbaa !6
  %2423 = icmp ult i32 %1129, 92
  br i1 %2423, label %2424, label %2433

2424:                                             ; preds = %2410
  %2425 = add nuw nsw i32 %1129, 384
  %2426 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2425
  %2427 = load float, float addrspace(3)* %2426, align 4, !tbaa !6
  %2428 = fmul contract float %2427, 0x3FEA033860000000
  store float %2428, float addrspace(3)* %2426, align 4, !tbaa !6
  %2429 = add nuw nsw i32 %1129, 1272
  %2430 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2429
  %2431 = load float, float addrspace(3)* %2430, align 4, !tbaa !6
  %2432 = fmul contract float %2431, 0x3FF3AECB00000000
  store float %2432, float addrspace(3)* %2430, align 4, !tbaa !6
  br label %2433

2433:                                             ; preds = %2424, %2410
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2434 = shl nuw nsw i32 %1129, 1
  %2435 = lshr i32 %1129, 6
  %2436 = mul nsw i32 %2435, -127
  %2437 = add nsw i32 %2436, %2434
  %2438 = add i32 %2437, %1125
  %2439 = icmp slt i32 %2438, %2
  br i1 %2439, label %2440, label %2465

2440:                                             ; preds = %2433
  %2441 = sdiv i32 %2438, 2
  %2442 = and i32 %2438, 1
  %2443 = icmp eq i32 %2442, 0
  %2444 = sdiv i32 %2, 2
  %2445 = and i32 %2, 1
  %2446 = add nsw i32 %2444, %2445
  %2447 = sdiv i32 %3, 2
  %2448 = and i32 %3, 1
  %2449 = add nsw i32 %2447, %2448
  br i1 %2443, label %2455, label %2450

2450:                                             ; preds = %2440
  %2451 = mul nsw i32 %2449, %2446
  %2452 = add nsw i32 %2451, %2441
  %2453 = mul nsw i32 %3, %2
  %2454 = sdiv i32 %2453, 2
  br label %2457

2455:                                             ; preds = %2440
  %2456 = mul nsw i32 %2449, %2
  br label %2457

2457:                                             ; preds = %2455, %2450
  %2458 = phi i32 [ %2456, %2455 ], [ %2454, %2450 ]
  %2459 = phi i32 [ %2441, %2455 ], [ %2452, %2450 ]
  %2460 = phi i32 [ %2446, %2455 ], [ %2444, %2450 ]
  %2461 = sub nsw i32 %2460, %2458
  %2462 = sdiv i32 %1128, 2
  %2463 = mul nsw i32 %2460, %2462
  %2464 = add i32 %2463, %2459
  br label %2465

2465:                                             ; preds = %2457, %2433
  %2466 = phi i32 [ %2458, %2457 ], [ 0, %2433 ]
  %2467 = phi i32 [ %2461, %2457 ], [ 0, %2433 ]
  %2468 = phi i32 [ %2464, %2457 ], [ 0, %2433 ]
  %2469 = trunc i32 %2437 to i16
  %2470 = add nsw i16 %2469, 4
  %2471 = sdiv i16 %2470, 2
  %2472 = sext i16 %2471 to i32
  %2473 = and i32 %2437, 1
  %2474 = icmp eq i32 %2473, 0
  %2475 = select i1 %2474, i32 0, i32 888
  %2476 = add nsw i32 %2475, %2472
  %2477 = icmp sgt i32 %4, 0
  br i1 %2477, label %2478, label %2839

2478:                                             ; preds = %2465
  %2479 = add nuw nsw i32 %1135, 476
  %2480 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2479
  %2481 = add nuw nsw i32 %1135, 544
  %2482 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2481
  %2483 = add nuw nsw i32 %1135, 612
  %2484 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2483
  %2485 = add nuw nsw i32 %1135, 680
  %2486 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2485
  %2487 = add nuw nsw i32 %1135, 748
  %2488 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2487
  %2489 = add nuw nsw i32 %1135, 816
  %2490 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2489
  %2491 = add nsw i32 %2258, 476
  %2492 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2491
  %2493 = add nsw i32 %2258, 544
  %2494 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2493
  %2495 = add nsw i32 %2258, 612
  %2496 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2495
  %2497 = add nsw i32 %2258, 680
  %2498 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2497
  %2499 = add nsw i32 %2258, 748
  %2500 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2499
  %2501 = add nsw i32 %2258, 816
  %2502 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2501
  %2503 = add nuw nsw i32 %1129, 476
  %2504 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2503
  %2505 = add nuw nsw i32 %1129, 477
  %2506 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2505
  %2507 = add nuw nsw i32 %1129, 1364
  %2508 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2507
  %2509 = add nuw nsw i32 %1129, 604
  %2510 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2509
  %2511 = add nuw nsw i32 %1129, 605
  %2512 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2511
  %2513 = add nuw nsw i32 %1129, 1492
  %2514 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2513
  %2515 = add nuw nsw i32 %1129, 732
  %2516 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2515
  %2517 = add nuw nsw i32 %1129, 733
  %2518 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2517
  %2519 = add nuw nsw i32 %1129, 1620
  %2520 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2519
  %2521 = icmp ult i32 %1129, 23
  %2522 = add nuw nsw i32 %1129, 860
  %2523 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2522
  %2524 = add nuw nsw i32 %1129, 861
  %2525 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2524
  %2526 = add nuw nsw i32 %1129, 1748
  %2527 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2526
  %2528 = add nuw nsw i32 %1129, 1365
  %2529 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2528
  %2530 = add nuw nsw i32 %1129, 1493
  %2531 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2530
  %2532 = add nuw nsw i32 %1129, 1621
  %2533 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2532
  %2534 = add nuw nsw i32 %1129, 1749
  %2535 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2534
  %2536 = icmp ult i32 %1129, 24
  %2537 = add nsw i32 %2476, 408
  %2538 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2476
  %2539 = add nsw i32 %2476, 136
  %2540 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2539
  %2541 = add nsw i32 %2476, 68
  %2542 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2541
  %2543 = add nsw i32 %2476, 272
  %2544 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2543
  %2545 = add nsw i32 %2476, 204
  %2546 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2545
  %2547 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2537
  %2548 = add nsw i32 %2476, 340
  %2549 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2548
  %2550 = add nsw i32 %2476, 544
  %2551 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2550
  %2552 = add nsw i32 %2476, 476
  %2553 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2552
  %2554 = add nsw i32 %2476, 680
  %2555 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2554
  %2556 = add nsw i32 %2476, 612
  %2557 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2556
  %2558 = add nsw i32 %2476, 748
  %2559 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2558
  %2560 = add nsw i32 %2476, 816
  %2561 = getelementptr inbounds %"class.dwt_cuda::FDWT97.5", %"class.dwt_cuda::FDWT97.5" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi128ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2560
  br label %2562

2562:                                             ; preds = %2739, %2478
  %2563 = phi i32 [ 0, %2478 ], [ %2837, %2739 ]
  %2564 = phi i32 [ %2124, %2478 ], [ %2587, %2739 ]
  %2565 = phi i32 [ %2257, %2478 ], [ %2617, %2739 ]
  %2566 = phi i32 [ %2468, %2478 ], [ %2836, %2739 ]
  %2567 = add nsw i32 %2564, %2
  %2568 = sext i32 %2567 to i64
  %2569 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2568
  %2570 = load float, float addrspace(1)* %2569, align 4, !tbaa !6
  store float %2570, float addrspace(3)* %2480, align 4, !tbaa !6
  %2571 = add nsw i32 %2567, %2
  %2572 = sext i32 %2571 to i64
  %2573 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2572
  %2574 = load float, float addrspace(1)* %2573, align 4, !tbaa !6
  store float %2574, float addrspace(3)* %2482, align 4, !tbaa !6
  %2575 = add nsw i32 %2571, %2
  %2576 = sext i32 %2575 to i64
  %2577 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2576
  %2578 = load float, float addrspace(1)* %2577, align 4, !tbaa !6
  store float %2578, float addrspace(3)* %2484, align 4, !tbaa !6
  %2579 = add nsw i32 %2575, %2
  %2580 = sext i32 %2579 to i64
  %2581 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2580
  %2582 = load float, float addrspace(1)* %2581, align 4, !tbaa !6
  store float %2582, float addrspace(3)* %2486, align 4, !tbaa !6
  %2583 = add nsw i32 %2579, %2
  %2584 = sext i32 %2583 to i64
  %2585 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2584
  %2586 = load float, float addrspace(1)* %2585, align 4, !tbaa !6
  store float %2586, float addrspace(3)* %2488, align 4, !tbaa !6
  %2587 = add nsw i32 %2583, %2
  %2588 = sext i32 %2587 to i64
  %2589 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2588
  %2590 = load float, float addrspace(1)* %2589, align 4, !tbaa !6
  store float %2590, float addrspace(3)* %2490, align 4, !tbaa !6
  br i1 %2125, label %2591, label %2616

2591:                                             ; preds = %2562
  %2592 = add nsw i32 %2565, %2256
  %2593 = sext i32 %2592 to i64
  %2594 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2593
  %2595 = load float, float addrspace(1)* %2594, align 4, !tbaa !6
  store float %2595, float addrspace(3)* %2492, align 4, !tbaa !6
  %2596 = add nsw i32 %2592, %2256
  %2597 = sext i32 %2596 to i64
  %2598 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2597
  %2599 = load float, float addrspace(1)* %2598, align 4, !tbaa !6
  store float %2599, float addrspace(3)* %2494, align 4, !tbaa !6
  %2600 = add nsw i32 %2596, %2256
  %2601 = sext i32 %2600 to i64
  %2602 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2601
  %2603 = load float, float addrspace(1)* %2602, align 4, !tbaa !6
  store float %2603, float addrspace(3)* %2496, align 4, !tbaa !6
  %2604 = add nsw i32 %2600, %2256
  %2605 = sext i32 %2604 to i64
  %2606 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2605
  %2607 = load float, float addrspace(1)* %2606, align 4, !tbaa !6
  store float %2607, float addrspace(3)* %2498, align 4, !tbaa !6
  %2608 = add nsw i32 %2604, %2256
  %2609 = sext i32 %2608 to i64
  %2610 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2609
  %2611 = load float, float addrspace(1)* %2610, align 4, !tbaa !6
  store float %2611, float addrspace(3)* %2500, align 4, !tbaa !6
  %2612 = add nsw i32 %2608, %2256
  %2613 = sext i32 %2612 to i64
  %2614 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2613
  %2615 = load float, float addrspace(1)* %2614, align 4, !tbaa !6
  store float %2615, float addrspace(3)* %2502, align 4, !tbaa !6
  br label %2616

2616:                                             ; preds = %2591, %2562
  %2617 = phi i32 [ %2612, %2591 ], [ %2565, %2562 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2618 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2619 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2620 = fadd contract float %2618, %2619
  %2621 = fmul contract float %2620, 0x3FF960CE60000000
  %2622 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2623 = fsub contract float %2622, %2621
  store float %2623, float addrspace(3)* %2508, align 4, !tbaa !6
  %2624 = load float, float addrspace(3)* %2510, align 4, !tbaa !6
  %2625 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2626 = fadd contract float %2624, %2625
  %2627 = fmul contract float %2626, 0x3FF960CE60000000
  %2628 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2629 = fsub contract float %2628, %2627
  store float %2629, float addrspace(3)* %2514, align 4, !tbaa !6
  %2630 = load float, float addrspace(3)* %2516, align 4, !tbaa !6
  %2631 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2632 = fadd contract float %2630, %2631
  %2633 = fmul contract float %2632, 0x3FF960CE60000000
  %2634 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2635 = fsub contract float %2634, %2633
  store float %2635, float addrspace(3)* %2520, align 4, !tbaa !6
  br i1 %2521, label %2636, label %2643

2636:                                             ; preds = %2616
  %2637 = load float, float addrspace(3)* %2523, align 4, !tbaa !6
  %2638 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2639 = fadd contract float %2637, %2638
  %2640 = fmul contract float %2639, 0x3FF960CE60000000
  %2641 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2642 = fsub contract float %2641, %2640
  store float %2642, float addrspace(3)* %2527, align 4, !tbaa !6
  br label %2643

2643:                                             ; preds = %2636, %2616
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2644 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2645 = load float, float addrspace(3)* %2529, align 4, !tbaa !6
  %2646 = fadd contract float %2644, %2645
  %2647 = fmul contract float %2646, 0x3FAB2035C0000000
  %2648 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2649 = fsub contract float %2648, %2647
  store float %2649, float addrspace(3)* %2506, align 4, !tbaa !6
  %2650 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2651 = load float, float addrspace(3)* %2531, align 4, !tbaa !6
  %2652 = fadd contract float %2650, %2651
  %2653 = fmul contract float %2652, 0x3FAB2035C0000000
  %2654 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2655 = fsub contract float %2654, %2653
  store float %2655, float addrspace(3)* %2512, align 4, !tbaa !6
  %2656 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2657 = load float, float addrspace(3)* %2533, align 4, !tbaa !6
  %2658 = fadd contract float %2656, %2657
  %2659 = fmul contract float %2658, 0x3FAB2035C0000000
  %2660 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2661 = fsub contract float %2660, %2659
  store float %2661, float addrspace(3)* %2518, align 4, !tbaa !6
  br i1 %2521, label %2662, label %2669

2662:                                             ; preds = %2643
  %2663 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2664 = load float, float addrspace(3)* %2535, align 4, !tbaa !6
  %2665 = fadd contract float %2663, %2664
  %2666 = fmul contract float %2665, 0x3FAB2035C0000000
  %2667 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2668 = fsub contract float %2667, %2666
  store float %2668, float addrspace(3)* %2525, align 4, !tbaa !6
  br label %2669

2669:                                             ; preds = %2662, %2643
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2670 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2671 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2672 = fadd contract float %2670, %2671
  %2673 = fmul contract float %2672, 0x3FEC40CEC0000000
  %2674 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2675 = fadd contract float %2674, %2673
  store float %2675, float addrspace(3)* %2508, align 4, !tbaa !6
  %2676 = load float, float addrspace(3)* %2510, align 4, !tbaa !6
  %2677 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2678 = fadd contract float %2676, %2677
  %2679 = fmul contract float %2678, 0x3FEC40CEC0000000
  %2680 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2681 = fadd contract float %2680, %2679
  store float %2681, float addrspace(3)* %2514, align 4, !tbaa !6
  %2682 = load float, float addrspace(3)* %2516, align 4, !tbaa !6
  %2683 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2684 = fadd contract float %2682, %2683
  %2685 = fmul contract float %2684, 0x3FEC40CEC0000000
  %2686 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2687 = fadd contract float %2686, %2685
  store float %2687, float addrspace(3)* %2520, align 4, !tbaa !6
  br i1 %2521, label %2688, label %2695

2688:                                             ; preds = %2669
  %2689 = load float, float addrspace(3)* %2523, align 4, !tbaa !6
  %2690 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2691 = fadd contract float %2689, %2690
  %2692 = fmul contract float %2691, 0x3FEC40CEC0000000
  %2693 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2694 = fadd contract float %2693, %2692
  store float %2694, float addrspace(3)* %2527, align 4, !tbaa !6
  br label %2695

2695:                                             ; preds = %2688, %2669
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2696 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2697 = load float, float addrspace(3)* %2529, align 4, !tbaa !6
  %2698 = fadd contract float %2696, %2697
  %2699 = fmul contract float %2698, 0x3FDC626AA0000000
  %2700 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2701 = fadd contract float %2700, %2699
  store float %2701, float addrspace(3)* %2506, align 4, !tbaa !6
  %2702 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2703 = load float, float addrspace(3)* %2531, align 4, !tbaa !6
  %2704 = fadd contract float %2702, %2703
  %2705 = fmul contract float %2704, 0x3FDC626AA0000000
  %2706 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2707 = fadd contract float %2706, %2705
  store float %2707, float addrspace(3)* %2512, align 4, !tbaa !6
  %2708 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2709 = load float, float addrspace(3)* %2533, align 4, !tbaa !6
  %2710 = fadd contract float %2708, %2709
  %2711 = fmul contract float %2710, 0x3FDC626AA0000000
  %2712 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2713 = fadd contract float %2712, %2711
  store float %2713, float addrspace(3)* %2518, align 4, !tbaa !6
  br i1 %2521, label %2714, label %2721

2714:                                             ; preds = %2695
  %2715 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2716 = load float, float addrspace(3)* %2535, align 4, !tbaa !6
  %2717 = fadd contract float %2715, %2716
  %2718 = fmul contract float %2717, 0x3FDC626AA0000000
  %2719 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2720 = fadd contract float %2719, %2718
  store float %2720, float addrspace(3)* %2525, align 4, !tbaa !6
  br label %2721

2721:                                             ; preds = %2714, %2695
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2722 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2723 = fmul contract float %2722, 0x3FEA033860000000
  store float %2723, float addrspace(3)* %2504, align 4, !tbaa !6
  %2724 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2725 = fmul contract float %2724, 0x3FF3AECB00000000
  store float %2725, float addrspace(3)* %2508, align 4, !tbaa !6
  %2726 = load float, float addrspace(3)* %2510, align 4, !tbaa !6
  %2727 = fmul contract float %2726, 0x3FEA033860000000
  store float %2727, float addrspace(3)* %2510, align 4, !tbaa !6
  %2728 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2729 = fmul contract float %2728, 0x3FF3AECB00000000
  store float %2729, float addrspace(3)* %2514, align 4, !tbaa !6
  %2730 = load float, float addrspace(3)* %2516, align 4, !tbaa !6
  %2731 = fmul contract float %2730, 0x3FEA033860000000
  store float %2731, float addrspace(3)* %2516, align 4, !tbaa !6
  %2732 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2733 = fmul contract float %2732, 0x3FF3AECB00000000
  store float %2733, float addrspace(3)* %2520, align 4, !tbaa !6
  br i1 %2536, label %2734, label %2739

2734:                                             ; preds = %2721
  %2735 = load float, float addrspace(3)* %2523, align 4, !tbaa !6
  %2736 = fmul contract float %2735, 0x3FEA033860000000
  store float %2736, float addrspace(3)* %2523, align 4, !tbaa !6
  %2737 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2738 = fmul contract float %2737, 0x3FF3AECB00000000
  store float %2738, float addrspace(3)* %2527, align 4, !tbaa !6
  br label %2739

2739:                                             ; preds = %2734, %2721
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2740 = load float, float addrspace(3)* %2547, align 4, !tbaa !6
  %2741 = load float, float addrspace(3)* %2553, align 4, !tbaa !6
  %2742 = load float, float addrspace(3)* %2551, align 4, !tbaa !6
  %2743 = load float, float addrspace(3)* %2557, align 4, !tbaa !6
  %2744 = load float, float addrspace(3)* %2555, align 4, !tbaa !6
  %2745 = load float, float addrspace(3)* %2559, align 4, !tbaa !6
  %2746 = load float, float addrspace(3)* %2561, align 4, !tbaa !6
  %2747 = load float, float addrspace(3)* %2538, align 4, !tbaa !6
  %2748 = load float, float addrspace(3)* %2540, align 4, !tbaa !6
  %2749 = fadd contract float %2747, %2748
  %2750 = fmul contract float %2749, 0x3FF960CE60000000
  %2751 = load float, float addrspace(3)* %2542, align 4, !tbaa !6
  %2752 = fsub contract float %2751, %2750
  %2753 = load float, float addrspace(3)* %2544, align 4, !tbaa !6
  %2754 = fadd contract float %2748, %2753
  %2755 = fmul contract float %2754, 0x3FF960CE60000000
  %2756 = load float, float addrspace(3)* %2546, align 4, !tbaa !6
  %2757 = fsub contract float %2756, %2755
  %2758 = fadd contract float %2740, %2753
  %2759 = fmul contract float %2758, 0x3FF960CE60000000
  %2760 = load float, float addrspace(3)* %2549, align 4, !tbaa !6
  %2761 = fsub contract float %2760, %2759
  %2762 = fadd contract float %2740, %2742
  %2763 = fmul contract float %2762, 0x3FF960CE60000000
  %2764 = fsub contract float %2741, %2763
  %2765 = fadd contract float %2742, %2744
  %2766 = fmul contract float %2765, 0x3FF960CE60000000
  %2767 = fsub contract float %2743, %2766
  %2768 = fadd contract float %2744, %2746
  %2769 = fmul contract float %2768, 0x3FF960CE60000000
  %2770 = fsub contract float %2745, %2769
  %2771 = fadd contract float %2752, %2757
  %2772 = fmul contract float %2771, 0x3FAB2035C0000000
  %2773 = fsub contract float %2748, %2772
  %2774 = fadd contract float %2757, %2761
  %2775 = fmul contract float %2774, 0x3FAB2035C0000000
  %2776 = fsub contract float %2753, %2775
  %2777 = fadd contract float %2764, %2761
  %2778 = fmul contract float %2777, 0x3FAB2035C0000000
  %2779 = fsub contract float %2740, %2778
  %2780 = fadd contract float %2764, %2767
  %2781 = fmul contract float %2780, 0x3FAB2035C0000000
  %2782 = fsub contract float %2742, %2781
  %2783 = fadd contract float %2767, %2770
  %2784 = fmul contract float %2783, 0x3FAB2035C0000000
  %2785 = fsub contract float %2744, %2784
  %2786 = fadd contract float %2773, %2776
  %2787 = fmul contract float %2786, 0x3FEC40CEC0000000
  %2788 = fadd contract float %2757, %2787
  %2789 = fadd contract float %2776, %2779
  %2790 = fmul contract float %2789, 0x3FEC40CEC0000000
  %2791 = fadd contract float %2761, %2790
  %2792 = fadd contract float %2782, %2779
  %2793 = fmul contract float %2792, 0x3FEC40CEC0000000
  %2794 = fadd contract float %2764, %2793
  store float %2794, float addrspace(3)* %2553, align 4, !tbaa !6
  %2795 = fadd contract float %2782, %2785
  %2796 = fmul contract float %2795, 0x3FEC40CEC0000000
  %2797 = fadd contract float %2767, %2796
  store float %2797, float addrspace(3)* %2557, align 4, !tbaa !6
  %2798 = fadd contract float %2746, %2785
  %2799 = fmul contract float %2798, 0x3FEC40CEC0000000
  %2800 = fadd contract float %2770, %2799
  store float %2800, float addrspace(3)* %2559, align 4, !tbaa !6
  %2801 = fadd contract float %2788, %2791
  %2802 = fmul contract float %2801, 0x3FDC626AA0000000
  %2803 = fadd contract float %2776, %2802
  %2804 = fadd contract float %2791, %2794
  %2805 = fmul contract float %2804, 0x3FDC626AA0000000
  %2806 = fadd contract float %2779, %2805
  %2807 = fadd contract float %2797, %2794
  %2808 = fmul contract float %2807, 0x3FDC626AA0000000
  %2809 = fadd contract float %2782, %2808
  store float %2809, float addrspace(3)* %2551, align 4, !tbaa !6
  %2810 = fadd contract float %2797, %2800
  %2811 = fmul contract float %2810, 0x3FDC626AA0000000
  %2812 = fadd contract float %2785, %2811
  store float %2812, float addrspace(3)* %2555, align 4, !tbaa !6
  %2813 = fmul contract float %2803, 0x3FEA033860000000
  %2814 = sext i32 %2566 to i64
  %2815 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2814
  store float %2813, float addrspace(1)* %2815, align 4, !tbaa !6
  %2816 = add nsw i32 %2566, %2466
  %2817 = fmul contract float %2791, 0x3FF3AECB00000000
  %2818 = sext i32 %2816 to i64
  %2819 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2818
  store float %2817, float addrspace(1)* %2819, align 4, !tbaa !6
  %2820 = add nsw i32 %2816, %2467
  %2821 = fmul contract float %2806, 0x3FEA033860000000
  %2822 = sext i32 %2820 to i64
  %2823 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2822
  store float %2821, float addrspace(1)* %2823, align 4, !tbaa !6
  %2824 = add nsw i32 %2820, %2466
  %2825 = fmul contract float %2794, 0x3FF3AECB00000000
  %2826 = sext i32 %2824 to i64
  %2827 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2826
  store float %2825, float addrspace(1)* %2827, align 4, !tbaa !6
  %2828 = add nsw i32 %2824, %2467
  %2829 = fmul contract float %2809, 0x3FEA033860000000
  %2830 = sext i32 %2828 to i64
  %2831 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2830
  store float %2829, float addrspace(1)* %2831, align 4, !tbaa !6
  %2832 = add nsw i32 %2828, %2466
  %2833 = fmul contract float %2797, 0x3FF3AECB00000000
  %2834 = sext i32 %2832 to i64
  %2835 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2834
  store float %2833, float addrspace(1)* %2835, align 4, !tbaa !6
  store float %2740, float addrspace(3)* %2538, align 4, !tbaa !6
  store float %2741, float addrspace(3)* %2542, align 4, !tbaa !6
  store float %2742, float addrspace(3)* %2540, align 4, !tbaa !6
  store float %2743, float addrspace(3)* %2546, align 4, !tbaa !6
  store float %2744, float addrspace(3)* %2544, align 4, !tbaa !6
  store float %2745, float addrspace(3)* %2549, align 4, !tbaa !6
  store float %2746, float addrspace(3)* %2547, align 4, !tbaa !6
  %2836 = add nsw i32 %2832, %2467
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2837 = add nuw nsw i32 %2563, 1
  %2838 = icmp eq i32 %2837, %4
  br i1 %2838, label %2839, label %2562, !llvm.loop !17

2839:                                             ; preds = %1120, %2003, %2739, %644, %1602, %2465
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_ZN8dwt_cuda12fdwt97KernelILi64ELi6EEEvPKfPfiii(float addrspace(1)* readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #3 comdat {
  %6 = sub i32 0, %2
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %9 = mul i32 %8, 6
  %10 = add i32 %9, 6
  %11 = mul i32 %10, %4
  %12 = add i32 %11, 3
  %13 = icmp slt i32 %12, %3
  br i1 %13, label %1124, label %14

14:                                               ; preds = %5
  %15 = mul i32 %9, %4
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %17 = add nuw nsw i32 %16, 4
  %18 = lshr i32 %17, 1
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 472
  %22 = add nuw nsw i32 %21, %18
  %23 = shl i32 %7, 6
  %24 = add i32 %23, %16
  %25 = sub i32 0, %24
  %26 = icmp eq i32 %8, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %14
  %28 = icmp slt i32 %24, %2
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = shl nsw i32 %2, 1
  %31 = sub i32 -2, %24
  %32 = add i32 %31, %30
  br label %35

33:                                               ; preds = %27
  %34 = icmp slt i32 %24, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %25, %33 ]
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ %24, %33 ]
  %39 = mul nsw i32 %3, %2
  %40 = add nsw i32 %38, %39
  %41 = mul nsw i32 %15, %2
  %42 = icmp eq i32 %41, %39
  %43 = mul i32 %2, -2
  %44 = shl i32 %2, 1
  %45 = select i1 %42, i32 %44, i32 %43
  %46 = select i1 %42, i32 %6, i32 %2
  %47 = select i1 %42, i32 %43, i32 0
  %48 = add i32 %47, %41
  %49 = add i32 %48, %38
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float addrspace(1)* %0, i64 %50
  %52 = load float, float addrspace(1)* %51, align 4, !tbaa !6, !amdgpu.noclobber !10
  %53 = add nuw nsw i32 %22, 144
  %54 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %53
  store float %52, float addrspace(3)* %54, align 4, !tbaa !6
  %55 = add nsw i32 %49, %46
  %56 = icmp eq i32 %55, %40
  %57 = sub nsw i32 0, %46
  %58 = shl i32 %46, 1
  %59 = select i1 %56, i32 %58, i32 %45
  %60 = select i1 %56, i32 %57, i32 %46
  %61 = select i1 %56, i32 %45, i32 0
  %62 = add i32 %61, %55
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float addrspace(1)* %0, i64 %63
  %65 = load float, float addrspace(1)* %64, align 4, !tbaa !6, !amdgpu.noclobber !10
  %66 = add nuw nsw i32 %22, 180
  %67 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %66
  store float %65, float addrspace(3)* %67, align 4, !tbaa !6
  %68 = add nuw nsw i32 %22, 108
  %69 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %68
  store float %65, float addrspace(3)* %69, align 4, !tbaa !6
  %70 = add nsw i32 %62, %60
  %71 = icmp eq i32 %70, %40
  %72 = sub nsw i32 0, %60
  %73 = shl i32 %60, 1
  %74 = select i1 %71, i32 %73, i32 %59
  %75 = select i1 %71, i32 %72, i32 %60
  %76 = select i1 %71, i32 %59, i32 0
  %77 = add i32 %76, %70
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float addrspace(1)* %0, i64 %78
  %80 = load float, float addrspace(1)* %79, align 4, !tbaa !6, !amdgpu.noclobber !10
  %81 = add nuw nsw i32 %22, 216
  %82 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %81
  store float %80, float addrspace(3)* %82, align 4, !tbaa !6
  %83 = add nuw nsw i32 %22, 72
  %84 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %83
  store float %80, float addrspace(3)* %84, align 4, !tbaa !6
  %85 = add nsw i32 %77, %75
  %86 = icmp eq i32 %85, %40
  %87 = sub nsw i32 0, %75
  %88 = shl i32 %75, 1
  %89 = select i1 %86, i32 %88, i32 %74
  %90 = select i1 %86, i32 %87, i32 %75
  %91 = select i1 %86, i32 %74, i32 0
  %92 = add i32 %91, %85
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float addrspace(1)* %0, i64 %93
  %95 = load float, float addrspace(1)* %94, align 4, !tbaa !6, !amdgpu.noclobber !10
  %96 = add nuw nsw i32 %22, 36
  %97 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %96
  store float %95, float addrspace(3)* %97, align 4, !tbaa !6
  %98 = add nsw i32 %92, %90
  %99 = icmp eq i32 %98, %40
  %100 = select i1 %99, i32 %89, i32 0
  %101 = add i32 %100, %98
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float addrspace(1)* %0, i64 %102
  %104 = load float, float addrspace(1)* %103, align 4, !tbaa !6, !amdgpu.noclobber !10
  %105 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %22
  store float %104, float addrspace(3)* %105, align 4, !tbaa !6
  %106 = add nsw i32 %15, 3
  br i1 %28, label %110, label %107

107:                                              ; preds = %37
  %108 = sub i32 -2, %24
  %109 = add i32 %108, %44
  br label %112

110:                                              ; preds = %37
  %111 = icmp slt i32 %24, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %110, %107
  %113 = phi i32 [ %109, %107 ], [ %25, %110 ]
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %113, %112 ], [ %24, %110 ]
  %116 = add nsw i32 %115, %39
  %117 = mul nsw i32 %106, %2
  %118 = sub i32 %117, %2
  %119 = add i32 %118, %115
  br label %218

120:                                              ; preds = %14
  %121 = add nsw i32 %15, -4
  %122 = icmp slt i32 %24, %2
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = shl nsw i32 %2, 1
  %125 = sub i32 -2, %24
  %126 = add i32 %125, %124
  br label %129

127:                                              ; preds = %120
  %128 = icmp slt i32 %24, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %127, %123
  %130 = phi i32 [ %126, %123 ], [ %25, %127 ]
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %130, %129 ], [ %24, %127 ]
  %133 = mul nsw i32 %3, %2
  %134 = add nsw i32 %132, %133
  %135 = mul nsw i32 %121, %2
  %136 = add i32 %132, %135
  %137 = icmp eq i32 %135, %133
  %138 = mul i32 %2, -2
  %139 = add i32 %134, %138
  %140 = select i1 %137, i32 %6, i32 %2
  %141 = select i1 %137, i32 %139, i32 %136
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float addrspace(1)* %0, i64 %142
  %144 = load float, float addrspace(1)* %143, align 4, !tbaa !6, !amdgpu.noclobber !10
  %145 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %22
  store float %144, float addrspace(3)* %145, align 4, !tbaa !6
  %146 = add nsw i32 %141, %140
  %147 = icmp eq i32 %146, %134
  %148 = mul i32 %140, -2
  %149 = add i32 %134, %148
  %150 = sub nsw i32 0, %140
  %151 = select i1 %147, i32 %150, i32 %140
  %152 = select i1 %147, i32 %149, i32 %146
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float addrspace(1)* %0, i64 %153
  %155 = load float, float addrspace(1)* %154, align 4, !tbaa !6, !amdgpu.noclobber !10
  %156 = add nuw nsw i32 %22, 36
  %157 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %156
  store float %155, float addrspace(3)* %157, align 4, !tbaa !6
  %158 = add nsw i32 %152, %151
  %159 = icmp eq i32 %158, %134
  %160 = mul i32 %151, -2
  %161 = add i32 %160, %134
  %162 = sub nsw i32 0, %151
  %163 = select i1 %159, i32 %162, i32 %151
  %164 = select i1 %159, i32 %161, i32 %158
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float addrspace(1)* %0, i64 %165
  %167 = load float, float addrspace(1)* %166, align 4, !tbaa !6, !amdgpu.noclobber !10
  %168 = add nuw nsw i32 %22, 72
  %169 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %168
  store float %167, float addrspace(3)* %169, align 4, !tbaa !6
  %170 = add nsw i32 %164, %163
  %171 = icmp eq i32 %170, %134
  %172 = mul i32 %163, -2
  %173 = add i32 %172, %134
  %174 = sub nsw i32 0, %163
  %175 = select i1 %171, i32 %174, i32 %163
  %176 = select i1 %171, i32 %173, i32 %170
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float addrspace(1)* %0, i64 %177
  %179 = load float, float addrspace(1)* %178, align 4, !tbaa !6, !amdgpu.noclobber !10
  %180 = add nuw nsw i32 %22, 108
  %181 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %180
  store float %179, float addrspace(3)* %181, align 4, !tbaa !6
  %182 = add nsw i32 %176, %175
  %183 = icmp eq i32 %182, %134
  %184 = mul i32 %175, -2
  %185 = add i32 %184, %134
  %186 = sub nsw i32 0, %175
  %187 = select i1 %183, i32 %186, i32 %175
  %188 = select i1 %183, i32 %185, i32 %182
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float addrspace(1)* %0, i64 %189
  %191 = load float, float addrspace(1)* %190, align 4, !tbaa !6, !amdgpu.noclobber !10
  %192 = add nuw nsw i32 %22, 144
  %193 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %192
  store float %191, float addrspace(3)* %193, align 4, !tbaa !6
  %194 = add nsw i32 %188, %187
  %195 = icmp eq i32 %194, %134
  %196 = mul i32 %187, -2
  %197 = add i32 %196, %134
  %198 = sub nsw i32 0, %187
  %199 = select i1 %195, i32 %198, i32 %187
  %200 = select i1 %195, i32 %197, i32 %194
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float addrspace(1)* %0, i64 %201
  %203 = load float, float addrspace(1)* %202, align 4, !tbaa !6, !amdgpu.noclobber !10
  %204 = add nuw nsw i32 %22, 180
  %205 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %204
  store float %203, float addrspace(3)* %205, align 4, !tbaa !6
  %206 = add nsw i32 %200, %199
  %207 = icmp eq i32 %206, %134
  %208 = mul i32 %199, -2
  %209 = add i32 %208, %134
  %210 = sub nsw i32 0, %199
  %211 = select i1 %207, i32 %210, i32 %199
  %212 = select i1 %207, i32 %209, i32 %206
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float addrspace(1)* %0, i64 %213
  %215 = load float, float addrspace(1)* %214, align 4, !tbaa !6, !amdgpu.noclobber !10
  %216 = add nuw nsw i32 %22, 216
  %217 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %216
  store float %215, float addrspace(3)* %217, align 4, !tbaa !6
  br label %218

218:                                              ; preds = %131, %114
  %219 = phi i32 [ %116, %114 ], [ %134, %131 ]
  %220 = phi i32 [ %2, %114 ], [ %211, %131 ]
  %221 = phi i32 [ %119, %114 ], [ %212, %131 ]
  %222 = icmp ult i32 %16, 7
  br i1 %222, label %223, label %428

223:                                              ; preds = %218
  %224 = icmp ult i32 %16, 3
  %225 = select i1 %224, i32 64, i32 -7
  %226 = add nsw i32 %225, %16
  %227 = trunc i32 %226 to i8
  %228 = add nsw i8 %227, 4
  %229 = sdiv i8 %228, 2
  %230 = sext i8 %229 to i32
  %231 = and i32 %226, 1
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i32 0, i32 472
  %234 = add nsw i32 %233, %230
  %235 = add i32 %226, %23
  %236 = sub i32 0, %235
  br i1 %26, label %237, label %330

237:                                              ; preds = %223
  %238 = icmp slt i32 %235, %2
  br i1 %238, label %243, label %239

239:                                              ; preds = %237
  %240 = shl nsw i32 %2, 1
  %241 = sub i32 -2, %235
  %242 = add i32 %241, %240
  br label %245

243:                                              ; preds = %237
  %244 = icmp slt i32 %235, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %243, %239
  %246 = phi i32 [ %242, %239 ], [ %236, %243 ]
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %246, %245 ], [ %235, %243 ]
  %249 = mul nsw i32 %3, %2
  %250 = add nsw i32 %248, %249
  %251 = mul nsw i32 %15, %2
  %252 = icmp eq i32 %251, %249
  %253 = mul i32 %2, -2
  %254 = shl i32 %2, 1
  %255 = select i1 %252, i32 %254, i32 %253
  %256 = select i1 %252, i32 %6, i32 %2
  %257 = select i1 %252, i32 %253, i32 0
  %258 = add i32 %257, %251
  %259 = add i32 %258, %248
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float addrspace(1)* %0, i64 %260
  %262 = load float, float addrspace(1)* %261, align 4, !tbaa !6, !amdgpu.noclobber !10
  %263 = add nsw i32 %234, 144
  %264 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %263
  store float %262, float addrspace(3)* %264, align 4, !tbaa !6
  %265 = add nsw i32 %259, %256
  %266 = icmp eq i32 %265, %250
  %267 = sub nsw i32 0, %256
  %268 = shl i32 %256, 1
  %269 = select i1 %266, i32 %268, i32 %255
  %270 = select i1 %266, i32 %267, i32 %256
  %271 = select i1 %266, i32 %255, i32 0
  %272 = add i32 %271, %265
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float addrspace(1)* %0, i64 %273
  %275 = load float, float addrspace(1)* %274, align 4, !tbaa !6, !amdgpu.noclobber !10
  %276 = add nsw i32 %234, 180
  %277 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %276
  store float %275, float addrspace(3)* %277, align 4, !tbaa !6
  %278 = add nsw i32 %234, 108
  %279 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %278
  store float %275, float addrspace(3)* %279, align 4, !tbaa !6
  %280 = add nsw i32 %272, %270
  %281 = icmp eq i32 %280, %250
  %282 = sub nsw i32 0, %270
  %283 = shl i32 %270, 1
  %284 = select i1 %281, i32 %283, i32 %269
  %285 = select i1 %281, i32 %282, i32 %270
  %286 = select i1 %281, i32 %269, i32 0
  %287 = add i32 %286, %280
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float addrspace(1)* %0, i64 %288
  %290 = load float, float addrspace(1)* %289, align 4, !tbaa !6, !amdgpu.noclobber !10
  %291 = add nsw i32 %234, 216
  %292 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %291
  store float %290, float addrspace(3)* %292, align 4, !tbaa !6
  %293 = add nsw i32 %234, 72
  %294 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %293
  store float %290, float addrspace(3)* %294, align 4, !tbaa !6
  %295 = add nsw i32 %287, %285
  %296 = icmp eq i32 %295, %250
  %297 = sub nsw i32 0, %285
  %298 = shl i32 %285, 1
  %299 = select i1 %296, i32 %298, i32 %284
  %300 = select i1 %296, i32 %297, i32 %285
  %301 = select i1 %296, i32 %284, i32 0
  %302 = add i32 %301, %295
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float addrspace(1)* %0, i64 %303
  %305 = load float, float addrspace(1)* %304, align 4, !tbaa !6, !amdgpu.noclobber !10
  %306 = add nsw i32 %234, 36
  %307 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %306
  store float %305, float addrspace(3)* %307, align 4, !tbaa !6
  %308 = add nsw i32 %302, %300
  %309 = icmp eq i32 %308, %250
  %310 = select i1 %309, i32 %299, i32 0
  %311 = add i32 %310, %308
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds float, float addrspace(1)* %0, i64 %312
  %314 = load float, float addrspace(1)* %313, align 4, !tbaa !6, !amdgpu.noclobber !10
  %315 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %234
  store float %314, float addrspace(3)* %315, align 4, !tbaa !6
  %316 = add nsw i32 %15, 3
  br i1 %238, label %320, label %317

317:                                              ; preds = %247
  %318 = sub i32 -2, %235
  %319 = add i32 %318, %254
  br label %322

320:                                              ; preds = %247
  %321 = icmp slt i32 %235, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %320, %317
  %323 = phi i32 [ %319, %317 ], [ %236, %320 ]
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i32 [ %323, %322 ], [ %235, %320 ]
  %326 = add nsw i32 %325, %249
  %327 = mul nsw i32 %316, %2
  %328 = sub i32 %327, %2
  %329 = add i32 %328, %325
  br label %428

330:                                              ; preds = %223
  %331 = add nsw i32 %15, -4
  %332 = icmp slt i32 %235, %2
  br i1 %332, label %337, label %333

333:                                              ; preds = %330
  %334 = shl nsw i32 %2, 1
  %335 = sub i32 -2, %235
  %336 = add i32 %335, %334
  br label %339

337:                                              ; preds = %330
  %338 = icmp slt i32 %235, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %337, %333
  %340 = phi i32 [ %336, %333 ], [ %236, %337 ]
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32 [ %340, %339 ], [ %235, %337 ]
  %343 = mul nsw i32 %3, %2
  %344 = add nsw i32 %342, %343
  %345 = mul nsw i32 %331, %2
  %346 = add i32 %342, %345
  %347 = icmp eq i32 %345, %343
  %348 = mul i32 %2, -2
  %349 = add i32 %344, %348
  %350 = select i1 %347, i32 %6, i32 %2
  %351 = select i1 %347, i32 %349, i32 %346
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %352
  %354 = load float, float addrspace(1)* %353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %355 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %234
  store float %354, float addrspace(3)* %355, align 4, !tbaa !6
  %356 = add nsw i32 %351, %350
  %357 = icmp eq i32 %356, %344
  %358 = mul i32 %350, -2
  %359 = add i32 %344, %358
  %360 = sub nsw i32 0, %350
  %361 = select i1 %357, i32 %360, i32 %350
  %362 = select i1 %357, i32 %359, i32 %356
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float addrspace(1)* %0, i64 %363
  %365 = load float, float addrspace(1)* %364, align 4, !tbaa !6, !amdgpu.noclobber !10
  %366 = add nsw i32 %234, 36
  %367 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %366
  store float %365, float addrspace(3)* %367, align 4, !tbaa !6
  %368 = add nsw i32 %362, %361
  %369 = icmp eq i32 %368, %344
  %370 = mul i32 %361, -2
  %371 = add i32 %370, %344
  %372 = sub nsw i32 0, %361
  %373 = select i1 %369, i32 %372, i32 %361
  %374 = select i1 %369, i32 %371, i32 %368
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float addrspace(1)* %0, i64 %375
  %377 = load float, float addrspace(1)* %376, align 4, !tbaa !6, !amdgpu.noclobber !10
  %378 = add nsw i32 %234, 72
  %379 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %378
  store float %377, float addrspace(3)* %379, align 4, !tbaa !6
  %380 = add nsw i32 %374, %373
  %381 = icmp eq i32 %380, %344
  %382 = mul i32 %373, -2
  %383 = add i32 %382, %344
  %384 = sub nsw i32 0, %373
  %385 = select i1 %381, i32 %384, i32 %373
  %386 = select i1 %381, i32 %383, i32 %380
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float addrspace(1)* %0, i64 %387
  %389 = load float, float addrspace(1)* %388, align 4, !tbaa !6, !amdgpu.noclobber !10
  %390 = add nsw i32 %234, 108
  %391 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %390
  store float %389, float addrspace(3)* %391, align 4, !tbaa !6
  %392 = add nsw i32 %386, %385
  %393 = icmp eq i32 %392, %344
  %394 = mul i32 %385, -2
  %395 = add i32 %394, %344
  %396 = sub nsw i32 0, %385
  %397 = select i1 %393, i32 %396, i32 %385
  %398 = select i1 %393, i32 %395, i32 %392
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float addrspace(1)* %0, i64 %399
  %401 = load float, float addrspace(1)* %400, align 4, !tbaa !6, !amdgpu.noclobber !10
  %402 = add nsw i32 %234, 144
  %403 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %402
  store float %401, float addrspace(3)* %403, align 4, !tbaa !6
  %404 = add nsw i32 %398, %397
  %405 = icmp eq i32 %404, %344
  %406 = mul i32 %397, -2
  %407 = add i32 %406, %344
  %408 = sub nsw i32 0, %397
  %409 = select i1 %405, i32 %408, i32 %397
  %410 = select i1 %405, i32 %407, i32 %404
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float addrspace(1)* %0, i64 %411
  %413 = load float, float addrspace(1)* %412, align 4, !tbaa !6, !amdgpu.noclobber !10
  %414 = add nsw i32 %234, 180
  %415 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %414
  store float %413, float addrspace(3)* %415, align 4, !tbaa !6
  %416 = add nsw i32 %410, %409
  %417 = icmp eq i32 %416, %344
  %418 = mul i32 %409, -2
  %419 = add i32 %418, %344
  %420 = sub nsw i32 0, %409
  %421 = select i1 %417, i32 %420, i32 %409
  %422 = select i1 %417, i32 %419, i32 %416
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds float, float addrspace(1)* %0, i64 %423
  %425 = load float, float addrspace(1)* %424, align 4, !tbaa !6, !amdgpu.noclobber !10
  %426 = add nsw i32 %234, 216
  %427 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %426
  store float %425, float addrspace(3)* %427, align 4, !tbaa !6
  br label %428

428:                                              ; preds = %341, %324, %218
  %429 = phi i32 [ 0, %218 ], [ %326, %324 ], [ %344, %341 ]
  %430 = phi i32 [ 0, %218 ], [ %2, %324 ], [ %421, %341 ]
  %431 = phi i32 [ 0, %218 ], [ %329, %324 ], [ %422, %341 ]
  %432 = phi i32 [ 0, %218 ], [ %234, %324 ], [ %234, %341 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %433 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %16
  %434 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %435 = add nuw nsw i32 %16, 1
  %436 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %435
  %437 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %438 = add nuw nsw i32 %16, 472
  %439 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %438
  %440 = fadd contract float %434, %437
  %441 = fmul contract float %440, 0x3FF960CE60000000
  %442 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %443 = fsub contract float %442, %441
  store float %443, float addrspace(3)* %439, align 4, !tbaa !6
  %444 = add nuw nsw i32 %16, 64
  %445 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %444
  %446 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %447 = add nuw nsw i32 %16, 65
  %448 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %447
  %449 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %450 = add nuw nsw i32 %16, 536
  %451 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %450
  %452 = fadd contract float %446, %449
  %453 = fmul contract float %452, 0x3FF960CE60000000
  %454 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %455 = fsub contract float %454, %453
  store float %455, float addrspace(3)* %451, align 4, !tbaa !6
  %456 = add nuw nsw i32 %16, 128
  %457 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %456
  %458 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %459 = add nuw nsw i32 %16, 129
  %460 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %459
  %461 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %462 = add nuw nsw i32 %16, 600
  %463 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %462
  %464 = fadd contract float %458, %461
  %465 = fmul contract float %464, 0x3FF960CE60000000
  %466 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %467 = fsub contract float %466, %465
  store float %467, float addrspace(3)* %463, align 4, !tbaa !6
  %468 = icmp ult i32 %16, 59
  br i1 %468, label %469, label %482

469:                                              ; preds = %428
  %470 = add nuw nsw i32 %16, 192
  %471 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %470
  %472 = load float, float addrspace(3)* %471, align 4, !tbaa !6
  %473 = add nuw nsw i32 %16, 193
  %474 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %473
  %475 = load float, float addrspace(3)* %474, align 4, !tbaa !6
  %476 = add nuw nsw i32 %16, 664
  %477 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %476
  %478 = fadd contract float %472, %475
  %479 = fmul contract float %478, 0x3FF960CE60000000
  %480 = load float, float addrspace(3)* %477, align 4, !tbaa !6
  %481 = fsub contract float %480, %479
  store float %481, float addrspace(3)* %477, align 4, !tbaa !6
  br label %482

482:                                              ; preds = %469, %428
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %483 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %484 = add nuw nsw i32 %16, 473
  %485 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %484
  %486 = load float, float addrspace(3)* %485, align 4, !tbaa !6
  %487 = fadd contract float %483, %486
  %488 = fmul contract float %487, 0x3FAB2035C0000000
  %489 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %490 = fsub contract float %489, %488
  store float %490, float addrspace(3)* %436, align 4, !tbaa !6
  %491 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %492 = add nuw nsw i32 %16, 537
  %493 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %492
  %494 = load float, float addrspace(3)* %493, align 4, !tbaa !6
  %495 = fadd contract float %491, %494
  %496 = fmul contract float %495, 0x3FAB2035C0000000
  %497 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %498 = fsub contract float %497, %496
  store float %498, float addrspace(3)* %448, align 4, !tbaa !6
  %499 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %500 = add nuw nsw i32 %16, 601
  %501 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %500
  %502 = load float, float addrspace(3)* %501, align 4, !tbaa !6
  %503 = fadd contract float %499, %502
  %504 = fmul contract float %503, 0x3FAB2035C0000000
  %505 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %506 = fsub contract float %505, %504
  store float %506, float addrspace(3)* %460, align 4, !tbaa !6
  br i1 %468, label %507, label %520

507:                                              ; preds = %482
  %508 = add nuw nsw i32 %16, 664
  %509 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %508
  %510 = load float, float addrspace(3)* %509, align 4, !tbaa !6
  %511 = add nuw nsw i32 %16, 665
  %512 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %511
  %513 = load float, float addrspace(3)* %512, align 4, !tbaa !6
  %514 = add nuw nsw i32 %16, 193
  %515 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %514
  %516 = fadd contract float %510, %513
  %517 = fmul contract float %516, 0x3FAB2035C0000000
  %518 = load float, float addrspace(3)* %515, align 4, !tbaa !6
  %519 = fsub contract float %518, %517
  store float %519, float addrspace(3)* %515, align 4, !tbaa !6
  br label %520

520:                                              ; preds = %507, %482
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %521 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %522 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %523 = fadd contract float %521, %522
  %524 = fmul contract float %523, 0x3FEC40CEC0000000
  %525 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %526 = fadd contract float %525, %524
  store float %526, float addrspace(3)* %439, align 4, !tbaa !6
  %527 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %528 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %529 = fadd contract float %527, %528
  %530 = fmul contract float %529, 0x3FEC40CEC0000000
  %531 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %532 = fadd contract float %531, %530
  store float %532, float addrspace(3)* %451, align 4, !tbaa !6
  %533 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %534 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %535 = fadd contract float %533, %534
  %536 = fmul contract float %535, 0x3FEC40CEC0000000
  %537 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %538 = fadd contract float %537, %536
  store float %538, float addrspace(3)* %463, align 4, !tbaa !6
  br i1 %468, label %539, label %552

539:                                              ; preds = %520
  %540 = add nuw nsw i32 %16, 192
  %541 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %540
  %542 = load float, float addrspace(3)* %541, align 4, !tbaa !6
  %543 = add nuw nsw i32 %16, 193
  %544 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %543
  %545 = load float, float addrspace(3)* %544, align 4, !tbaa !6
  %546 = add nuw nsw i32 %16, 664
  %547 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %546
  %548 = fadd contract float %542, %545
  %549 = fmul contract float %548, 0x3FEC40CEC0000000
  %550 = load float, float addrspace(3)* %547, align 4, !tbaa !6
  %551 = fadd contract float %550, %549
  store float %551, float addrspace(3)* %547, align 4, !tbaa !6
  br label %552

552:                                              ; preds = %539, %520
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %553 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %554 = load float, float addrspace(3)* %485, align 4, !tbaa !6
  %555 = fadd contract float %553, %554
  %556 = fmul contract float %555, 0x3FDC626AA0000000
  %557 = load float, float addrspace(3)* %436, align 4, !tbaa !6
  %558 = fadd contract float %557, %556
  store float %558, float addrspace(3)* %436, align 4, !tbaa !6
  %559 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %560 = load float, float addrspace(3)* %493, align 4, !tbaa !6
  %561 = fadd contract float %559, %560
  %562 = fmul contract float %561, 0x3FDC626AA0000000
  %563 = load float, float addrspace(3)* %448, align 4, !tbaa !6
  %564 = fadd contract float %563, %562
  store float %564, float addrspace(3)* %448, align 4, !tbaa !6
  %565 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %566 = load float, float addrspace(3)* %501, align 4, !tbaa !6
  %567 = fadd contract float %565, %566
  %568 = fmul contract float %567, 0x3FDC626AA0000000
  %569 = load float, float addrspace(3)* %460, align 4, !tbaa !6
  %570 = fadd contract float %569, %568
  store float %570, float addrspace(3)* %460, align 4, !tbaa !6
  br i1 %468, label %571, label %584

571:                                              ; preds = %552
  %572 = add nuw nsw i32 %16, 664
  %573 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %572
  %574 = load float, float addrspace(3)* %573, align 4, !tbaa !6
  %575 = add nuw nsw i32 %16, 665
  %576 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %575
  %577 = load float, float addrspace(3)* %576, align 4, !tbaa !6
  %578 = add nuw nsw i32 %16, 193
  %579 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %578
  %580 = fadd contract float %574, %577
  %581 = fmul contract float %580, 0x3FDC626AA0000000
  %582 = load float, float addrspace(3)* %579, align 4, !tbaa !6
  %583 = fadd contract float %582, %581
  store float %583, float addrspace(3)* %579, align 4, !tbaa !6
  br label %584

584:                                              ; preds = %571, %552
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %585 = load float, float addrspace(3)* %433, align 4, !tbaa !6
  %586 = fmul contract float %585, 0x3FEA033860000000
  store float %586, float addrspace(3)* %433, align 4, !tbaa !6
  %587 = load float, float addrspace(3)* %439, align 4, !tbaa !6
  %588 = fmul contract float %587, 0x3FF3AECB00000000
  store float %588, float addrspace(3)* %439, align 4, !tbaa !6
  %589 = load float, float addrspace(3)* %445, align 4, !tbaa !6
  %590 = fmul contract float %589, 0x3FEA033860000000
  store float %590, float addrspace(3)* %445, align 4, !tbaa !6
  %591 = load float, float addrspace(3)* %451, align 4, !tbaa !6
  %592 = fmul contract float %591, 0x3FF3AECB00000000
  store float %592, float addrspace(3)* %451, align 4, !tbaa !6
  %593 = load float, float addrspace(3)* %457, align 4, !tbaa !6
  %594 = fmul contract float %593, 0x3FEA033860000000
  store float %594, float addrspace(3)* %457, align 4, !tbaa !6
  %595 = load float, float addrspace(3)* %463, align 4, !tbaa !6
  %596 = fmul contract float %595, 0x3FF3AECB00000000
  store float %596, float addrspace(3)* %463, align 4, !tbaa !6
  %597 = icmp ult i32 %16, 60
  br i1 %597, label %598, label %607

598:                                              ; preds = %584
  %599 = add nuw nsw i32 %16, 192
  %600 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %599
  %601 = load float, float addrspace(3)* %600, align 4, !tbaa !6
  %602 = fmul contract float %601, 0x3FEA033860000000
  store float %602, float addrspace(3)* %600, align 4, !tbaa !6
  %603 = add nuw nsw i32 %16, 664
  %604 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %603
  %605 = load float, float addrspace(3)* %604, align 4, !tbaa !6
  %606 = fmul contract float %605, 0x3FF3AECB00000000
  store float %606, float addrspace(3)* %604, align 4, !tbaa !6
  br label %607

607:                                              ; preds = %598, %584
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %608 = shl nuw nsw i32 %16, 1
  %609 = lshr i32 %16, 5
  %610 = mul nsw i32 %609, -63
  %611 = add nsw i32 %610, %608
  %612 = add i32 %611, %23
  %613 = icmp slt i32 %612, %2
  br i1 %613, label %614, label %644

614:                                              ; preds = %607
  %615 = sdiv i32 %612, 2
  %616 = and i32 %612, 1
  %617 = icmp eq i32 %616, 0
  %618 = sdiv i32 %2, 2
  %619 = and i32 %2, 1
  %620 = add nsw i32 %618, %619
  %621 = sdiv i32 %3, 2
  %622 = and i32 %3, 1
  %623 = add nsw i32 %621, %622
  br i1 %617, label %629, label %624

624:                                              ; preds = %614
  %625 = mul nsw i32 %623, %620
  %626 = add nsw i32 %625, %615
  %627 = mul nsw i32 %3, %2
  %628 = sdiv i32 %627, 2
  br label %631

629:                                              ; preds = %614
  %630 = mul nsw i32 %623, %2
  br label %631

631:                                              ; preds = %629, %624
  %632 = phi i32 [ %630, %629 ], [ %628, %624 ]
  %633 = phi i32 [ %615, %629 ], [ %626, %624 ]
  %634 = phi i32 [ %620, %629 ], [ %618, %624 ]
  %635 = sub nsw i32 %634, %632
  %636 = mul nsw i32 %634, %621
  %637 = icmp eq i32 %622, 0
  %638 = select i1 %637, i32 0, i32 %632
  %639 = add i32 %638, %633
  %640 = add i32 %639, %636
  %641 = sdiv i32 %15, 2
  %642 = mul nsw i32 %634, %641
  %643 = add i32 %642, %633
  br label %644

644:                                              ; preds = %631, %607
  %645 = phi i32 [ %632, %631 ], [ 0, %607 ]
  %646 = phi i32 [ %635, %631 ], [ 0, %607 ]
  %647 = phi i32 [ %640, %631 ], [ 0, %607 ]
  %648 = phi i32 [ %643, %631 ], [ 0, %607 ]
  %649 = trunc i32 %611 to i16
  %650 = add nsw i16 %649, 4
  %651 = sdiv i16 %650, 2
  %652 = sext i16 %651 to i32
  %653 = and i32 %611, 1
  %654 = icmp eq i32 %653, 0
  %655 = select i1 %654, i32 0, i32 472
  %656 = add nsw i32 %655, %652
  %657 = icmp sgt i32 %4, 0
  br i1 %657, label %658, label %2839

658:                                              ; preds = %644
  %659 = add nuw nsw i32 %22, 252
  %660 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %659
  %661 = add nuw nsw i32 %22, 288
  %662 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %661
  %663 = add nuw nsw i32 %22, 324
  %664 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %663
  %665 = add nuw nsw i32 %22, 360
  %666 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %665
  %667 = add nuw nsw i32 %22, 396
  %668 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %667
  %669 = add nuw nsw i32 %22, 432
  %670 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %669
  %671 = add nsw i32 %432, 252
  %672 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %671
  %673 = add nsw i32 %432, 288
  %674 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %673
  %675 = add nsw i32 %432, 324
  %676 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %675
  %677 = add nsw i32 %432, 360
  %678 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %677
  %679 = add nsw i32 %432, 396
  %680 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %679
  %681 = add nsw i32 %432, 432
  %682 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %681
  %683 = add nuw nsw i32 %16, 252
  %684 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %683
  %685 = add nuw nsw i32 %16, 253
  %686 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %685
  %687 = add nuw nsw i32 %16, 724
  %688 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %687
  %689 = add nuw nsw i32 %16, 316
  %690 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %689
  %691 = add nuw nsw i32 %16, 317
  %692 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %691
  %693 = add nuw nsw i32 %16, 788
  %694 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %693
  %695 = add nuw nsw i32 %16, 380
  %696 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %695
  %697 = add nuw nsw i32 %16, 381
  %698 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %697
  %699 = add nuw nsw i32 %16, 852
  %700 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %699
  %701 = icmp ult i32 %16, 23
  %702 = add nuw nsw i32 %16, 444
  %703 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %702
  %704 = add nuw nsw i32 %16, 445
  %705 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %704
  %706 = add nuw nsw i32 %16, 916
  %707 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %706
  %708 = add nuw nsw i32 %16, 725
  %709 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %708
  %710 = add nuw nsw i32 %16, 789
  %711 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %710
  %712 = add nuw nsw i32 %16, 853
  %713 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %712
  %714 = add nuw nsw i32 %16, 917
  %715 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %714
  %716 = icmp ult i32 %16, 24
  %717 = add nsw i32 %656, 216
  %718 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %656
  %719 = add nsw i32 %656, 72
  %720 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %719
  %721 = add nsw i32 %656, 36
  %722 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %721
  %723 = add nsw i32 %656, 144
  %724 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %723
  %725 = add nsw i32 %656, 108
  %726 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %725
  %727 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %717
  %728 = add nsw i32 %656, 180
  %729 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %728
  %730 = add nsw i32 %656, 288
  %731 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %730
  %732 = add nsw i32 %656, 252
  %733 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %732
  %734 = add nsw i32 %656, 360
  %735 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %734
  %736 = add nsw i32 %656, 324
  %737 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %736
  %738 = add nsw i32 %656, 396
  %739 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %738
  %740 = add nsw i32 %656, 432
  %741 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %740
  br label %742

742:                                              ; preds = %1120, %658
  %743 = phi i32 [ 0, %658 ], [ %1122, %1120 ]
  %744 = phi i32 [ %221, %658 ], [ %805, %1120 ]
  %745 = phi i32 [ %220, %658 ], [ %804, %1120 ]
  %746 = phi i32 [ %431, %658 ], [ %872, %1120 ]
  %747 = phi i32 [ %430, %658 ], [ %871, %1120 ]
  %748 = phi i32 [ %648, %658 ], [ %1121, %1120 ]
  %749 = add nsw i32 %745, %744
  %750 = icmp eq i32 %749, %219
  %751 = mul i32 %745, -2
  %752 = add i32 %751, %219
  %753 = sub nsw i32 0, %745
  %754 = select i1 %750, i32 %753, i32 %745
  %755 = select i1 %750, i32 %752, i32 %749
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds float, float addrspace(1)* %0, i64 %756
  %758 = load float, float addrspace(1)* %757, align 4, !tbaa !6
  store float %758, float addrspace(3)* %660, align 4, !tbaa !6
  %759 = add nsw i32 %755, %754
  %760 = icmp eq i32 %759, %219
  %761 = mul i32 %754, -2
  %762 = add i32 %761, %219
  %763 = sub nsw i32 0, %754
  %764 = select i1 %760, i32 %763, i32 %754
  %765 = select i1 %760, i32 %762, i32 %759
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds float, float addrspace(1)* %0, i64 %766
  %768 = load float, float addrspace(1)* %767, align 4, !tbaa !6
  store float %768, float addrspace(3)* %662, align 4, !tbaa !6
  %769 = add nsw i32 %765, %764
  %770 = icmp eq i32 %769, %219
  %771 = mul i32 %764, -2
  %772 = add i32 %771, %219
  %773 = sub nsw i32 0, %764
  %774 = select i1 %770, i32 %773, i32 %764
  %775 = select i1 %770, i32 %772, i32 %769
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds float, float addrspace(1)* %0, i64 %776
  %778 = load float, float addrspace(1)* %777, align 4, !tbaa !6
  store float %778, float addrspace(3)* %664, align 4, !tbaa !6
  %779 = add nsw i32 %775, %774
  %780 = icmp eq i32 %779, %219
  %781 = mul i32 %774, -2
  %782 = add i32 %781, %219
  %783 = sub nsw i32 0, %774
  %784 = select i1 %780, i32 %783, i32 %774
  %785 = select i1 %780, i32 %782, i32 %779
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds float, float addrspace(1)* %0, i64 %786
  %788 = load float, float addrspace(1)* %787, align 4, !tbaa !6
  store float %788, float addrspace(3)* %666, align 4, !tbaa !6
  %789 = add nsw i32 %785, %784
  %790 = icmp eq i32 %789, %219
  %791 = mul i32 %784, -2
  %792 = add i32 %791, %219
  %793 = sub nsw i32 0, %784
  %794 = select i1 %790, i32 %793, i32 %784
  %795 = select i1 %790, i32 %792, i32 %789
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds float, float addrspace(1)* %0, i64 %796
  %798 = load float, float addrspace(1)* %797, align 4, !tbaa !6
  store float %798, float addrspace(3)* %668, align 4, !tbaa !6
  %799 = add nsw i32 %795, %794
  %800 = icmp eq i32 %799, %219
  %801 = mul i32 %794, -2
  %802 = add i32 %801, %219
  %803 = sub nsw i32 0, %794
  %804 = select i1 %800, i32 %803, i32 %794
  %805 = select i1 %800, i32 %802, i32 %799
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds float, float addrspace(1)* %0, i64 %806
  %808 = load float, float addrspace(1)* %807, align 4, !tbaa !6
  store float %808, float addrspace(3)* %670, align 4, !tbaa !6
  br i1 %222, label %809, label %870

809:                                              ; preds = %742
  %810 = add nsw i32 %747, %746
  %811 = icmp eq i32 %810, %429
  %812 = mul i32 %747, -2
  %813 = add i32 %812, %429
  %814 = sub nsw i32 0, %747
  %815 = select i1 %811, i32 %814, i32 %747
  %816 = select i1 %811, i32 %813, i32 %810
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds float, float addrspace(1)* %0, i64 %817
  %819 = load float, float addrspace(1)* %818, align 4, !tbaa !6
  store float %819, float addrspace(3)* %672, align 4, !tbaa !6
  %820 = add nsw i32 %816, %815
  %821 = icmp eq i32 %820, %429
  %822 = mul i32 %815, -2
  %823 = add i32 %822, %429
  %824 = sub nsw i32 0, %815
  %825 = select i1 %821, i32 %824, i32 %815
  %826 = select i1 %821, i32 %823, i32 %820
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds float, float addrspace(1)* %0, i64 %827
  %829 = load float, float addrspace(1)* %828, align 4, !tbaa !6
  store float %829, float addrspace(3)* %674, align 4, !tbaa !6
  %830 = add nsw i32 %826, %825
  %831 = icmp eq i32 %830, %429
  %832 = mul i32 %825, -2
  %833 = add i32 %832, %429
  %834 = sub nsw i32 0, %825
  %835 = select i1 %831, i32 %834, i32 %825
  %836 = select i1 %831, i32 %833, i32 %830
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds float, float addrspace(1)* %0, i64 %837
  %839 = load float, float addrspace(1)* %838, align 4, !tbaa !6
  store float %839, float addrspace(3)* %676, align 4, !tbaa !6
  %840 = add nsw i32 %836, %835
  %841 = icmp eq i32 %840, %429
  %842 = mul i32 %835, -2
  %843 = add i32 %842, %429
  %844 = sub nsw i32 0, %835
  %845 = select i1 %841, i32 %844, i32 %835
  %846 = select i1 %841, i32 %843, i32 %840
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds float, float addrspace(1)* %0, i64 %847
  %849 = load float, float addrspace(1)* %848, align 4, !tbaa !6
  store float %849, float addrspace(3)* %678, align 4, !tbaa !6
  %850 = add nsw i32 %846, %845
  %851 = icmp eq i32 %850, %429
  %852 = mul i32 %845, -2
  %853 = add i32 %852, %429
  %854 = sub nsw i32 0, %845
  %855 = select i1 %851, i32 %854, i32 %845
  %856 = select i1 %851, i32 %853, i32 %850
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds float, float addrspace(1)* %0, i64 %857
  %859 = load float, float addrspace(1)* %858, align 4, !tbaa !6
  store float %859, float addrspace(3)* %680, align 4, !tbaa !6
  %860 = add nsw i32 %856, %855
  %861 = icmp eq i32 %860, %429
  %862 = mul i32 %855, -2
  %863 = add i32 %862, %429
  %864 = sub nsw i32 0, %855
  %865 = select i1 %861, i32 %864, i32 %855
  %866 = select i1 %861, i32 %863, i32 %860
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds float, float addrspace(1)* %0, i64 %867
  %869 = load float, float addrspace(1)* %868, align 4, !tbaa !6
  store float %869, float addrspace(3)* %682, align 4, !tbaa !6
  br label %870

870:                                              ; preds = %809, %742
  %871 = phi i32 [ %865, %809 ], [ %747, %742 ]
  %872 = phi i32 [ %866, %809 ], [ %746, %742 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %873 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %874 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %875 = fadd contract float %873, %874
  %876 = fmul contract float %875, 0x3FF960CE60000000
  %877 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %878 = fsub contract float %877, %876
  store float %878, float addrspace(3)* %688, align 4, !tbaa !6
  %879 = load float, float addrspace(3)* %690, align 4, !tbaa !6
  %880 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %881 = fadd contract float %879, %880
  %882 = fmul contract float %881, 0x3FF960CE60000000
  %883 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %884 = fsub contract float %883, %882
  store float %884, float addrspace(3)* %694, align 4, !tbaa !6
  %885 = load float, float addrspace(3)* %696, align 4, !tbaa !6
  %886 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %887 = fadd contract float %885, %886
  %888 = fmul contract float %887, 0x3FF960CE60000000
  %889 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %890 = fsub contract float %889, %888
  store float %890, float addrspace(3)* %700, align 4, !tbaa !6
  br i1 %701, label %891, label %898

891:                                              ; preds = %870
  %892 = load float, float addrspace(3)* %703, align 4, !tbaa !6
  %893 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %894 = fadd contract float %892, %893
  %895 = fmul contract float %894, 0x3FF960CE60000000
  %896 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %897 = fsub contract float %896, %895
  store float %897, float addrspace(3)* %707, align 4, !tbaa !6
  br label %898

898:                                              ; preds = %891, %870
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %899 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %900 = load float, float addrspace(3)* %709, align 4, !tbaa !6
  %901 = fadd contract float %899, %900
  %902 = fmul contract float %901, 0x3FAB2035C0000000
  %903 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %904 = fsub contract float %903, %902
  store float %904, float addrspace(3)* %686, align 4, !tbaa !6
  %905 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %906 = load float, float addrspace(3)* %711, align 4, !tbaa !6
  %907 = fadd contract float %905, %906
  %908 = fmul contract float %907, 0x3FAB2035C0000000
  %909 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %910 = fsub contract float %909, %908
  store float %910, float addrspace(3)* %692, align 4, !tbaa !6
  %911 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %912 = load float, float addrspace(3)* %713, align 4, !tbaa !6
  %913 = fadd contract float %911, %912
  %914 = fmul contract float %913, 0x3FAB2035C0000000
  %915 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %916 = fsub contract float %915, %914
  store float %916, float addrspace(3)* %698, align 4, !tbaa !6
  br i1 %701, label %917, label %924

917:                                              ; preds = %898
  %918 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %919 = load float, float addrspace(3)* %715, align 4, !tbaa !6
  %920 = fadd contract float %918, %919
  %921 = fmul contract float %920, 0x3FAB2035C0000000
  %922 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %923 = fsub contract float %922, %921
  store float %923, float addrspace(3)* %705, align 4, !tbaa !6
  br label %924

924:                                              ; preds = %917, %898
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %925 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %926 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %927 = fadd contract float %925, %926
  %928 = fmul contract float %927, 0x3FEC40CEC0000000
  %929 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %930 = fadd contract float %929, %928
  store float %930, float addrspace(3)* %688, align 4, !tbaa !6
  %931 = load float, float addrspace(3)* %690, align 4, !tbaa !6
  %932 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %933 = fadd contract float %931, %932
  %934 = fmul contract float %933, 0x3FEC40CEC0000000
  %935 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %936 = fadd contract float %935, %934
  store float %936, float addrspace(3)* %694, align 4, !tbaa !6
  %937 = load float, float addrspace(3)* %696, align 4, !tbaa !6
  %938 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %939 = fadd contract float %937, %938
  %940 = fmul contract float %939, 0x3FEC40CEC0000000
  %941 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %942 = fadd contract float %941, %940
  store float %942, float addrspace(3)* %700, align 4, !tbaa !6
  br i1 %701, label %943, label %950

943:                                              ; preds = %924
  %944 = load float, float addrspace(3)* %703, align 4, !tbaa !6
  %945 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %946 = fadd contract float %944, %945
  %947 = fmul contract float %946, 0x3FEC40CEC0000000
  %948 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %949 = fadd contract float %948, %947
  store float %949, float addrspace(3)* %707, align 4, !tbaa !6
  br label %950

950:                                              ; preds = %943, %924
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %951 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %952 = load float, float addrspace(3)* %709, align 4, !tbaa !6
  %953 = fadd contract float %951, %952
  %954 = fmul contract float %953, 0x3FDC626AA0000000
  %955 = load float, float addrspace(3)* %686, align 4, !tbaa !6
  %956 = fadd contract float %955, %954
  store float %956, float addrspace(3)* %686, align 4, !tbaa !6
  %957 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %958 = load float, float addrspace(3)* %711, align 4, !tbaa !6
  %959 = fadd contract float %957, %958
  %960 = fmul contract float %959, 0x3FDC626AA0000000
  %961 = load float, float addrspace(3)* %692, align 4, !tbaa !6
  %962 = fadd contract float %961, %960
  store float %962, float addrspace(3)* %692, align 4, !tbaa !6
  %963 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %964 = load float, float addrspace(3)* %713, align 4, !tbaa !6
  %965 = fadd contract float %963, %964
  %966 = fmul contract float %965, 0x3FDC626AA0000000
  %967 = load float, float addrspace(3)* %698, align 4, !tbaa !6
  %968 = fadd contract float %967, %966
  store float %968, float addrspace(3)* %698, align 4, !tbaa !6
  br i1 %701, label %969, label %976

969:                                              ; preds = %950
  %970 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %971 = load float, float addrspace(3)* %715, align 4, !tbaa !6
  %972 = fadd contract float %970, %971
  %973 = fmul contract float %972, 0x3FDC626AA0000000
  %974 = load float, float addrspace(3)* %705, align 4, !tbaa !6
  %975 = fadd contract float %974, %973
  store float %975, float addrspace(3)* %705, align 4, !tbaa !6
  br label %976

976:                                              ; preds = %969, %950
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %977 = load float, float addrspace(3)* %684, align 4, !tbaa !6
  %978 = fmul contract float %977, 0x3FEA033860000000
  store float %978, float addrspace(3)* %684, align 4, !tbaa !6
  %979 = load float, float addrspace(3)* %688, align 4, !tbaa !6
  %980 = fmul contract float %979, 0x3FF3AECB00000000
  store float %980, float addrspace(3)* %688, align 4, !tbaa !6
  %981 = load float, float addrspace(3)* %690, align 4, !tbaa !6
  %982 = fmul contract float %981, 0x3FEA033860000000
  store float %982, float addrspace(3)* %690, align 4, !tbaa !6
  %983 = load float, float addrspace(3)* %694, align 4, !tbaa !6
  %984 = fmul contract float %983, 0x3FF3AECB00000000
  store float %984, float addrspace(3)* %694, align 4, !tbaa !6
  %985 = load float, float addrspace(3)* %696, align 4, !tbaa !6
  %986 = fmul contract float %985, 0x3FEA033860000000
  store float %986, float addrspace(3)* %696, align 4, !tbaa !6
  %987 = load float, float addrspace(3)* %700, align 4, !tbaa !6
  %988 = fmul contract float %987, 0x3FF3AECB00000000
  store float %988, float addrspace(3)* %700, align 4, !tbaa !6
  br i1 %716, label %989, label %994

989:                                              ; preds = %976
  %990 = load float, float addrspace(3)* %703, align 4, !tbaa !6
  %991 = fmul contract float %990, 0x3FEA033860000000
  store float %991, float addrspace(3)* %703, align 4, !tbaa !6
  %992 = load float, float addrspace(3)* %707, align 4, !tbaa !6
  %993 = fmul contract float %992, 0x3FF3AECB00000000
  store float %993, float addrspace(3)* %707, align 4, !tbaa !6
  br label %994

994:                                              ; preds = %989, %976
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %995 = load float, float addrspace(3)* %727, align 4, !tbaa !6
  %996 = load float, float addrspace(3)* %733, align 4, !tbaa !6
  %997 = load float, float addrspace(3)* %731, align 4, !tbaa !6
  %998 = load float, float addrspace(3)* %737, align 4, !tbaa !6
  %999 = load float, float addrspace(3)* %735, align 4, !tbaa !6
  %1000 = load float, float addrspace(3)* %739, align 4, !tbaa !6
  %1001 = load float, float addrspace(3)* %741, align 4, !tbaa !6
  %1002 = load float, float addrspace(3)* %718, align 4, !tbaa !6
  %1003 = load float, float addrspace(3)* %720, align 4, !tbaa !6
  %1004 = fadd contract float %1002, %1003
  %1005 = fmul contract float %1004, 0x3FF960CE60000000
  %1006 = load float, float addrspace(3)* %722, align 4, !tbaa !6
  %1007 = fsub contract float %1006, %1005
  %1008 = load float, float addrspace(3)* %724, align 4, !tbaa !6
  %1009 = fadd contract float %1003, %1008
  %1010 = fmul contract float %1009, 0x3FF960CE60000000
  %1011 = load float, float addrspace(3)* %726, align 4, !tbaa !6
  %1012 = fsub contract float %1011, %1010
  %1013 = fadd contract float %995, %1008
  %1014 = fmul contract float %1013, 0x3FF960CE60000000
  %1015 = load float, float addrspace(3)* %729, align 4, !tbaa !6
  %1016 = fsub contract float %1015, %1014
  %1017 = fadd contract float %995, %997
  %1018 = fmul contract float %1017, 0x3FF960CE60000000
  %1019 = fsub contract float %996, %1018
  %1020 = fadd contract float %997, %999
  %1021 = fmul contract float %1020, 0x3FF960CE60000000
  %1022 = fsub contract float %998, %1021
  %1023 = fadd contract float %999, %1001
  %1024 = fmul contract float %1023, 0x3FF960CE60000000
  %1025 = fsub contract float %1000, %1024
  %1026 = fadd contract float %1007, %1012
  %1027 = fmul contract float %1026, 0x3FAB2035C0000000
  %1028 = fsub contract float %1003, %1027
  %1029 = fadd contract float %1012, %1016
  %1030 = fmul contract float %1029, 0x3FAB2035C0000000
  %1031 = fsub contract float %1008, %1030
  %1032 = fadd contract float %1019, %1016
  %1033 = fmul contract float %1032, 0x3FAB2035C0000000
  %1034 = fsub contract float %995, %1033
  %1035 = fadd contract float %1019, %1022
  %1036 = fmul contract float %1035, 0x3FAB2035C0000000
  %1037 = fsub contract float %997, %1036
  %1038 = fadd contract float %1022, %1025
  %1039 = fmul contract float %1038, 0x3FAB2035C0000000
  %1040 = fsub contract float %999, %1039
  %1041 = fadd contract float %1002, %1028
  %1042 = fmul contract float %1041, 0x3FEC40CEC0000000
  %1043 = fadd contract float %1007, %1042
  store float %1043, float addrspace(3)* %722, align 4, !tbaa !6
  %1044 = fadd contract float %1028, %1031
  %1045 = fmul contract float %1044, 0x3FEC40CEC0000000
  %1046 = fadd contract float %1012, %1045
  store float %1046, float addrspace(3)* %726, align 4, !tbaa !6
  %1047 = fadd contract float %1031, %1034
  %1048 = fmul contract float %1047, 0x3FEC40CEC0000000
  %1049 = fadd contract float %1016, %1048
  store float %1049, float addrspace(3)* %729, align 4, !tbaa !6
  %1050 = fadd contract float %1037, %1034
  %1051 = fmul contract float %1050, 0x3FEC40CEC0000000
  %1052 = fadd contract float %1019, %1051
  store float %1052, float addrspace(3)* %733, align 4, !tbaa !6
  %1053 = fadd contract float %1037, %1040
  %1054 = fmul contract float %1053, 0x3FEC40CEC0000000
  %1055 = fadd contract float %1022, %1054
  store float %1055, float addrspace(3)* %737, align 4, !tbaa !6
  %1056 = fadd contract float %1001, %1040
  %1057 = fmul contract float %1056, 0x3FEC40CEC0000000
  %1058 = fadd contract float %1025, %1057
  store float %1058, float addrspace(3)* %739, align 4, !tbaa !6
  %1059 = fadd contract float %1043, %1046
  %1060 = fmul contract float %1059, 0x3FDC626AA0000000
  %1061 = fadd contract float %1028, %1060
  store float %1061, float addrspace(3)* %720, align 4, !tbaa !6
  %1062 = fadd contract float %1046, %1049
  %1063 = fmul contract float %1062, 0x3FDC626AA0000000
  %1064 = fadd contract float %1031, %1063
  store float %1064, float addrspace(3)* %724, align 4, !tbaa !6
  %1065 = fadd contract float %1049, %1052
  %1066 = fmul contract float %1065, 0x3FDC626AA0000000
  %1067 = fadd contract float %1034, %1066
  store float %1067, float addrspace(3)* %727, align 4, !tbaa !6
  %1068 = fadd contract float %1055, %1052
  %1069 = fmul contract float %1068, 0x3FDC626AA0000000
  %1070 = fadd contract float %1037, %1069
  store float %1070, float addrspace(3)* %731, align 4, !tbaa !6
  %1071 = fadd contract float %1055, %1058
  %1072 = fmul contract float %1071, 0x3FDC626AA0000000
  %1073 = fadd contract float %1040, %1072
  store float %1073, float addrspace(3)* %735, align 4, !tbaa !6
  %1074 = icmp eq i32 %748, %647
  br i1 %1074, label %1080, label %1075

1075:                                             ; preds = %994
  %1076 = add nsw i32 %748, %645
  %1077 = sext i32 %748 to i64
  %1078 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1077
  %1079 = fmul contract float %1064, 0x3FEA033860000000
  store float %1079, float addrspace(1)* %1078, align 4, !tbaa !6
  br label %1080

1080:                                             ; preds = %1075, %994
  %1081 = phi i32 [ %647, %994 ], [ %1076, %1075 ]
  %1082 = icmp eq i32 %1081, %647
  br i1 %1082, label %1088, label %1083

1083:                                             ; preds = %1080
  %1084 = add nsw i32 %1081, %646
  %1085 = sext i32 %1081 to i64
  %1086 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1085
  %1087 = fmul contract float %1049, 0x3FF3AECB00000000
  store float %1087, float addrspace(1)* %1086, align 4, !tbaa !6
  br label %1088

1088:                                             ; preds = %1083, %1080
  %1089 = phi i32 [ %647, %1080 ], [ %1084, %1083 ]
  %1090 = icmp eq i32 %1089, %647
  br i1 %1090, label %1096, label %1091

1091:                                             ; preds = %1088
  %1092 = add nsw i32 %1089, %645
  %1093 = sext i32 %1089 to i64
  %1094 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1093
  %1095 = fmul contract float %1067, 0x3FEA033860000000
  store float %1095, float addrspace(1)* %1094, align 4, !tbaa !6
  br label %1096

1096:                                             ; preds = %1091, %1088
  %1097 = phi i32 [ %647, %1088 ], [ %1092, %1091 ]
  %1098 = icmp eq i32 %1097, %647
  br i1 %1098, label %1104, label %1099

1099:                                             ; preds = %1096
  %1100 = add nsw i32 %1097, %646
  %1101 = sext i32 %1097 to i64
  %1102 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1101
  %1103 = fmul contract float %1052, 0x3FF3AECB00000000
  store float %1103, float addrspace(1)* %1102, align 4, !tbaa !6
  br label %1104

1104:                                             ; preds = %1099, %1096
  %1105 = phi i32 [ %647, %1096 ], [ %1100, %1099 ]
  %1106 = icmp eq i32 %1105, %647
  br i1 %1106, label %1112, label %1107

1107:                                             ; preds = %1104
  %1108 = add nsw i32 %1105, %645
  %1109 = sext i32 %1105 to i64
  %1110 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1109
  %1111 = fmul contract float %1070, 0x3FEA033860000000
  store float %1111, float addrspace(1)* %1110, align 4, !tbaa !6
  br label %1112

1112:                                             ; preds = %1107, %1104
  %1113 = phi i32 [ %647, %1104 ], [ %1108, %1107 ]
  %1114 = icmp eq i32 %1113, %647
  br i1 %1114, label %1120, label %1115

1115:                                             ; preds = %1112
  %1116 = add nsw i32 %1113, %646
  %1117 = sext i32 %1113 to i64
  %1118 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1117
  %1119 = fmul contract float %1055, 0x3FF3AECB00000000
  store float %1119, float addrspace(1)* %1118, align 4, !tbaa !6
  br label %1120

1120:                                             ; preds = %1115, %1112
  %1121 = phi i32 [ %647, %1112 ], [ %1116, %1115 ]
  store float %995, float addrspace(3)* %718, align 4, !tbaa !6
  store float %996, float addrspace(3)* %722, align 4, !tbaa !6
  store float %997, float addrspace(3)* %720, align 4, !tbaa !6
  store float %998, float addrspace(3)* %726, align 4, !tbaa !6
  store float %999, float addrspace(3)* %724, align 4, !tbaa !6
  store float %1000, float addrspace(3)* %729, align 4, !tbaa !6
  store float %1001, float addrspace(3)* %727, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1122 = add nuw nsw i32 %743, 1
  %1123 = icmp eq i32 %1122, %4
  br i1 %1123, label %2839, label %742, !llvm.loop !18

1124:                                             ; preds = %5
  %1125 = shl i32 %7, 6
  %1126 = add i32 %1125, 67
  %1127 = icmp slt i32 %1126, %2
  %1128 = mul i32 %9, %4
  %1129 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %1130 = add nuw nsw i32 %1129, 4
  %1131 = lshr i32 %1130, 1
  %1132 = and i32 %1129, 1
  %1133 = icmp eq i32 %1132, 0
  %1134 = select i1 %1133, i32 0, i32 472
  %1135 = add nuw nsw i32 %1134, %1131
  %1136 = add i32 %1125, %1129
  %1137 = sub i32 0, %1136
  %1138 = icmp eq i32 %8, 0
  br i1 %1127, label %2007, label %1139

1139:                                             ; preds = %1124
  br i1 %1138, label %1140, label %1200

1140:                                             ; preds = %1139
  %1141 = icmp slt i32 %1136, %2
  br i1 %1141, label %1146, label %1142

1142:                                             ; preds = %1140
  %1143 = shl nsw i32 %2, 1
  %1144 = sub i32 -2, %1136
  %1145 = add i32 %1144, %1143
  br label %1148

1146:                                             ; preds = %1140
  %1147 = icmp slt i32 %1136, 0
  br i1 %1147, label %1148, label %1150

1148:                                             ; preds = %1146, %1142
  %1149 = phi i32 [ %1145, %1142 ], [ %1137, %1146 ]
  br label %1150

1150:                                             ; preds = %1148, %1146
  %1151 = phi i32 [ %1149, %1148 ], [ %1136, %1146 ]
  %1152 = mul nsw i32 %1128, %2
  %1153 = add i32 %1151, %1152
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1154
  %1156 = load float, float addrspace(1)* %1155, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1157 = add nuw nsw i32 %1135, 144
  %1158 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1157
  store float %1156, float addrspace(3)* %1158, align 4, !tbaa !6
  %1159 = add nsw i32 %1153, %2
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1160
  %1162 = load float, float addrspace(1)* %1161, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1163 = add nuw nsw i32 %1135, 180
  %1164 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1163
  store float %1162, float addrspace(3)* %1164, align 4, !tbaa !6
  %1165 = add nuw nsw i32 %1135, 108
  %1166 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1165
  store float %1162, float addrspace(3)* %1166, align 4, !tbaa !6
  %1167 = add nsw i32 %1159, %2
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1168
  %1170 = load float, float addrspace(1)* %1169, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1171 = add nuw nsw i32 %1135, 216
  %1172 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1171
  store float %1170, float addrspace(3)* %1172, align 4, !tbaa !6
  %1173 = add nuw nsw i32 %1135, 72
  %1174 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1173
  store float %1170, float addrspace(3)* %1174, align 4, !tbaa !6
  %1175 = add nsw i32 %1167, %2
  %1176 = sext i32 %1175 to i64
  %1177 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1176
  %1178 = load float, float addrspace(1)* %1177, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1179 = add nuw nsw i32 %1135, 36
  %1180 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1179
  store float %1178, float addrspace(3)* %1180, align 4, !tbaa !6
  %1181 = add nsw i32 %1175, %2
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1182
  %1184 = load float, float addrspace(1)* %1183, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1185 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %1184, float addrspace(3)* %1185, align 4, !tbaa !6
  %1186 = add nsw i32 %1128, 3
  br i1 %1141, label %1191, label %1187

1187:                                             ; preds = %1150
  %1188 = shl nsw i32 %2, 1
  %1189 = sub i32 -2, %1136
  %1190 = add i32 %1189, %1188
  br label %1193

1191:                                             ; preds = %1150
  %1192 = icmp slt i32 %1136, 0
  br i1 %1192, label %1193, label %1195

1193:                                             ; preds = %1191, %1187
  %1194 = phi i32 [ %1190, %1187 ], [ %1137, %1191 ]
  br label %1195

1195:                                             ; preds = %1193, %1191
  %1196 = phi i32 [ %1194, %1193 ], [ %1136, %1191 ]
  %1197 = mul nsw i32 %1186, %2
  %1198 = sub i32 %1197, %2
  %1199 = add i32 %1198, %1196
  br label %1255

1200:                                             ; preds = %1139
  %1201 = add nsw i32 %1128, -4
  %1202 = icmp slt i32 %1136, %2
  br i1 %1202, label %1207, label %1203

1203:                                             ; preds = %1200
  %1204 = shl nsw i32 %2, 1
  %1205 = sub i32 -2, %1136
  %1206 = add i32 %1205, %1204
  br label %1209

1207:                                             ; preds = %1200
  %1208 = icmp slt i32 %1136, 0
  br i1 %1208, label %1209, label %1211

1209:                                             ; preds = %1207, %1203
  %1210 = phi i32 [ %1206, %1203 ], [ %1137, %1207 ]
  br label %1211

1211:                                             ; preds = %1209, %1207
  %1212 = phi i32 [ %1210, %1209 ], [ %1136, %1207 ]
  %1213 = mul nsw i32 %1201, %2
  %1214 = add i32 %1212, %1213
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1215
  %1217 = load float, float addrspace(1)* %1216, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1218 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %1217, float addrspace(3)* %1218, align 4, !tbaa !6
  %1219 = add nsw i32 %1214, %2
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1220
  %1222 = load float, float addrspace(1)* %1221, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1223 = add nuw nsw i32 %1135, 36
  %1224 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1223
  store float %1222, float addrspace(3)* %1224, align 4, !tbaa !6
  %1225 = add nsw i32 %1219, %2
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1226
  %1228 = load float, float addrspace(1)* %1227, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1229 = add nuw nsw i32 %1135, 72
  %1230 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1229
  store float %1228, float addrspace(3)* %1230, align 4, !tbaa !6
  %1231 = add nsw i32 %1225, %2
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1232
  %1234 = load float, float addrspace(1)* %1233, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1235 = add nuw nsw i32 %1135, 108
  %1236 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1235
  store float %1234, float addrspace(3)* %1236, align 4, !tbaa !6
  %1237 = add nsw i32 %1231, %2
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1238
  %1240 = load float, float addrspace(1)* %1239, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1241 = add nuw nsw i32 %1135, 144
  %1242 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1241
  store float %1240, float addrspace(3)* %1242, align 4, !tbaa !6
  %1243 = add nsw i32 %1237, %2
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1244
  %1246 = load float, float addrspace(1)* %1245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1247 = add nuw nsw i32 %1135, 180
  %1248 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1247
  store float %1246, float addrspace(3)* %1248, align 4, !tbaa !6
  %1249 = add nsw i32 %1243, %2
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1250
  %1252 = load float, float addrspace(1)* %1251, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1253 = add nuw nsw i32 %1135, 216
  %1254 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1253
  store float %1252, float addrspace(3)* %1254, align 4, !tbaa !6
  br label %1255

1255:                                             ; preds = %1211, %1195
  %1256 = phi i32 [ %1199, %1195 ], [ %1249, %1211 ]
  %1257 = icmp ult i32 %1129, 7
  br i1 %1257, label %1258, label %1387

1258:                                             ; preds = %1255
  %1259 = icmp ult i32 %1129, 3
  %1260 = select i1 %1259, i32 64, i32 -7
  %1261 = add nsw i32 %1260, %1129
  %1262 = trunc i32 %1261 to i8
  %1263 = add nsw i8 %1262, 4
  %1264 = sdiv i8 %1263, 2
  %1265 = sext i8 %1264 to i32
  %1266 = and i32 %1261, 1
  %1267 = icmp eq i32 %1266, 0
  %1268 = select i1 %1267, i32 0, i32 472
  %1269 = add nsw i32 %1268, %1265
  %1270 = add i32 %1261, %1125
  %1271 = sub i32 0, %1270
  br i1 %1138, label %1272, label %1332

1272:                                             ; preds = %1258
  %1273 = icmp slt i32 %1270, %2
  br i1 %1273, label %1278, label %1274

1274:                                             ; preds = %1272
  %1275 = shl nsw i32 %2, 1
  %1276 = sub i32 -2, %1270
  %1277 = add i32 %1276, %1275
  br label %1280

1278:                                             ; preds = %1272
  %1279 = icmp slt i32 %1270, 0
  br i1 %1279, label %1280, label %1282

1280:                                             ; preds = %1278, %1274
  %1281 = phi i32 [ %1277, %1274 ], [ %1271, %1278 ]
  br label %1282

1282:                                             ; preds = %1280, %1278
  %1283 = phi i32 [ %1281, %1280 ], [ %1270, %1278 ]
  %1284 = mul nsw i32 %1128, %2
  %1285 = add i32 %1283, %1284
  %1286 = sext i32 %1285 to i64
  %1287 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1286
  %1288 = load float, float addrspace(1)* %1287, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1289 = add nsw i32 %1269, 144
  %1290 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1289
  store float %1288, float addrspace(3)* %1290, align 4, !tbaa !6
  %1291 = add nsw i32 %1285, %2
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1292
  %1294 = load float, float addrspace(1)* %1293, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1295 = add nsw i32 %1269, 180
  %1296 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1295
  store float %1294, float addrspace(3)* %1296, align 4, !tbaa !6
  %1297 = add nsw i32 %1269, 108
  %1298 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1297
  store float %1294, float addrspace(3)* %1298, align 4, !tbaa !6
  %1299 = add nsw i32 %1291, %2
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1300
  %1302 = load float, float addrspace(1)* %1301, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1303 = add nsw i32 %1269, 216
  %1304 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1303
  store float %1302, float addrspace(3)* %1304, align 4, !tbaa !6
  %1305 = add nsw i32 %1269, 72
  %1306 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1305
  store float %1302, float addrspace(3)* %1306, align 4, !tbaa !6
  %1307 = add nsw i32 %1299, %2
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1308
  %1310 = load float, float addrspace(1)* %1309, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1311 = add nsw i32 %1269, 36
  %1312 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1311
  store float %1310, float addrspace(3)* %1312, align 4, !tbaa !6
  %1313 = add nsw i32 %1307, %2
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1314
  %1316 = load float, float addrspace(1)* %1315, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1317 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1269
  store float %1316, float addrspace(3)* %1317, align 4, !tbaa !6
  %1318 = add nsw i32 %1128, 3
  br i1 %1273, label %1323, label %1319

1319:                                             ; preds = %1282
  %1320 = shl nsw i32 %2, 1
  %1321 = sub i32 -2, %1270
  %1322 = add i32 %1321, %1320
  br label %1325

1323:                                             ; preds = %1282
  %1324 = icmp slt i32 %1270, 0
  br i1 %1324, label %1325, label %1327

1325:                                             ; preds = %1323, %1319
  %1326 = phi i32 [ %1322, %1319 ], [ %1271, %1323 ]
  br label %1327

1327:                                             ; preds = %1325, %1323
  %1328 = phi i32 [ %1326, %1325 ], [ %1270, %1323 ]
  %1329 = mul nsw i32 %1318, %2
  %1330 = sub i32 %1329, %2
  %1331 = add i32 %1330, %1328
  br label %1387

1332:                                             ; preds = %1258
  %1333 = add nsw i32 %1128, -4
  %1334 = icmp slt i32 %1270, %2
  br i1 %1334, label %1339, label %1335

1335:                                             ; preds = %1332
  %1336 = shl nsw i32 %2, 1
  %1337 = sub i32 -2, %1270
  %1338 = add i32 %1337, %1336
  br label %1341

1339:                                             ; preds = %1332
  %1340 = icmp slt i32 %1270, 0
  br i1 %1340, label %1341, label %1343

1341:                                             ; preds = %1339, %1335
  %1342 = phi i32 [ %1338, %1335 ], [ %1271, %1339 ]
  br label %1343

1343:                                             ; preds = %1341, %1339
  %1344 = phi i32 [ %1342, %1341 ], [ %1270, %1339 ]
  %1345 = mul nsw i32 %1333, %2
  %1346 = add i32 %1344, %1345
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1347
  %1349 = load float, float addrspace(1)* %1348, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1350 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1269
  store float %1349, float addrspace(3)* %1350, align 4, !tbaa !6
  %1351 = add nsw i32 %1346, %2
  %1352 = sext i32 %1351 to i64
  %1353 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1352
  %1354 = load float, float addrspace(1)* %1353, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1355 = add nsw i32 %1269, 36
  %1356 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1355
  store float %1354, float addrspace(3)* %1356, align 4, !tbaa !6
  %1357 = add nsw i32 %1351, %2
  %1358 = sext i32 %1357 to i64
  %1359 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1358
  %1360 = load float, float addrspace(1)* %1359, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1361 = add nsw i32 %1269, 72
  %1362 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1361
  store float %1360, float addrspace(3)* %1362, align 4, !tbaa !6
  %1363 = add nsw i32 %1357, %2
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1364
  %1366 = load float, float addrspace(1)* %1365, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1367 = add nsw i32 %1269, 108
  %1368 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1367
  store float %1366, float addrspace(3)* %1368, align 4, !tbaa !6
  %1369 = add nsw i32 %1363, %2
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1370
  %1372 = load float, float addrspace(1)* %1371, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1373 = add nsw i32 %1269, 144
  %1374 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1373
  store float %1372, float addrspace(3)* %1374, align 4, !tbaa !6
  %1375 = add nsw i32 %1369, %2
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1376
  %1378 = load float, float addrspace(1)* %1377, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1379 = add nsw i32 %1269, 180
  %1380 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1379
  store float %1378, float addrspace(3)* %1380, align 4, !tbaa !6
  %1381 = add nsw i32 %1375, %2
  %1382 = sext i32 %1381 to i64
  %1383 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1382
  %1384 = load float, float addrspace(1)* %1383, align 4, !tbaa !6, !amdgpu.noclobber !10
  %1385 = add nsw i32 %1269, 216
  %1386 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1385
  store float %1384, float addrspace(3)* %1386, align 4, !tbaa !6
  br label %1387

1387:                                             ; preds = %1343, %1327, %1255
  %1388 = phi i32 [ 0, %1255 ], [ %2, %1327 ], [ %2, %1343 ]
  %1389 = phi i32 [ 0, %1255 ], [ %1331, %1327 ], [ %1381, %1343 ]
  %1390 = phi i32 [ 0, %1255 ], [ %1269, %1327 ], [ %1269, %1343 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1391 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1129
  %1392 = load float, float addrspace(3)* %1391, align 4, !tbaa !6
  %1393 = add nuw nsw i32 %1129, 1
  %1394 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1393
  %1395 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1396 = add nuw nsw i32 %1129, 472
  %1397 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1396
  %1398 = fadd contract float %1392, %1395
  %1399 = fmul contract float %1398, 0x3FF960CE60000000
  %1400 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1401 = fsub contract float %1400, %1399
  store float %1401, float addrspace(3)* %1397, align 4, !tbaa !6
  %1402 = add nuw nsw i32 %1129, 64
  %1403 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1402
  %1404 = load float, float addrspace(3)* %1403, align 4, !tbaa !6
  %1405 = add nuw nsw i32 %1129, 65
  %1406 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1405
  %1407 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1408 = add nuw nsw i32 %1129, 536
  %1409 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1408
  %1410 = fadd contract float %1404, %1407
  %1411 = fmul contract float %1410, 0x3FF960CE60000000
  %1412 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1413 = fsub contract float %1412, %1411
  store float %1413, float addrspace(3)* %1409, align 4, !tbaa !6
  %1414 = add nuw nsw i32 %1129, 128
  %1415 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1414
  %1416 = load float, float addrspace(3)* %1415, align 4, !tbaa !6
  %1417 = add nuw nsw i32 %1129, 129
  %1418 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1417
  %1419 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1420 = add nuw nsw i32 %1129, 600
  %1421 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1420
  %1422 = fadd contract float %1416, %1419
  %1423 = fmul contract float %1422, 0x3FF960CE60000000
  %1424 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1425 = fsub contract float %1424, %1423
  store float %1425, float addrspace(3)* %1421, align 4, !tbaa !6
  %1426 = icmp ult i32 %1129, 59
  br i1 %1426, label %1427, label %1440

1427:                                             ; preds = %1387
  %1428 = add nuw nsw i32 %1129, 192
  %1429 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1428
  %1430 = load float, float addrspace(3)* %1429, align 4, !tbaa !6
  %1431 = add nuw nsw i32 %1129, 193
  %1432 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1431
  %1433 = load float, float addrspace(3)* %1432, align 4, !tbaa !6
  %1434 = add nuw nsw i32 %1129, 664
  %1435 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1434
  %1436 = fadd contract float %1430, %1433
  %1437 = fmul contract float %1436, 0x3FF960CE60000000
  %1438 = load float, float addrspace(3)* %1435, align 4, !tbaa !6
  %1439 = fsub contract float %1438, %1437
  store float %1439, float addrspace(3)* %1435, align 4, !tbaa !6
  br label %1440

1440:                                             ; preds = %1427, %1387
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1441 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1442 = add nuw nsw i32 %1129, 473
  %1443 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1442
  %1444 = load float, float addrspace(3)* %1443, align 4, !tbaa !6
  %1445 = fadd contract float %1441, %1444
  %1446 = fmul contract float %1445, 0x3FAB2035C0000000
  %1447 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1448 = fsub contract float %1447, %1446
  store float %1448, float addrspace(3)* %1394, align 4, !tbaa !6
  %1449 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1450 = add nuw nsw i32 %1129, 537
  %1451 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1450
  %1452 = load float, float addrspace(3)* %1451, align 4, !tbaa !6
  %1453 = fadd contract float %1449, %1452
  %1454 = fmul contract float %1453, 0x3FAB2035C0000000
  %1455 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1456 = fsub contract float %1455, %1454
  store float %1456, float addrspace(3)* %1406, align 4, !tbaa !6
  %1457 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1458 = add nuw nsw i32 %1129, 601
  %1459 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1458
  %1460 = load float, float addrspace(3)* %1459, align 4, !tbaa !6
  %1461 = fadd contract float %1457, %1460
  %1462 = fmul contract float %1461, 0x3FAB2035C0000000
  %1463 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1464 = fsub contract float %1463, %1462
  store float %1464, float addrspace(3)* %1418, align 4, !tbaa !6
  br i1 %1426, label %1465, label %1478

1465:                                             ; preds = %1440
  %1466 = add nuw nsw i32 %1129, 664
  %1467 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1466
  %1468 = load float, float addrspace(3)* %1467, align 4, !tbaa !6
  %1469 = add nuw nsw i32 %1129, 665
  %1470 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1469
  %1471 = load float, float addrspace(3)* %1470, align 4, !tbaa !6
  %1472 = add nuw nsw i32 %1129, 193
  %1473 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1472
  %1474 = fadd contract float %1468, %1471
  %1475 = fmul contract float %1474, 0x3FAB2035C0000000
  %1476 = load float, float addrspace(3)* %1473, align 4, !tbaa !6
  %1477 = fsub contract float %1476, %1475
  store float %1477, float addrspace(3)* %1473, align 4, !tbaa !6
  br label %1478

1478:                                             ; preds = %1465, %1440
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1479 = load float, float addrspace(3)* %1391, align 4, !tbaa !6
  %1480 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1481 = fadd contract float %1479, %1480
  %1482 = fmul contract float %1481, 0x3FEC40CEC0000000
  %1483 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1484 = fadd contract float %1483, %1482
  store float %1484, float addrspace(3)* %1397, align 4, !tbaa !6
  %1485 = load float, float addrspace(3)* %1403, align 4, !tbaa !6
  %1486 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1487 = fadd contract float %1485, %1486
  %1488 = fmul contract float %1487, 0x3FEC40CEC0000000
  %1489 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1490 = fadd contract float %1489, %1488
  store float %1490, float addrspace(3)* %1409, align 4, !tbaa !6
  %1491 = load float, float addrspace(3)* %1415, align 4, !tbaa !6
  %1492 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1493 = fadd contract float %1491, %1492
  %1494 = fmul contract float %1493, 0x3FEC40CEC0000000
  %1495 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1496 = fadd contract float %1495, %1494
  store float %1496, float addrspace(3)* %1421, align 4, !tbaa !6
  br i1 %1426, label %1497, label %1510

1497:                                             ; preds = %1478
  %1498 = add nuw nsw i32 %1129, 192
  %1499 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1498
  %1500 = load float, float addrspace(3)* %1499, align 4, !tbaa !6
  %1501 = add nuw nsw i32 %1129, 193
  %1502 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1501
  %1503 = load float, float addrspace(3)* %1502, align 4, !tbaa !6
  %1504 = add nuw nsw i32 %1129, 664
  %1505 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1504
  %1506 = fadd contract float %1500, %1503
  %1507 = fmul contract float %1506, 0x3FEC40CEC0000000
  %1508 = load float, float addrspace(3)* %1505, align 4, !tbaa !6
  %1509 = fadd contract float %1508, %1507
  store float %1509, float addrspace(3)* %1505, align 4, !tbaa !6
  br label %1510

1510:                                             ; preds = %1497, %1478
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1511 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1512 = load float, float addrspace(3)* %1443, align 4, !tbaa !6
  %1513 = fadd contract float %1511, %1512
  %1514 = fmul contract float %1513, 0x3FDC626AA0000000
  %1515 = load float, float addrspace(3)* %1394, align 4, !tbaa !6
  %1516 = fadd contract float %1515, %1514
  store float %1516, float addrspace(3)* %1394, align 4, !tbaa !6
  %1517 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1518 = load float, float addrspace(3)* %1451, align 4, !tbaa !6
  %1519 = fadd contract float %1517, %1518
  %1520 = fmul contract float %1519, 0x3FDC626AA0000000
  %1521 = load float, float addrspace(3)* %1406, align 4, !tbaa !6
  %1522 = fadd contract float %1521, %1520
  store float %1522, float addrspace(3)* %1406, align 4, !tbaa !6
  %1523 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1524 = load float, float addrspace(3)* %1459, align 4, !tbaa !6
  %1525 = fadd contract float %1523, %1524
  %1526 = fmul contract float %1525, 0x3FDC626AA0000000
  %1527 = load float, float addrspace(3)* %1418, align 4, !tbaa !6
  %1528 = fadd contract float %1527, %1526
  store float %1528, float addrspace(3)* %1418, align 4, !tbaa !6
  br i1 %1426, label %1529, label %1542

1529:                                             ; preds = %1510
  %1530 = add nuw nsw i32 %1129, 664
  %1531 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1530
  %1532 = load float, float addrspace(3)* %1531, align 4, !tbaa !6
  %1533 = add nuw nsw i32 %1129, 665
  %1534 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1533
  %1535 = load float, float addrspace(3)* %1534, align 4, !tbaa !6
  %1536 = add nuw nsw i32 %1129, 193
  %1537 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1536
  %1538 = fadd contract float %1532, %1535
  %1539 = fmul contract float %1538, 0x3FDC626AA0000000
  %1540 = load float, float addrspace(3)* %1537, align 4, !tbaa !6
  %1541 = fadd contract float %1540, %1539
  store float %1541, float addrspace(3)* %1537, align 4, !tbaa !6
  br label %1542

1542:                                             ; preds = %1529, %1510
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1543 = load float, float addrspace(3)* %1391, align 4, !tbaa !6
  %1544 = fmul contract float %1543, 0x3FEA033860000000
  store float %1544, float addrspace(3)* %1391, align 4, !tbaa !6
  %1545 = load float, float addrspace(3)* %1397, align 4, !tbaa !6
  %1546 = fmul contract float %1545, 0x3FF3AECB00000000
  store float %1546, float addrspace(3)* %1397, align 4, !tbaa !6
  %1547 = load float, float addrspace(3)* %1403, align 4, !tbaa !6
  %1548 = fmul contract float %1547, 0x3FEA033860000000
  store float %1548, float addrspace(3)* %1403, align 4, !tbaa !6
  %1549 = load float, float addrspace(3)* %1409, align 4, !tbaa !6
  %1550 = fmul contract float %1549, 0x3FF3AECB00000000
  store float %1550, float addrspace(3)* %1409, align 4, !tbaa !6
  %1551 = load float, float addrspace(3)* %1415, align 4, !tbaa !6
  %1552 = fmul contract float %1551, 0x3FEA033860000000
  store float %1552, float addrspace(3)* %1415, align 4, !tbaa !6
  %1553 = load float, float addrspace(3)* %1421, align 4, !tbaa !6
  %1554 = fmul contract float %1553, 0x3FF3AECB00000000
  store float %1554, float addrspace(3)* %1421, align 4, !tbaa !6
  %1555 = icmp ult i32 %1129, 60
  br i1 %1555, label %1556, label %1565

1556:                                             ; preds = %1542
  %1557 = add nuw nsw i32 %1129, 192
  %1558 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1557
  %1559 = load float, float addrspace(3)* %1558, align 4, !tbaa !6
  %1560 = fmul contract float %1559, 0x3FEA033860000000
  store float %1560, float addrspace(3)* %1558, align 4, !tbaa !6
  %1561 = add nuw nsw i32 %1129, 664
  %1562 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1561
  %1563 = load float, float addrspace(3)* %1562, align 4, !tbaa !6
  %1564 = fmul contract float %1563, 0x3FF3AECB00000000
  store float %1564, float addrspace(3)* %1562, align 4, !tbaa !6
  br label %1565

1565:                                             ; preds = %1556, %1542
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1566 = shl nuw nsw i32 %1129, 1
  %1567 = lshr i32 %1129, 5
  %1568 = mul nsw i32 %1567, -63
  %1569 = add nsw i32 %1568, %1566
  %1570 = add i32 %1569, %1125
  %1571 = icmp slt i32 %1570, %2
  br i1 %1571, label %1572, label %1602

1572:                                             ; preds = %1565
  %1573 = sdiv i32 %1570, 2
  %1574 = and i32 %1570, 1
  %1575 = icmp eq i32 %1574, 0
  %1576 = sdiv i32 %2, 2
  %1577 = and i32 %2, 1
  %1578 = add nsw i32 %1576, %1577
  %1579 = sdiv i32 %3, 2
  %1580 = and i32 %3, 1
  %1581 = add nsw i32 %1579, %1580
  br i1 %1575, label %1587, label %1582

1582:                                             ; preds = %1572
  %1583 = mul nsw i32 %1581, %1578
  %1584 = add nsw i32 %1583, %1573
  %1585 = mul nsw i32 %3, %2
  %1586 = sdiv i32 %1585, 2
  br label %1589

1587:                                             ; preds = %1572
  %1588 = mul nsw i32 %1581, %2
  br label %1589

1589:                                             ; preds = %1587, %1582
  %1590 = phi i32 [ %1588, %1587 ], [ %1586, %1582 ]
  %1591 = phi i32 [ %1573, %1587 ], [ %1584, %1582 ]
  %1592 = phi i32 [ %1578, %1587 ], [ %1576, %1582 ]
  %1593 = sub nsw i32 %1592, %1590
  %1594 = mul nsw i32 %1592, %1579
  %1595 = icmp eq i32 %1580, 0
  %1596 = select i1 %1595, i32 0, i32 %1590
  %1597 = add i32 %1596, %1591
  %1598 = add i32 %1597, %1594
  %1599 = sdiv i32 %1128, 2
  %1600 = mul nsw i32 %1592, %1599
  %1601 = add i32 %1600, %1591
  br label %1602

1602:                                             ; preds = %1589, %1565
  %1603 = phi i32 [ %1590, %1589 ], [ 0, %1565 ]
  %1604 = phi i32 [ %1593, %1589 ], [ 0, %1565 ]
  %1605 = phi i32 [ %1598, %1589 ], [ 0, %1565 ]
  %1606 = phi i32 [ %1601, %1589 ], [ 0, %1565 ]
  %1607 = trunc i32 %1569 to i16
  %1608 = add nsw i16 %1607, 4
  %1609 = sdiv i16 %1608, 2
  %1610 = sext i16 %1609 to i32
  %1611 = and i32 %1569, 1
  %1612 = icmp eq i32 %1611, 0
  %1613 = select i1 %1612, i32 0, i32 472
  %1614 = add nsw i32 %1613, %1610
  %1615 = icmp sgt i32 %4, 0
  br i1 %1615, label %1616, label %2839

1616:                                             ; preds = %1602
  %1617 = add nuw nsw i32 %1135, 252
  %1618 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1617
  %1619 = add nuw nsw i32 %1135, 288
  %1620 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1619
  %1621 = add nuw nsw i32 %1135, 324
  %1622 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1621
  %1623 = add nuw nsw i32 %1135, 360
  %1624 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1623
  %1625 = add nuw nsw i32 %1135, 396
  %1626 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1625
  %1627 = add nuw nsw i32 %1135, 432
  %1628 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1627
  %1629 = add nsw i32 %1390, 252
  %1630 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1629
  %1631 = add nsw i32 %1390, 288
  %1632 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1631
  %1633 = add nsw i32 %1390, 324
  %1634 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1633
  %1635 = add nsw i32 %1390, 360
  %1636 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1635
  %1637 = add nsw i32 %1390, 396
  %1638 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1637
  %1639 = add nsw i32 %1390, 432
  %1640 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1639
  %1641 = add nuw nsw i32 %1129, 252
  %1642 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1641
  %1643 = add nuw nsw i32 %1129, 253
  %1644 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1643
  %1645 = add nuw nsw i32 %1129, 724
  %1646 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1645
  %1647 = add nuw nsw i32 %1129, 316
  %1648 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1647
  %1649 = add nuw nsw i32 %1129, 317
  %1650 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1649
  %1651 = add nuw nsw i32 %1129, 788
  %1652 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1651
  %1653 = add nuw nsw i32 %1129, 380
  %1654 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1653
  %1655 = add nuw nsw i32 %1129, 381
  %1656 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1655
  %1657 = add nuw nsw i32 %1129, 852
  %1658 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1657
  %1659 = icmp ult i32 %1129, 23
  %1660 = add nuw nsw i32 %1129, 444
  %1661 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1660
  %1662 = add nuw nsw i32 %1129, 445
  %1663 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1662
  %1664 = add nuw nsw i32 %1129, 916
  %1665 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1664
  %1666 = add nuw nsw i32 %1129, 725
  %1667 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1666
  %1668 = add nuw nsw i32 %1129, 789
  %1669 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1668
  %1670 = add nuw nsw i32 %1129, 853
  %1671 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1670
  %1672 = add nuw nsw i32 %1129, 917
  %1673 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1672
  %1674 = icmp ult i32 %1129, 24
  %1675 = add nsw i32 %1614, 216
  %1676 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1614
  %1677 = add nsw i32 %1614, 72
  %1678 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1677
  %1679 = add nsw i32 %1614, 36
  %1680 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1679
  %1681 = add nsw i32 %1614, 144
  %1682 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1681
  %1683 = add nsw i32 %1614, 108
  %1684 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1683
  %1685 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1675
  %1686 = add nsw i32 %1614, 180
  %1687 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1686
  %1688 = add nsw i32 %1614, 288
  %1689 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1688
  %1690 = add nsw i32 %1614, 252
  %1691 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1690
  %1692 = add nsw i32 %1614, 360
  %1693 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1692
  %1694 = add nsw i32 %1614, 324
  %1695 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1694
  %1696 = add nsw i32 %1614, 396
  %1697 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1696
  %1698 = add nsw i32 %1614, 432
  %1699 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1698
  br label %1700

1700:                                             ; preds = %2003, %1616
  %1701 = phi i32 [ 0, %1616 ], [ %2005, %2003 ]
  %1702 = phi i32 [ %1256, %1616 ], [ %1725, %2003 ]
  %1703 = phi i32 [ %1389, %1616 ], [ %1755, %2003 ]
  %1704 = phi i32 [ %1606, %1616 ], [ %2004, %2003 ]
  %1705 = add nsw i32 %1702, %2
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1706
  %1708 = load float, float addrspace(1)* %1707, align 4, !tbaa !6
  store float %1708, float addrspace(3)* %1618, align 4, !tbaa !6
  %1709 = add nsw i32 %1705, %2
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1710
  %1712 = load float, float addrspace(1)* %1711, align 4, !tbaa !6
  store float %1712, float addrspace(3)* %1620, align 4, !tbaa !6
  %1713 = add nsw i32 %1709, %2
  %1714 = sext i32 %1713 to i64
  %1715 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1714
  %1716 = load float, float addrspace(1)* %1715, align 4, !tbaa !6
  store float %1716, float addrspace(3)* %1622, align 4, !tbaa !6
  %1717 = add nsw i32 %1713, %2
  %1718 = sext i32 %1717 to i64
  %1719 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1718
  %1720 = load float, float addrspace(1)* %1719, align 4, !tbaa !6
  store float %1720, float addrspace(3)* %1624, align 4, !tbaa !6
  %1721 = add nsw i32 %1717, %2
  %1722 = sext i32 %1721 to i64
  %1723 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1722
  %1724 = load float, float addrspace(1)* %1723, align 4, !tbaa !6
  store float %1724, float addrspace(3)* %1626, align 4, !tbaa !6
  %1725 = add nsw i32 %1721, %2
  %1726 = sext i32 %1725 to i64
  %1727 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1726
  %1728 = load float, float addrspace(1)* %1727, align 4, !tbaa !6
  store float %1728, float addrspace(3)* %1628, align 4, !tbaa !6
  br i1 %1257, label %1729, label %1754

1729:                                             ; preds = %1700
  %1730 = add nsw i32 %1703, %1388
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1731
  %1733 = load float, float addrspace(1)* %1732, align 4, !tbaa !6
  store float %1733, float addrspace(3)* %1630, align 4, !tbaa !6
  %1734 = add nsw i32 %1730, %1388
  %1735 = sext i32 %1734 to i64
  %1736 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1735
  %1737 = load float, float addrspace(1)* %1736, align 4, !tbaa !6
  store float %1737, float addrspace(3)* %1632, align 4, !tbaa !6
  %1738 = add nsw i32 %1734, %1388
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1739
  %1741 = load float, float addrspace(1)* %1740, align 4, !tbaa !6
  store float %1741, float addrspace(3)* %1634, align 4, !tbaa !6
  %1742 = add nsw i32 %1738, %1388
  %1743 = sext i32 %1742 to i64
  %1744 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1743
  %1745 = load float, float addrspace(1)* %1744, align 4, !tbaa !6
  store float %1745, float addrspace(3)* %1636, align 4, !tbaa !6
  %1746 = add nsw i32 %1742, %1388
  %1747 = sext i32 %1746 to i64
  %1748 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1747
  %1749 = load float, float addrspace(1)* %1748, align 4, !tbaa !6
  store float %1749, float addrspace(3)* %1638, align 4, !tbaa !6
  %1750 = add nsw i32 %1746, %1388
  %1751 = sext i32 %1750 to i64
  %1752 = getelementptr inbounds float, float addrspace(1)* %0, i64 %1751
  %1753 = load float, float addrspace(1)* %1752, align 4, !tbaa !6
  store float %1753, float addrspace(3)* %1640, align 4, !tbaa !6
  br label %1754

1754:                                             ; preds = %1729, %1700
  %1755 = phi i32 [ %1750, %1729 ], [ %1703, %1700 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1756 = load float, float addrspace(3)* %1642, align 4, !tbaa !6
  %1757 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1758 = fadd contract float %1756, %1757
  %1759 = fmul contract float %1758, 0x3FF960CE60000000
  %1760 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1761 = fsub contract float %1760, %1759
  store float %1761, float addrspace(3)* %1646, align 4, !tbaa !6
  %1762 = load float, float addrspace(3)* %1648, align 4, !tbaa !6
  %1763 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1764 = fadd contract float %1762, %1763
  %1765 = fmul contract float %1764, 0x3FF960CE60000000
  %1766 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1767 = fsub contract float %1766, %1765
  store float %1767, float addrspace(3)* %1652, align 4, !tbaa !6
  %1768 = load float, float addrspace(3)* %1654, align 4, !tbaa !6
  %1769 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1770 = fadd contract float %1768, %1769
  %1771 = fmul contract float %1770, 0x3FF960CE60000000
  %1772 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1773 = fsub contract float %1772, %1771
  store float %1773, float addrspace(3)* %1658, align 4, !tbaa !6
  br i1 %1659, label %1774, label %1781

1774:                                             ; preds = %1754
  %1775 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1776 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1777 = fadd contract float %1775, %1776
  %1778 = fmul contract float %1777, 0x3FF960CE60000000
  %1779 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1780 = fsub contract float %1779, %1778
  store float %1780, float addrspace(3)* %1665, align 4, !tbaa !6
  br label %1781

1781:                                             ; preds = %1774, %1754
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1782 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1783 = load float, float addrspace(3)* %1667, align 4, !tbaa !6
  %1784 = fadd contract float %1782, %1783
  %1785 = fmul contract float %1784, 0x3FAB2035C0000000
  %1786 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1787 = fsub contract float %1786, %1785
  store float %1787, float addrspace(3)* %1644, align 4, !tbaa !6
  %1788 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1789 = load float, float addrspace(3)* %1669, align 4, !tbaa !6
  %1790 = fadd contract float %1788, %1789
  %1791 = fmul contract float %1790, 0x3FAB2035C0000000
  %1792 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1793 = fsub contract float %1792, %1791
  store float %1793, float addrspace(3)* %1650, align 4, !tbaa !6
  %1794 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1795 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1796 = fadd contract float %1794, %1795
  %1797 = fmul contract float %1796, 0x3FAB2035C0000000
  %1798 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1799 = fsub contract float %1798, %1797
  store float %1799, float addrspace(3)* %1656, align 4, !tbaa !6
  br i1 %1659, label %1800, label %1807

1800:                                             ; preds = %1781
  %1801 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1802 = load float, float addrspace(3)* %1673, align 4, !tbaa !6
  %1803 = fadd contract float %1801, %1802
  %1804 = fmul contract float %1803, 0x3FAB2035C0000000
  %1805 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1806 = fsub contract float %1805, %1804
  store float %1806, float addrspace(3)* %1663, align 4, !tbaa !6
  br label %1807

1807:                                             ; preds = %1800, %1781
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1808 = load float, float addrspace(3)* %1642, align 4, !tbaa !6
  %1809 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1810 = fadd contract float %1808, %1809
  %1811 = fmul contract float %1810, 0x3FEC40CEC0000000
  %1812 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1813 = fadd contract float %1812, %1811
  store float %1813, float addrspace(3)* %1646, align 4, !tbaa !6
  %1814 = load float, float addrspace(3)* %1648, align 4, !tbaa !6
  %1815 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1816 = fadd contract float %1814, %1815
  %1817 = fmul contract float %1816, 0x3FEC40CEC0000000
  %1818 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1819 = fadd contract float %1818, %1817
  store float %1819, float addrspace(3)* %1652, align 4, !tbaa !6
  %1820 = load float, float addrspace(3)* %1654, align 4, !tbaa !6
  %1821 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1822 = fadd contract float %1820, %1821
  %1823 = fmul contract float %1822, 0x3FEC40CEC0000000
  %1824 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1825 = fadd contract float %1824, %1823
  store float %1825, float addrspace(3)* %1658, align 4, !tbaa !6
  br i1 %1659, label %1826, label %1833

1826:                                             ; preds = %1807
  %1827 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1828 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1829 = fadd contract float %1827, %1828
  %1830 = fmul contract float %1829, 0x3FEC40CEC0000000
  %1831 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1832 = fadd contract float %1831, %1830
  store float %1832, float addrspace(3)* %1665, align 4, !tbaa !6
  br label %1833

1833:                                             ; preds = %1826, %1807
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1834 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1835 = load float, float addrspace(3)* %1667, align 4, !tbaa !6
  %1836 = fadd contract float %1834, %1835
  %1837 = fmul contract float %1836, 0x3FDC626AA0000000
  %1838 = load float, float addrspace(3)* %1644, align 4, !tbaa !6
  %1839 = fadd contract float %1838, %1837
  store float %1839, float addrspace(3)* %1644, align 4, !tbaa !6
  %1840 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1841 = load float, float addrspace(3)* %1669, align 4, !tbaa !6
  %1842 = fadd contract float %1840, %1841
  %1843 = fmul contract float %1842, 0x3FDC626AA0000000
  %1844 = load float, float addrspace(3)* %1650, align 4, !tbaa !6
  %1845 = fadd contract float %1844, %1843
  store float %1845, float addrspace(3)* %1650, align 4, !tbaa !6
  %1846 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1847 = load float, float addrspace(3)* %1671, align 4, !tbaa !6
  %1848 = fadd contract float %1846, %1847
  %1849 = fmul contract float %1848, 0x3FDC626AA0000000
  %1850 = load float, float addrspace(3)* %1656, align 4, !tbaa !6
  %1851 = fadd contract float %1850, %1849
  store float %1851, float addrspace(3)* %1656, align 4, !tbaa !6
  br i1 %1659, label %1852, label %1859

1852:                                             ; preds = %1833
  %1853 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1854 = load float, float addrspace(3)* %1673, align 4, !tbaa !6
  %1855 = fadd contract float %1853, %1854
  %1856 = fmul contract float %1855, 0x3FDC626AA0000000
  %1857 = load float, float addrspace(3)* %1663, align 4, !tbaa !6
  %1858 = fadd contract float %1857, %1856
  store float %1858, float addrspace(3)* %1663, align 4, !tbaa !6
  br label %1859

1859:                                             ; preds = %1852, %1833
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1860 = load float, float addrspace(3)* %1642, align 4, !tbaa !6
  %1861 = fmul contract float %1860, 0x3FEA033860000000
  store float %1861, float addrspace(3)* %1642, align 4, !tbaa !6
  %1862 = load float, float addrspace(3)* %1646, align 4, !tbaa !6
  %1863 = fmul contract float %1862, 0x3FF3AECB00000000
  store float %1863, float addrspace(3)* %1646, align 4, !tbaa !6
  %1864 = load float, float addrspace(3)* %1648, align 4, !tbaa !6
  %1865 = fmul contract float %1864, 0x3FEA033860000000
  store float %1865, float addrspace(3)* %1648, align 4, !tbaa !6
  %1866 = load float, float addrspace(3)* %1652, align 4, !tbaa !6
  %1867 = fmul contract float %1866, 0x3FF3AECB00000000
  store float %1867, float addrspace(3)* %1652, align 4, !tbaa !6
  %1868 = load float, float addrspace(3)* %1654, align 4, !tbaa !6
  %1869 = fmul contract float %1868, 0x3FEA033860000000
  store float %1869, float addrspace(3)* %1654, align 4, !tbaa !6
  %1870 = load float, float addrspace(3)* %1658, align 4, !tbaa !6
  %1871 = fmul contract float %1870, 0x3FF3AECB00000000
  store float %1871, float addrspace(3)* %1658, align 4, !tbaa !6
  br i1 %1674, label %1872, label %1877

1872:                                             ; preds = %1859
  %1873 = load float, float addrspace(3)* %1661, align 4, !tbaa !6
  %1874 = fmul contract float %1873, 0x3FEA033860000000
  store float %1874, float addrspace(3)* %1661, align 4, !tbaa !6
  %1875 = load float, float addrspace(3)* %1665, align 4, !tbaa !6
  %1876 = fmul contract float %1875, 0x3FF3AECB00000000
  store float %1876, float addrspace(3)* %1665, align 4, !tbaa !6
  br label %1877

1877:                                             ; preds = %1872, %1859
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1878 = load float, float addrspace(3)* %1685, align 4, !tbaa !6
  %1879 = load float, float addrspace(3)* %1691, align 4, !tbaa !6
  %1880 = load float, float addrspace(3)* %1689, align 4, !tbaa !6
  %1881 = load float, float addrspace(3)* %1695, align 4, !tbaa !6
  %1882 = load float, float addrspace(3)* %1693, align 4, !tbaa !6
  %1883 = load float, float addrspace(3)* %1697, align 4, !tbaa !6
  %1884 = load float, float addrspace(3)* %1699, align 4, !tbaa !6
  %1885 = load float, float addrspace(3)* %1676, align 4, !tbaa !6
  %1886 = load float, float addrspace(3)* %1678, align 4, !tbaa !6
  %1887 = fadd contract float %1885, %1886
  %1888 = fmul contract float %1887, 0x3FF960CE60000000
  %1889 = load float, float addrspace(3)* %1680, align 4, !tbaa !6
  %1890 = fsub contract float %1889, %1888
  %1891 = load float, float addrspace(3)* %1682, align 4, !tbaa !6
  %1892 = fadd contract float %1886, %1891
  %1893 = fmul contract float %1892, 0x3FF960CE60000000
  %1894 = load float, float addrspace(3)* %1684, align 4, !tbaa !6
  %1895 = fsub contract float %1894, %1893
  %1896 = fadd contract float %1878, %1891
  %1897 = fmul contract float %1896, 0x3FF960CE60000000
  %1898 = load float, float addrspace(3)* %1687, align 4, !tbaa !6
  %1899 = fsub contract float %1898, %1897
  %1900 = fadd contract float %1878, %1880
  %1901 = fmul contract float %1900, 0x3FF960CE60000000
  %1902 = fsub contract float %1879, %1901
  %1903 = fadd contract float %1880, %1882
  %1904 = fmul contract float %1903, 0x3FF960CE60000000
  %1905 = fsub contract float %1881, %1904
  %1906 = fadd contract float %1882, %1884
  %1907 = fmul contract float %1906, 0x3FF960CE60000000
  %1908 = fsub contract float %1883, %1907
  %1909 = fadd contract float %1890, %1895
  %1910 = fmul contract float %1909, 0x3FAB2035C0000000
  %1911 = fsub contract float %1886, %1910
  %1912 = fadd contract float %1895, %1899
  %1913 = fmul contract float %1912, 0x3FAB2035C0000000
  %1914 = fsub contract float %1891, %1913
  %1915 = fadd contract float %1902, %1899
  %1916 = fmul contract float %1915, 0x3FAB2035C0000000
  %1917 = fsub contract float %1878, %1916
  %1918 = fadd contract float %1902, %1905
  %1919 = fmul contract float %1918, 0x3FAB2035C0000000
  %1920 = fsub contract float %1880, %1919
  %1921 = fadd contract float %1905, %1908
  %1922 = fmul contract float %1921, 0x3FAB2035C0000000
  %1923 = fsub contract float %1882, %1922
  %1924 = fadd contract float %1885, %1911
  %1925 = fmul contract float %1924, 0x3FEC40CEC0000000
  %1926 = fadd contract float %1890, %1925
  store float %1926, float addrspace(3)* %1680, align 4, !tbaa !6
  %1927 = fadd contract float %1911, %1914
  %1928 = fmul contract float %1927, 0x3FEC40CEC0000000
  %1929 = fadd contract float %1895, %1928
  store float %1929, float addrspace(3)* %1684, align 4, !tbaa !6
  %1930 = fadd contract float %1914, %1917
  %1931 = fmul contract float %1930, 0x3FEC40CEC0000000
  %1932 = fadd contract float %1899, %1931
  store float %1932, float addrspace(3)* %1687, align 4, !tbaa !6
  %1933 = fadd contract float %1920, %1917
  %1934 = fmul contract float %1933, 0x3FEC40CEC0000000
  %1935 = fadd contract float %1902, %1934
  store float %1935, float addrspace(3)* %1691, align 4, !tbaa !6
  %1936 = fadd contract float %1920, %1923
  %1937 = fmul contract float %1936, 0x3FEC40CEC0000000
  %1938 = fadd contract float %1905, %1937
  store float %1938, float addrspace(3)* %1695, align 4, !tbaa !6
  %1939 = fadd contract float %1884, %1923
  %1940 = fmul contract float %1939, 0x3FEC40CEC0000000
  %1941 = fadd contract float %1908, %1940
  store float %1941, float addrspace(3)* %1697, align 4, !tbaa !6
  %1942 = fadd contract float %1926, %1929
  %1943 = fmul contract float %1942, 0x3FDC626AA0000000
  %1944 = fadd contract float %1911, %1943
  store float %1944, float addrspace(3)* %1678, align 4, !tbaa !6
  %1945 = fadd contract float %1929, %1932
  %1946 = fmul contract float %1945, 0x3FDC626AA0000000
  %1947 = fadd contract float %1914, %1946
  store float %1947, float addrspace(3)* %1682, align 4, !tbaa !6
  %1948 = fadd contract float %1932, %1935
  %1949 = fmul contract float %1948, 0x3FDC626AA0000000
  %1950 = fadd contract float %1917, %1949
  store float %1950, float addrspace(3)* %1685, align 4, !tbaa !6
  %1951 = fadd contract float %1938, %1935
  %1952 = fmul contract float %1951, 0x3FDC626AA0000000
  %1953 = fadd contract float %1920, %1952
  store float %1953, float addrspace(3)* %1689, align 4, !tbaa !6
  %1954 = fadd contract float %1938, %1941
  %1955 = fmul contract float %1954, 0x3FDC626AA0000000
  %1956 = fadd contract float %1923, %1955
  store float %1956, float addrspace(3)* %1693, align 4, !tbaa !6
  %1957 = icmp eq i32 %1704, %1605
  br i1 %1957, label %1963, label %1958

1958:                                             ; preds = %1877
  %1959 = add nsw i32 %1704, %1603
  %1960 = sext i32 %1704 to i64
  %1961 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1960
  %1962 = fmul contract float %1947, 0x3FEA033860000000
  store float %1962, float addrspace(1)* %1961, align 4, !tbaa !6
  br label %1963

1963:                                             ; preds = %1958, %1877
  %1964 = phi i32 [ %1605, %1877 ], [ %1959, %1958 ]
  %1965 = icmp eq i32 %1964, %1605
  br i1 %1965, label %1971, label %1966

1966:                                             ; preds = %1963
  %1967 = add nsw i32 %1964, %1604
  %1968 = sext i32 %1964 to i64
  %1969 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1968
  %1970 = fmul contract float %1932, 0x3FF3AECB00000000
  store float %1970, float addrspace(1)* %1969, align 4, !tbaa !6
  br label %1971

1971:                                             ; preds = %1966, %1963
  %1972 = phi i32 [ %1605, %1963 ], [ %1967, %1966 ]
  %1973 = icmp eq i32 %1972, %1605
  br i1 %1973, label %1979, label %1974

1974:                                             ; preds = %1971
  %1975 = add nsw i32 %1972, %1603
  %1976 = sext i32 %1972 to i64
  %1977 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1976
  %1978 = fmul contract float %1950, 0x3FEA033860000000
  store float %1978, float addrspace(1)* %1977, align 4, !tbaa !6
  br label %1979

1979:                                             ; preds = %1974, %1971
  %1980 = phi i32 [ %1605, %1971 ], [ %1975, %1974 ]
  %1981 = icmp eq i32 %1980, %1605
  br i1 %1981, label %1987, label %1982

1982:                                             ; preds = %1979
  %1983 = add nsw i32 %1980, %1604
  %1984 = sext i32 %1980 to i64
  %1985 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1984
  %1986 = fmul contract float %1935, 0x3FF3AECB00000000
  store float %1986, float addrspace(1)* %1985, align 4, !tbaa !6
  br label %1987

1987:                                             ; preds = %1982, %1979
  %1988 = phi i32 [ %1605, %1979 ], [ %1983, %1982 ]
  %1989 = icmp eq i32 %1988, %1605
  br i1 %1989, label %1995, label %1990

1990:                                             ; preds = %1987
  %1991 = add nsw i32 %1988, %1603
  %1992 = sext i32 %1988 to i64
  %1993 = getelementptr inbounds float, float addrspace(1)* %1, i64 %1992
  %1994 = fmul contract float %1953, 0x3FEA033860000000
  store float %1994, float addrspace(1)* %1993, align 4, !tbaa !6
  br label %1995

1995:                                             ; preds = %1990, %1987
  %1996 = phi i32 [ %1605, %1987 ], [ %1991, %1990 ]
  %1997 = icmp eq i32 %1996, %1605
  br i1 %1997, label %2003, label %1998

1998:                                             ; preds = %1995
  %1999 = add nsw i32 %1996, %1604
  %2000 = sext i32 %1996 to i64
  %2001 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2000
  %2002 = fmul contract float %1938, 0x3FF3AECB00000000
  store float %2002, float addrspace(1)* %2001, align 4, !tbaa !6
  br label %2003

2003:                                             ; preds = %1998, %1995
  %2004 = phi i32 [ %1605, %1995 ], [ %1999, %1998 ]
  store float %1878, float addrspace(3)* %1676, align 4, !tbaa !6
  store float %1879, float addrspace(3)* %1680, align 4, !tbaa !6
  store float %1880, float addrspace(3)* %1678, align 4, !tbaa !6
  store float %1881, float addrspace(3)* %1684, align 4, !tbaa !6
  store float %1882, float addrspace(3)* %1682, align 4, !tbaa !6
  store float %1883, float addrspace(3)* %1687, align 4, !tbaa !6
  store float %1884, float addrspace(3)* %1685, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2005 = add nuw nsw i32 %1701, 1
  %2006 = icmp eq i32 %2005, %4
  br i1 %2006, label %2839, label %1700, !llvm.loop !19

2007:                                             ; preds = %1124
  br i1 %1138, label %2008, label %2068

2008:                                             ; preds = %2007
  %2009 = icmp slt i32 %1136, %2
  br i1 %2009, label %2014, label %2010

2010:                                             ; preds = %2008
  %2011 = shl nsw i32 %2, 1
  %2012 = sub i32 -2, %1136
  %2013 = add i32 %2012, %2011
  br label %2016

2014:                                             ; preds = %2008
  %2015 = icmp slt i32 %1136, 0
  br i1 %2015, label %2016, label %2018

2016:                                             ; preds = %2014, %2010
  %2017 = phi i32 [ %2013, %2010 ], [ %1137, %2014 ]
  br label %2018

2018:                                             ; preds = %2016, %2014
  %2019 = phi i32 [ %2017, %2016 ], [ %1136, %2014 ]
  %2020 = mul nsw i32 %1128, %2
  %2021 = add i32 %2019, %2020
  %2022 = sext i32 %2021 to i64
  %2023 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2022
  %2024 = load float, float addrspace(1)* %2023, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2025 = add nuw nsw i32 %1135, 144
  %2026 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2025
  store float %2024, float addrspace(3)* %2026, align 4, !tbaa !6
  %2027 = add nsw i32 %2021, %2
  %2028 = sext i32 %2027 to i64
  %2029 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2028
  %2030 = load float, float addrspace(1)* %2029, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2031 = add nuw nsw i32 %1135, 180
  %2032 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2031
  store float %2030, float addrspace(3)* %2032, align 4, !tbaa !6
  %2033 = add nuw nsw i32 %1135, 108
  %2034 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2033
  store float %2030, float addrspace(3)* %2034, align 4, !tbaa !6
  %2035 = add nsw i32 %2027, %2
  %2036 = sext i32 %2035 to i64
  %2037 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2036
  %2038 = load float, float addrspace(1)* %2037, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2039 = add nuw nsw i32 %1135, 216
  %2040 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2039
  store float %2038, float addrspace(3)* %2040, align 4, !tbaa !6
  %2041 = add nuw nsw i32 %1135, 72
  %2042 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2041
  store float %2038, float addrspace(3)* %2042, align 4, !tbaa !6
  %2043 = add nsw i32 %2035, %2
  %2044 = sext i32 %2043 to i64
  %2045 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2044
  %2046 = load float, float addrspace(1)* %2045, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2047 = add nuw nsw i32 %1135, 36
  %2048 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2047
  store float %2046, float addrspace(3)* %2048, align 4, !tbaa !6
  %2049 = add nsw i32 %2043, %2
  %2050 = sext i32 %2049 to i64
  %2051 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2050
  %2052 = load float, float addrspace(1)* %2051, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2053 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %2052, float addrspace(3)* %2053, align 4, !tbaa !6
  %2054 = add nsw i32 %1128, 3
  br i1 %2009, label %2059, label %2055

2055:                                             ; preds = %2018
  %2056 = shl nsw i32 %2, 1
  %2057 = sub i32 -2, %1136
  %2058 = add i32 %2057, %2056
  br label %2061

2059:                                             ; preds = %2018
  %2060 = icmp slt i32 %1136, 0
  br i1 %2060, label %2061, label %2063

2061:                                             ; preds = %2059, %2055
  %2062 = phi i32 [ %2058, %2055 ], [ %1137, %2059 ]
  br label %2063

2063:                                             ; preds = %2061, %2059
  %2064 = phi i32 [ %2062, %2061 ], [ %1136, %2059 ]
  %2065 = mul nsw i32 %2054, %2
  %2066 = sub i32 %2065, %2
  %2067 = add i32 %2066, %2064
  br label %2123

2068:                                             ; preds = %2007
  %2069 = add nsw i32 %1128, -4
  %2070 = icmp slt i32 %1136, %2
  br i1 %2070, label %2075, label %2071

2071:                                             ; preds = %2068
  %2072 = shl nsw i32 %2, 1
  %2073 = sub i32 -2, %1136
  %2074 = add i32 %2073, %2072
  br label %2077

2075:                                             ; preds = %2068
  %2076 = icmp slt i32 %1136, 0
  br i1 %2076, label %2077, label %2079

2077:                                             ; preds = %2075, %2071
  %2078 = phi i32 [ %2074, %2071 ], [ %1137, %2075 ]
  br label %2079

2079:                                             ; preds = %2077, %2075
  %2080 = phi i32 [ %2078, %2077 ], [ %1136, %2075 ]
  %2081 = mul nsw i32 %2069, %2
  %2082 = add i32 %2080, %2081
  %2083 = sext i32 %2082 to i64
  %2084 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2083
  %2085 = load float, float addrspace(1)* %2084, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2086 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1135
  store float %2085, float addrspace(3)* %2086, align 4, !tbaa !6
  %2087 = add nsw i32 %2082, %2
  %2088 = sext i32 %2087 to i64
  %2089 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2088
  %2090 = load float, float addrspace(1)* %2089, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2091 = add nuw nsw i32 %1135, 36
  %2092 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2091
  store float %2090, float addrspace(3)* %2092, align 4, !tbaa !6
  %2093 = add nsw i32 %2087, %2
  %2094 = sext i32 %2093 to i64
  %2095 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2094
  %2096 = load float, float addrspace(1)* %2095, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2097 = add nuw nsw i32 %1135, 72
  %2098 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2097
  store float %2096, float addrspace(3)* %2098, align 4, !tbaa !6
  %2099 = add nsw i32 %2093, %2
  %2100 = sext i32 %2099 to i64
  %2101 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2100
  %2102 = load float, float addrspace(1)* %2101, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2103 = add nuw nsw i32 %1135, 108
  %2104 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2103
  store float %2102, float addrspace(3)* %2104, align 4, !tbaa !6
  %2105 = add nsw i32 %2099, %2
  %2106 = sext i32 %2105 to i64
  %2107 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2106
  %2108 = load float, float addrspace(1)* %2107, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2109 = add nuw nsw i32 %1135, 144
  %2110 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2109
  store float %2108, float addrspace(3)* %2110, align 4, !tbaa !6
  %2111 = add nsw i32 %2105, %2
  %2112 = sext i32 %2111 to i64
  %2113 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2112
  %2114 = load float, float addrspace(1)* %2113, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2115 = add nuw nsw i32 %1135, 180
  %2116 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2115
  store float %2114, float addrspace(3)* %2116, align 4, !tbaa !6
  %2117 = add nsw i32 %2111, %2
  %2118 = sext i32 %2117 to i64
  %2119 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2118
  %2120 = load float, float addrspace(1)* %2119, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2121 = add nuw nsw i32 %1135, 216
  %2122 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2121
  store float %2120, float addrspace(3)* %2122, align 4, !tbaa !6
  br label %2123

2123:                                             ; preds = %2079, %2063
  %2124 = phi i32 [ %2067, %2063 ], [ %2117, %2079 ]
  %2125 = icmp ult i32 %1129, 7
  br i1 %2125, label %2126, label %2255

2126:                                             ; preds = %2123
  %2127 = icmp ult i32 %1129, 3
  %2128 = select i1 %2127, i32 64, i32 -7
  %2129 = add nsw i32 %2128, %1129
  %2130 = trunc i32 %2129 to i8
  %2131 = add nsw i8 %2130, 4
  %2132 = sdiv i8 %2131, 2
  %2133 = sext i8 %2132 to i32
  %2134 = and i32 %2129, 1
  %2135 = icmp eq i32 %2134, 0
  %2136 = select i1 %2135, i32 0, i32 472
  %2137 = add nsw i32 %2136, %2133
  %2138 = add i32 %2129, %1125
  %2139 = sub i32 0, %2138
  br i1 %1138, label %2140, label %2200

2140:                                             ; preds = %2126
  %2141 = icmp slt i32 %2138, %2
  br i1 %2141, label %2146, label %2142

2142:                                             ; preds = %2140
  %2143 = shl nsw i32 %2, 1
  %2144 = sub i32 -2, %2138
  %2145 = add i32 %2144, %2143
  br label %2148

2146:                                             ; preds = %2140
  %2147 = icmp slt i32 %2138, 0
  br i1 %2147, label %2148, label %2150

2148:                                             ; preds = %2146, %2142
  %2149 = phi i32 [ %2145, %2142 ], [ %2139, %2146 ]
  br label %2150

2150:                                             ; preds = %2148, %2146
  %2151 = phi i32 [ %2149, %2148 ], [ %2138, %2146 ]
  %2152 = mul nsw i32 %1128, %2
  %2153 = add i32 %2151, %2152
  %2154 = sext i32 %2153 to i64
  %2155 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2154
  %2156 = load float, float addrspace(1)* %2155, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2157 = add nsw i32 %2137, 144
  %2158 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2157
  store float %2156, float addrspace(3)* %2158, align 4, !tbaa !6
  %2159 = add nsw i32 %2153, %2
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2160
  %2162 = load float, float addrspace(1)* %2161, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2163 = add nsw i32 %2137, 180
  %2164 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2163
  store float %2162, float addrspace(3)* %2164, align 4, !tbaa !6
  %2165 = add nsw i32 %2137, 108
  %2166 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2165
  store float %2162, float addrspace(3)* %2166, align 4, !tbaa !6
  %2167 = add nsw i32 %2159, %2
  %2168 = sext i32 %2167 to i64
  %2169 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2168
  %2170 = load float, float addrspace(1)* %2169, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2171 = add nsw i32 %2137, 216
  %2172 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2171
  store float %2170, float addrspace(3)* %2172, align 4, !tbaa !6
  %2173 = add nsw i32 %2137, 72
  %2174 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2173
  store float %2170, float addrspace(3)* %2174, align 4, !tbaa !6
  %2175 = add nsw i32 %2167, %2
  %2176 = sext i32 %2175 to i64
  %2177 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2176
  %2178 = load float, float addrspace(1)* %2177, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2179 = add nsw i32 %2137, 36
  %2180 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2179
  store float %2178, float addrspace(3)* %2180, align 4, !tbaa !6
  %2181 = add nsw i32 %2175, %2
  %2182 = sext i32 %2181 to i64
  %2183 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2182
  %2184 = load float, float addrspace(1)* %2183, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2185 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2137
  store float %2184, float addrspace(3)* %2185, align 4, !tbaa !6
  %2186 = add nsw i32 %1128, 3
  br i1 %2141, label %2191, label %2187

2187:                                             ; preds = %2150
  %2188 = shl nsw i32 %2, 1
  %2189 = sub i32 -2, %2138
  %2190 = add i32 %2189, %2188
  br label %2193

2191:                                             ; preds = %2150
  %2192 = icmp slt i32 %2138, 0
  br i1 %2192, label %2193, label %2195

2193:                                             ; preds = %2191, %2187
  %2194 = phi i32 [ %2190, %2187 ], [ %2139, %2191 ]
  br label %2195

2195:                                             ; preds = %2193, %2191
  %2196 = phi i32 [ %2194, %2193 ], [ %2138, %2191 ]
  %2197 = mul nsw i32 %2186, %2
  %2198 = sub i32 %2197, %2
  %2199 = add i32 %2198, %2196
  br label %2255

2200:                                             ; preds = %2126
  %2201 = add nsw i32 %1128, -4
  %2202 = icmp slt i32 %2138, %2
  br i1 %2202, label %2207, label %2203

2203:                                             ; preds = %2200
  %2204 = shl nsw i32 %2, 1
  %2205 = sub i32 -2, %2138
  %2206 = add i32 %2205, %2204
  br label %2209

2207:                                             ; preds = %2200
  %2208 = icmp slt i32 %2138, 0
  br i1 %2208, label %2209, label %2211

2209:                                             ; preds = %2207, %2203
  %2210 = phi i32 [ %2206, %2203 ], [ %2139, %2207 ]
  br label %2211

2211:                                             ; preds = %2209, %2207
  %2212 = phi i32 [ %2210, %2209 ], [ %2138, %2207 ]
  %2213 = mul nsw i32 %2201, %2
  %2214 = add i32 %2212, %2213
  %2215 = sext i32 %2214 to i64
  %2216 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2215
  %2217 = load float, float addrspace(1)* %2216, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2218 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2137
  store float %2217, float addrspace(3)* %2218, align 4, !tbaa !6
  %2219 = add nsw i32 %2214, %2
  %2220 = sext i32 %2219 to i64
  %2221 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2220
  %2222 = load float, float addrspace(1)* %2221, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2223 = add nsw i32 %2137, 36
  %2224 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2223
  store float %2222, float addrspace(3)* %2224, align 4, !tbaa !6
  %2225 = add nsw i32 %2219, %2
  %2226 = sext i32 %2225 to i64
  %2227 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2226
  %2228 = load float, float addrspace(1)* %2227, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2229 = add nsw i32 %2137, 72
  %2230 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2229
  store float %2228, float addrspace(3)* %2230, align 4, !tbaa !6
  %2231 = add nsw i32 %2225, %2
  %2232 = sext i32 %2231 to i64
  %2233 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2232
  %2234 = load float, float addrspace(1)* %2233, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2235 = add nsw i32 %2137, 108
  %2236 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2235
  store float %2234, float addrspace(3)* %2236, align 4, !tbaa !6
  %2237 = add nsw i32 %2231, %2
  %2238 = sext i32 %2237 to i64
  %2239 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2238
  %2240 = load float, float addrspace(1)* %2239, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2241 = add nsw i32 %2137, 144
  %2242 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2241
  store float %2240, float addrspace(3)* %2242, align 4, !tbaa !6
  %2243 = add nsw i32 %2237, %2
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2244
  %2246 = load float, float addrspace(1)* %2245, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2247 = add nsw i32 %2137, 180
  %2248 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2247
  store float %2246, float addrspace(3)* %2248, align 4, !tbaa !6
  %2249 = add nsw i32 %2243, %2
  %2250 = sext i32 %2249 to i64
  %2251 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2250
  %2252 = load float, float addrspace(1)* %2251, align 4, !tbaa !6, !amdgpu.noclobber !10
  %2253 = add nsw i32 %2137, 216
  %2254 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2253
  store float %2252, float addrspace(3)* %2254, align 4, !tbaa !6
  br label %2255

2255:                                             ; preds = %2211, %2195, %2123
  %2256 = phi i32 [ 0, %2123 ], [ %2, %2195 ], [ %2, %2211 ]
  %2257 = phi i32 [ 0, %2123 ], [ %2199, %2195 ], [ %2249, %2211 ]
  %2258 = phi i32 [ 0, %2123 ], [ %2137, %2195 ], [ %2137, %2211 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2259 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %1129
  %2260 = load float, float addrspace(3)* %2259, align 4, !tbaa !6
  %2261 = add nuw nsw i32 %1129, 1
  %2262 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2261
  %2263 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2264 = add nuw nsw i32 %1129, 472
  %2265 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2264
  %2266 = fadd contract float %2260, %2263
  %2267 = fmul contract float %2266, 0x3FF960CE60000000
  %2268 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2269 = fsub contract float %2268, %2267
  store float %2269, float addrspace(3)* %2265, align 4, !tbaa !6
  %2270 = add nuw nsw i32 %1129, 64
  %2271 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2270
  %2272 = load float, float addrspace(3)* %2271, align 4, !tbaa !6
  %2273 = add nuw nsw i32 %1129, 65
  %2274 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2273
  %2275 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2276 = add nuw nsw i32 %1129, 536
  %2277 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2276
  %2278 = fadd contract float %2272, %2275
  %2279 = fmul contract float %2278, 0x3FF960CE60000000
  %2280 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2281 = fsub contract float %2280, %2279
  store float %2281, float addrspace(3)* %2277, align 4, !tbaa !6
  %2282 = add nuw nsw i32 %1129, 128
  %2283 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2282
  %2284 = load float, float addrspace(3)* %2283, align 4, !tbaa !6
  %2285 = add nuw nsw i32 %1129, 129
  %2286 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2285
  %2287 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2288 = add nuw nsw i32 %1129, 600
  %2289 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2288
  %2290 = fadd contract float %2284, %2287
  %2291 = fmul contract float %2290, 0x3FF960CE60000000
  %2292 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2293 = fsub contract float %2292, %2291
  store float %2293, float addrspace(3)* %2289, align 4, !tbaa !6
  %2294 = icmp ult i32 %1129, 59
  br i1 %2294, label %2295, label %2308

2295:                                             ; preds = %2255
  %2296 = add nuw nsw i32 %1129, 192
  %2297 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2296
  %2298 = load float, float addrspace(3)* %2297, align 4, !tbaa !6
  %2299 = add nuw nsw i32 %1129, 193
  %2300 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2299
  %2301 = load float, float addrspace(3)* %2300, align 4, !tbaa !6
  %2302 = add nuw nsw i32 %1129, 664
  %2303 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2302
  %2304 = fadd contract float %2298, %2301
  %2305 = fmul contract float %2304, 0x3FF960CE60000000
  %2306 = load float, float addrspace(3)* %2303, align 4, !tbaa !6
  %2307 = fsub contract float %2306, %2305
  store float %2307, float addrspace(3)* %2303, align 4, !tbaa !6
  br label %2308

2308:                                             ; preds = %2295, %2255
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2309 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2310 = add nuw nsw i32 %1129, 473
  %2311 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2310
  %2312 = load float, float addrspace(3)* %2311, align 4, !tbaa !6
  %2313 = fadd contract float %2309, %2312
  %2314 = fmul contract float %2313, 0x3FAB2035C0000000
  %2315 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2316 = fsub contract float %2315, %2314
  store float %2316, float addrspace(3)* %2262, align 4, !tbaa !6
  %2317 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2318 = add nuw nsw i32 %1129, 537
  %2319 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2318
  %2320 = load float, float addrspace(3)* %2319, align 4, !tbaa !6
  %2321 = fadd contract float %2317, %2320
  %2322 = fmul contract float %2321, 0x3FAB2035C0000000
  %2323 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2324 = fsub contract float %2323, %2322
  store float %2324, float addrspace(3)* %2274, align 4, !tbaa !6
  %2325 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2326 = add nuw nsw i32 %1129, 601
  %2327 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2326
  %2328 = load float, float addrspace(3)* %2327, align 4, !tbaa !6
  %2329 = fadd contract float %2325, %2328
  %2330 = fmul contract float %2329, 0x3FAB2035C0000000
  %2331 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2332 = fsub contract float %2331, %2330
  store float %2332, float addrspace(3)* %2286, align 4, !tbaa !6
  br i1 %2294, label %2333, label %2346

2333:                                             ; preds = %2308
  %2334 = add nuw nsw i32 %1129, 664
  %2335 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2334
  %2336 = load float, float addrspace(3)* %2335, align 4, !tbaa !6
  %2337 = add nuw nsw i32 %1129, 665
  %2338 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2337
  %2339 = load float, float addrspace(3)* %2338, align 4, !tbaa !6
  %2340 = add nuw nsw i32 %1129, 193
  %2341 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2340
  %2342 = fadd contract float %2336, %2339
  %2343 = fmul contract float %2342, 0x3FAB2035C0000000
  %2344 = load float, float addrspace(3)* %2341, align 4, !tbaa !6
  %2345 = fsub contract float %2344, %2343
  store float %2345, float addrspace(3)* %2341, align 4, !tbaa !6
  br label %2346

2346:                                             ; preds = %2333, %2308
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2347 = load float, float addrspace(3)* %2259, align 4, !tbaa !6
  %2348 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2349 = fadd contract float %2347, %2348
  %2350 = fmul contract float %2349, 0x3FEC40CEC0000000
  %2351 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2352 = fadd contract float %2351, %2350
  store float %2352, float addrspace(3)* %2265, align 4, !tbaa !6
  %2353 = load float, float addrspace(3)* %2271, align 4, !tbaa !6
  %2354 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2355 = fadd contract float %2353, %2354
  %2356 = fmul contract float %2355, 0x3FEC40CEC0000000
  %2357 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2358 = fadd contract float %2357, %2356
  store float %2358, float addrspace(3)* %2277, align 4, !tbaa !6
  %2359 = load float, float addrspace(3)* %2283, align 4, !tbaa !6
  %2360 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2361 = fadd contract float %2359, %2360
  %2362 = fmul contract float %2361, 0x3FEC40CEC0000000
  %2363 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2364 = fadd contract float %2363, %2362
  store float %2364, float addrspace(3)* %2289, align 4, !tbaa !6
  br i1 %2294, label %2365, label %2378

2365:                                             ; preds = %2346
  %2366 = add nuw nsw i32 %1129, 192
  %2367 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2366
  %2368 = load float, float addrspace(3)* %2367, align 4, !tbaa !6
  %2369 = add nuw nsw i32 %1129, 193
  %2370 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2369
  %2371 = load float, float addrspace(3)* %2370, align 4, !tbaa !6
  %2372 = add nuw nsw i32 %1129, 664
  %2373 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2372
  %2374 = fadd contract float %2368, %2371
  %2375 = fmul contract float %2374, 0x3FEC40CEC0000000
  %2376 = load float, float addrspace(3)* %2373, align 4, !tbaa !6
  %2377 = fadd contract float %2376, %2375
  store float %2377, float addrspace(3)* %2373, align 4, !tbaa !6
  br label %2378

2378:                                             ; preds = %2365, %2346
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2379 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2380 = load float, float addrspace(3)* %2311, align 4, !tbaa !6
  %2381 = fadd contract float %2379, %2380
  %2382 = fmul contract float %2381, 0x3FDC626AA0000000
  %2383 = load float, float addrspace(3)* %2262, align 4, !tbaa !6
  %2384 = fadd contract float %2383, %2382
  store float %2384, float addrspace(3)* %2262, align 4, !tbaa !6
  %2385 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2386 = load float, float addrspace(3)* %2319, align 4, !tbaa !6
  %2387 = fadd contract float %2385, %2386
  %2388 = fmul contract float %2387, 0x3FDC626AA0000000
  %2389 = load float, float addrspace(3)* %2274, align 4, !tbaa !6
  %2390 = fadd contract float %2389, %2388
  store float %2390, float addrspace(3)* %2274, align 4, !tbaa !6
  %2391 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2392 = load float, float addrspace(3)* %2327, align 4, !tbaa !6
  %2393 = fadd contract float %2391, %2392
  %2394 = fmul contract float %2393, 0x3FDC626AA0000000
  %2395 = load float, float addrspace(3)* %2286, align 4, !tbaa !6
  %2396 = fadd contract float %2395, %2394
  store float %2396, float addrspace(3)* %2286, align 4, !tbaa !6
  br i1 %2294, label %2397, label %2410

2397:                                             ; preds = %2378
  %2398 = add nuw nsw i32 %1129, 664
  %2399 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2398
  %2400 = load float, float addrspace(3)* %2399, align 4, !tbaa !6
  %2401 = add nuw nsw i32 %1129, 665
  %2402 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2401
  %2403 = load float, float addrspace(3)* %2402, align 4, !tbaa !6
  %2404 = add nuw nsw i32 %1129, 193
  %2405 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2404
  %2406 = fadd contract float %2400, %2403
  %2407 = fmul contract float %2406, 0x3FDC626AA0000000
  %2408 = load float, float addrspace(3)* %2405, align 4, !tbaa !6
  %2409 = fadd contract float %2408, %2407
  store float %2409, float addrspace(3)* %2405, align 4, !tbaa !6
  br label %2410

2410:                                             ; preds = %2397, %2378
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2411 = load float, float addrspace(3)* %2259, align 4, !tbaa !6
  %2412 = fmul contract float %2411, 0x3FEA033860000000
  store float %2412, float addrspace(3)* %2259, align 4, !tbaa !6
  %2413 = load float, float addrspace(3)* %2265, align 4, !tbaa !6
  %2414 = fmul contract float %2413, 0x3FF3AECB00000000
  store float %2414, float addrspace(3)* %2265, align 4, !tbaa !6
  %2415 = load float, float addrspace(3)* %2271, align 4, !tbaa !6
  %2416 = fmul contract float %2415, 0x3FEA033860000000
  store float %2416, float addrspace(3)* %2271, align 4, !tbaa !6
  %2417 = load float, float addrspace(3)* %2277, align 4, !tbaa !6
  %2418 = fmul contract float %2417, 0x3FF3AECB00000000
  store float %2418, float addrspace(3)* %2277, align 4, !tbaa !6
  %2419 = load float, float addrspace(3)* %2283, align 4, !tbaa !6
  %2420 = fmul contract float %2419, 0x3FEA033860000000
  store float %2420, float addrspace(3)* %2283, align 4, !tbaa !6
  %2421 = load float, float addrspace(3)* %2289, align 4, !tbaa !6
  %2422 = fmul contract float %2421, 0x3FF3AECB00000000
  store float %2422, float addrspace(3)* %2289, align 4, !tbaa !6
  %2423 = icmp ult i32 %1129, 60
  br i1 %2423, label %2424, label %2433

2424:                                             ; preds = %2410
  %2425 = add nuw nsw i32 %1129, 192
  %2426 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2425
  %2427 = load float, float addrspace(3)* %2426, align 4, !tbaa !6
  %2428 = fmul contract float %2427, 0x3FEA033860000000
  store float %2428, float addrspace(3)* %2426, align 4, !tbaa !6
  %2429 = add nuw nsw i32 %1129, 664
  %2430 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2429
  %2431 = load float, float addrspace(3)* %2430, align 4, !tbaa !6
  %2432 = fmul contract float %2431, 0x3FF3AECB00000000
  store float %2432, float addrspace(3)* %2430, align 4, !tbaa !6
  br label %2433

2433:                                             ; preds = %2424, %2410
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2434 = shl nuw nsw i32 %1129, 1
  %2435 = lshr i32 %1129, 5
  %2436 = mul nsw i32 %2435, -63
  %2437 = add nsw i32 %2436, %2434
  %2438 = add i32 %2437, %1125
  %2439 = icmp slt i32 %2438, %2
  br i1 %2439, label %2440, label %2465

2440:                                             ; preds = %2433
  %2441 = sdiv i32 %2438, 2
  %2442 = and i32 %2438, 1
  %2443 = icmp eq i32 %2442, 0
  %2444 = sdiv i32 %2, 2
  %2445 = and i32 %2, 1
  %2446 = add nsw i32 %2444, %2445
  %2447 = sdiv i32 %3, 2
  %2448 = and i32 %3, 1
  %2449 = add nsw i32 %2447, %2448
  br i1 %2443, label %2455, label %2450

2450:                                             ; preds = %2440
  %2451 = mul nsw i32 %2449, %2446
  %2452 = add nsw i32 %2451, %2441
  %2453 = mul nsw i32 %3, %2
  %2454 = sdiv i32 %2453, 2
  br label %2457

2455:                                             ; preds = %2440
  %2456 = mul nsw i32 %2449, %2
  br label %2457

2457:                                             ; preds = %2455, %2450
  %2458 = phi i32 [ %2456, %2455 ], [ %2454, %2450 ]
  %2459 = phi i32 [ %2441, %2455 ], [ %2452, %2450 ]
  %2460 = phi i32 [ %2446, %2455 ], [ %2444, %2450 ]
  %2461 = sub nsw i32 %2460, %2458
  %2462 = sdiv i32 %1128, 2
  %2463 = mul nsw i32 %2460, %2462
  %2464 = add i32 %2463, %2459
  br label %2465

2465:                                             ; preds = %2457, %2433
  %2466 = phi i32 [ %2458, %2457 ], [ 0, %2433 ]
  %2467 = phi i32 [ %2461, %2457 ], [ 0, %2433 ]
  %2468 = phi i32 [ %2464, %2457 ], [ 0, %2433 ]
  %2469 = trunc i32 %2437 to i16
  %2470 = add nsw i16 %2469, 4
  %2471 = sdiv i16 %2470, 2
  %2472 = sext i16 %2471 to i32
  %2473 = and i32 %2437, 1
  %2474 = icmp eq i32 %2473, 0
  %2475 = select i1 %2474, i32 0, i32 472
  %2476 = add nsw i32 %2475, %2472
  %2477 = icmp sgt i32 %4, 0
  br i1 %2477, label %2478, label %2839

2478:                                             ; preds = %2465
  %2479 = add nuw nsw i32 %1135, 252
  %2480 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2479
  %2481 = add nuw nsw i32 %1135, 288
  %2482 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2481
  %2483 = add nuw nsw i32 %1135, 324
  %2484 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2483
  %2485 = add nuw nsw i32 %1135, 360
  %2486 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2485
  %2487 = add nuw nsw i32 %1135, 396
  %2488 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2487
  %2489 = add nuw nsw i32 %1135, 432
  %2490 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2489
  %2491 = add nsw i32 %2258, 252
  %2492 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2491
  %2493 = add nsw i32 %2258, 288
  %2494 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2493
  %2495 = add nsw i32 %2258, 324
  %2496 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2495
  %2497 = add nsw i32 %2258, 360
  %2498 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2497
  %2499 = add nsw i32 %2258, 396
  %2500 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2499
  %2501 = add nsw i32 %2258, 432
  %2502 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2501
  %2503 = add nuw nsw i32 %1129, 252
  %2504 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2503
  %2505 = add nuw nsw i32 %1129, 253
  %2506 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2505
  %2507 = add nuw nsw i32 %1129, 724
  %2508 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2507
  %2509 = add nuw nsw i32 %1129, 316
  %2510 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2509
  %2511 = add nuw nsw i32 %1129, 317
  %2512 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2511
  %2513 = add nuw nsw i32 %1129, 788
  %2514 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2513
  %2515 = add nuw nsw i32 %1129, 380
  %2516 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2515
  %2517 = add nuw nsw i32 %1129, 381
  %2518 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2517
  %2519 = add nuw nsw i32 %1129, 852
  %2520 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2519
  %2521 = icmp ult i32 %1129, 23
  %2522 = add nuw nsw i32 %1129, 444
  %2523 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2522
  %2524 = add nuw nsw i32 %1129, 445
  %2525 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2524
  %2526 = add nuw nsw i32 %1129, 916
  %2527 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2526
  %2528 = add nuw nsw i32 %1129, 725
  %2529 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2528
  %2530 = add nuw nsw i32 %1129, 789
  %2531 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2530
  %2532 = add nuw nsw i32 %1129, 853
  %2533 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2532
  %2534 = add nuw nsw i32 %1129, 917
  %2535 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2534
  %2536 = icmp ult i32 %1129, 24
  %2537 = add nsw i32 %2476, 216
  %2538 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2476
  %2539 = add nsw i32 %2476, 72
  %2540 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2539
  %2541 = add nsw i32 %2476, 36
  %2542 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2541
  %2543 = add nsw i32 %2476, 144
  %2544 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2543
  %2545 = add nsw i32 %2476, 108
  %2546 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2545
  %2547 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2537
  %2548 = add nsw i32 %2476, 180
  %2549 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2548
  %2550 = add nsw i32 %2476, 288
  %2551 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2550
  %2552 = add nsw i32 %2476, 252
  %2553 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2552
  %2554 = add nsw i32 %2476, 360
  %2555 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2554
  %2556 = add nsw i32 %2476, 324
  %2557 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2556
  %2558 = add nsw i32 %2476, 396
  %2559 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2558
  %2560 = add nsw i32 %2476, 432
  %2561 = getelementptr inbounds %"class.dwt_cuda::FDWT97.8", %"class.dwt_cuda::FDWT97.8" addrspace(3)* @_ZZN8dwt_cuda6FDWT97ILi64ELi6EE3runEPKfPfiiiE6fdwt97, i32 0, i32 0, i32 0, i32 %2560
  br label %2562

2562:                                             ; preds = %2739, %2478
  %2563 = phi i32 [ 0, %2478 ], [ %2837, %2739 ]
  %2564 = phi i32 [ %2124, %2478 ], [ %2587, %2739 ]
  %2565 = phi i32 [ %2257, %2478 ], [ %2617, %2739 ]
  %2566 = phi i32 [ %2468, %2478 ], [ %2836, %2739 ]
  %2567 = add nsw i32 %2564, %2
  %2568 = sext i32 %2567 to i64
  %2569 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2568
  %2570 = load float, float addrspace(1)* %2569, align 4, !tbaa !6
  store float %2570, float addrspace(3)* %2480, align 4, !tbaa !6
  %2571 = add nsw i32 %2567, %2
  %2572 = sext i32 %2571 to i64
  %2573 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2572
  %2574 = load float, float addrspace(1)* %2573, align 4, !tbaa !6
  store float %2574, float addrspace(3)* %2482, align 4, !tbaa !6
  %2575 = add nsw i32 %2571, %2
  %2576 = sext i32 %2575 to i64
  %2577 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2576
  %2578 = load float, float addrspace(1)* %2577, align 4, !tbaa !6
  store float %2578, float addrspace(3)* %2484, align 4, !tbaa !6
  %2579 = add nsw i32 %2575, %2
  %2580 = sext i32 %2579 to i64
  %2581 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2580
  %2582 = load float, float addrspace(1)* %2581, align 4, !tbaa !6
  store float %2582, float addrspace(3)* %2486, align 4, !tbaa !6
  %2583 = add nsw i32 %2579, %2
  %2584 = sext i32 %2583 to i64
  %2585 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2584
  %2586 = load float, float addrspace(1)* %2585, align 4, !tbaa !6
  store float %2586, float addrspace(3)* %2488, align 4, !tbaa !6
  %2587 = add nsw i32 %2583, %2
  %2588 = sext i32 %2587 to i64
  %2589 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2588
  %2590 = load float, float addrspace(1)* %2589, align 4, !tbaa !6
  store float %2590, float addrspace(3)* %2490, align 4, !tbaa !6
  br i1 %2125, label %2591, label %2616

2591:                                             ; preds = %2562
  %2592 = add nsw i32 %2565, %2256
  %2593 = sext i32 %2592 to i64
  %2594 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2593
  %2595 = load float, float addrspace(1)* %2594, align 4, !tbaa !6
  store float %2595, float addrspace(3)* %2492, align 4, !tbaa !6
  %2596 = add nsw i32 %2592, %2256
  %2597 = sext i32 %2596 to i64
  %2598 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2597
  %2599 = load float, float addrspace(1)* %2598, align 4, !tbaa !6
  store float %2599, float addrspace(3)* %2494, align 4, !tbaa !6
  %2600 = add nsw i32 %2596, %2256
  %2601 = sext i32 %2600 to i64
  %2602 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2601
  %2603 = load float, float addrspace(1)* %2602, align 4, !tbaa !6
  store float %2603, float addrspace(3)* %2496, align 4, !tbaa !6
  %2604 = add nsw i32 %2600, %2256
  %2605 = sext i32 %2604 to i64
  %2606 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2605
  %2607 = load float, float addrspace(1)* %2606, align 4, !tbaa !6
  store float %2607, float addrspace(3)* %2498, align 4, !tbaa !6
  %2608 = add nsw i32 %2604, %2256
  %2609 = sext i32 %2608 to i64
  %2610 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2609
  %2611 = load float, float addrspace(1)* %2610, align 4, !tbaa !6
  store float %2611, float addrspace(3)* %2500, align 4, !tbaa !6
  %2612 = add nsw i32 %2608, %2256
  %2613 = sext i32 %2612 to i64
  %2614 = getelementptr inbounds float, float addrspace(1)* %0, i64 %2613
  %2615 = load float, float addrspace(1)* %2614, align 4, !tbaa !6
  store float %2615, float addrspace(3)* %2502, align 4, !tbaa !6
  br label %2616

2616:                                             ; preds = %2591, %2562
  %2617 = phi i32 [ %2612, %2591 ], [ %2565, %2562 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2618 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2619 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2620 = fadd contract float %2618, %2619
  %2621 = fmul contract float %2620, 0x3FF960CE60000000
  %2622 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2623 = fsub contract float %2622, %2621
  store float %2623, float addrspace(3)* %2508, align 4, !tbaa !6
  %2624 = load float, float addrspace(3)* %2510, align 4, !tbaa !6
  %2625 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2626 = fadd contract float %2624, %2625
  %2627 = fmul contract float %2626, 0x3FF960CE60000000
  %2628 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2629 = fsub contract float %2628, %2627
  store float %2629, float addrspace(3)* %2514, align 4, !tbaa !6
  %2630 = load float, float addrspace(3)* %2516, align 4, !tbaa !6
  %2631 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2632 = fadd contract float %2630, %2631
  %2633 = fmul contract float %2632, 0x3FF960CE60000000
  %2634 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2635 = fsub contract float %2634, %2633
  store float %2635, float addrspace(3)* %2520, align 4, !tbaa !6
  br i1 %2521, label %2636, label %2643

2636:                                             ; preds = %2616
  %2637 = load float, float addrspace(3)* %2523, align 4, !tbaa !6
  %2638 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2639 = fadd contract float %2637, %2638
  %2640 = fmul contract float %2639, 0x3FF960CE60000000
  %2641 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2642 = fsub contract float %2641, %2640
  store float %2642, float addrspace(3)* %2527, align 4, !tbaa !6
  br label %2643

2643:                                             ; preds = %2636, %2616
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2644 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2645 = load float, float addrspace(3)* %2529, align 4, !tbaa !6
  %2646 = fadd contract float %2644, %2645
  %2647 = fmul contract float %2646, 0x3FAB2035C0000000
  %2648 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2649 = fsub contract float %2648, %2647
  store float %2649, float addrspace(3)* %2506, align 4, !tbaa !6
  %2650 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2651 = load float, float addrspace(3)* %2531, align 4, !tbaa !6
  %2652 = fadd contract float %2650, %2651
  %2653 = fmul contract float %2652, 0x3FAB2035C0000000
  %2654 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2655 = fsub contract float %2654, %2653
  store float %2655, float addrspace(3)* %2512, align 4, !tbaa !6
  %2656 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2657 = load float, float addrspace(3)* %2533, align 4, !tbaa !6
  %2658 = fadd contract float %2656, %2657
  %2659 = fmul contract float %2658, 0x3FAB2035C0000000
  %2660 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2661 = fsub contract float %2660, %2659
  store float %2661, float addrspace(3)* %2518, align 4, !tbaa !6
  br i1 %2521, label %2662, label %2669

2662:                                             ; preds = %2643
  %2663 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2664 = load float, float addrspace(3)* %2535, align 4, !tbaa !6
  %2665 = fadd contract float %2663, %2664
  %2666 = fmul contract float %2665, 0x3FAB2035C0000000
  %2667 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2668 = fsub contract float %2667, %2666
  store float %2668, float addrspace(3)* %2525, align 4, !tbaa !6
  br label %2669

2669:                                             ; preds = %2662, %2643
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2670 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2671 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2672 = fadd contract float %2670, %2671
  %2673 = fmul contract float %2672, 0x3FEC40CEC0000000
  %2674 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2675 = fadd contract float %2674, %2673
  store float %2675, float addrspace(3)* %2508, align 4, !tbaa !6
  %2676 = load float, float addrspace(3)* %2510, align 4, !tbaa !6
  %2677 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2678 = fadd contract float %2676, %2677
  %2679 = fmul contract float %2678, 0x3FEC40CEC0000000
  %2680 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2681 = fadd contract float %2680, %2679
  store float %2681, float addrspace(3)* %2514, align 4, !tbaa !6
  %2682 = load float, float addrspace(3)* %2516, align 4, !tbaa !6
  %2683 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2684 = fadd contract float %2682, %2683
  %2685 = fmul contract float %2684, 0x3FEC40CEC0000000
  %2686 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2687 = fadd contract float %2686, %2685
  store float %2687, float addrspace(3)* %2520, align 4, !tbaa !6
  br i1 %2521, label %2688, label %2695

2688:                                             ; preds = %2669
  %2689 = load float, float addrspace(3)* %2523, align 4, !tbaa !6
  %2690 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2691 = fadd contract float %2689, %2690
  %2692 = fmul contract float %2691, 0x3FEC40CEC0000000
  %2693 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2694 = fadd contract float %2693, %2692
  store float %2694, float addrspace(3)* %2527, align 4, !tbaa !6
  br label %2695

2695:                                             ; preds = %2688, %2669
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2696 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2697 = load float, float addrspace(3)* %2529, align 4, !tbaa !6
  %2698 = fadd contract float %2696, %2697
  %2699 = fmul contract float %2698, 0x3FDC626AA0000000
  %2700 = load float, float addrspace(3)* %2506, align 4, !tbaa !6
  %2701 = fadd contract float %2700, %2699
  store float %2701, float addrspace(3)* %2506, align 4, !tbaa !6
  %2702 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2703 = load float, float addrspace(3)* %2531, align 4, !tbaa !6
  %2704 = fadd contract float %2702, %2703
  %2705 = fmul contract float %2704, 0x3FDC626AA0000000
  %2706 = load float, float addrspace(3)* %2512, align 4, !tbaa !6
  %2707 = fadd contract float %2706, %2705
  store float %2707, float addrspace(3)* %2512, align 4, !tbaa !6
  %2708 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2709 = load float, float addrspace(3)* %2533, align 4, !tbaa !6
  %2710 = fadd contract float %2708, %2709
  %2711 = fmul contract float %2710, 0x3FDC626AA0000000
  %2712 = load float, float addrspace(3)* %2518, align 4, !tbaa !6
  %2713 = fadd contract float %2712, %2711
  store float %2713, float addrspace(3)* %2518, align 4, !tbaa !6
  br i1 %2521, label %2714, label %2721

2714:                                             ; preds = %2695
  %2715 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2716 = load float, float addrspace(3)* %2535, align 4, !tbaa !6
  %2717 = fadd contract float %2715, %2716
  %2718 = fmul contract float %2717, 0x3FDC626AA0000000
  %2719 = load float, float addrspace(3)* %2525, align 4, !tbaa !6
  %2720 = fadd contract float %2719, %2718
  store float %2720, float addrspace(3)* %2525, align 4, !tbaa !6
  br label %2721

2721:                                             ; preds = %2714, %2695
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2722 = load float, float addrspace(3)* %2504, align 4, !tbaa !6
  %2723 = fmul contract float %2722, 0x3FEA033860000000
  store float %2723, float addrspace(3)* %2504, align 4, !tbaa !6
  %2724 = load float, float addrspace(3)* %2508, align 4, !tbaa !6
  %2725 = fmul contract float %2724, 0x3FF3AECB00000000
  store float %2725, float addrspace(3)* %2508, align 4, !tbaa !6
  %2726 = load float, float addrspace(3)* %2510, align 4, !tbaa !6
  %2727 = fmul contract float %2726, 0x3FEA033860000000
  store float %2727, float addrspace(3)* %2510, align 4, !tbaa !6
  %2728 = load float, float addrspace(3)* %2514, align 4, !tbaa !6
  %2729 = fmul contract float %2728, 0x3FF3AECB00000000
  store float %2729, float addrspace(3)* %2514, align 4, !tbaa !6
  %2730 = load float, float addrspace(3)* %2516, align 4, !tbaa !6
  %2731 = fmul contract float %2730, 0x3FEA033860000000
  store float %2731, float addrspace(3)* %2516, align 4, !tbaa !6
  %2732 = load float, float addrspace(3)* %2520, align 4, !tbaa !6
  %2733 = fmul contract float %2732, 0x3FF3AECB00000000
  store float %2733, float addrspace(3)* %2520, align 4, !tbaa !6
  br i1 %2536, label %2734, label %2739

2734:                                             ; preds = %2721
  %2735 = load float, float addrspace(3)* %2523, align 4, !tbaa !6
  %2736 = fmul contract float %2735, 0x3FEA033860000000
  store float %2736, float addrspace(3)* %2523, align 4, !tbaa !6
  %2737 = load float, float addrspace(3)* %2527, align 4, !tbaa !6
  %2738 = fmul contract float %2737, 0x3FF3AECB00000000
  store float %2738, float addrspace(3)* %2527, align 4, !tbaa !6
  br label %2739

2739:                                             ; preds = %2734, %2721
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2740 = load float, float addrspace(3)* %2547, align 4, !tbaa !6
  %2741 = load float, float addrspace(3)* %2553, align 4, !tbaa !6
  %2742 = load float, float addrspace(3)* %2551, align 4, !tbaa !6
  %2743 = load float, float addrspace(3)* %2557, align 4, !tbaa !6
  %2744 = load float, float addrspace(3)* %2555, align 4, !tbaa !6
  %2745 = load float, float addrspace(3)* %2559, align 4, !tbaa !6
  %2746 = load float, float addrspace(3)* %2561, align 4, !tbaa !6
  %2747 = load float, float addrspace(3)* %2538, align 4, !tbaa !6
  %2748 = load float, float addrspace(3)* %2540, align 4, !tbaa !6
  %2749 = fadd contract float %2747, %2748
  %2750 = fmul contract float %2749, 0x3FF960CE60000000
  %2751 = load float, float addrspace(3)* %2542, align 4, !tbaa !6
  %2752 = fsub contract float %2751, %2750
  %2753 = load float, float addrspace(3)* %2544, align 4, !tbaa !6
  %2754 = fadd contract float %2748, %2753
  %2755 = fmul contract float %2754, 0x3FF960CE60000000
  %2756 = load float, float addrspace(3)* %2546, align 4, !tbaa !6
  %2757 = fsub contract float %2756, %2755
  %2758 = fadd contract float %2740, %2753
  %2759 = fmul contract float %2758, 0x3FF960CE60000000
  %2760 = load float, float addrspace(3)* %2549, align 4, !tbaa !6
  %2761 = fsub contract float %2760, %2759
  %2762 = fadd contract float %2740, %2742
  %2763 = fmul contract float %2762, 0x3FF960CE60000000
  %2764 = fsub contract float %2741, %2763
  %2765 = fadd contract float %2742, %2744
  %2766 = fmul contract float %2765, 0x3FF960CE60000000
  %2767 = fsub contract float %2743, %2766
  %2768 = fadd contract float %2744, %2746
  %2769 = fmul contract float %2768, 0x3FF960CE60000000
  %2770 = fsub contract float %2745, %2769
  %2771 = fadd contract float %2752, %2757
  %2772 = fmul contract float %2771, 0x3FAB2035C0000000
  %2773 = fsub contract float %2748, %2772
  %2774 = fadd contract float %2757, %2761
  %2775 = fmul contract float %2774, 0x3FAB2035C0000000
  %2776 = fsub contract float %2753, %2775
  %2777 = fadd contract float %2764, %2761
  %2778 = fmul contract float %2777, 0x3FAB2035C0000000
  %2779 = fsub contract float %2740, %2778
  %2780 = fadd contract float %2764, %2767
  %2781 = fmul contract float %2780, 0x3FAB2035C0000000
  %2782 = fsub contract float %2742, %2781
  %2783 = fadd contract float %2767, %2770
  %2784 = fmul contract float %2783, 0x3FAB2035C0000000
  %2785 = fsub contract float %2744, %2784
  %2786 = fadd contract float %2773, %2776
  %2787 = fmul contract float %2786, 0x3FEC40CEC0000000
  %2788 = fadd contract float %2757, %2787
  %2789 = fadd contract float %2776, %2779
  %2790 = fmul contract float %2789, 0x3FEC40CEC0000000
  %2791 = fadd contract float %2761, %2790
  %2792 = fadd contract float %2782, %2779
  %2793 = fmul contract float %2792, 0x3FEC40CEC0000000
  %2794 = fadd contract float %2764, %2793
  store float %2794, float addrspace(3)* %2553, align 4, !tbaa !6
  %2795 = fadd contract float %2782, %2785
  %2796 = fmul contract float %2795, 0x3FEC40CEC0000000
  %2797 = fadd contract float %2767, %2796
  store float %2797, float addrspace(3)* %2557, align 4, !tbaa !6
  %2798 = fadd contract float %2746, %2785
  %2799 = fmul contract float %2798, 0x3FEC40CEC0000000
  %2800 = fadd contract float %2770, %2799
  store float %2800, float addrspace(3)* %2559, align 4, !tbaa !6
  %2801 = fadd contract float %2788, %2791
  %2802 = fmul contract float %2801, 0x3FDC626AA0000000
  %2803 = fadd contract float %2776, %2802
  %2804 = fadd contract float %2791, %2794
  %2805 = fmul contract float %2804, 0x3FDC626AA0000000
  %2806 = fadd contract float %2779, %2805
  %2807 = fadd contract float %2797, %2794
  %2808 = fmul contract float %2807, 0x3FDC626AA0000000
  %2809 = fadd contract float %2782, %2808
  store float %2809, float addrspace(3)* %2551, align 4, !tbaa !6
  %2810 = fadd contract float %2797, %2800
  %2811 = fmul contract float %2810, 0x3FDC626AA0000000
  %2812 = fadd contract float %2785, %2811
  store float %2812, float addrspace(3)* %2555, align 4, !tbaa !6
  %2813 = fmul contract float %2803, 0x3FEA033860000000
  %2814 = sext i32 %2566 to i64
  %2815 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2814
  store float %2813, float addrspace(1)* %2815, align 4, !tbaa !6
  %2816 = add nsw i32 %2566, %2466
  %2817 = fmul contract float %2791, 0x3FF3AECB00000000
  %2818 = sext i32 %2816 to i64
  %2819 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2818
  store float %2817, float addrspace(1)* %2819, align 4, !tbaa !6
  %2820 = add nsw i32 %2816, %2467
  %2821 = fmul contract float %2806, 0x3FEA033860000000
  %2822 = sext i32 %2820 to i64
  %2823 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2822
  store float %2821, float addrspace(1)* %2823, align 4, !tbaa !6
  %2824 = add nsw i32 %2820, %2466
  %2825 = fmul contract float %2794, 0x3FF3AECB00000000
  %2826 = sext i32 %2824 to i64
  %2827 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2826
  store float %2825, float addrspace(1)* %2827, align 4, !tbaa !6
  %2828 = add nsw i32 %2824, %2467
  %2829 = fmul contract float %2809, 0x3FEA033860000000
  %2830 = sext i32 %2828 to i64
  %2831 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2830
  store float %2829, float addrspace(1)* %2831, align 4, !tbaa !6
  %2832 = add nsw i32 %2828, %2466
  %2833 = fmul contract float %2797, 0x3FF3AECB00000000
  %2834 = sext i32 %2832 to i64
  %2835 = getelementptr inbounds float, float addrspace(1)* %1, i64 %2834
  store float %2833, float addrspace(1)* %2835, align 4, !tbaa !6
  store float %2740, float addrspace(3)* %2538, align 4, !tbaa !6
  store float %2741, float addrspace(3)* %2542, align 4, !tbaa !6
  store float %2742, float addrspace(3)* %2540, align 4, !tbaa !6
  store float %2743, float addrspace(3)* %2546, align 4, !tbaa !6
  store float %2744, float addrspace(3)* %2544, align 4, !tbaa !6
  store float %2745, float addrspace(3)* %2549, align 4, !tbaa !6
  store float %2746, float addrspace(3)* %2547, align 4, !tbaa !6
  %2836 = add nsw i32 %2832, %2467
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %2837 = add nuw nsw i32 %2563, 1
  %2838 = icmp eq i32 %2837, %4
  br i1 %2838, label %2839, label %2562, !llvm.loop !20

2839:                                             ; preds = %1120, %2003, %2739, %644, %1602, %2465
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
