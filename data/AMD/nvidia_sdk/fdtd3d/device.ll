; ModuleID = 'fdtd3d.cpp'
source_filename = "fdtd3d.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@stencil = protected addrspace(4) externally_initialized global [5 x float] zeroinitializer, align 16
@_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile = internal unnamed_addr addrspace(3) global [24 x [40 x float]] undef, align 16
@llvm.compiler.used = appending addrspace(1) global [1 x i8*] [i8* addrspacecast (i8 addrspace(4)* bitcast ([5 x float] addrspace(4)* @stencil to i8 addrspace(4)*) to i8*)], section "llvm.metadata"

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z23FiniteDifferencesKernelPfPKfiii(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !4, !invariant.load !5
  %11 = zext i16 %10 to i32
  %12 = mul i32 %6, %11
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %14 = add i32 %12, %13
  %15 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %16 = getelementptr i8, i8 addrspace(4)* %7, i64 6
  %17 = bitcast i8 addrspace(4)* %16 to i16 addrspace(4)*
  %18 = load i16, i16 addrspace(4)* %17, align 2, !range !4, !invariant.load !5
  %19 = zext i16 %18 to i32
  %20 = mul i32 %15, %19
  %21 = tail call i32 @llvm.amdgcn.workitem.id.y() #3, !range !6
  %22 = add i32 %20, %21
  %23 = add nsw i32 %2, 8
  %24 = add nsw i32 %3, 8
  %25 = mul nsw i32 %24, %23
  %26 = shl nsw i32 %23, 2
  %27 = mul nsw i32 %22, %23
  %28 = add i32 %26, 4
  %29 = add i32 %28, %14
  %30 = add i32 %29, %27
  %31 = add nuw nsw i32 %13, 4
  %32 = add nsw i32 %2, 4
  %33 = icmp slt i32 %14, %32
  %34 = add nsw i32 %3, 4
  %35 = icmp slt i32 %22, %34
  %36 = select i1 %33, i1 %35, i1 false
  %37 = icmp slt i32 %22, %3
  br i1 %36, label %38, label %43

38:                                               ; preds = %5
  %39 = sext i32 %30 to i64
  %40 = getelementptr inbounds float, float addrspace(1)* %1, i64 %39
  %41 = load float, float addrspace(1)* %40, align 4, !tbaa !7
  %42 = insertelement <4 x float> undef, float %41, i64 2
  br label %43

43:                                               ; preds = %38, %5
  %44 = phi <4 x float> [ %42, %38 ], [ undef, %5 ]
  %45 = add nsw i32 %30, %25
  br i1 %36, label %46, label %51

46:                                               ; preds = %43
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds float, float addrspace(1)* %1, i64 %47
  %49 = load float, float addrspace(1)* %48, align 4, !tbaa !7
  %50 = insertelement <4 x float> %44, float %49, i64 1
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi <4 x float> [ %50, %46 ], [ %44, %43 ]
  %53 = add nsw i32 %45, %25
  br i1 %36, label %54, label %59

54:                                               ; preds = %51
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds float, float addrspace(1)* %1, i64 %55
  %57 = load float, float addrspace(1)* %56, align 4, !tbaa !7
  %58 = insertelement <4 x float> %52, float %57, i64 0
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi <4 x float> [ %58, %54 ], [ %52, %51 ]
  %61 = add nsw i32 %53, %25
  %62 = add nuw nsw i32 %21, 4
  %63 = icmp slt i32 %14, %2
  %64 = select i1 %63, i1 %37, i1 false
  br i1 %36, label %65, label %69

65:                                               ; preds = %59
  %66 = sext i32 %61 to i64
  %67 = getelementptr inbounds float, float addrspace(1)* %1, i64 %66
  %68 = load float, float addrspace(1)* %67, align 4, !tbaa !7
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi float [ %68, %65 ], [ undef, %59 ]
  %71 = add nsw i32 %61, %25
  br i1 %36, label %105, label %110

72:                                               ; preds = %134
  %73 = load float, float addrspace(4)* getelementptr inbounds ([5 x float], [5 x float] addrspace(4)* @stencil, i64 0, i64 1), align 4
  %74 = add nuw nsw i32 %21, 3
  %75 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %74, i32 %31
  %76 = add nuw nsw i32 %21, 5
  %77 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %76, i32 %31
  %78 = add nuw nsw i32 %13, 3
  %79 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %78
  %80 = add nuw nsw i32 %13, 5
  %81 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %80
  %82 = load float, float addrspace(4)* getelementptr inbounds ([5 x float], [5 x float] addrspace(4)* @stencil, i64 0, i64 2), align 8
  %83 = add nuw nsw i32 %21, 2
  %84 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %83, i32 %31
  %85 = add nuw nsw i32 %21, 6
  %86 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %85, i32 %31
  %87 = add nuw nsw i32 %13, 2
  %88 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %87
  %89 = add nuw nsw i32 %13, 6
  %90 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %89
  %91 = load float, float addrspace(4)* getelementptr inbounds ([5 x float], [5 x float] addrspace(4)* @stencil, i64 0, i64 3), align 4
  %92 = add nuw nsw i32 %21, 1
  %93 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %92, i32 %31
  %94 = add nuw nsw i32 %21, 7
  %95 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %94, i32 %31
  %96 = add nuw nsw i32 %13, 1
  %97 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %96
  %98 = add nuw nsw i32 %13, 7
  %99 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %98
  %100 = load float, float addrspace(4)* getelementptr inbounds ([5 x float], [5 x float] addrspace(4)* @stencil, i64 0, i64 4), align 16
  %101 = add nuw nsw i32 %21, 8
  %102 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %101, i32 %31
  %103 = add nuw nsw i32 %13, 8
  %104 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %103
  br label %148

105:                                              ; preds = %69
  %106 = sext i32 %71 to i64
  %107 = getelementptr inbounds float, float addrspace(1)* %1, i64 %106
  %108 = load float, float addrspace(1)* %107, align 4, !tbaa !7
  %109 = insertelement <4 x float> undef, float %108, i64 0
  br label %110

110:                                              ; preds = %105, %69
  %111 = phi <4 x float> [ %109, %105 ], [ undef, %69 ]
  %112 = add nsw i32 %71, %25
  br i1 %36, label %113, label %118

113:                                              ; preds = %110
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds float, float addrspace(1)* %1, i64 %114
  %116 = load float, float addrspace(1)* %115, align 4, !tbaa !7
  %117 = insertelement <4 x float> %111, float %116, i64 1
  br label %118

118:                                              ; preds = %113, %110
  %119 = phi <4 x float> [ %117, %113 ], [ %111, %110 ]
  %120 = add nsw i32 %112, %25
  br i1 %36, label %121, label %126

121:                                              ; preds = %118
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds float, float addrspace(1)* %1, i64 %122
  %124 = load float, float addrspace(1)* %123, align 4, !tbaa !7
  %125 = insertelement <4 x float> %119, float %124, i64 2
  br label %126

126:                                              ; preds = %121, %118
  %127 = phi <4 x float> [ %125, %121 ], [ %119, %118 ]
  %128 = add nsw i32 %120, %25
  br i1 %36, label %129, label %134

129:                                              ; preds = %126
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds float, float addrspace(1)* %1, i64 %130
  %132 = load float, float addrspace(1)* %131, align 4, !tbaa !7
  %133 = insertelement <4 x float> %127, float %132, i64 3
  br label %134

134:                                              ; preds = %129, %126
  %135 = phi <4 x float> [ %133, %129 ], [ %127, %126 ]
  %136 = icmp ult i32 %21, 4
  %137 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %21, i32 %31
  %138 = mul nsw i32 %23, %19
  %139 = add nuw nsw i32 %62, %19
  %140 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %139, i32 %31
  %141 = icmp ult i32 %13, 4
  %142 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %13
  %143 = add nuw nsw i32 %31, %11
  %144 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %143
  %145 = getelementptr inbounds [24 x [40 x float]], [24 x [40 x float]] addrspace(3)* @_ZZ23FiniteDifferencesKernelPfPKfiiiE4tile, i32 0, i32 %62, i32 %31
  %146 = load float, float addrspace(4)* getelementptr inbounds ([5 x float], [5 x float] addrspace(4)* @stencil, i64 0, i64 0), align 16
  %147 = icmp sgt i32 %4, 0
  br i1 %147, label %72, label %167

148:                                              ; preds = %72, %248
  %149 = phi i32 [ %249, %248 ], [ 0, %72 ]
  %150 = phi float [ %166, %248 ], [ %70, %72 ]
  %151 = phi i32 [ %175, %248 ], [ %61, %72 ]
  %152 = phi i32 [ %155, %248 ], [ %128, %72 ]
  %153 = phi <4 x float> [ %162, %248 ], [ %60, %72 ]
  %154 = phi <4 x float> [ %174, %248 ], [ %135, %72 ]
  %155 = add nsw i32 %152, %25
  %156 = extractelement <4 x float> %153, i64 2
  %157 = shufflevector <4 x float> %153, <4 x float> poison, <4 x i32> <i32 undef, i32 undef, i32 undef, i32 2>
  %158 = extractelement <4 x float> %153, i64 1
  %159 = shufflevector <4 x float> %157, <4 x float> %153, <4 x i32> <i32 undef, i32 undef, i32 5, i32 3>
  %160 = extractelement <4 x float> %153, i64 0
  %161 = insertelement <4 x float> %159, float %160, i64 1
  %162 = insertelement <4 x float> %161, float %150, i64 0
  %163 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> <i32 1, i32 undef, i32 undef, i32 3>
  %164 = shufflevector <4 x float> %163, <4 x float> %154, <4 x i32> <i32 0, i32 6, i32 undef, i32 3>
  %165 = shufflevector <4 x float> %164, <4 x float> %154, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %166 = extractelement <4 x float> %154, i64 0
  br i1 %36, label %168, label %173

167:                                              ; preds = %248, %134
  ret void

168:                                              ; preds = %148
  %169 = sext i32 %155 to i64
  %170 = getelementptr inbounds float, float addrspace(1)* %1, i64 %169
  %171 = load float, float addrspace(1)* %170, align 4, !tbaa !7
  %172 = insertelement <4 x float> %165, float %171, i64 3
  br label %173

173:                                              ; preds = %168, %148
  %174 = phi <4 x float> [ %172, %168 ], [ %165, %148 ]
  %175 = add nsw i32 %151, %25
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %136, label %176, label %185

176:                                              ; preds = %173
  %177 = sub nsw i32 %175, %26
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float addrspace(1)* %1, i64 %178
  %180 = load float, float addrspace(1)* %179, align 4, !tbaa !7
  store float %180, float addrspace(3)* %137, align 4, !tbaa !7
  %181 = add nsw i32 %175, %138
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float addrspace(1)* %1, i64 %182
  %184 = load float, float addrspace(1)* %183, align 4, !tbaa !7
  store float %184, float addrspace(3)* %140, align 4, !tbaa !7
  br label %185

185:                                              ; preds = %176, %173
  br i1 %141, label %186, label %195

186:                                              ; preds = %185
  %187 = add nsw i32 %175, -4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float addrspace(1)* %1, i64 %188
  %190 = load float, float addrspace(1)* %189, align 4, !tbaa !7
  store float %190, float addrspace(3)* %142, align 4, !tbaa !7
  %191 = add nsw i32 %175, %11
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float addrspace(1)* %1, i64 %192
  %194 = load float, float addrspace(1)* %193, align 4, !tbaa !7
  store float %194, float addrspace(3)* %144, align 4, !tbaa !7
  br label %195

195:                                              ; preds = %186, %185
  store float %166, float addrspace(3)* %145, align 4, !tbaa !7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %64, label %196, label %248

196:                                              ; preds = %195
  %197 = fmul contract float %166, %146
  %198 = extractelement <4 x float> %174, i64 0
  %199 = fadd contract float %198, %150
  %200 = load float, float addrspace(3)* %75, align 4, !tbaa !7
  %201 = fadd contract float %199, %200
  %202 = load float, float addrspace(3)* %77, align 4, !tbaa !7
  %203 = fadd contract float %201, %202
  %204 = load float, float addrspace(3)* %79, align 4, !tbaa !7
  %205 = fadd contract float %203, %204
  %206 = load float, float addrspace(3)* %81, align 4, !tbaa !7
  %207 = fadd contract float %205, %206
  %208 = fmul contract float %73, %207
  %209 = fadd contract float %197, %208
  %210 = extractelement <4 x float> %174, i64 1
  %211 = fadd contract float %210, %160
  %212 = load float, float addrspace(3)* %84, align 4, !tbaa !7
  %213 = fadd contract float %211, %212
  %214 = load float, float addrspace(3)* %86, align 4, !tbaa !7
  %215 = fadd contract float %213, %214
  %216 = load float, float addrspace(3)* %88, align 4, !tbaa !7
  %217 = fadd contract float %215, %216
  %218 = load float, float addrspace(3)* %90, align 4, !tbaa !7
  %219 = fadd contract float %217, %218
  %220 = fmul contract float %82, %219
  %221 = fadd contract float %209, %220
  %222 = extractelement <4 x float> %174, i64 2
  %223 = fadd contract float %222, %158
  %224 = load float, float addrspace(3)* %93, align 4, !tbaa !7
  %225 = fadd contract float %223, %224
  %226 = load float, float addrspace(3)* %95, align 4, !tbaa !7
  %227 = fadd contract float %225, %226
  %228 = load float, float addrspace(3)* %97, align 4, !tbaa !7
  %229 = fadd contract float %227, %228
  %230 = load float, float addrspace(3)* %99, align 4, !tbaa !7
  %231 = fadd contract float %229, %230
  %232 = fmul contract float %91, %231
  %233 = fadd contract float %221, %232
  %234 = extractelement <4 x float> %174, i64 3
  %235 = fadd contract float %234, %156
  %236 = load float, float addrspace(3)* %137, align 4, !tbaa !7
  %237 = fadd contract float %235, %236
  %238 = load float, float addrspace(3)* %102, align 4, !tbaa !7
  %239 = fadd contract float %237, %238
  %240 = load float, float addrspace(3)* %142, align 4, !tbaa !7
  %241 = fadd contract float %239, %240
  %242 = load float, float addrspace(3)* %104, align 4, !tbaa !7
  %243 = fadd contract float %241, %242
  %244 = fmul contract float %100, %243
  %245 = fadd contract float %233, %244
  %246 = sext i32 %175 to i64
  %247 = getelementptr inbounds float, float addrspace(1)* %0, i64 %246
  store float %245, float addrspace(1)* %247, align 4, !tbaa !7
  br label %248

248:                                              ; preds = %196, %195
  %249 = add nuw nsw i32 %149, 1
  %250 = icmp eq i32 %249, %4
  br i1 %250, label %167, label %148, !llvm.loop !11
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

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
!4 = !{i16 1, i16 1025}
!5 = !{}
!6 = !{i32 0, i32 1024}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.count", i32 9}
