; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct._lgpu_int2 = type { i32, i32 }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x float> }
%struct.HIP_vector_type.0 = type { %struct.HIP_vector_base.1 }
%struct.HIP_vector_base.1 = type { %union.anon.2 }
%union.anon.2 = type { %"struct.HIP_vector_base<float, 3>::Native_vec_" }
%"struct.HIP_vector_base<float, 3>::Native_vec_" = type { [3 x float] }

@_ZZ10k_eam_fastE13type2rhor_z2r = internal unnamed_addr addrspace(3) global [121 x %struct._lgpu_int2] undef, align 16
@_ZZ10k_eam_fastE7red_acc = internal unnamed_addr addrspace(3) global [6 x [256 x float]] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @k_eam_fast(%struct.HIP_vector_type addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readonly %1, %struct._lgpu_int2 addrspace(1)* nocapture readonly %2, %struct.HIP_vector_type addrspace(1)* nocapture readonly %3, %struct.HIP_vector_type addrspace(1)* nocapture readonly %4, %struct.HIP_vector_type addrspace(1)* nocapture readonly %5, float addrspace(1)* nocapture readonly %6, i32 addrspace(1)* readonly %7, i32 addrspace(1)* readonly %8, %struct.HIP_vector_type.0 addrspace(1)* nocapture writeonly %9, float addrspace(1)* nocapture %10, i32 %11, i32 %12, i32 %13, i32 %14, float %15, float %16, i32 %17, i32 %18) local_unnamed_addr #0 {
  %20 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !4
  %21 = add nsw i32 %18, -1
  %22 = and i32 %21, %20
  %23 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %24 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %25 = getelementptr i8, i8 addrspace(4)* %24, i64 4
  %26 = bitcast i8 addrspace(4)* %25 to i16 addrspace(4)*
  %27 = load i16, i16 addrspace(4)* %26, align 4, !range !5, !invariant.load !6
  %28 = zext i16 %27 to i32
  %29 = sdiv i32 %28, %18
  %30 = mul nsw i32 %29, %23
  %31 = sdiv i32 %20, %18
  %32 = add nsw i32 %30, %31
  %33 = icmp ult i32 %20, 121
  br i1 %33, label %34, label %41

34:                                               ; preds = %19
  %35 = zext i32 %20 to i64
  %36 = getelementptr inbounds %struct._lgpu_int2, %struct._lgpu_int2 addrspace(1)* %2, i64 %35
  %37 = getelementptr inbounds [121 x %struct._lgpu_int2], [121 x %struct._lgpu_int2] addrspace(3)* @_ZZ10k_eam_fastE13type2rhor_z2r, i32 0, i32 %20
  %38 = bitcast %struct._lgpu_int2 addrspace(1)* %36 to i64 addrspace(1)*
  %39 = bitcast %struct._lgpu_int2 addrspace(3)* %37 to i64 addrspace(3)*
  %40 = load i64, i64 addrspace(1)* %38, align 4, !amdgpu.noclobber !6
  store i64 %40, i64 addrspace(3)* %39, align 8
  br label %41

41:                                               ; preds = %34, %19
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %42 = icmp sge i32 %32, %13
  br i1 %42, label %279, label %43

43:                                               ; preds = %41
  %44 = sext i32 %32 to i64
  %45 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %44
  %46 = load i32, i32 addrspace(1)* %45, align 4, !tbaa !7, !amdgpu.noclobber !6
  %47 = add nsw i32 %32, %14
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %48
  %50 = load i32, i32 addrspace(1)* %49, align 4, !tbaa !7, !amdgpu.noclobber !6
  %51 = icmp eq i32 addrspace(1)* %7, %8
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = mul nsw i32 %32, %21
  %54 = add i32 %47, %14
  %55 = add i32 %54, %53
  %56 = mul nsw i32 %18, %14
  %57 = sdiv i32 %50, %18
  %58 = mul nsw i32 %57, %56
  %59 = and i32 %50, %21
  %60 = add i32 %59, %55
  %61 = add i32 %60, %58
  br label %68

62:                                               ; preds = %43
  %63 = add nsw i32 %47, %14
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %64
  %66 = load i32, i32 addrspace(1)* %65, align 4, !tbaa !7, !amdgpu.noclobber !6
  %67 = add nsw i32 %66, %50
  br label %68

68:                                               ; preds = %62, %52
  %69 = phi i32 [ %61, %52 ], [ %67, %62 ]
  %70 = phi i32 [ %55, %52 ], [ %66, %62 ]
  %71 = phi i32 [ %56, %52 ], [ %18, %62 ]
  %72 = add nsw i32 %70, %22
  %73 = sext i32 %46 to i64
  %74 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %73, i32 0, i32 0, i32 0, i64 0
  %75 = load float, float addrspace(1)* %74, align 16, !amdgpu.noclobber !6
  %76 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %73, i32 0, i32 0, i32 0, i64 1
  %77 = load float, float addrspace(1)* %76, align 4, !amdgpu.noclobber !6
  %78 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %73, i32 0, i32 0, i32 0, i64 2
  %79 = load float, float addrspace(1)* %78, align 8, !amdgpu.noclobber !6
  %80 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %73, i32 0, i32 0, i32 0, i64 3
  %81 = load float, float addrspace(1)* %80, align 4, !amdgpu.noclobber !6
  %82 = getelementptr inbounds float, float addrspace(1)* %1, i64 %73
  %83 = load float, float addrspace(1)* %82, align 4, !tbaa !11, !amdgpu.noclobber !6
  %84 = fptosi float %81 to i32
  %85 = mul nsw i32 %84, 11
  %86 = icmp slt i32 %72, %69
  br i1 %86, label %87, label %279

87:                                               ; preds = %68
  %88 = fmul contract float %81, 1.100000e+01
  %89 = add nsw i32 %17, -1
  %90 = add nsw i32 %17, 1
  %91 = icmp eq i32 %11, 0
  %92 = icmp eq i32 %12, 0
  br label %93

93:                                               ; preds = %87, %271
  %94 = phi float [ 0.000000e+00, %87 ], [ %276, %271 ]
  %95 = phi float [ 0.000000e+00, %87 ], [ %275, %271 ]
  %96 = phi float [ 0.000000e+00, %87 ], [ %274, %271 ]
  %97 = phi float [ 0.000000e+00, %87 ], [ %273, %271 ]
  %98 = phi i32 [ %72, %87 ], [ %277, %271 ]
  %99 = phi <6 x float> [ zeroinitializer, %87 ], [ %272, %271 ]
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %100
  %102 = load i32, i32 addrspace(1)* %101, align 4, !tbaa !7, !amdgpu.noclobber !6
  %103 = and i32 %102, 1073741823
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %104, i32 0, i32 0, i32 0, i64 0
  %106 = load float, float addrspace(1)* %105, align 16, !amdgpu.noclobber !6
  %107 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %104, i32 0, i32 0, i32 0, i64 1
  %108 = load float, float addrspace(1)* %107, align 4, !amdgpu.noclobber !6
  %109 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %104, i32 0, i32 0, i32 0, i64 2
  %110 = load float, float addrspace(1)* %109, align 8, !amdgpu.noclobber !6
  %111 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %104, i32 0, i32 0, i32 0, i64 3
  %112 = load float, float addrspace(1)* %111, align 4, !amdgpu.noclobber !6
  %113 = fptosi float %112 to i32
  %114 = mul nsw i32 %113, 11
  %115 = fsub contract float %75, %106
  %116 = fsub contract float %77, %108
  %117 = fsub contract float %79, %110
  %118 = fmul contract float %115, %115
  %119 = fmul contract float %116, %116
  %120 = fadd contract float %118, %119
  %121 = fmul contract float %117, %117
  %122 = fadd contract float %120, %121
  %123 = fcmp contract olt float %122, %15
  br i1 %123, label %124, label %271

124:                                              ; preds = %93
  %125 = fadd contract float %88, %112
  %126 = fptosi float %125 to i32
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float addrspace(1)* %6, i64 %127
  %129 = load float, float addrspace(1)* %128, align 4, !tbaa !11, !amdgpu.noclobber !6
  %130 = fcmp contract ogt float %129, 0.000000e+00
  br i1 %130, label %131, label %271

131:                                              ; preds = %124
  %132 = fcmp olt float %122, 0x39F0000000000000
  %133 = select i1 %132, float 0x41F0000000000000, float 1.000000e+00
  %134 = fmul float %122, %133
  %135 = tail call float @llvm.sqrt.f32(float %134)
  %136 = bitcast float %135 to i32
  %137 = add nsw i32 %136, -1
  %138 = bitcast i32 %137 to float
  %139 = add nsw i32 %136, 1
  %140 = bitcast i32 %139 to float
  %141 = tail call i1 @llvm.amdgcn.class.f32(float %134, i32 608)
  %142 = select i1 %132, float 0x3EF0000000000000, float 1.000000e+00
  %143 = fneg float %140
  %144 = tail call float @llvm.fma.f32(float %143, float %135, float %134)
  %145 = fcmp ogt float %144, 0.000000e+00
  %146 = fneg float %138
  %147 = tail call float @llvm.fma.f32(float %146, float %135, float %134)
  %148 = fcmp ole float %147, 0.000000e+00
  %149 = select i1 %148, float %138, float %135
  %150 = select i1 %145, float %140, float %149
  %151 = fmul float %142, %150
  %152 = select i1 %141, float %134, float %151
  %153 = fmul contract float %152, %16
  %154 = fadd contract float %153, 1.000000e+00
  %155 = fptosi float %154 to i32
  %156 = tail call i32 @llvm.smin.i32(i32 %89, i32 %155)
  %157 = sitofp i32 %156 to float
  %158 = fsub contract float %154, %157
  %159 = fcmp contract olt float %158, 1.000000e+00
  %160 = select contract i1 %159, float %158, float 1.000000e+00
  %161 = add nsw i32 %85, %113
  %162 = getelementptr inbounds [121 x %struct._lgpu_int2], [121 x %struct._lgpu_int2] addrspace(3)* @_ZZ10k_eam_fastE13type2rhor_z2r, i32 0, i32 %161, i32 0
  %163 = load i32, i32 addrspace(3)* %162, align 8, !tbaa !13
  %164 = mul nsw i32 %163, %90
  %165 = add nsw i32 %164, %156
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %3, i64 %166, i32 0, i32 0, i32 0, i64 0
  %168 = load float, float addrspace(1)* %167, align 16, !amdgpu.noclobber !6
  %169 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %3, i64 %166, i32 0, i32 0, i32 0, i64 1
  %170 = load float, float addrspace(1)* %169, align 4, !amdgpu.noclobber !6
  %171 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %3, i64 %166, i32 0, i32 0, i32 0, i64 2
  %172 = load float, float addrspace(1)* %171, align 8, !amdgpu.noclobber !6
  %173 = fmul contract float %160, %168
  %174 = fadd contract float %173, %170
  %175 = fmul contract float %160, %174
  %176 = fadd contract float %172, %175
  %177 = add nsw i32 %114, %84
  %178 = getelementptr inbounds [121 x %struct._lgpu_int2], [121 x %struct._lgpu_int2] addrspace(3)* @_ZZ10k_eam_fastE13type2rhor_z2r, i32 0, i32 %177, i32 0
  %179 = load i32, i32 addrspace(3)* %178, align 8, !tbaa !13
  %180 = mul nsw i32 %179, %90
  %181 = add nsw i32 %180, %156
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %3, i64 %182, i32 0, i32 0, i32 0, i64 0
  %184 = load float, float addrspace(1)* %183, align 16, !amdgpu.noclobber !6
  %185 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %3, i64 %182, i32 0, i32 0, i32 0, i64 1
  %186 = load float, float addrspace(1)* %185, align 4, !amdgpu.noclobber !6
  %187 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %3, i64 %182, i32 0, i32 0, i32 0, i64 2
  %188 = load float, float addrspace(1)* %187, align 8, !amdgpu.noclobber !6
  %189 = fmul contract float %160, %184
  %190 = fadd contract float %189, %186
  %191 = fmul contract float %160, %190
  %192 = fadd contract float %188, %191
  %193 = getelementptr inbounds [121 x %struct._lgpu_int2], [121 x %struct._lgpu_int2] addrspace(3)* @_ZZ10k_eam_fastE13type2rhor_z2r, i32 0, i32 %161, i32 1
  %194 = load i32, i32 addrspace(3)* %193, align 4, !tbaa !15
  %195 = mul nsw i32 %194, %90
  %196 = add nsw i32 %195, %156
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %197, i32 0, i32 0, i32 0, i64 0
  %199 = load float, float addrspace(1)* %198, align 16, !amdgpu.noclobber !6
  %200 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %197, i32 0, i32 0, i32 0, i64 1
  %201 = load float, float addrspace(1)* %200, align 4, !amdgpu.noclobber !6
  %202 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %197, i32 0, i32 0, i32 0, i64 2
  %203 = load float, float addrspace(1)* %202, align 8, !amdgpu.noclobber !6
  %204 = fmul contract float %160, %199
  %205 = fadd contract float %204, %201
  %206 = fmul contract float %160, %205
  %207 = fadd contract float %203, %206
  %208 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %5, i64 %197, i32 0, i32 0, i32 0, i64 0
  %209 = load float, float addrspace(1)* %208, align 16, !amdgpu.noclobber !6
  %210 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %5, i64 %197, i32 0, i32 0, i32 0, i64 1
  %211 = load float, float addrspace(1)* %210, align 4, !amdgpu.noclobber !6
  %212 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %5, i64 %197, i32 0, i32 0, i32 0, i64 2
  %213 = load float, float addrspace(1)* %212, align 8, !amdgpu.noclobber !6
  %214 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %5, i64 %197, i32 0, i32 0, i32 0, i64 3
  %215 = load float, float addrspace(1)* %214, align 4, !amdgpu.noclobber !6
  %216 = fmul contract float %160, %209
  %217 = fadd contract float %216, %211
  %218 = fmul contract float %160, %217
  %219 = fadd contract float %213, %218
  %220 = fmul contract float %160, %219
  %221 = fadd contract float %215, %220
  %222 = fdiv contract float 1.000000e+00, %152
  %223 = fmul contract float %222, %221
  %224 = fmul contract float %222, %207
  %225 = fmul contract float %222, %223
  %226 = fsub contract float %224, %225
  %227 = getelementptr inbounds float, float addrspace(1)* %1, i64 %104
  %228 = load float, float addrspace(1)* %227, align 4, !tbaa !11, !amdgpu.noclobber !6
  %229 = fmul contract float %83, %192
  %230 = fmul contract float %176, %228
  %231 = fadd contract float %229, %230
  %232 = fadd contract float %231, %226
  %233 = fneg contract float %232
  %234 = fmul contract float %222, %233
  %235 = fmul contract float %115, %234
  %236 = fadd contract float %96, %235
  %237 = fmul contract float %116, %234
  %238 = fadd contract float %95, %237
  %239 = fmul contract float %117, %234
  %240 = fadd contract float %94, %239
  %241 = select i1 %91, float -0.000000e+00, float %223
  %242 = fadd contract float %97, %241
  br i1 %92, label %271, label %243

243:                                              ; preds = %131
  %244 = fmul contract float %118, %234
  %245 = extractelement <6 x float> %99, i64 0
  %246 = fadd contract float %245, %244
  %247 = insertelement <6 x float> poison, float %246, i64 0
  %248 = fmul contract float %119, %234
  %249 = extractelement <6 x float> %99, i64 1
  %250 = fadd contract float %249, %248
  %251 = insertelement <6 x float> %247, float %250, i64 1
  %252 = fmul contract float %121, %234
  %253 = extractelement <6 x float> %99, i64 2
  %254 = fadd contract float %253, %252
  %255 = insertelement <6 x float> %251, float %254, i64 2
  %256 = fmul contract float %115, %116
  %257 = fmul contract float %256, %234
  %258 = extractelement <6 x float> %99, i64 3
  %259 = fadd contract float %258, %257
  %260 = insertelement <6 x float> %255, float %259, i64 3
  %261 = fmul contract float %115, %117
  %262 = fmul contract float %261, %234
  %263 = extractelement <6 x float> %99, i64 4
  %264 = fadd contract float %263, %262
  %265 = insertelement <6 x float> %260, float %264, i64 4
  %266 = fmul contract float %116, %117
  %267 = fmul contract float %266, %234
  %268 = extractelement <6 x float> %99, i64 5
  %269 = fadd contract float %268, %267
  %270 = insertelement <6 x float> %265, float %269, i64 5
  br label %271

271:                                              ; preds = %131, %243, %124, %93
  %272 = phi <6 x float> [ %99, %131 ], [ %270, %243 ], [ %99, %124 ], [ %99, %93 ]
  %273 = phi float [ %242, %131 ], [ %242, %243 ], [ %97, %124 ], [ %97, %93 ]
  %274 = phi float [ %236, %131 ], [ %236, %243 ], [ %96, %124 ], [ %96, %93 ]
  %275 = phi float [ %238, %131 ], [ %238, %243 ], [ %95, %124 ], [ %95, %93 ]
  %276 = phi float [ %240, %131 ], [ %240, %243 ], [ %94, %124 ], [ %94, %93 ]
  %277 = add nsw i32 %98, %71
  %278 = icmp slt i32 %277, %69
  br i1 %278, label %93, label %279, !llvm.loop !16

279:                                              ; preds = %271, %68, %41
  %280 = phi <6 x float> [ zeroinitializer, %41 ], [ zeroinitializer, %68 ], [ %272, %271 ]
  %281 = phi float [ 0.000000e+00, %41 ], [ 0.000000e+00, %68 ], [ %273, %271 ]
  %282 = phi float [ 0.000000e+00, %41 ], [ 0.000000e+00, %68 ], [ %274, %271 ]
  %283 = phi float [ 0.000000e+00, %41 ], [ 0.000000e+00, %68 ], [ %275, %271 ]
  %284 = phi float [ 0.000000e+00, %41 ], [ 0.000000e+00, %68 ], [ %276, %271 ]
  %285 = icmp sgt i32 %18, 1
  br i1 %285, label %286, label %384

286:                                              ; preds = %279
  %287 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 0, i32 %20
  store float %282, float addrspace(3)* %287, align 4, !tbaa !11
  %288 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 1, i32 %20
  store float %283, float addrspace(3)* %288, align 4, !tbaa !11
  %289 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 2, i32 %20
  store float %284, float addrspace(3)* %289, align 4, !tbaa !11
  %290 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 3, i32 %20
  store float %281, float addrspace(3)* %290, align 4, !tbaa !11
  %291 = lshr i32 %18, 1
  br label %298

292:                                              ; preds = %319
  %293 = load float, float addrspace(3)* %287, align 4, !tbaa !11
  %294 = load float, float addrspace(3)* %288, align 4, !tbaa !11
  %295 = load float, float addrspace(3)* %289, align 4, !tbaa !11
  %296 = load float, float addrspace(3)* %290, align 4, !tbaa !11
  %297 = icmp eq i32 %12, 0
  br i1 %297, label %384, label %322

298:                                              ; preds = %286, %319
  %299 = phi i32 [ %320, %319 ], [ %291, %286 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %300 = icmp ult i32 %22, %299
  br i1 %300, label %301, label %319

301:                                              ; preds = %298
  %302 = add nuw i32 %299, %20
  %303 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 0, i32 %302
  %304 = load float, float addrspace(3)* %303, align 4, !tbaa !11
  %305 = load float, float addrspace(3)* %287, align 4, !tbaa !11
  %306 = fadd contract float %304, %305
  store float %306, float addrspace(3)* %287, align 4, !tbaa !11
  %307 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 1, i32 %302
  %308 = load float, float addrspace(3)* %307, align 4, !tbaa !11
  %309 = load float, float addrspace(3)* %288, align 4, !tbaa !11
  %310 = fadd contract float %308, %309
  store float %310, float addrspace(3)* %288, align 4, !tbaa !11
  %311 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 2, i32 %302
  %312 = load float, float addrspace(3)* %311, align 4, !tbaa !11
  %313 = load float, float addrspace(3)* %289, align 4, !tbaa !11
  %314 = fadd contract float %312, %313
  store float %314, float addrspace(3)* %289, align 4, !tbaa !11
  %315 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 3, i32 %302
  %316 = load float, float addrspace(3)* %315, align 4, !tbaa !11
  %317 = load float, float addrspace(3)* %290, align 4, !tbaa !11
  %318 = fadd contract float %316, %317
  store float %318, float addrspace(3)* %290, align 4, !tbaa !11
  br label %319

319:                                              ; preds = %301, %298
  %320 = lshr i32 %299, 1
  %321 = icmp ult i32 %299, 2
  br i1 %321, label %292, label %298, !llvm.loop !18

322:                                              ; preds = %292
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %323 = extractelement <6 x float> %280, i64 0
  store float %323, float addrspace(3)* %287, align 4, !tbaa !11
  %324 = extractelement <6 x float> %280, i64 1
  store float %324, float addrspace(3)* %288, align 4, !tbaa !11
  %325 = extractelement <6 x float> %280, i64 2
  store float %325, float addrspace(3)* %289, align 4, !tbaa !11
  %326 = extractelement <6 x float> %280, i64 3
  store float %326, float addrspace(3)* %290, align 4, !tbaa !11
  %327 = extractelement <6 x float> %280, i64 4
  %328 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 4, i32 %20
  store float %327, float addrspace(3)* %328, align 4, !tbaa !11
  %329 = extractelement <6 x float> %280, i64 5
  %330 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 5, i32 %20
  store float %329, float addrspace(3)* %330, align 4, !tbaa !11
  %331 = icmp ult i32 %18, 2
  br i1 %331, label %339, label %352

332:                                              ; preds = %381
  %333 = load float, float addrspace(3)* %287, align 4, !tbaa !11
  %334 = load float, float addrspace(3)* %288, align 4, !tbaa !11
  %335 = load float, float addrspace(3)* %289, align 4, !tbaa !11
  %336 = load float, float addrspace(3)* %290, align 4, !tbaa !11
  %337 = load float, float addrspace(3)* %328, align 4, !tbaa !11
  %338 = load float, float addrspace(3)* %330, align 4, !tbaa !11
  br label %339

339:                                              ; preds = %332, %322
  %340 = phi float [ %338, %332 ], [ %329, %322 ]
  %341 = phi float [ %337, %332 ], [ %327, %322 ]
  %342 = phi float [ %336, %332 ], [ %326, %322 ]
  %343 = phi float [ %335, %332 ], [ %325, %322 ]
  %344 = phi float [ %334, %332 ], [ %324, %322 ]
  %345 = phi float [ %333, %332 ], [ %323, %322 ]
  %346 = insertelement <6 x float> poison, float %345, i64 0
  %347 = insertelement <6 x float> %346, float %344, i64 1
  %348 = insertelement <6 x float> %347, float %343, i64 2
  %349 = insertelement <6 x float> %348, float %342, i64 3
  %350 = insertelement <6 x float> %349, float %341, i64 4
  %351 = insertelement <6 x float> %350, float %340, i64 5
  br label %384

352:                                              ; preds = %322, %381
  %353 = phi i32 [ %382, %381 ], [ %291, %322 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %354 = icmp ult i32 %22, %353
  br i1 %354, label %355, label %381

355:                                              ; preds = %352
  %356 = add nuw i32 %353, %20
  %357 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 0, i32 %356
  %358 = load float, float addrspace(3)* %357, align 4, !tbaa !11
  %359 = load float, float addrspace(3)* %287, align 4, !tbaa !11
  %360 = fadd contract float %358, %359
  store float %360, float addrspace(3)* %287, align 4, !tbaa !11
  %361 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 1, i32 %356
  %362 = load float, float addrspace(3)* %361, align 4, !tbaa !11
  %363 = load float, float addrspace(3)* %288, align 4, !tbaa !11
  %364 = fadd contract float %362, %363
  store float %364, float addrspace(3)* %288, align 4, !tbaa !11
  %365 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 2, i32 %356
  %366 = load float, float addrspace(3)* %365, align 4, !tbaa !11
  %367 = load float, float addrspace(3)* %289, align 4, !tbaa !11
  %368 = fadd contract float %366, %367
  store float %368, float addrspace(3)* %289, align 4, !tbaa !11
  %369 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 3, i32 %356
  %370 = load float, float addrspace(3)* %369, align 4, !tbaa !11
  %371 = load float, float addrspace(3)* %290, align 4, !tbaa !11
  %372 = fadd contract float %370, %371
  store float %372, float addrspace(3)* %290, align 4, !tbaa !11
  %373 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 4, i32 %356
  %374 = load float, float addrspace(3)* %373, align 4, !tbaa !11
  %375 = load float, float addrspace(3)* %328, align 4, !tbaa !11
  %376 = fadd contract float %374, %375
  store float %376, float addrspace(3)* %328, align 4, !tbaa !11
  %377 = getelementptr inbounds [6 x [256 x float]], [6 x [256 x float]] addrspace(3)* @_ZZ10k_eam_fastE7red_acc, i32 0, i32 5, i32 %356
  %378 = load float, float addrspace(3)* %377, align 4, !tbaa !11
  %379 = load float, float addrspace(3)* %330, align 4, !tbaa !11
  %380 = fadd contract float %378, %379
  store float %380, float addrspace(3)* %330, align 4, !tbaa !11
  br label %381

381:                                              ; preds = %355, %352
  %382 = lshr i32 %353, 1
  %383 = icmp ult i32 %353, 2
  br i1 %383, label %332, label %352, !llvm.loop !19

384:                                              ; preds = %339, %292, %279
  %385 = phi <6 x float> [ %280, %292 ], [ %280, %279 ], [ %351, %339 ]
  %386 = phi float [ %296, %292 ], [ %281, %279 ], [ %296, %339 ]
  %387 = phi float [ %293, %292 ], [ %282, %279 ], [ %293, %339 ]
  %388 = phi float [ %294, %292 ], [ %283, %279 ], [ %294, %339 ]
  %389 = phi float [ %295, %292 ], [ %284, %279 ], [ %295, %339 ]
  %390 = icmp ne i32 %22, 0
  %391 = select i1 %390, i1 true, i1 %42
  br i1 %391, label %439, label %392

392:                                              ; preds = %384
  %393 = icmp eq i32 %11, 0
  br i1 %393, label %401, label %394

394:                                              ; preds = %392
  %395 = fmul contract float %386, 5.000000e-01
  %396 = sext i32 %32 to i64
  %397 = getelementptr inbounds float, float addrspace(1)* %10, i64 %396
  %398 = load float, float addrspace(1)* %397, align 4, !tbaa !11
  %399 = fadd contract float %395, %398
  store float %399, float addrspace(1)* %397, align 4, !tbaa !11
  %400 = add nsw i32 %32, %13
  br label %401

401:                                              ; preds = %394, %392
  %402 = phi i32 [ %400, %394 ], [ %32, %392 ]
  %403 = icmp eq i32 %12, 0
  br i1 %403, label %434, label %404

404:                                              ; preds = %401
  %405 = extractelement <6 x float> %385, i64 0
  %406 = fmul contract float %405, 5.000000e-01
  %407 = sext i32 %402 to i64
  %408 = getelementptr inbounds float, float addrspace(1)* %10, i64 %407
  store float %406, float addrspace(1)* %408, align 4, !tbaa !11
  %409 = add nsw i32 %402, %13
  %410 = extractelement <6 x float> %385, i64 1
  %411 = fmul contract float %410, 5.000000e-01
  %412 = sext i32 %409 to i64
  %413 = getelementptr inbounds float, float addrspace(1)* %10, i64 %412
  store float %411, float addrspace(1)* %413, align 4, !tbaa !11
  %414 = add nsw i32 %409, %13
  %415 = extractelement <6 x float> %385, i64 2
  %416 = fmul contract float %415, 5.000000e-01
  %417 = sext i32 %414 to i64
  %418 = getelementptr inbounds float, float addrspace(1)* %10, i64 %417
  store float %416, float addrspace(1)* %418, align 4, !tbaa !11
  %419 = add nsw i32 %414, %13
  %420 = extractelement <6 x float> %385, i64 3
  %421 = fmul contract float %420, 5.000000e-01
  %422 = sext i32 %419 to i64
  %423 = getelementptr inbounds float, float addrspace(1)* %10, i64 %422
  store float %421, float addrspace(1)* %423, align 4, !tbaa !11
  %424 = add nsw i32 %419, %13
  %425 = extractelement <6 x float> %385, i64 4
  %426 = fmul contract float %425, 5.000000e-01
  %427 = sext i32 %424 to i64
  %428 = getelementptr inbounds float, float addrspace(1)* %10, i64 %427
  store float %426, float addrspace(1)* %428, align 4, !tbaa !11
  %429 = add nsw i32 %424, %13
  %430 = extractelement <6 x float> %385, i64 5
  %431 = fmul contract float %430, 5.000000e-01
  %432 = sext i32 %429 to i64
  %433 = getelementptr inbounds float, float addrspace(1)* %10, i64 %432
  store float %431, float addrspace(1)* %433, align 4, !tbaa !11
  br label %434

434:                                              ; preds = %404, %401
  %435 = sext i32 %32 to i64
  %436 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %9, i64 %435, i32 0, i32 0, i32 0, i32 0, i64 0
  store float %387, float addrspace(1)* %436, align 4
  %437 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %9, i64 %435, i32 0, i32 0, i32 0, i32 0, i64 1
  store float %388, float addrspace(1)* %437, align 4
  %438 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %9, i64 %435, i32 0, i32 0, i32 0, i32 0, i64 2
  store float %389, float addrspace(1)* %438, align 4
  br label %439

439:                                              ; preds = %384, %434
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 340750feeda88c9c2ce8ad481b11d9aa7f033d39)"}
!4 = !{i32 0, i32 1024}
!5 = !{i16 1, i16 1025}
!6 = !{}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = !{!14, !8, i64 0}
!14 = !{!"_ZTS10_lgpu_int2", !8, i64 0, !8, i64 4}
!15 = !{!14, !8, i64 4}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
