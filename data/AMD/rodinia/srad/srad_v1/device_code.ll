; ModuleID = 'main.cu'
source_filename = "main.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ6reduceliiPfS_E6d_psum = internal unnamed_addr addrspace(3) global [512 x float] undef, align 16
@_ZZ6reduceliiPfS_E7d_psum2 = internal unnamed_addr addrspace(3) global [512 x float] undef, align 16

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z7extractlPf(i64 %0, float addrspace(1)* nocapture %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %5 = shl nsw i32 %3, 9
  %6 = add nsw i32 %5, %4
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %7, %0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds float, float addrspace(1)* %1, i64 %7
  %11 = load float, float addrspace(1)* %10, align 4, !tbaa !6, !amdgpu.noclobber !10
  %12 = fdiv contract float %11, 2.550000e+02
  %13 = fmul float %12, 0x3FF7154760000000
  %14 = tail call float @llvm.rint.f32(float %13)
  %15 = fcmp ogt float %12, 0x40562E4300000000
  %16 = fcmp olt float %12, 0xC059D1DA00000000
  %17 = fneg float %13
  %18 = tail call float @llvm.fma.f32(float %12, float 0x3FF7154760000000, float %17)
  %19 = tail call float @llvm.fma.f32(float %12, float 0x3E54AE0BE0000000, float %18)
  %20 = fsub float %13, %14
  %21 = fadd float %19, %20
  %22 = tail call float @llvm.exp2.f32(float %21)
  %23 = fptosi float %14 to i32
  %24 = tail call float @llvm.amdgcn.ldexp.f32(float %22, i32 %23)
  %25 = select i1 %16, float 0.000000e+00, float %24
  %26 = select i1 %15, float 0x7FF0000000000000, float %25
  store float %26, float addrspace(1)* %10, align 4, !tbaa !6
  br label %27

27:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z7preparelPfS_S_(i64 %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture writeonly %2, float addrspace(1)* nocapture writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %6 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %7 = shl nsw i32 %5, 9
  %8 = add nsw i32 %7, %6
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %9, %0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds float, float addrspace(1)* %1, i64 %9
  %13 = load float, float addrspace(1)* %12, align 4, !tbaa !6, !amdgpu.noclobber !10
  %14 = getelementptr inbounds float, float addrspace(1)* %2, i64 %9
  store float %13, float addrspace(1)* %14, align 4, !tbaa !6
  %15 = load float, float addrspace(1)* %12, align 4, !tbaa !6
  %16 = fmul contract float %15, %15
  %17 = getelementptr inbounds float, float addrspace(1)* %3, i64 %9
  store float %16, float addrspace(1)* %17, align 4, !tbaa !6
  br label %18

18:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z6reduceliiPfS_(i64 %0, i32 %1, i32 %2, float addrspace(1)* nocapture %3, float addrspace(1)* nocapture %4) local_unnamed_addr #1 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %8 = shl nsw i32 %6, 9
  %9 = add nsw i32 %8, %7
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %12 = bitcast i8 addrspace(4)* %11 to i32 addrspace(4)*
  %13 = load i32, i32 addrspace(4)* %12, align 4, !tbaa !11
  %14 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %15 = bitcast i8 addrspace(4)* %14 to i16 addrspace(4)*
  %16 = load i16, i16 addrspace(4)* %15, align 4, !range !20, !invariant.load !10
  %17 = zext i16 %16 to i32
  %18 = udiv i32 %13, %17
  %19 = mul i32 %18, %17
  %20 = icmp ugt i32 %13, %19
  %21 = zext i1 %20 to i32
  %22 = add i32 %18, %21
  %23 = zext i32 %22 to i64
  %24 = mul i32 %22, -512
  %25 = add i32 %24, %1
  %26 = add i32 %25, 512
  %27 = icmp slt i32 %9, %1
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = mul nsw i32 %9, %2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float addrspace(1)* %3, i64 %30
  %32 = load float, float addrspace(1)* %31, align 4, !tbaa !6, !amdgpu.noclobber !10
  %33 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %7
  store float %32, float addrspace(3)* %33, align 4, !tbaa !6
  %34 = getelementptr inbounds float, float addrspace(1)* %4, i64 %30
  %35 = load float, float addrspace(1)* %34, align 4, !tbaa !6, !amdgpu.noclobber !10
  %36 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %7
  store float %35, float addrspace(3)* %36, align 4, !tbaa !6
  br label %37

37:                                               ; preds = %28, %5
  %38 = icmp eq i32 %25, 0
  br i1 %38, label %39, label %168

39:                                               ; preds = %37
  %40 = add nuw nsw i32 %7, 1
  %41 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %7
  %42 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %7
  %43 = and i32 %40, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %47 = add nsw i32 %7, -1
  %48 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %47
  %49 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %50 = fadd contract float %46, %49
  store float %50, float addrspace(3)* %41, align 4, !tbaa !6
  %51 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %52 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %47
  %53 = load float, float addrspace(3)* %52, align 4, !tbaa !6
  %54 = fadd contract float %51, %53
  store float %54, float addrspace(3)* %42, align 4, !tbaa !6
  br label %55

55:                                               ; preds = %45, %39
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %56 = and i32 %40, 3
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %60 = add nsw i32 %7, -2
  %61 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %60
  %62 = load float, float addrspace(3)* %61, align 4, !tbaa !6
  %63 = fadd contract float %59, %62
  store float %63, float addrspace(3)* %41, align 4, !tbaa !6
  %64 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %65 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %60
  %66 = load float, float addrspace(3)* %65, align 4, !tbaa !6
  %67 = fadd contract float %64, %66
  store float %67, float addrspace(3)* %42, align 4, !tbaa !6
  br label %68

68:                                               ; preds = %58, %55
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %69 = and i32 %40, 7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %73 = add nsw i32 %7, -4
  %74 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %73
  %75 = load float, float addrspace(3)* %74, align 4, !tbaa !6
  %76 = fadd contract float %72, %75
  store float %76, float addrspace(3)* %41, align 4, !tbaa !6
  %77 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %78 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %73
  %79 = load float, float addrspace(3)* %78, align 4, !tbaa !6
  %80 = fadd contract float %77, %79
  store float %80, float addrspace(3)* %42, align 4, !tbaa !6
  br label %81

81:                                               ; preds = %71, %68
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %82 = and i32 %40, 15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %86 = add nsw i32 %7, -8
  %87 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %86
  %88 = load float, float addrspace(3)* %87, align 4, !tbaa !6
  %89 = fadd contract float %85, %88
  store float %89, float addrspace(3)* %41, align 4, !tbaa !6
  %90 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %91 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %86
  %92 = load float, float addrspace(3)* %91, align 4, !tbaa !6
  %93 = fadd contract float %90, %92
  store float %93, float addrspace(3)* %42, align 4, !tbaa !6
  br label %94

94:                                               ; preds = %84, %81
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %95 = and i32 %40, 31
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %99 = add nsw i32 %7, -16
  %100 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %99
  %101 = load float, float addrspace(3)* %100, align 4, !tbaa !6
  %102 = fadd contract float %98, %101
  store float %102, float addrspace(3)* %41, align 4, !tbaa !6
  %103 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %104 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %99
  %105 = load float, float addrspace(3)* %104, align 4, !tbaa !6
  %106 = fadd contract float %103, %105
  store float %106, float addrspace(3)* %42, align 4, !tbaa !6
  br label %107

107:                                              ; preds = %97, %94
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %108 = and i32 %40, 63
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %112 = add nsw i32 %7, -32
  %113 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %112
  %114 = load float, float addrspace(3)* %113, align 4, !tbaa !6
  %115 = fadd contract float %111, %114
  store float %115, float addrspace(3)* %41, align 4, !tbaa !6
  %116 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %117 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %112
  %118 = load float, float addrspace(3)* %117, align 4, !tbaa !6
  %119 = fadd contract float %116, %118
  store float %119, float addrspace(3)* %42, align 4, !tbaa !6
  br label %120

120:                                              ; preds = %110, %107
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %121 = and i32 %40, 127
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %125 = add nsw i32 %7, -64
  %126 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %125
  %127 = load float, float addrspace(3)* %126, align 4, !tbaa !6
  %128 = fadd contract float %124, %127
  store float %128, float addrspace(3)* %41, align 4, !tbaa !6
  %129 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %130 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %125
  %131 = load float, float addrspace(3)* %130, align 4, !tbaa !6
  %132 = fadd contract float %129, %131
  store float %132, float addrspace(3)* %42, align 4, !tbaa !6
  br label %133

133:                                              ; preds = %123, %120
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %134 = and i32 %40, 255
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %138 = add nsw i32 %7, -128
  %139 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %138
  %140 = load float, float addrspace(3)* %139, align 4, !tbaa !6
  %141 = fadd contract float %137, %140
  store float %141, float addrspace(3)* %41, align 4, !tbaa !6
  %142 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %143 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %138
  %144 = load float, float addrspace(3)* %143, align 4, !tbaa !6
  %145 = fadd contract float %142, %144
  store float %145, float addrspace(3)* %42, align 4, !tbaa !6
  br label %146

146:                                              ; preds = %136, %133
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %147 = and i32 %40, 511
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load float, float addrspace(3)* %41, align 4, !tbaa !6
  %151 = add nsw i32 %7, -256
  %152 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4, !tbaa !6
  %154 = fadd contract float %150, %153
  store float %154, float addrspace(3)* %41, align 4, !tbaa !6
  %155 = load float, float addrspace(3)* %42, align 4, !tbaa !6
  %156 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %151
  %157 = load float, float addrspace(3)* %156, align 4, !tbaa !6
  %158 = fadd contract float %155, %157
  store float %158, float addrspace(3)* %42, align 4, !tbaa !6
  br label %159

159:                                              ; preds = %149, %146
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %160 = icmp eq i32 %7, 511
  br i1 %160, label %161, label %388

161:                                              ; preds = %159
  %162 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 511), align 4, !tbaa !6
  %163 = mul nsw i32 %6, %2
  %164 = shl nsw i32 %163, 9
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float addrspace(1)* %3, i64 %165
  store float %162, float addrspace(1)* %166, align 4, !tbaa !6
  %167 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 511), align 4, !tbaa !6
  br label %384

168:                                              ; preds = %37
  %169 = sext i32 %6 to i64
  %170 = add nsw i64 %23, -1
  %171 = icmp eq i64 %170, %169
  br i1 %171, label %172, label %192

172:                                              ; preds = %168
  %173 = icmp slt i32 %26, 2
  %174 = select i1 %173, i32 0, i32 2
  %175 = icmp slt i32 %26, 4
  %176 = select i1 %175, i32 %174, i32 4
  %177 = icmp slt i32 %26, 8
  %178 = select i1 %177, i32 %176, i32 8
  %179 = icmp slt i32 %26, 16
  %180 = select i1 %179, i32 %178, i32 16
  %181 = icmp slt i32 %26, 32
  %182 = select i1 %181, i32 %180, i32 32
  %183 = icmp slt i32 %26, 64
  %184 = select i1 %183, i32 %182, i32 64
  %185 = icmp slt i32 %26, 128
  %186 = select i1 %185, i32 %184, i32 128
  %187 = icmp slt i32 %26, 256
  %188 = select i1 %187, i32 %186, i32 256
  %189 = icmp ugt i32 %25, 2147483135
  %190 = select i1 %189, i32 %188, i32 512
  %191 = icmp ult i32 %190, 2
  br i1 %191, label %346, label %321

192:                                              ; preds = %168
  %193 = add nuw nsw i32 %7, 1
  %194 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %7
  %195 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %7
  %196 = and i32 %193, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %200 = add nsw i32 %7, -1
  %201 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %200
  %202 = load float, float addrspace(3)* %201, align 4, !tbaa !6
  %203 = fadd contract float %199, %202
  store float %203, float addrspace(3)* %194, align 4, !tbaa !6
  %204 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %205 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %200
  %206 = load float, float addrspace(3)* %205, align 4, !tbaa !6
  %207 = fadd contract float %204, %206
  store float %207, float addrspace(3)* %195, align 4, !tbaa !6
  br label %208

208:                                              ; preds = %198, %192
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %209 = and i32 %193, 3
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %213 = add nsw i32 %7, -2
  %214 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %213
  %215 = load float, float addrspace(3)* %214, align 4, !tbaa !6
  %216 = fadd contract float %212, %215
  store float %216, float addrspace(3)* %194, align 4, !tbaa !6
  %217 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %218 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %213
  %219 = load float, float addrspace(3)* %218, align 4, !tbaa !6
  %220 = fadd contract float %217, %219
  store float %220, float addrspace(3)* %195, align 4, !tbaa !6
  br label %221

221:                                              ; preds = %211, %208
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %222 = and i32 %193, 7
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %226 = add nsw i32 %7, -4
  %227 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %226
  %228 = load float, float addrspace(3)* %227, align 4, !tbaa !6
  %229 = fadd contract float %225, %228
  store float %229, float addrspace(3)* %194, align 4, !tbaa !6
  %230 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %231 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %226
  %232 = load float, float addrspace(3)* %231, align 4, !tbaa !6
  %233 = fadd contract float %230, %232
  store float %233, float addrspace(3)* %195, align 4, !tbaa !6
  br label %234

234:                                              ; preds = %224, %221
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %235 = and i32 %193, 15
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %247

237:                                              ; preds = %234
  %238 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %239 = add nsw i32 %7, -8
  %240 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4, !tbaa !6
  %242 = fadd contract float %238, %241
  store float %242, float addrspace(3)* %194, align 4, !tbaa !6
  %243 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %244 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %239
  %245 = load float, float addrspace(3)* %244, align 4, !tbaa !6
  %246 = fadd contract float %243, %245
  store float %246, float addrspace(3)* %195, align 4, !tbaa !6
  br label %247

247:                                              ; preds = %237, %234
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %248 = and i32 %193, 31
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %247
  %251 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %252 = add nsw i32 %7, -16
  %253 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %252
  %254 = load float, float addrspace(3)* %253, align 4, !tbaa !6
  %255 = fadd contract float %251, %254
  store float %255, float addrspace(3)* %194, align 4, !tbaa !6
  %256 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %257 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %252
  %258 = load float, float addrspace(3)* %257, align 4, !tbaa !6
  %259 = fadd contract float %256, %258
  store float %259, float addrspace(3)* %195, align 4, !tbaa !6
  br label %260

260:                                              ; preds = %250, %247
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %261 = and i32 %193, 63
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %265 = add nsw i32 %7, -32
  %266 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %265
  %267 = load float, float addrspace(3)* %266, align 4, !tbaa !6
  %268 = fadd contract float %264, %267
  store float %268, float addrspace(3)* %194, align 4, !tbaa !6
  %269 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %270 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %265
  %271 = load float, float addrspace(3)* %270, align 4, !tbaa !6
  %272 = fadd contract float %269, %271
  store float %272, float addrspace(3)* %195, align 4, !tbaa !6
  br label %273

273:                                              ; preds = %263, %260
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %274 = and i32 %193, 127
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %273
  %277 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %278 = add nsw i32 %7, -64
  %279 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %278
  %280 = load float, float addrspace(3)* %279, align 4, !tbaa !6
  %281 = fadd contract float %277, %280
  store float %281, float addrspace(3)* %194, align 4, !tbaa !6
  %282 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %283 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %278
  %284 = load float, float addrspace(3)* %283, align 4, !tbaa !6
  %285 = fadd contract float %282, %284
  store float %285, float addrspace(3)* %195, align 4, !tbaa !6
  br label %286

286:                                              ; preds = %276, %273
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %287 = and i32 %193, 255
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %291 = add nsw i32 %7, -128
  %292 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %291
  %293 = load float, float addrspace(3)* %292, align 4, !tbaa !6
  %294 = fadd contract float %290, %293
  store float %294, float addrspace(3)* %194, align 4, !tbaa !6
  %295 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %296 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %291
  %297 = load float, float addrspace(3)* %296, align 4, !tbaa !6
  %298 = fadd contract float %295, %297
  store float %298, float addrspace(3)* %195, align 4, !tbaa !6
  br label %299

299:                                              ; preds = %289, %286
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %300 = and i32 %193, 511
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %312

302:                                              ; preds = %299
  %303 = load float, float addrspace(3)* %194, align 4, !tbaa !6
  %304 = add nsw i32 %7, -256
  %305 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %304
  %306 = load float, float addrspace(3)* %305, align 4, !tbaa !6
  %307 = fadd contract float %303, %306
  store float %307, float addrspace(3)* %194, align 4, !tbaa !6
  %308 = load float, float addrspace(3)* %195, align 4, !tbaa !6
  %309 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %304
  %310 = load float, float addrspace(3)* %309, align 4, !tbaa !6
  %311 = fadd contract float %308, %310
  store float %311, float addrspace(3)* %195, align 4, !tbaa !6
  br label %312

312:                                              ; preds = %302, %299
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %313 = icmp eq i32 %7, 511
  br i1 %313, label %314, label %388

314:                                              ; preds = %312
  %315 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 511), align 4, !tbaa !6
  %316 = mul nsw i32 %6, %2
  %317 = shl nsw i32 %316, 9
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float addrspace(1)* %3, i64 %318
  store float %315, float addrspace(1)* %319, align 4, !tbaa !6
  %320 = load float, float addrspace(3)* getelementptr inbounds ([512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 511), align 4, !tbaa !6
  br label %384

321:                                              ; preds = %172
  %322 = add nuw nsw i32 %7, 1
  %323 = icmp ugt i32 %190, %7
  %324 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %7
  %325 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %7
  br label %326

326:                                              ; preds = %321, %343
  %327 = phi i32 [ 2, %321 ], [ %344, %343 ]
  %328 = add i32 %327, 2047
  %329 = and i32 %328, %322
  %330 = icmp eq i32 %329, 0
  %331 = select i1 %330, i1 %323, i1 false
  br i1 %331, label %332, label %343

332:                                              ; preds = %326
  %333 = load float, float addrspace(3)* %324, align 4, !tbaa !6
  %334 = sdiv i32 %327, -2
  %335 = add nsw i32 %334, %7
  %336 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %335
  %337 = load float, float addrspace(3)* %336, align 4, !tbaa !6
  %338 = fadd contract float %333, %337
  store float %338, float addrspace(3)* %324, align 4, !tbaa !6
  %339 = load float, float addrspace(3)* %325, align 4, !tbaa !6
  %340 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %335
  %341 = load float, float addrspace(3)* %340, align 4, !tbaa !6
  %342 = fadd contract float %339, %341
  store float %342, float addrspace(3)* %325, align 4, !tbaa !6
  br label %343

343:                                              ; preds = %332, %326
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %344 = shl nsw i32 %327, 1
  %345 = icmp sgt i32 %344, %190
  br i1 %345, label %346, label %326, !llvm.loop !21

346:                                              ; preds = %343, %172
  %347 = add nsw i32 %190, -1
  %348 = icmp eq i32 %347, %7
  br i1 %348, label %349, label %388

349:                                              ; preds = %346
  %350 = add nsw i32 %26, %8
  %351 = icmp slt i32 %190, %26
  br i1 %351, label %357, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %7
  %354 = load float, float addrspace(3)* %353, align 4, !tbaa !6
  %355 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %7
  %356 = load float, float addrspace(3)* %355, align 4, !tbaa !6
  br label %377

357:                                              ; preds = %349
  %358 = add nsw i32 %190, %8
  %359 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E6d_psum, i32 0, i32 %7
  %360 = getelementptr inbounds [512 x float], [512 x float] addrspace(3)* @_ZZ6reduceliiPfS_E7d_psum2, i32 0, i32 %7
  %361 = load float, float addrspace(3)* %359, align 4, !tbaa !6
  %362 = load float, float addrspace(3)* %360, align 4, !tbaa !6
  br label %363

363:                                              ; preds = %357, %363
  %364 = phi float [ %362, %357 ], [ %373, %363 ]
  %365 = phi float [ %361, %357 ], [ %370, %363 ]
  %366 = phi i32 [ %358, %357 ], [ %374, %363 ]
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float addrspace(1)* %3, i64 %367
  %369 = load float, float addrspace(1)* %368, align 4, !tbaa !6
  %370 = fadd contract float %365, %369
  %371 = getelementptr inbounds float, float addrspace(1)* %4, i64 %367
  %372 = load float, float addrspace(1)* %371, align 4, !tbaa !6
  %373 = fadd contract float %364, %372
  %374 = add nsw i32 %366, 1
  %375 = icmp slt i32 %374, %350
  br i1 %375, label %363, label %376, !llvm.loop !23

376:                                              ; preds = %363
  store float %370, float addrspace(3)* %359, align 4, !tbaa !6
  store float %373, float addrspace(3)* %360, align 4, !tbaa !6
  br label %377

377:                                              ; preds = %352, %376
  %378 = phi float [ %356, %352 ], [ %373, %376 ]
  %379 = phi float [ %354, %352 ], [ %370, %376 ]
  %380 = mul nsw i32 %6, %2
  %381 = shl nsw i32 %380, 9
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds float, float addrspace(1)* %3, i64 %382
  store float %379, float addrspace(1)* %383, align 4, !tbaa !6
  br label %384

384:                                              ; preds = %161, %377, %314
  %385 = phi i64 [ %318, %314 ], [ %382, %377 ], [ %165, %161 ]
  %386 = phi float [ %320, %314 ], [ %378, %377 ], [ %167, %161 ]
  %387 = getelementptr inbounds float, float addrspace(1)* %4, i64 %385
  store float %386, float addrspace(1)* %387, align 4, !tbaa !6
  br label %388

388:                                              ; preds = %384, %312, %346, %159
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z4sradfiilPiS_S_S_PfS0_S0_S0_fS0_S0_(float %0, i32 %1, i32 %2, i64 %3, i32 addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture readonly %5, i32 addrspace(1)* nocapture readonly %6, i32 addrspace(1)* nocapture readonly %7, float addrspace(1)* nocapture writeonly %8, float addrspace(1)* nocapture writeonly %9, float addrspace(1)* nocapture writeonly %10, float addrspace(1)* nocapture writeonly %11, float %12, float addrspace(1)* nocapture writeonly %13, float addrspace(1)* nocapture readonly %14) local_unnamed_addr #0 {
  %16 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %17 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %18 = shl nsw i32 %16, 9
  %19 = add nsw i32 %18, %17
  %20 = add nsw i32 %19, 1
  %21 = freeze i32 %20
  %22 = freeze i32 %1
  %23 = sdiv i32 %21, %22
  %24 = mul i32 %23, %22
  %25 = sub i32 %21, %24
  %26 = icmp eq i32 %25, 0
  %27 = sext i1 %26 to i32
  %28 = add nsw i32 %23, %27
  %29 = select i1 %26, i32 %1, i32 %25
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %19 to i64
  %32 = icmp slt i64 %31, %3
  br i1 %32, label %33, label %114

33:                                               ; preds = %15
  %34 = getelementptr inbounds float, float addrspace(1)* %14, i64 %31
  %35 = load float, float addrspace(1)* %34, align 4, !tbaa !6, !amdgpu.noclobber !10
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %36
  %38 = load i32, i32 addrspace(1)* %37, align 4, !tbaa !24, !amdgpu.noclobber !10
  %39 = mul nsw i32 %28, %1
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float addrspace(1)* %14, i64 %41
  %43 = load float, float addrspace(1)* %42, align 4, !tbaa !6, !amdgpu.noclobber !10
  %44 = fsub contract float %43, %35
  %45 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %36
  %46 = load i32, i32 addrspace(1)* %45, align 4, !tbaa !24, !amdgpu.noclobber !10
  %47 = add nsw i32 %46, %39
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float addrspace(1)* %14, i64 %48
  %50 = load float, float addrspace(1)* %49, align 4, !tbaa !6, !amdgpu.noclobber !10
  %51 = fsub contract float %50, %35
  %52 = sext i32 %28 to i64
  %53 = getelementptr inbounds i32, i32 addrspace(1)* %7, i64 %52
  %54 = load i32, i32 addrspace(1)* %53, align 4, !tbaa !24, !amdgpu.noclobber !10
  %55 = mul nsw i32 %54, %1
  %56 = add nsw i32 %55, %30
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float addrspace(1)* %14, i64 %57
  %59 = load float, float addrspace(1)* %58, align 4, !tbaa !6, !amdgpu.noclobber !10
  %60 = fsub contract float %59, %35
  %61 = getelementptr inbounds i32, i32 addrspace(1)* %6, i64 %52
  %62 = load i32, i32 addrspace(1)* %61, align 4, !tbaa !24, !amdgpu.noclobber !10
  %63 = mul nsw i32 %62, %1
  %64 = add nsw i32 %63, %30
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float addrspace(1)* %14, i64 %65
  %67 = load float, float addrspace(1)* %66, align 4, !tbaa !6, !amdgpu.noclobber !10
  %68 = fsub contract float %67, %35
  %69 = fmul contract float %44, %44
  %70 = fmul contract float %51, %51
  %71 = fadd contract float %69, %70
  %72 = fmul contract float %60, %60
  %73 = fadd contract float %71, %72
  %74 = fmul contract float %68, %68
  %75 = fadd contract float %73, %74
  %76 = fmul contract float %35, %35
  %77 = fdiv contract float %75, %76
  %78 = fadd contract float %44, %51
  %79 = fadd contract float %78, %60
  %80 = fadd contract float %79, %68
  %81 = fdiv contract float %80, %35
  %82 = fpext float %77 to double
  %83 = fmul contract double %82, 5.000000e-01
  %84 = fmul contract float %81, %81
  %85 = fpext float %84 to double
  %86 = fmul contract double %85, 6.250000e-02
  %87 = fsub contract double %83, %86
  %88 = fptrunc double %87 to float
  %89 = fpext float %81 to double
  %90 = fmul contract double %89, 2.500000e-01
  %91 = fadd contract double %90, 1.000000e+00
  %92 = fptrunc double %91 to float
  %93 = fmul contract float %92, %92
  %94 = fdiv contract float %88, %93
  %95 = fsub contract float %94, %12
  %96 = fadd contract float %12, 1.000000e+00
  %97 = fmul contract float %96, %12
  %98 = fdiv contract float %95, %97
  %99 = fpext float %98 to double
  %100 = fadd contract double %99, 1.000000e+00
  %101 = fdiv contract double 1.000000e+00, %100
  %102 = fptrunc double %101 to float
  %103 = fcmp contract olt float %102, 0.000000e+00
  br i1 %103, label %107, label %104

104:                                              ; preds = %33
  %105 = fcmp contract ogt float %102, 1.000000e+00
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %33, %104, %106
  %108 = phi float [ 1.000000e+00, %106 ], [ %102, %104 ], [ 0.000000e+00, %33 ]
  %109 = getelementptr inbounds float, float addrspace(1)* %8, i64 %31
  store float %44, float addrspace(1)* %109, align 4, !tbaa !6
  %110 = getelementptr inbounds float, float addrspace(1)* %9, i64 %31
  store float %51, float addrspace(1)* %110, align 4, !tbaa !6
  %111 = getelementptr inbounds float, float addrspace(1)* %11, i64 %31
  store float %60, float addrspace(1)* %111, align 4, !tbaa !6
  %112 = getelementptr inbounds float, float addrspace(1)* %10, i64 %31
  store float %68, float addrspace(1)* %112, align 4, !tbaa !6
  %113 = getelementptr inbounds float, float addrspace(1)* %13, i64 %31
  store float %108, float addrspace(1)* %113, align 4, !tbaa !6
  br label %114

114:                                              ; preds = %107, %15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z5srad2fiilPiS_S_S_PfS0_S0_S0_S0_S0_(float %0, i32 %1, i32 %2, i64 %3, i32 addrspace(1)* nocapture readnone %4, i32 addrspace(1)* nocapture readonly %5, i32 addrspace(1)* nocapture readonly %6, i32 addrspace(1)* nocapture readnone %7, float addrspace(1)* nocapture readonly %8, float addrspace(1)* nocapture readonly %9, float addrspace(1)* nocapture readonly %10, float addrspace(1)* nocapture readonly %11, float addrspace(1)* nocapture readonly %12, float addrspace(1)* nocapture %13) local_unnamed_addr #0 {
  %15 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %17 = shl nsw i32 %15, 9
  %18 = add nsw i32 %17, %16
  %19 = add nsw i32 %18, 1
  %20 = freeze i32 %19
  %21 = freeze i32 %1
  %22 = sdiv i32 %20, %21
  %23 = mul i32 %22, %21
  %24 = sub i32 %20, %23
  %25 = icmp eq i32 %24, 0
  %26 = sext i1 %25 to i32
  %27 = add nsw i32 %22, %26
  %28 = select i1 %25, i32 %1, i32 %24
  %29 = add nsw i32 %28, -1
  %30 = sext i32 %18 to i64
  %31 = icmp slt i64 %30, %3
  br i1 %31, label %32, label %75

32:                                               ; preds = %14
  %33 = getelementptr inbounds float, float addrspace(1)* %12, i64 %30
  %34 = load float, float addrspace(1)* %33, align 4, !tbaa !6, !amdgpu.noclobber !10
  %35 = sext i32 %29 to i64
  %36 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %35
  %37 = load i32, i32 addrspace(1)* %36, align 4, !tbaa !24, !amdgpu.noclobber !10
  %38 = mul nsw i32 %27, %1
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float addrspace(1)* %12, i64 %40
  %42 = load float, float addrspace(1)* %41, align 4, !tbaa !6, !amdgpu.noclobber !10
  %43 = sext i32 %27 to i64
  %44 = getelementptr inbounds i32, i32 addrspace(1)* %6, i64 %43
  %45 = load i32, i32 addrspace(1)* %44, align 4, !tbaa !24, !amdgpu.noclobber !10
  %46 = mul nsw i32 %45, %1
  %47 = add nsw i32 %46, %29
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float addrspace(1)* %12, i64 %48
  %50 = load float, float addrspace(1)* %49, align 4, !tbaa !6, !amdgpu.noclobber !10
  %51 = getelementptr inbounds float, float addrspace(1)* %8, i64 %30
  %52 = load float, float addrspace(1)* %51, align 4, !tbaa !6, !amdgpu.noclobber !10
  %53 = fmul contract float %34, %52
  %54 = getelementptr inbounds float, float addrspace(1)* %9, i64 %30
  %55 = load float, float addrspace(1)* %54, align 4, !tbaa !6, !amdgpu.noclobber !10
  %56 = fmul contract float %42, %55
  %57 = fadd contract float %53, %56
  %58 = getelementptr inbounds float, float addrspace(1)* %11, i64 %30
  %59 = load float, float addrspace(1)* %58, align 4, !tbaa !6, !amdgpu.noclobber !10
  %60 = fmul contract float %34, %59
  %61 = fadd contract float %57, %60
  %62 = getelementptr inbounds float, float addrspace(1)* %10, i64 %30
  %63 = load float, float addrspace(1)* %62, align 4, !tbaa !6, !amdgpu.noclobber !10
  %64 = fmul contract float %50, %63
  %65 = fadd contract float %61, %64
  %66 = getelementptr inbounds float, float addrspace(1)* %13, i64 %30
  %67 = load float, float addrspace(1)* %66, align 4, !tbaa !6, !amdgpu.noclobber !10
  %68 = fpext float %67 to double
  %69 = fpext float %0 to double
  %70 = fmul contract double %69, 2.500000e-01
  %71 = fpext float %65 to double
  %72 = fmul contract double %70, %71
  %73 = fadd contract double %72, %68
  %74 = fptrunc double %73 to float
  store float %74, float addrspace(1)* %66, align 4, !tbaa !6
  br label %75

75:                                               ; preds = %32, %14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z8compresslPf(i64 %0, float addrspace(1)* nocapture %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %5 = shl nsw i32 %3, 9
  %6 = add nsw i32 %5, %4
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %7, %0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = getelementptr inbounds float, float addrspace(1)* %1, i64 %7
  %11 = load float, float addrspace(1)* %10, align 4, !tbaa !6, !amdgpu.noclobber !10
  %12 = tail call i1 @llvm.amdgcn.class.f32(float %11, i32 144)
  %13 = select i1 %12, float 0x41F0000000000000, float 1.000000e+00
  %14 = fmul float %11, %13
  %15 = tail call float @llvm.log2.f32(float %14)
  %16 = fmul float %15, 0x3FE62E42E0000000
  %17 = tail call i1 @llvm.amdgcn.class.f32(float %15, i32 519)
  %18 = fneg float %16
  %19 = tail call float @llvm.fma.f32(float %15, float 0x3FE62E42E0000000, float %18)
  %20 = tail call float @llvm.fma.f32(float %15, float 0x3E6EFA39E0000000, float %19)
  %21 = fadd float %16, %20
  %22 = select i1 %17, float %15, float %21
  %23 = select i1 %12, float 0x40362E4300000000, float 0.000000e+00
  %24 = fsub float %22, %23
  %25 = fmul contract float %24, 2.550000e+02
  store float %25, float addrspace(1)* %10, align 4, !tbaa !6
  br label %26

26:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.exp2.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.rint.f32(float) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.amdgcn.ldexp.f32(float, i32) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.log2.f32(float) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!11 = !{!12, !16, i64 12}
!12 = !{!"hsa_kernel_dispatch_packet_s", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !17, i64 32, !18, i64 40, !17, i64 48, !19, i64 56}
!13 = !{!"short", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"int", !14, i64 0}
!17 = !{!"long", !14, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"hsa_signal_s", !17, i64 0}
!20 = !{i16 1, i16 1025}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !8, i64 0}
