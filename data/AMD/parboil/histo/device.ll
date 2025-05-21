; ModuleID = 'histo.cpp'
source_filename = "histo.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type.0 = type { %struct.HIP_vector_base.1 }
%struct.HIP_vector_base.1 = type { %union.anon.2 }
%union.anon.2 = type { <2 x i32> }
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i8> }
%struct.HIP_vector_type.4 = type { %struct.HIP_vector_base.5 }
%struct.HIP_vector_base.5 = type { %union.anon.6 }
%union.anon.6 = type { <4 x i16> }
%struct.HIP_vector_type.8 = type { %struct.HIP_vector_base.9 }
%struct.HIP_vector_base.9 = type { %union.anon.10 }
%union.anon.10 = type { <4 x i32> }

@_ZZ20histo_prescan_kernelPjiS_E3Avg = internal unnamed_addr addrspace(3) global [512 x float] undef, align 16
@_ZZ20histo_prescan_kernelPjiS_E6StdDev = internal unnamed_addr addrspace(3) global [512 x float] undef, align 16
@_ZZ17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_E9sub_histo = internal addrspace(3) global [8 x [256 x i32]] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z20histo_prescan_kernelPjiS_(i32 addrspace(1)* nocapture readonly %0, i32 %1, i32 addrspace(1)* nocapture %2) local_unnamed_addr #0 {
  %4 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %5 = getelementptr inbounds i8, i8 addrspace(4)* %4, i64 12
  %6 = bitcast i8 addrspace(4)* %5 to i32 addrspace(4)*
  %7 = load i32, i32 addrspace(4)* %6, align 4, !tbaa !4
  %8 = getelementptr i8, i8 addrspace(4)* %4, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !13, !invariant.load !14
  %11 = zext i16 %10 to i32
  %12 = udiv i32 %7, %11
  %13 = mul i32 %12, %11
  %14 = icmp ugt i32 %7, %13
  %15 = zext i1 %14 to i32
  %16 = add i32 %12, %15
  %17 = udiv i32 %1, %16
  %18 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %19 = mul i32 %17, %18
  %20 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !15
  %21 = add i32 %19, %20
  %22 = sdiv i32 %17, 8
  %23 = add i32 %19, %22
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %3, %25
  %26 = phi i32 [ %35, %25 ], [ %21, %3 ]
  %27 = phi float [ %33, %25 ], [ 0.000000e+00, %3 ]
  %28 = phi i32 [ %34, %25 ], [ 0, %3 ]
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %29
  %31 = load i32, i32 addrspace(1)* %30, align 4, !tbaa !16
  %32 = uitofp i32 %31 to float
  %33 = fadd contract float %27, %32
  %34 = add i32 %28, 1
  %35 = add i32 %26, %11
  %36 = icmp slt i32 %35, %23
  br i1 %36, label %25, label %37, !llvm.loop !20

37:                                               ; preds = %25
  %38 = uitofp i32 %34 to float
  br label %39

39:                                               ; preds = %37, %3
  %40 = phi float [ 0.000000e+00, %3 ], [ %38, %37 ]
  %41 = phi float [ 0.000000e+00, %3 ], [ %33, %37 ]
  %42 = fdiv contract float %41, %40
  %43 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %20
  store float %42, float addrspace(3)* %43, align 4, !tbaa !22
  br i1 %24, label %44, label %56

44:                                               ; preds = %39, %44
  %45 = phi float [ %53, %44 ], [ 0.000000e+00, %39 ]
  %46 = phi i32 [ %54, %44 ], [ %21, %39 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %47
  %49 = load i32, i32 addrspace(1)* %48, align 4, !tbaa !16
  %50 = uitofp i32 %49 to float
  %51 = fsub contract float %50, %42
  %52 = fmul contract float %51, %51
  %53 = fadd contract float %45, %52
  %54 = add i32 %46, %11
  %55 = icmp slt i32 %54, %23
  br i1 %55, label %44, label %56, !llvm.loop !24

56:                                               ; preds = %44, %39
  %57 = phi float [ 0.000000e+00, %39 ], [ %53, %44 ]
  %58 = fdiv contract float %57, %40
  %59 = fcmp olt float %58, 0x39F0000000000000
  %60 = select i1 %59, float 0x41F0000000000000, float 1.000000e+00
  %61 = fmul float %58, %60
  %62 = tail call float @llvm.sqrt.f32(float %61) #4
  %63 = bitcast float %62 to i32
  %64 = add nsw i32 %63, -1
  %65 = bitcast i32 %64 to float
  %66 = add nsw i32 %63, 1
  %67 = bitcast i32 %66 to float
  %68 = tail call i1 @llvm.amdgcn.class.f32(float %61, i32 608) #4
  %69 = select i1 %59, float 0x3EF0000000000000, float 1.000000e+00
  %70 = fneg float %67
  %71 = tail call float @llvm.fma.f32(float %70, float %62, float %61) #4
  %72 = fcmp ogt float %71, 0.000000e+00
  %73 = fneg float %65
  %74 = tail call float @llvm.fma.f32(float %73, float %62, float %61) #4
  %75 = fcmp ole float %74, 0.000000e+00
  %76 = select i1 %75, float %65, float %62
  %77 = select i1 %72, float %67, float %76
  %78 = fmul float %69, %77
  %79 = select i1 %68, float %61, float %78
  %80 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %20
  store float %79, float addrspace(3)* %80, align 4, !tbaa !22
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %81 = icmp ult i32 %20, 256
  br i1 %81, label %82, label %92

82:                                               ; preds = %56
  %83 = add nuw nsw i32 %20, 256
  %84 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %83
  %85 = load float, float addrspace(3)* %84, align 4, !tbaa !22
  %86 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %87 = fadd contract float %85, %86
  store float %87, float addrspace(3)* %43, align 4, !tbaa !22
  %88 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %83
  %89 = load float, float addrspace(3)* %88, align 4, !tbaa !22
  %90 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %91 = fadd contract float %89, %90
  store float %91, float addrspace(3)* %80, align 4, !tbaa !22
  br label %92

92:                                               ; preds = %56, %82
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %93 = icmp ult i32 %20, 128
  br i1 %93, label %94, label %104

94:                                               ; preds = %92
  %95 = add nuw nsw i32 %20, 128
  %96 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %95
  %97 = load float, float addrspace(3)* %96, align 4, !tbaa !22
  %98 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %99 = fadd contract float %97, %98
  store float %99, float addrspace(3)* %43, align 4, !tbaa !22
  %100 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %95
  %101 = load float, float addrspace(3)* %100, align 4, !tbaa !22
  %102 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %103 = fadd contract float %101, %102
  store float %103, float addrspace(3)* %80, align 4, !tbaa !22
  br label %104

104:                                              ; preds = %94, %92
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %105 = icmp ult i32 %20, 64
  br i1 %105, label %106, label %116

106:                                              ; preds = %104
  %107 = add nuw nsw i32 %20, 64
  %108 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %107
  %109 = load float, float addrspace(3)* %108, align 4, !tbaa !22
  %110 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %111 = fadd contract float %109, %110
  store float %111, float addrspace(3)* %43, align 4, !tbaa !22
  %112 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %107
  %113 = load float, float addrspace(3)* %112, align 4, !tbaa !22
  %114 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %115 = fadd contract float %113, %114
  store float %115, float addrspace(3)* %80, align 4, !tbaa !22
  br label %116

116:                                              ; preds = %106, %104
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %117 = icmp ult i32 %20, 32
  br i1 %117, label %118, label %128

118:                                              ; preds = %116
  %119 = add nuw nsw i32 %20, 32
  %120 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4, !tbaa !22
  %122 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %123 = fadd contract float %121, %122
  store float %123, float addrspace(3)* %43, align 4, !tbaa !22
  %124 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %119
  %125 = load float, float addrspace(3)* %124, align 4, !tbaa !22
  %126 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %127 = fadd contract float %125, %126
  store float %127, float addrspace(3)* %80, align 4, !tbaa !22
  br label %128

128:                                              ; preds = %118, %116
  %129 = icmp ult i32 %20, 16
  br i1 %129, label %130, label %140

130:                                              ; preds = %128
  %131 = add nuw nsw i32 %20, 16
  %132 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %131
  %133 = load float, float addrspace(3)* %132, align 4, !tbaa !22
  %134 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %135 = fadd contract float %133, %134
  store float %135, float addrspace(3)* %43, align 4, !tbaa !22
  %136 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %131
  %137 = load float, float addrspace(3)* %136, align 4, !tbaa !22
  %138 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %139 = fadd contract float %137, %138
  store float %139, float addrspace(3)* %80, align 4, !tbaa !22
  br label %140

140:                                              ; preds = %130, %128
  %141 = icmp ult i32 %20, 8
  br i1 %141, label %142, label %152

142:                                              ; preds = %140
  %143 = add nuw nsw i32 %20, 8
  %144 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %143
  %145 = load float, float addrspace(3)* %144, align 4, !tbaa !22
  %146 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %147 = fadd contract float %145, %146
  store float %147, float addrspace(3)* %43, align 4, !tbaa !22
  %148 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %143
  %149 = load float, float addrspace(3)* %148, align 4, !tbaa !22
  %150 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %151 = fadd contract float %149, %150
  store float %151, float addrspace(3)* %80, align 4, !tbaa !22
  br label %152

152:                                              ; preds = %142, %140
  %153 = icmp ult i32 %20, 4
  br i1 %153, label %154, label %164

154:                                              ; preds = %152
  %155 = add nuw nsw i32 %20, 4
  %156 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %155
  %157 = load float, float addrspace(3)* %156, align 4, !tbaa !22
  %158 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %159 = fadd contract float %157, %158
  store float %159, float addrspace(3)* %43, align 4, !tbaa !22
  %160 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %155
  %161 = load float, float addrspace(3)* %160, align 4, !tbaa !22
  %162 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %163 = fadd contract float %161, %162
  store float %163, float addrspace(3)* %80, align 4, !tbaa !22
  br label %164

164:                                              ; preds = %154, %152
  %165 = icmp ult i32 %20, 2
  br i1 %165, label %166, label %176

166:                                              ; preds = %164
  %167 = add nuw nsw i32 %20, 2
  %168 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 %167
  %169 = load float, float addrspace(3)* %168, align 4, !tbaa !22
  %170 = load float, float addrspace(3)* %43, align 4, !tbaa !22
  %171 = fadd contract float %169, %170
  store float %171, float addrspace(3)* %43, align 4, !tbaa !22
  %172 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 %167
  %173 = load float, float addrspace(3)* %172, align 4, !tbaa !22
  %174 = load float, float addrspace(3)* %80, align 4, !tbaa !22
  %175 = fadd contract float %173, %174
  store float %175, float addrspace(3)* %80, align 4, !tbaa !22
  br label %176

176:                                              ; preds = %166, %164
  %177 = icmp eq i32 %20, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %176
  %179 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 0), align 16, !tbaa !22
  %180 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E3Avg, i32 0, i32 1), align 4, !tbaa !22
  %181 = fadd contract float %179, %180
  %182 = fmul contract float %181, 0x3F60000000000000
  %183 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 0), align 16, !tbaa !22
  %184 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ20histo_prescan_kernelPjiS_E6StdDev, i32 0, i32 1), align 4, !tbaa !22
  %185 = fadd contract float %183, %184
  %186 = fmul contract float %185, 0x3F60000000000000
  %187 = fmul contract float %186, 1.000000e+01
  %188 = fsub contract float %182, %187
  %189 = fptoui float %188 to i32
  %190 = lshr i32 %189, 13
  %191 = atomicrmw umin i32 addrspace(1)* %2, i32 %190 syncscope("agent-one-as") monotonic, align 4
  %192 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 1
  %193 = fadd contract float %182, %187
  %194 = fptoui float %193 to i32
  %195 = lshr i32 %194, 13
  %196 = atomicrmw umax i32 addrspace(1)* %192, i32 %195 syncscope("agent-one-as") monotonic, align 4
  br label %197

197:                                              ; preds = %178, %176
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z26histo_intermediates_kernelP15HIP_vector_typeIjLj2EEjjjPS_IhLj4EE(%struct.HIP_vector_type.0 addrspace(1)* nocapture readonly %0, i32 %1, i32 %2, i32 %3, %struct.HIP_vector_type addrspace(1)* nocapture writeonly %4) local_unnamed_addr #1 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %7 = shl i32 %6, 4
  %8 = mul i32 %7, %3
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %0, i64 %9
  %11 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !15
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %10, i64 %12
  %14 = mul i32 %7, %2
  %15 = add i32 %14, %11
  %16 = and i32 %2, 1
  %17 = icmp ne i32 %16, 0
  %18 = tail call align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %19 = getelementptr i8, i8 addrspace(4)* %18, i64 4
  %20 = bitcast i8 addrspace(4)* %19 to i16 addrspace(4)*
  %21 = load i16, i16 addrspace(4)* %20, align 4
  %22 = zext i16 %21 to i32
  %23 = add nsw i32 %22, -1
  %24 = icmp eq i32 %11, %23
  %25 = select i1 %17, i1 %24, i1 false
  %26 = zext i32 %3 to i64
  %27 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %13, i64 0, i32 0, i32 0, i32 0, i64 0
  %28 = load i32, i32 addrspace(1)* %27, align 8
  %29 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %13, i64 0, i32 0, i32 0, i32 0, i64 1
  %30 = load i32, i32 addrspace(1)* %29, align 4
  %31 = zext i32 %15 to i64
  %32 = lshr i32 %28, 2
  %33 = trunc i32 %32 to i8
  %34 = lshr i32 %28, 10
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 7
  %37 = lshr i32 %28, 13
  %38 = trunc i32 %37 to i8
  %39 = trunc i32 %28 to i8
  %40 = shl i8 %39, 3
  %41 = and i8 %40, 24
  %42 = insertelement <4 x i8> undef, i8 %38, i64 0
  %43 = insertelement <4 x i8> %42, i8 %36, i64 1
  %44 = insertelement <4 x i8> %43, i8 %33, i64 2
  %45 = insertelement <4 x i8> %44, i8 %41, i64 3
  %46 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %31, i32 0, i32 0, i32 0
  store <4 x i8> %45, <4 x i8> addrspace(1)* %46, align 4, !tbaa !25
  br i1 %25, label %65, label %47

47:                                               ; preds = %5
  %48 = add i32 %15, %22
  %49 = zext i32 %48 to i64
  %50 = lshr i32 %30, 2
  %51 = trunc i32 %50 to i8
  %52 = lshr i32 %30, 10
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 7
  %55 = lshr i32 %30, 13
  %56 = trunc i32 %55 to i8
  %57 = trunc i32 %30 to i8
  %58 = shl i8 %57, 3
  %59 = and i8 %58, 24
  %60 = insertelement <4 x i8> undef, i8 %56, i64 0
  %61 = insertelement <4 x i8> %60, i8 %54, i64 1
  %62 = insertelement <4 x i8> %61, i8 %51, i64 2
  %63 = insertelement <4 x i8> %62, i8 %59, i64 3
  %64 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %49, i32 0, i32 0, i32 0
  store <4 x i8> %63, <4 x i8> addrspace(1)* %64, align 4, !tbaa !25
  br label %65

65:                                               ; preds = %47, %5
  %66 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %13, i64 %26
  %67 = add i32 %15, %2
  %68 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %66, i64 0, i32 0, i32 0, i32 0, i64 0
  %69 = load i32, i32 addrspace(1)* %68, align 8
  %70 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %66, i64 0, i32 0, i32 0, i32 0, i64 1
  %71 = load i32, i32 addrspace(1)* %70, align 4
  %72 = zext i32 %67 to i64
  %73 = lshr i32 %69, 2
  %74 = trunc i32 %73 to i8
  %75 = lshr i32 %69, 10
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 7
  %78 = lshr i32 %69, 13
  %79 = trunc i32 %78 to i8
  %80 = trunc i32 %69 to i8
  %81 = shl i8 %80, 3
  %82 = and i8 %81, 24
  %83 = insertelement <4 x i8> undef, i8 %79, i64 0
  %84 = insertelement <4 x i8> %83, i8 %77, i64 1
  %85 = insertelement <4 x i8> %84, i8 %74, i64 2
  %86 = insertelement <4 x i8> %85, i8 %82, i64 3
  %87 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %72, i32 0, i32 0, i32 0
  store <4 x i8> %86, <4 x i8> addrspace(1)* %87, align 4, !tbaa !25
  br i1 %25, label %106, label %88

88:                                               ; preds = %65
  %89 = add i32 %67, %22
  %90 = zext i32 %89 to i64
  %91 = lshr i32 %71, 2
  %92 = trunc i32 %91 to i8
  %93 = lshr i32 %71, 10
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 7
  %96 = lshr i32 %71, 13
  %97 = trunc i32 %96 to i8
  %98 = trunc i32 %71 to i8
  %99 = shl i8 %98, 3
  %100 = and i8 %99, 24
  %101 = insertelement <4 x i8> undef, i8 %97, i64 0
  %102 = insertelement <4 x i8> %101, i8 %95, i64 1
  %103 = insertelement <4 x i8> %102, i8 %92, i64 2
  %104 = insertelement <4 x i8> %103, i8 %100, i64 3
  %105 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %90, i32 0, i32 0, i32 0
  store <4 x i8> %104, <4 x i8> addrspace(1)* %105, align 4, !tbaa !25
  br label %106

106:                                              ; preds = %88, %65
  %107 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %66, i64 %26
  %108 = add i32 %67, %2
  %109 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  %110 = load i32, i32 addrspace(1)* %109, align 8
  %111 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %107, i64 0, i32 0, i32 0, i32 0, i64 1
  %112 = load i32, i32 addrspace(1)* %111, align 4
  %113 = zext i32 %108 to i64
  %114 = lshr i32 %110, 2
  %115 = trunc i32 %114 to i8
  %116 = lshr i32 %110, 10
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 7
  %119 = lshr i32 %110, 13
  %120 = trunc i32 %119 to i8
  %121 = trunc i32 %110 to i8
  %122 = shl i8 %121, 3
  %123 = and i8 %122, 24
  %124 = insertelement <4 x i8> undef, i8 %120, i64 0
  %125 = insertelement <4 x i8> %124, i8 %118, i64 1
  %126 = insertelement <4 x i8> %125, i8 %115, i64 2
  %127 = insertelement <4 x i8> %126, i8 %123, i64 3
  %128 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %113, i32 0, i32 0, i32 0
  store <4 x i8> %127, <4 x i8> addrspace(1)* %128, align 4, !tbaa !25
  br i1 %25, label %147, label %129

129:                                              ; preds = %106
  %130 = add i32 %108, %22
  %131 = zext i32 %130 to i64
  %132 = lshr i32 %112, 2
  %133 = trunc i32 %132 to i8
  %134 = lshr i32 %112, 10
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 7
  %137 = lshr i32 %112, 13
  %138 = trunc i32 %137 to i8
  %139 = trunc i32 %112 to i8
  %140 = shl i8 %139, 3
  %141 = and i8 %140, 24
  %142 = insertelement <4 x i8> undef, i8 %138, i64 0
  %143 = insertelement <4 x i8> %142, i8 %136, i64 1
  %144 = insertelement <4 x i8> %143, i8 %133, i64 2
  %145 = insertelement <4 x i8> %144, i8 %141, i64 3
  %146 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %131, i32 0, i32 0, i32 0
  store <4 x i8> %145, <4 x i8> addrspace(1)* %146, align 4, !tbaa !25
  br label %147

147:                                              ; preds = %129, %106
  %148 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %107, i64 %26
  %149 = add i32 %108, %2
  %150 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %148, i64 0, i32 0, i32 0, i32 0, i64 0
  %151 = load i32, i32 addrspace(1)* %150, align 8
  %152 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %148, i64 0, i32 0, i32 0, i32 0, i64 1
  %153 = load i32, i32 addrspace(1)* %152, align 4
  %154 = zext i32 %149 to i64
  %155 = lshr i32 %151, 2
  %156 = trunc i32 %155 to i8
  %157 = lshr i32 %151, 10
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 7
  %160 = lshr i32 %151, 13
  %161 = trunc i32 %160 to i8
  %162 = trunc i32 %151 to i8
  %163 = shl i8 %162, 3
  %164 = and i8 %163, 24
  %165 = insertelement <4 x i8> undef, i8 %161, i64 0
  %166 = insertelement <4 x i8> %165, i8 %159, i64 1
  %167 = insertelement <4 x i8> %166, i8 %156, i64 2
  %168 = insertelement <4 x i8> %167, i8 %164, i64 3
  %169 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %154, i32 0, i32 0, i32 0
  store <4 x i8> %168, <4 x i8> addrspace(1)* %169, align 4, !tbaa !25
  br i1 %25, label %188, label %170

170:                                              ; preds = %147
  %171 = add i32 %149, %22
  %172 = zext i32 %171 to i64
  %173 = lshr i32 %153, 2
  %174 = trunc i32 %173 to i8
  %175 = lshr i32 %153, 10
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 7
  %178 = lshr i32 %153, 13
  %179 = trunc i32 %178 to i8
  %180 = trunc i32 %153 to i8
  %181 = shl i8 %180, 3
  %182 = and i8 %181, 24
  %183 = insertelement <4 x i8> undef, i8 %179, i64 0
  %184 = insertelement <4 x i8> %183, i8 %177, i64 1
  %185 = insertelement <4 x i8> %184, i8 %174, i64 2
  %186 = insertelement <4 x i8> %185, i8 %182, i64 3
  %187 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %172, i32 0, i32 0, i32 0
  store <4 x i8> %186, <4 x i8> addrspace(1)* %187, align 4, !tbaa !25
  br label %188

188:                                              ; preds = %170, %147
  %189 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %148, i64 %26
  %190 = add i32 %149, %2
  %191 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %189, i64 0, i32 0, i32 0, i32 0, i64 0
  %192 = load i32, i32 addrspace(1)* %191, align 8
  %193 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %189, i64 0, i32 0, i32 0, i32 0, i64 1
  %194 = load i32, i32 addrspace(1)* %193, align 4
  %195 = zext i32 %190 to i64
  %196 = lshr i32 %192, 2
  %197 = trunc i32 %196 to i8
  %198 = lshr i32 %192, 10
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 7
  %201 = lshr i32 %192, 13
  %202 = trunc i32 %201 to i8
  %203 = trunc i32 %192 to i8
  %204 = shl i8 %203, 3
  %205 = and i8 %204, 24
  %206 = insertelement <4 x i8> undef, i8 %202, i64 0
  %207 = insertelement <4 x i8> %206, i8 %200, i64 1
  %208 = insertelement <4 x i8> %207, i8 %197, i64 2
  %209 = insertelement <4 x i8> %208, i8 %205, i64 3
  %210 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %195, i32 0, i32 0, i32 0
  store <4 x i8> %209, <4 x i8> addrspace(1)* %210, align 4, !tbaa !25
  br i1 %25, label %229, label %211

211:                                              ; preds = %188
  %212 = add i32 %190, %22
  %213 = zext i32 %212 to i64
  %214 = lshr i32 %194, 2
  %215 = trunc i32 %214 to i8
  %216 = lshr i32 %194, 10
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 7
  %219 = lshr i32 %194, 13
  %220 = trunc i32 %219 to i8
  %221 = trunc i32 %194 to i8
  %222 = shl i8 %221, 3
  %223 = and i8 %222, 24
  %224 = insertelement <4 x i8> undef, i8 %220, i64 0
  %225 = insertelement <4 x i8> %224, i8 %218, i64 1
  %226 = insertelement <4 x i8> %225, i8 %215, i64 2
  %227 = insertelement <4 x i8> %226, i8 %223, i64 3
  %228 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %213, i32 0, i32 0, i32 0
  store <4 x i8> %227, <4 x i8> addrspace(1)* %228, align 4, !tbaa !25
  br label %229

229:                                              ; preds = %211, %188
  %230 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %189, i64 %26
  %231 = add i32 %190, %2
  %232 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %230, i64 0, i32 0, i32 0, i32 0, i64 0
  %233 = load i32, i32 addrspace(1)* %232, align 8
  %234 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %230, i64 0, i32 0, i32 0, i32 0, i64 1
  %235 = load i32, i32 addrspace(1)* %234, align 4
  %236 = zext i32 %231 to i64
  %237 = lshr i32 %233, 2
  %238 = trunc i32 %237 to i8
  %239 = lshr i32 %233, 10
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 7
  %242 = lshr i32 %233, 13
  %243 = trunc i32 %242 to i8
  %244 = trunc i32 %233 to i8
  %245 = shl i8 %244, 3
  %246 = and i8 %245, 24
  %247 = insertelement <4 x i8> undef, i8 %243, i64 0
  %248 = insertelement <4 x i8> %247, i8 %241, i64 1
  %249 = insertelement <4 x i8> %248, i8 %238, i64 2
  %250 = insertelement <4 x i8> %249, i8 %246, i64 3
  %251 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %236, i32 0, i32 0, i32 0
  store <4 x i8> %250, <4 x i8> addrspace(1)* %251, align 4, !tbaa !25
  br i1 %25, label %270, label %252

252:                                              ; preds = %229
  %253 = add i32 %231, %22
  %254 = zext i32 %253 to i64
  %255 = lshr i32 %235, 2
  %256 = trunc i32 %255 to i8
  %257 = lshr i32 %235, 10
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 7
  %260 = lshr i32 %235, 13
  %261 = trunc i32 %260 to i8
  %262 = trunc i32 %235 to i8
  %263 = shl i8 %262, 3
  %264 = and i8 %263, 24
  %265 = insertelement <4 x i8> undef, i8 %261, i64 0
  %266 = insertelement <4 x i8> %265, i8 %259, i64 1
  %267 = insertelement <4 x i8> %266, i8 %256, i64 2
  %268 = insertelement <4 x i8> %267, i8 %264, i64 3
  %269 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %254, i32 0, i32 0, i32 0
  store <4 x i8> %268, <4 x i8> addrspace(1)* %269, align 4, !tbaa !25
  br label %270

270:                                              ; preds = %252, %229
  %271 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %230, i64 %26
  %272 = add i32 %231, %2
  %273 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %271, i64 0, i32 0, i32 0, i32 0, i64 0
  %274 = load i32, i32 addrspace(1)* %273, align 8
  %275 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %271, i64 0, i32 0, i32 0, i32 0, i64 1
  %276 = load i32, i32 addrspace(1)* %275, align 4
  %277 = zext i32 %272 to i64
  %278 = lshr i32 %274, 2
  %279 = trunc i32 %278 to i8
  %280 = lshr i32 %274, 10
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 7
  %283 = lshr i32 %274, 13
  %284 = trunc i32 %283 to i8
  %285 = trunc i32 %274 to i8
  %286 = shl i8 %285, 3
  %287 = and i8 %286, 24
  %288 = insertelement <4 x i8> undef, i8 %284, i64 0
  %289 = insertelement <4 x i8> %288, i8 %282, i64 1
  %290 = insertelement <4 x i8> %289, i8 %279, i64 2
  %291 = insertelement <4 x i8> %290, i8 %287, i64 3
  %292 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %277, i32 0, i32 0, i32 0
  store <4 x i8> %291, <4 x i8> addrspace(1)* %292, align 4, !tbaa !25
  br i1 %25, label %311, label %293

293:                                              ; preds = %270
  %294 = add i32 %272, %22
  %295 = zext i32 %294 to i64
  %296 = lshr i32 %276, 2
  %297 = trunc i32 %296 to i8
  %298 = lshr i32 %276, 10
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 7
  %301 = lshr i32 %276, 13
  %302 = trunc i32 %301 to i8
  %303 = trunc i32 %276 to i8
  %304 = shl i8 %303, 3
  %305 = and i8 %304, 24
  %306 = insertelement <4 x i8> undef, i8 %302, i64 0
  %307 = insertelement <4 x i8> %306, i8 %300, i64 1
  %308 = insertelement <4 x i8> %307, i8 %297, i64 2
  %309 = insertelement <4 x i8> %308, i8 %305, i64 3
  %310 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %295, i32 0, i32 0, i32 0
  store <4 x i8> %309, <4 x i8> addrspace(1)* %310, align 4, !tbaa !25
  br label %311

311:                                              ; preds = %293, %270
  %312 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %271, i64 %26
  %313 = add i32 %272, %2
  %314 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %312, i64 0, i32 0, i32 0, i32 0, i64 0
  %315 = load i32, i32 addrspace(1)* %314, align 8
  %316 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %312, i64 0, i32 0, i32 0, i32 0, i64 1
  %317 = load i32, i32 addrspace(1)* %316, align 4
  %318 = zext i32 %313 to i64
  %319 = lshr i32 %315, 2
  %320 = trunc i32 %319 to i8
  %321 = lshr i32 %315, 10
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 7
  %324 = lshr i32 %315, 13
  %325 = trunc i32 %324 to i8
  %326 = trunc i32 %315 to i8
  %327 = shl i8 %326, 3
  %328 = and i8 %327, 24
  %329 = insertelement <4 x i8> undef, i8 %325, i64 0
  %330 = insertelement <4 x i8> %329, i8 %323, i64 1
  %331 = insertelement <4 x i8> %330, i8 %320, i64 2
  %332 = insertelement <4 x i8> %331, i8 %328, i64 3
  %333 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %318, i32 0, i32 0, i32 0
  store <4 x i8> %332, <4 x i8> addrspace(1)* %333, align 4, !tbaa !25
  br i1 %25, label %352, label %334

334:                                              ; preds = %311
  %335 = add i32 %313, %22
  %336 = zext i32 %335 to i64
  %337 = lshr i32 %317, 2
  %338 = trunc i32 %337 to i8
  %339 = lshr i32 %317, 10
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 7
  %342 = lshr i32 %317, 13
  %343 = trunc i32 %342 to i8
  %344 = trunc i32 %317 to i8
  %345 = shl i8 %344, 3
  %346 = and i8 %345, 24
  %347 = insertelement <4 x i8> undef, i8 %343, i64 0
  %348 = insertelement <4 x i8> %347, i8 %341, i64 1
  %349 = insertelement <4 x i8> %348, i8 %338, i64 2
  %350 = insertelement <4 x i8> %349, i8 %346, i64 3
  %351 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %336, i32 0, i32 0, i32 0
  store <4 x i8> %350, <4 x i8> addrspace(1)* %351, align 4, !tbaa !25
  br label %352

352:                                              ; preds = %334, %311
  %353 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %312, i64 %26
  %354 = add i32 %313, %2
  %355 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %353, i64 0, i32 0, i32 0, i32 0, i64 0
  %356 = load i32, i32 addrspace(1)* %355, align 8
  %357 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %353, i64 0, i32 0, i32 0, i32 0, i64 1
  %358 = load i32, i32 addrspace(1)* %357, align 4
  %359 = zext i32 %354 to i64
  %360 = lshr i32 %356, 2
  %361 = trunc i32 %360 to i8
  %362 = lshr i32 %356, 10
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 7
  %365 = lshr i32 %356, 13
  %366 = trunc i32 %365 to i8
  %367 = trunc i32 %356 to i8
  %368 = shl i8 %367, 3
  %369 = and i8 %368, 24
  %370 = insertelement <4 x i8> undef, i8 %366, i64 0
  %371 = insertelement <4 x i8> %370, i8 %364, i64 1
  %372 = insertelement <4 x i8> %371, i8 %361, i64 2
  %373 = insertelement <4 x i8> %372, i8 %369, i64 3
  %374 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %359, i32 0, i32 0, i32 0
  store <4 x i8> %373, <4 x i8> addrspace(1)* %374, align 4, !tbaa !25
  br i1 %25, label %393, label %375

375:                                              ; preds = %352
  %376 = add i32 %354, %22
  %377 = zext i32 %376 to i64
  %378 = lshr i32 %358, 2
  %379 = trunc i32 %378 to i8
  %380 = lshr i32 %358, 10
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 7
  %383 = lshr i32 %358, 13
  %384 = trunc i32 %383 to i8
  %385 = trunc i32 %358 to i8
  %386 = shl i8 %385, 3
  %387 = and i8 %386, 24
  %388 = insertelement <4 x i8> undef, i8 %384, i64 0
  %389 = insertelement <4 x i8> %388, i8 %382, i64 1
  %390 = insertelement <4 x i8> %389, i8 %379, i64 2
  %391 = insertelement <4 x i8> %390, i8 %387, i64 3
  %392 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %377, i32 0, i32 0, i32 0
  store <4 x i8> %391, <4 x i8> addrspace(1)* %392, align 4, !tbaa !25
  br label %393

393:                                              ; preds = %375, %352
  %394 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %353, i64 %26
  %395 = add i32 %354, %2
  %396 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %394, i64 0, i32 0, i32 0, i32 0, i64 0
  %397 = load i32, i32 addrspace(1)* %396, align 8
  %398 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %394, i64 0, i32 0, i32 0, i32 0, i64 1
  %399 = load i32, i32 addrspace(1)* %398, align 4
  %400 = zext i32 %395 to i64
  %401 = lshr i32 %397, 2
  %402 = trunc i32 %401 to i8
  %403 = lshr i32 %397, 10
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 7
  %406 = lshr i32 %397, 13
  %407 = trunc i32 %406 to i8
  %408 = trunc i32 %397 to i8
  %409 = shl i8 %408, 3
  %410 = and i8 %409, 24
  %411 = insertelement <4 x i8> undef, i8 %407, i64 0
  %412 = insertelement <4 x i8> %411, i8 %405, i64 1
  %413 = insertelement <4 x i8> %412, i8 %402, i64 2
  %414 = insertelement <4 x i8> %413, i8 %410, i64 3
  %415 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %400, i32 0, i32 0, i32 0
  store <4 x i8> %414, <4 x i8> addrspace(1)* %415, align 4, !tbaa !25
  br i1 %25, label %434, label %416

416:                                              ; preds = %393
  %417 = add i32 %395, %22
  %418 = zext i32 %417 to i64
  %419 = lshr i32 %399, 2
  %420 = trunc i32 %419 to i8
  %421 = lshr i32 %399, 10
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 7
  %424 = lshr i32 %399, 13
  %425 = trunc i32 %424 to i8
  %426 = trunc i32 %399 to i8
  %427 = shl i8 %426, 3
  %428 = and i8 %427, 24
  %429 = insertelement <4 x i8> undef, i8 %425, i64 0
  %430 = insertelement <4 x i8> %429, i8 %423, i64 1
  %431 = insertelement <4 x i8> %430, i8 %420, i64 2
  %432 = insertelement <4 x i8> %431, i8 %428, i64 3
  %433 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %418, i32 0, i32 0, i32 0
  store <4 x i8> %432, <4 x i8> addrspace(1)* %433, align 4, !tbaa !25
  br label %434

434:                                              ; preds = %416, %393
  %435 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %394, i64 %26
  %436 = add i32 %395, %2
  %437 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %435, i64 0, i32 0, i32 0, i32 0, i64 0
  %438 = load i32, i32 addrspace(1)* %437, align 8
  %439 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %435, i64 0, i32 0, i32 0, i32 0, i64 1
  %440 = load i32, i32 addrspace(1)* %439, align 4
  %441 = zext i32 %436 to i64
  %442 = lshr i32 %438, 2
  %443 = trunc i32 %442 to i8
  %444 = lshr i32 %438, 10
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 7
  %447 = lshr i32 %438, 13
  %448 = trunc i32 %447 to i8
  %449 = trunc i32 %438 to i8
  %450 = shl i8 %449, 3
  %451 = and i8 %450, 24
  %452 = insertelement <4 x i8> undef, i8 %448, i64 0
  %453 = insertelement <4 x i8> %452, i8 %446, i64 1
  %454 = insertelement <4 x i8> %453, i8 %443, i64 2
  %455 = insertelement <4 x i8> %454, i8 %451, i64 3
  %456 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %441, i32 0, i32 0, i32 0
  store <4 x i8> %455, <4 x i8> addrspace(1)* %456, align 4, !tbaa !25
  br i1 %25, label %475, label %457

457:                                              ; preds = %434
  %458 = add i32 %436, %22
  %459 = zext i32 %458 to i64
  %460 = lshr i32 %440, 2
  %461 = trunc i32 %460 to i8
  %462 = lshr i32 %440, 10
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 7
  %465 = lshr i32 %440, 13
  %466 = trunc i32 %465 to i8
  %467 = trunc i32 %440 to i8
  %468 = shl i8 %467, 3
  %469 = and i8 %468, 24
  %470 = insertelement <4 x i8> undef, i8 %466, i64 0
  %471 = insertelement <4 x i8> %470, i8 %464, i64 1
  %472 = insertelement <4 x i8> %471, i8 %461, i64 2
  %473 = insertelement <4 x i8> %472, i8 %469, i64 3
  %474 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %459, i32 0, i32 0, i32 0
  store <4 x i8> %473, <4 x i8> addrspace(1)* %474, align 4, !tbaa !25
  br label %475

475:                                              ; preds = %457, %434
  %476 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %435, i64 %26
  %477 = add i32 %436, %2
  %478 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %476, i64 0, i32 0, i32 0, i32 0, i64 0
  %479 = load i32, i32 addrspace(1)* %478, align 8
  %480 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %476, i64 0, i32 0, i32 0, i32 0, i64 1
  %481 = load i32, i32 addrspace(1)* %480, align 4
  %482 = zext i32 %477 to i64
  %483 = lshr i32 %479, 2
  %484 = trunc i32 %483 to i8
  %485 = lshr i32 %479, 10
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 7
  %488 = lshr i32 %479, 13
  %489 = trunc i32 %488 to i8
  %490 = trunc i32 %479 to i8
  %491 = shl i8 %490, 3
  %492 = and i8 %491, 24
  %493 = insertelement <4 x i8> undef, i8 %489, i64 0
  %494 = insertelement <4 x i8> %493, i8 %487, i64 1
  %495 = insertelement <4 x i8> %494, i8 %484, i64 2
  %496 = insertelement <4 x i8> %495, i8 %492, i64 3
  %497 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %482, i32 0, i32 0, i32 0
  store <4 x i8> %496, <4 x i8> addrspace(1)* %497, align 4, !tbaa !25
  br i1 %25, label %516, label %498

498:                                              ; preds = %475
  %499 = add i32 %477, %22
  %500 = zext i32 %499 to i64
  %501 = lshr i32 %481, 2
  %502 = trunc i32 %501 to i8
  %503 = lshr i32 %481, 10
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 7
  %506 = lshr i32 %481, 13
  %507 = trunc i32 %506 to i8
  %508 = trunc i32 %481 to i8
  %509 = shl i8 %508, 3
  %510 = and i8 %509, 24
  %511 = insertelement <4 x i8> undef, i8 %507, i64 0
  %512 = insertelement <4 x i8> %511, i8 %505, i64 1
  %513 = insertelement <4 x i8> %512, i8 %502, i64 2
  %514 = insertelement <4 x i8> %513, i8 %510, i64 3
  %515 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %500, i32 0, i32 0, i32 0
  store <4 x i8> %514, <4 x i8> addrspace(1)* %515, align 4, !tbaa !25
  br label %516

516:                                              ; preds = %498, %475
  %517 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %476, i64 %26
  %518 = add i32 %477, %2
  %519 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %517, i64 0, i32 0, i32 0, i32 0, i64 0
  %520 = load i32, i32 addrspace(1)* %519, align 8
  %521 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %517, i64 0, i32 0, i32 0, i32 0, i64 1
  %522 = load i32, i32 addrspace(1)* %521, align 4
  %523 = zext i32 %518 to i64
  %524 = lshr i32 %520, 2
  %525 = trunc i32 %524 to i8
  %526 = lshr i32 %520, 10
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 7
  %529 = lshr i32 %520, 13
  %530 = trunc i32 %529 to i8
  %531 = trunc i32 %520 to i8
  %532 = shl i8 %531, 3
  %533 = and i8 %532, 24
  %534 = insertelement <4 x i8> undef, i8 %530, i64 0
  %535 = insertelement <4 x i8> %534, i8 %528, i64 1
  %536 = insertelement <4 x i8> %535, i8 %525, i64 2
  %537 = insertelement <4 x i8> %536, i8 %533, i64 3
  %538 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %523, i32 0, i32 0, i32 0
  store <4 x i8> %537, <4 x i8> addrspace(1)* %538, align 4, !tbaa !25
  br i1 %25, label %557, label %539

539:                                              ; preds = %516
  %540 = add i32 %518, %22
  %541 = zext i32 %540 to i64
  %542 = lshr i32 %522, 2
  %543 = trunc i32 %542 to i8
  %544 = lshr i32 %522, 10
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 7
  %547 = lshr i32 %522, 13
  %548 = trunc i32 %547 to i8
  %549 = trunc i32 %522 to i8
  %550 = shl i8 %549, 3
  %551 = and i8 %550, 24
  %552 = insertelement <4 x i8> undef, i8 %548, i64 0
  %553 = insertelement <4 x i8> %552, i8 %546, i64 1
  %554 = insertelement <4 x i8> %553, i8 %543, i64 2
  %555 = insertelement <4 x i8> %554, i8 %551, i64 3
  %556 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %541, i32 0, i32 0, i32 0
  store <4 x i8> %555, <4 x i8> addrspace(1)* %556, align 4, !tbaa !25
  br label %557

557:                                              ; preds = %539, %516
  %558 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %517, i64 %26
  %559 = add i32 %518, %2
  %560 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %558, i64 0, i32 0, i32 0, i32 0, i64 0
  %561 = load i32, i32 addrspace(1)* %560, align 8
  %562 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %558, i64 0, i32 0, i32 0, i32 0, i64 1
  %563 = load i32, i32 addrspace(1)* %562, align 4
  %564 = zext i32 %559 to i64
  %565 = lshr i32 %561, 2
  %566 = trunc i32 %565 to i8
  %567 = lshr i32 %561, 10
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 7
  %570 = lshr i32 %561, 13
  %571 = trunc i32 %570 to i8
  %572 = trunc i32 %561 to i8
  %573 = shl i8 %572, 3
  %574 = and i8 %573, 24
  %575 = insertelement <4 x i8> undef, i8 %571, i64 0
  %576 = insertelement <4 x i8> %575, i8 %569, i64 1
  %577 = insertelement <4 x i8> %576, i8 %566, i64 2
  %578 = insertelement <4 x i8> %577, i8 %574, i64 3
  %579 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %564, i32 0, i32 0, i32 0
  store <4 x i8> %578, <4 x i8> addrspace(1)* %579, align 4, !tbaa !25
  br i1 %25, label %598, label %580

580:                                              ; preds = %557
  %581 = add i32 %559, %22
  %582 = zext i32 %581 to i64
  %583 = lshr i32 %563, 2
  %584 = trunc i32 %583 to i8
  %585 = lshr i32 %563, 10
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 7
  %588 = lshr i32 %563, 13
  %589 = trunc i32 %588 to i8
  %590 = trunc i32 %563 to i8
  %591 = shl i8 %590, 3
  %592 = and i8 %591, 24
  %593 = insertelement <4 x i8> undef, i8 %589, i64 0
  %594 = insertelement <4 x i8> %593, i8 %587, i64 1
  %595 = insertelement <4 x i8> %594, i8 %584, i64 2
  %596 = insertelement <4 x i8> %595, i8 %592, i64 3
  %597 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %582, i32 0, i32 0, i32 0
  store <4 x i8> %596, <4 x i8> addrspace(1)* %597, align 4, !tbaa !25
  br label %598

598:                                              ; preds = %580, %557
  %599 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %558, i64 %26
  %600 = add i32 %559, %2
  %601 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %599, i64 0, i32 0, i32 0, i32 0, i64 0
  %602 = load i32, i32 addrspace(1)* %601, align 8
  %603 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %599, i64 0, i32 0, i32 0, i32 0, i64 1
  %604 = load i32, i32 addrspace(1)* %603, align 4
  %605 = zext i32 %600 to i64
  %606 = lshr i32 %602, 2
  %607 = trunc i32 %606 to i8
  %608 = lshr i32 %602, 10
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 7
  %611 = lshr i32 %602, 13
  %612 = trunc i32 %611 to i8
  %613 = trunc i32 %602 to i8
  %614 = shl i8 %613, 3
  %615 = and i8 %614, 24
  %616 = insertelement <4 x i8> undef, i8 %612, i64 0
  %617 = insertelement <4 x i8> %616, i8 %610, i64 1
  %618 = insertelement <4 x i8> %617, i8 %607, i64 2
  %619 = insertelement <4 x i8> %618, i8 %615, i64 3
  %620 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %605, i32 0, i32 0, i32 0
  store <4 x i8> %619, <4 x i8> addrspace(1)* %620, align 4, !tbaa !25
  br i1 %25, label %639, label %621

621:                                              ; preds = %598
  %622 = add i32 %600, %22
  %623 = zext i32 %622 to i64
  %624 = lshr i32 %604, 2
  %625 = trunc i32 %624 to i8
  %626 = lshr i32 %604, 10
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 7
  %629 = lshr i32 %604, 13
  %630 = trunc i32 %629 to i8
  %631 = trunc i32 %604 to i8
  %632 = shl i8 %631, 3
  %633 = and i8 %632, 24
  %634 = insertelement <4 x i8> undef, i8 %630, i64 0
  %635 = insertelement <4 x i8> %634, i8 %628, i64 1
  %636 = insertelement <4 x i8> %635, i8 %625, i64 2
  %637 = insertelement <4 x i8> %636, i8 %633, i64 3
  %638 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %623, i32 0, i32 0, i32 0
  store <4 x i8> %637, <4 x i8> addrspace(1)* %638, align 4, !tbaa !25
  br label %639

639:                                              ; preds = %621, %598
  %640 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %599, i64 %26
  %641 = add i32 %600, %2
  %642 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %640, i64 0, i32 0, i32 0, i32 0, i64 0
  %643 = load i32, i32 addrspace(1)* %642, align 8
  %644 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %640, i64 0, i32 0, i32 0, i32 0, i64 1
  %645 = load i32, i32 addrspace(1)* %644, align 4
  %646 = zext i32 %641 to i64
  %647 = lshr i32 %643, 2
  %648 = trunc i32 %647 to i8
  %649 = lshr i32 %643, 10
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 7
  %652 = lshr i32 %643, 13
  %653 = trunc i32 %652 to i8
  %654 = trunc i32 %643 to i8
  %655 = shl i8 %654, 3
  %656 = and i8 %655, 24
  %657 = insertelement <4 x i8> undef, i8 %653, i64 0
  %658 = insertelement <4 x i8> %657, i8 %651, i64 1
  %659 = insertelement <4 x i8> %658, i8 %648, i64 2
  %660 = insertelement <4 x i8> %659, i8 %656, i64 3
  %661 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %646, i32 0, i32 0, i32 0
  store <4 x i8> %660, <4 x i8> addrspace(1)* %661, align 4, !tbaa !25
  br i1 %25, label %680, label %662

662:                                              ; preds = %639
  %663 = add i32 %641, %22
  %664 = zext i32 %663 to i64
  %665 = lshr i32 %645, 2
  %666 = trunc i32 %665 to i8
  %667 = lshr i32 %645, 10
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 7
  %670 = lshr i32 %645, 13
  %671 = trunc i32 %670 to i8
  %672 = trunc i32 %645 to i8
  %673 = shl i8 %672, 3
  %674 = and i8 %673, 24
  %675 = insertelement <4 x i8> undef, i8 %671, i64 0
  %676 = insertelement <4 x i8> %675, i8 %669, i64 1
  %677 = insertelement <4 x i8> %676, i8 %666, i64 2
  %678 = insertelement <4 x i8> %677, i8 %674, i64 3
  %679 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %4, i64 %664, i32 0, i32 0, i32 0
  store <4 x i8> %678, <4 x i8> addrspace(1)* %679, align 4, !tbaa !25
  br label %680

680:                                              ; preds = %662, %639
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z18histo_final_kerneljjjjPjS_S_S_(i32 %0, i32 %1, i32 %2, i32 %3, i32 addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture %5, i32 addrspace(1)* nocapture %6, i32 addrspace(1)* nocapture writeonly %7) local_unnamed_addr #1 {
  %9 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !15
  %10 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %12 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %13 = bitcast i8 addrspace(4)* %12 to i16 addrspace(4)*
  %14 = load i16, i16 addrspace(4)* %13, align 4, !range !13, !invariant.load !14
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds i8, i8 addrspace(4)* %11, i64 12
  %17 = bitcast i8 addrspace(4)* %16 to i32 addrspace(4)*
  %18 = load i32, i32 addrspace(4)* %17, align 4, !tbaa !4
  %19 = mul i32 %10, %15
  %20 = add i32 %19, %9
  %21 = shl i32 %0, 13
  %22 = sub i32 %1, %0
  %23 = shl i32 %22, 13
  %24 = lshr exact i32 %21, 2
  %25 = bitcast i32 addrspace(1)* %5 to %struct.HIP_vector_type.4 addrspace(1)*
  %26 = icmp ult i32 %20, %24
  br i1 %26, label %27, label %34

27:                                               ; preds = %8
  %28 = udiv i32 %18, %15
  %29 = mul i32 %28, %15
  %30 = icmp ugt i32 %18, %29
  %31 = zext i1 %30 to i32
  %32 = add i32 %28, %31
  %33 = mul i32 %32, %15
  br label %48

34:                                               ; preds = %48, %8
  %35 = add i32 %20, %24
  %36 = add i32 %21, 8192
  %37 = add i32 %36, %23
  %38 = lshr exact i32 %37, 2
  %39 = bitcast i32 addrspace(1)* %6 to %struct.HIP_vector_type.8 addrspace(1)*
  %40 = icmp ult i32 %35, %38
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = udiv i32 %18, %15
  %43 = mul i32 %42, %15
  %44 = icmp ugt i32 %18, %43
  %45 = zext i1 %44 to i32
  %46 = add i32 %42, %45
  %47 = mul i32 %46, %15
  br label %97

48:                                               ; preds = %27, %48
  %49 = phi i32 [ %20, %27 ], [ %83, %48 ]
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %50
  %52 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %51, i64 0, i32 0, i32 0, i32 0, i64 0
  %53 = load i16, i16 addrspace(1)* %52, align 8
  %54 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %50, i32 0, i32 0, i32 0, i64 1
  %55 = load i16, i16 addrspace(1)* %54, align 2
  %56 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %50, i32 0, i32 0, i32 0, i64 2
  %57 = load i16, i16 addrspace(1)* %56, align 4
  %58 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %50, i32 0, i32 0, i32 0, i64 3
  %59 = load i16, i16 addrspace(1)* %58, align 2
  %60 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %51, i64 0, i32 0, i32 0, i32 0
  store <4 x i16> zeroinitializer, <4 x i16> addrspace(1)* %60, align 8, !tbaa !25
  %61 = uitofp i16 %53 to double
  %62 = tail call double @llvm.minnum.f64(double %61, double 2.550000e+02) #4
  %63 = fptoui double %62 to i16
  %64 = uitofp i16 %55 to double
  %65 = tail call double @llvm.minnum.f64(double %64, double 2.550000e+02) #4
  %66 = fptoui double %65 to i16
  %67 = uitofp i16 %57 to double
  %68 = tail call double @llvm.minnum.f64(double %67, double 2.550000e+02) #4
  %69 = fptoui double %68 to i16
  %70 = uitofp i16 %59 to double
  %71 = tail call double @llvm.minnum.f64(double %70, double 2.550000e+02) #4
  %72 = fptoui double %71 to i16
  %73 = trunc i16 %63 to i8
  %74 = trunc i16 %66 to i8
  %75 = trunc i16 %69 to i8
  %76 = trunc i16 %72 to i8
  %77 = insertelement <4 x i8> undef, i8 %73, i64 0
  %78 = insertelement <4 x i8> %77, i8 %74, i64 1
  %79 = insertelement <4 x i8> %78, i8 %75, i64 2
  %80 = insertelement <4 x i8> %79, i8 %76, i64 3
  %81 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %50
  %82 = bitcast i32 addrspace(1)* %81 to <4 x i8> addrspace(1)*
  store <4 x i8> %80, <4 x i8> addrspace(1)* %82, align 4, !tbaa !25
  %83 = add i32 %33, %49
  %84 = icmp ult i32 %83, %24
  br i1 %84, label %48, label %34, !llvm.loop !26

85:                                               ; preds = %97, %34
  %86 = add i32 %20, %38
  %87 = mul i32 %3, %2
  %88 = lshr i32 %87, 2
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %85
  %91 = udiv i32 %18, %15
  %92 = mul i32 %91, %15
  %93 = icmp ugt i32 %18, %92
  %94 = zext i1 %93 to i32
  %95 = add i32 %91, %94
  %96 = mul i32 %95, %15
  br label %142

97:                                               ; preds = %41, %97
  %98 = phi i32 [ %35, %41 ], [ %139, %97 ]
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.HIP_vector_type.8, %struct.HIP_vector_type.8 addrspace(1)* %39, i64 %99, i32 0, i32 0, i32 0
  store <4 x i32> zeroinitializer, <4 x i32> addrspace(1)* %100, align 16, !tbaa !25
  %101 = shl i32 %98, 2
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %102
  %104 = load i32, i32 addrspace(1)* %103, align 4, !tbaa !16
  %105 = or i32 %101, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %106
  %108 = load i32, i32 addrspace(1)* %107, align 4, !tbaa !16
  %109 = or i32 %101, 2
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %110
  %112 = load i32, i32 addrspace(1)* %111, align 4, !tbaa !16
  %113 = or i32 %101, 3
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %114
  %116 = load i32, i32 addrspace(1)* %115, align 4, !tbaa !16
  %117 = uitofp i32 %104 to double
  %118 = tail call double @llvm.minnum.f64(double %117, double 2.550000e+02) #4
  %119 = fptoui double %118 to i32
  %120 = uitofp i32 %108 to double
  %121 = tail call double @llvm.minnum.f64(double %120, double 2.550000e+02) #4
  %122 = fptoui double %121 to i32
  %123 = uitofp i32 %112 to double
  %124 = tail call double @llvm.minnum.f64(double %123, double 2.550000e+02) #4
  %125 = fptoui double %124 to i32
  %126 = uitofp i32 %116 to double
  %127 = tail call double @llvm.minnum.f64(double %126, double 2.550000e+02) #4
  %128 = fptoui double %127 to i32
  %129 = trunc i32 %119 to i8
  %130 = trunc i32 %122 to i8
  %131 = trunc i32 %125 to i8
  %132 = trunc i32 %128 to i8
  %133 = insertelement <4 x i8> undef, i8 %129, i64 0
  %134 = insertelement <4 x i8> %133, i8 %130, i64 1
  %135 = insertelement <4 x i8> %134, i8 %131, i64 2
  %136 = insertelement <4 x i8> %135, i8 %132, i64 3
  %137 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %99
  %138 = bitcast i32 addrspace(1)* %137 to <4 x i8> addrspace(1)*
  store <4 x i8> %136, <4 x i8> addrspace(1)* %138, align 4, !tbaa !25
  %139 = add i32 %47, %98
  %140 = icmp ult i32 %139, %38
  br i1 %140, label %97, label %85, !llvm.loop !27

141:                                              ; preds = %142, %85
  ret void

142:                                              ; preds = %90, %142
  %143 = phi i32 [ %86, %90 ], [ %177, %142 ]
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %144
  %146 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %145, i64 0, i32 0, i32 0, i32 0, i64 0
  %147 = load i16, i16 addrspace(1)* %146, align 8
  %148 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %144, i32 0, i32 0, i32 0, i64 1
  %149 = load i16, i16 addrspace(1)* %148, align 2
  %150 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %144, i32 0, i32 0, i32 0, i64 2
  %151 = load i16, i16 addrspace(1)* %150, align 4
  %152 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %25, i64 %144, i32 0, i32 0, i32 0, i64 3
  %153 = load i16, i16 addrspace(1)* %152, align 2
  %154 = getelementptr inbounds %struct.HIP_vector_type.4, %struct.HIP_vector_type.4 addrspace(1)* %145, i64 0, i32 0, i32 0, i32 0
  store <4 x i16> zeroinitializer, <4 x i16> addrspace(1)* %154, align 8, !tbaa !25
  %155 = uitofp i16 %147 to double
  %156 = tail call double @llvm.minnum.f64(double %155, double 2.550000e+02) #4
  %157 = fptoui double %156 to i16
  %158 = uitofp i16 %149 to double
  %159 = tail call double @llvm.minnum.f64(double %158, double 2.550000e+02) #4
  %160 = fptoui double %159 to i16
  %161 = uitofp i16 %151 to double
  %162 = tail call double @llvm.minnum.f64(double %161, double 2.550000e+02) #4
  %163 = fptoui double %162 to i16
  %164 = uitofp i16 %153 to double
  %165 = tail call double @llvm.minnum.f64(double %164, double 2.550000e+02) #4
  %166 = fptoui double %165 to i16
  %167 = trunc i16 %157 to i8
  %168 = trunc i16 %160 to i8
  %169 = trunc i16 %163 to i8
  %170 = trunc i16 %166 to i8
  %171 = insertelement <4 x i8> undef, i8 %167, i64 0
  %172 = insertelement <4 x i8> %171, i8 %168, i64 1
  %173 = insertelement <4 x i8> %172, i8 %169, i64 2
  %174 = insertelement <4 x i8> %173, i8 %170, i64 3
  %175 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %144
  %176 = bitcast i32 addrspace(1)* %175 to <4 x i8> addrspace(1)*
  store <4 x i8> %174, <4 x i8> addrspace(1)* %176, align 4, !tbaa !25
  %177 = add i32 %96, %143
  %178 = icmp ult i32 %177, %88
  br i1 %178, label %142, label %141, !llvm.loop !28
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_(%struct.HIP_vector_type addrspace(1)* nocapture readonly %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 addrspace(1)* nocapture %6, i32 addrspace(1)* nocapture %7, i32 addrspace(1)* nocapture %8) local_unnamed_addr #0 {
  %10 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %11 = add i32 %10, %2
  %12 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %13 = getelementptr i8, i8 addrspace(4)* %12, i64 4
  %14 = bitcast i8 addrspace(4)* %13 to i16 addrspace(4)*
  %15 = load i16, i16 addrspace(4)* %14, align 4, !range !13, !invariant.load !14
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds i8, i8 addrspace(4)* %12, i64 12
  %18 = bitcast i8 addrspace(4)* %17 to i32 addrspace(4)*
  %19 = load i32, i32 addrspace(4)* %18, align 4, !tbaa !4
  %20 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !15
  br label %21

21:                                               ; preds = %21, %9
  %22 = phi i32 [ %20, %9 ], [ %24, %21 ]
  %23 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]] addrspace(3)* @_ZZ17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_E9sub_histo, i32 0, i32 0, i32 %22
  store i32 0, i32 addrspace(3)* %23, align 4, !tbaa !16
  %24 = add nuw nsw i32 %22, %16
  %25 = icmp ult i32 %24, 2048
  br i1 %25, label %21, label %26, !llvm.loop !29

26:                                               ; preds = %21
  %27 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %28 = mul i32 %27, %16
  %29 = add i32 %28, %20
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %30 = icmp eq i32 %10, 0
  %31 = shl i32 %11, 13
  %32 = icmp ult i32 %29, %1
  br i1 %30, label %41, label %33

33:                                               ; preds = %26
  br i1 %32, label %34, label %217

34:                                               ; preds = %33
  %35 = udiv i32 %19, %16
  %36 = mul i32 %35, %16
  %37 = icmp ugt i32 %19, %36
  %38 = zext i1 %37 to i32
  %39 = add i32 %35, %38
  %40 = mul i32 %39, %16
  br label %146

41:                                               ; preds = %26
  br i1 %32, label %42, label %217

42:                                               ; preds = %41
  %43 = udiv i32 %19, %16
  %44 = mul i32 %43, %16
  %45 = icmp ugt i32 %19, %44
  %46 = zext i1 %45 to i32
  %47 = add i32 %43, %46
  %48 = mul i32 %47, %16
  br label %49

49:                                               ; preds = %42, %144
  %50 = phi i32 [ %29, %42 ], [ %55, %144 ]
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %51
  %53 = bitcast %struct.HIP_vector_type addrspace(1)* %52 to i32 addrspace(1)*
  %54 = load i32, i32 addrspace(1)* %53, align 4
  %55 = add i32 %48, %50
  %56 = lshr i32 %54, 8
  %57 = lshr i32 %54, 16
  %58 = lshr i32 %54, 24
  %59 = and i32 %54, 255
  %60 = and i32 %56, 255
  %61 = and i32 %57, 255
  %62 = icmp eq i32 %59, %11
  br i1 %62, label %63, label %118

63:                                               ; preds = %49
  %64 = shl nuw i32 1, %58
  %65 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]] addrspace(3)* @_ZZ17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_E9sub_histo, i32 0, i32 %60, i32 %61
  %66 = atomicrmw add i32 addrspace(3)* %65, i32 %64 syncscope("agent-one-as") monotonic, align 4
  %67 = lshr i32 %66, %58
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %118

70:                                               ; preds = %63
  %71 = lshr i32 %54, 27
  %72 = or i32 %71, %31
  %73 = shl nuw nsw i32 %61, 2
  %74 = add nuw nsw i32 %72, %73
  %75 = shl nuw nsw i32 %60, 10
  %76 = add nuw nsw i32 %74, %75
  %77 = icmp ult i32 %54, 402653184
  %78 = icmp ult i32 %54, 268435456
  %79 = icmp ult i32 %54, 134217728
  %80 = add nuw nsw i32 %58, 8
  %81 = lshr i32 %66, %80
  %82 = and i32 %81, 255
  %83 = add nuw nsw i32 %58, 16
  %84 = lshr i32 %66, %83
  %85 = and i32 %84, 255
  %86 = add nuw nsw i32 %58, 24
  %87 = lshr i32 %66, %86
  %88 = icmp eq i32 %82, 255
  %89 = select i1 %78, i1 %88, i1 false
  %90 = icmp eq i32 %85, 255
  %91 = select i1 %79, i1 %90, i1 false
  %92 = select i1 %90, i32 255, i32 -1
  %93 = select i1 %89, i32 %92, i32 undef
  %94 = icmp eq i32 %87, 255
  %95 = select i1 %94, i32 255, i32 -1
  %96 = select i1 %91, i32 %95, i32 undef
  %97 = zext i32 %76 to i64
  %98 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %97
  %99 = atomicrmw add i32 addrspace(1)* %98, i32 256 syncscope("agent-one-as") monotonic, align 4
  br i1 %77, label %100, label %106

100:                                              ; preds = %70
  %101 = select i1 %88, i32 255, i32 -1
  %102 = add nuw nsw i32 %76, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %103
  %105 = atomicrmw add i32 addrspace(1)* %104, i32 %101 syncscope("agent-one-as") monotonic, align 4
  br label %106

106:                                              ; preds = %100, %70
  br i1 %89, label %107, label %112

107:                                              ; preds = %106
  %108 = add nuw nsw i32 %76, 2
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %109
  %111 = atomicrmw add i32 addrspace(1)* %110, i32 %93 syncscope("agent-one-as") monotonic, align 4
  br label %112

112:                                              ; preds = %107, %106
  br i1 %91, label %113, label %118

113:                                              ; preds = %112
  %114 = add nuw nsw i32 %76, 3
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %115
  %117 = atomicrmw add i32 addrspace(1)* %116, i32 %96 syncscope("agent-one-as") monotonic, align 4
  br label %118

118:                                              ; preds = %49, %63, %112, %113
  %119 = icmp ult i32 %59, %2
  %120 = icmp ugt i32 %59, %3
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %118
  %123 = shl nuw nsw i32 %59, 13
  %124 = lshr i32 %54, 27
  %125 = or i32 %123, %124
  %126 = lshr i32 %54, 14
  %127 = and i32 %126, 1020
  %128 = add nuw nsw i32 %125, %127
  %129 = shl i32 %54, 2
  %130 = and i32 %129, 261120
  %131 = add nuw nsw i32 %128, %130
  %132 = lshr i32 %131, 1
  %133 = shl nuw nsw i32 %131, 4
  %134 = and i32 %133, 16
  %135 = zext i32 %132 to i64
  %136 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %135
  %137 = load i32, i32 addrspace(1)* %136, align 4, !tbaa !16
  %138 = lshr i32 %137, %134
  %139 = and i32 %138, 65535
  %140 = icmp ult i32 %139, 255
  br i1 %140, label %141, label %144

141:                                              ; preds = %122
  %142 = shl nuw nsw i32 1, %134
  %143 = atomicrmw add i32 addrspace(1)* %136, i32 %142 syncscope("agent-one-as") monotonic, align 4
  br label %144

144:                                              ; preds = %118, %122, %141
  %145 = icmp ult i32 %55, %1
  br i1 %145, label %49, label %217, !llvm.loop !30

146:                                              ; preds = %34, %215
  %147 = phi i32 [ %29, %34 ], [ %152, %215 ]
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %148
  %150 = bitcast %struct.HIP_vector_type addrspace(1)* %149 to i32 addrspace(1)*
  %151 = load i32, i32 addrspace(1)* %150, align 4
  %152 = add i32 %40, %147
  %153 = lshr i32 %151, 8
  %154 = lshr i32 %151, 16
  %155 = lshr i32 %151, 24
  %156 = and i32 %151, 255
  %157 = and i32 %153, 255
  %158 = and i32 %154, 255
  %159 = icmp eq i32 %156, %11
  br i1 %159, label %160, label %215

160:                                              ; preds = %146
  %161 = shl nuw i32 1, %155
  %162 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]] addrspace(3)* @_ZZ17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_E9sub_histo, i32 0, i32 %157, i32 %158
  %163 = atomicrmw add i32 addrspace(3)* %162, i32 %161 syncscope("agent-one-as") monotonic, align 4
  %164 = lshr i32 %163, %155
  %165 = and i32 %164, 255
  %166 = icmp eq i32 %165, 255
  br i1 %166, label %167, label %215

167:                                              ; preds = %160
  %168 = lshr i32 %151, 27
  %169 = or i32 %168, %31
  %170 = shl nuw nsw i32 %158, 2
  %171 = add nuw nsw i32 %169, %170
  %172 = shl nuw nsw i32 %157, 10
  %173 = add nuw nsw i32 %171, %172
  %174 = icmp ult i32 %151, 402653184
  %175 = icmp ult i32 %151, 268435456
  %176 = icmp ult i32 %151, 134217728
  %177 = add nuw nsw i32 %155, 8
  %178 = lshr i32 %163, %177
  %179 = and i32 %178, 255
  %180 = add nuw nsw i32 %155, 16
  %181 = lshr i32 %163, %180
  %182 = and i32 %181, 255
  %183 = add nuw nsw i32 %155, 24
  %184 = lshr i32 %163, %183
  %185 = icmp eq i32 %179, 255
  %186 = select i1 %175, i1 %185, i1 false
  %187 = icmp eq i32 %182, 255
  %188 = select i1 %176, i1 %187, i1 false
  %189 = select i1 %187, i32 255, i32 -1
  %190 = select i1 %186, i32 %189, i32 undef
  %191 = icmp eq i32 %184, 255
  %192 = select i1 %191, i32 255, i32 -1
  %193 = select i1 %188, i32 %192, i32 undef
  %194 = zext i32 %173 to i64
  %195 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %194
  %196 = atomicrmw add i32 addrspace(1)* %195, i32 256 syncscope("agent-one-as") monotonic, align 4
  br i1 %174, label %197, label %203

197:                                              ; preds = %167
  %198 = select i1 %185, i32 255, i32 -1
  %199 = add nuw nsw i32 %173, 1
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %200
  %202 = atomicrmw add i32 addrspace(1)* %201, i32 %198 syncscope("agent-one-as") monotonic, align 4
  br label %203

203:                                              ; preds = %197, %167
  br i1 %186, label %204, label %209

204:                                              ; preds = %203
  %205 = add nuw nsw i32 %173, 2
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %206
  %208 = atomicrmw add i32 addrspace(1)* %207, i32 %190 syncscope("agent-one-as") monotonic, align 4
  br label %209

209:                                              ; preds = %204, %203
  br i1 %188, label %210, label %215

210:                                              ; preds = %209
  %211 = add nuw nsw i32 %173, 3
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %212
  %214 = atomicrmw add i32 addrspace(1)* %213, i32 %193 syncscope("agent-one-as") monotonic, align 4
  br label %215

215:                                              ; preds = %146, %160, %209, %210
  %216 = icmp ult i32 %152, %1
  br i1 %216, label %146, label %217, !llvm.loop !31

217:                                              ; preds = %215, %144, %33, %41
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %218 = zext i32 %31 to i64
  %219 = getelementptr inbounds i32, i32 addrspace(1)* %6, i64 %218
  br label %220

220:                                              ; preds = %220, %217
  %221 = phi i32 [ %20, %217 ], [ %240, %220 ]
  %222 = shl nuw nsw i32 %221, 2
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32 addrspace(1)* %219, i64 %223
  %225 = getelementptr inbounds [8 x [256 x i32]], [8 x [256 x i32]] addrspace(3)* @_ZZ17histo_main_kernelP15HIP_vector_typeIhLj4EEjjjjjPjS2_S2_E9sub_histo, i32 0, i32 0, i32 %221
  %226 = load i32, i32 addrspace(3)* %225, align 4, !tbaa !16
  %227 = and i32 %226, 255
  %228 = atomicrmw add i32 addrspace(1)* %224, i32 %227 syncscope("agent-one-as") monotonic, align 4
  %229 = getelementptr inbounds i32, i32 addrspace(1)* %224, i64 1
  %230 = lshr i32 %226, 8
  %231 = and i32 %230, 255
  %232 = atomicrmw add i32 addrspace(1)* %229, i32 %231 syncscope("agent-one-as") monotonic, align 4
  %233 = getelementptr inbounds i32, i32 addrspace(1)* %224, i64 2
  %234 = lshr i32 %226, 16
  %235 = and i32 %234, 255
  %236 = atomicrmw add i32 addrspace(1)* %233, i32 %235 syncscope("agent-one-as") monotonic, align 4
  %237 = getelementptr inbounds i32, i32 addrspace(1)* %224, i64 3
  %238 = lshr i32 %226, 24
  %239 = atomicrmw add i32 addrspace(1)* %237, i32 %238 syncscope("agent-one-as") monotonic, align 4
  %240 = add nuw nsw i32 %221, %16
  %241 = icmp ult i32 %240, 2048
  br i1 %241, label %220, label %242, !llvm.loop !32

242:                                              ; preds = %220
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.minnum.f64(double, double) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{!5, !9, i64 12}
!5 = !{!"hsa_kernel_dispatch_packet_s", !6, i64 0, !6, i64 2, !6, i64 4, !6, i64 6, !6, i64 8, !6, i64 10, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !10, i64 32, !11, i64 40, !10, i64 48, !12, i64 56}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"hsa_signal_s", !10, i64 0}
!13 = !{i16 1, i16 1025}
!14 = !{}
!15 = !{i32 0, i32 1024}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C++ TBAA"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !18, i64 0}
!24 = distinct !{!24, !21}
!25 = !{!18, !18, i64 0}
!26 = distinct !{!26, !21}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !21}
!32 = distinct !{!32, !21}
