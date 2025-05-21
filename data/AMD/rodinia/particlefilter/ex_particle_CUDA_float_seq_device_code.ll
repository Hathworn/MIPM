; ModuleID = 'ex_particle_CUDA_float_seq.cu'
source_filename = "ex_particle_CUDA_float_seq.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ24normalize_weights_kernelPdiS_S_S_PiE2u1 = internal unnamed_addr addrspace(3) global double undef, align 8
@_ZZ24normalize_weights_kernelPdiS_S_S_PiE10sumWeights = internal unnamed_addr addrspace(3) global double undef, align 8
@_ZZ17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_E6buffer = internal unnamed_addr addrspace(3) global [512 x double] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z17find_index_kernelPdS_S_S_S_S_S_i(double addrspace(1)* nocapture readonly %0, double addrspace(1)* nocapture readonly %1, double addrspace(1)* nocapture readonly %2, double addrspace(1)* nocapture readonly %3, double addrspace(1)* nocapture writeonly %4, double addrspace(1)* nocapture writeonly %5, double addrspace(1)* nocapture readnone %6, i32 %7) local_unnamed_addr #0 {
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = zext i32 %9 to i64
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %12 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %13 = bitcast i8 addrspace(4)* %12 to i16 addrspace(4)*
  %14 = load i16, i16 addrspace(4)* %13, align 4, !range !5, !invariant.load !6
  %15 = zext i16 %14 to i64
  %16 = mul nuw nsw i64 %15, %10
  %17 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %20, %7
  br i1 %21, label %22, label %50

22:                                               ; preds = %8
  %23 = icmp sgt i32 %7, 0
  %24 = shl i64 %19, 32
  %25 = ashr exact i64 %24, 32
  br i1 %23, label %26, label %38

26:                                               ; preds = %22
  %27 = getelementptr inbounds double, double addrspace(1)* %3, i64 %25
  %28 = load double, double addrspace(1)* %27, align 8, !tbaa !8, !amdgpu.noclobber !6
  br label %29

29:                                               ; preds = %26, %35
  %30 = phi i32 [ 0, %26 ], [ %36, %35 ]
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds double, double addrspace(1)* %2, i64 %31
  %33 = load double, double addrspace(1)* %32, align 8, !tbaa !8, !amdgpu.noclobber !6
  %34 = fcmp contract ult double %33, %28
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = add nuw nsw i32 %30, 1
  %37 = icmp eq i32 %36, %7
  br i1 %37, label %38, label %29, !llvm.loop !12

38:                                               ; preds = %35, %29, %22
  %39 = phi i32 [ -1, %22 ], [ -1, %35 ], [ %30, %29 ]
  %40 = icmp eq i32 %39, -1
  %41 = add nsw i32 %7, -1
  %42 = select i1 %40, i32 %41, i32 %39
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double addrspace(1)* %0, i64 %43
  %45 = load double, double addrspace(1)* %44, align 8, !tbaa !8, !amdgpu.noclobber !6
  %46 = getelementptr inbounds double, double addrspace(1)* %4, i64 %25
  store double %45, double addrspace(1)* %46, align 8, !tbaa !8
  %47 = getelementptr inbounds double, double addrspace(1)* %1, i64 %43
  %48 = load double, double addrspace(1)* %47, align 8, !tbaa !8
  %49 = getelementptr inbounds double, double addrspace(1)* %5, i64 %25
  store double %48, double addrspace(1)* %49, align 8, !tbaa !8
  br label %50

50:                                               ; preds = %38, %8
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z24normalize_weights_kernelPdiS_S_S_Pi(double addrspace(1)* nocapture %0, i32 %1, double addrspace(1)* nocapture readonly %2, double addrspace(1)* nocapture %3, double addrspace(1)* nocapture %4, i32 addrspace(1)* nocapture %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = zext i32 %7 to i64
  %9 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %10 = getelementptr i8, i8 addrspace(4)* %9, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !5, !invariant.load !6
  %13 = zext i16 %12 to i64
  %14 = mul nuw nsw i64 %13, %8
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load double, double addrspace(1)* %2, align 8, !tbaa !8, !amdgpu.noclobber !6
  store double %21, double addrspace(3)* @_ZZ24normalize_weights_kernelPdiS_S_S_PiE10sumWeights, align 8, !tbaa !8
  br label %22

22:                                               ; preds = %20, %6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %23 = icmp slt i32 %18, %1
  %24 = shl i64 %17, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds double, double addrspace(1)* %0, i64 %25
  br i1 %23, label %27, label %31

27:                                               ; preds = %22
  %28 = load double, double addrspace(1)* %26, align 8, !tbaa !8, !amdgpu.noclobber !6
  %29 = load double, double addrspace(3)* @_ZZ24normalize_weights_kernelPdiS_S_S_PiE10sumWeights, align 8, !tbaa !8
  %30 = fdiv contract double %28, %29
  store double %30, double addrspace(1)* %26, align 8, !tbaa !8
  br label %31

31:                                               ; preds = %27, %22
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %32 = icmp eq i32 %18, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %31
  %34 = load double, double addrspace(1)* %0, align 8, !tbaa !8
  store double %34, double addrspace(1)* %3, align 8, !tbaa !8
  %35 = icmp sgt i32 %1, 1
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load double, double addrspace(1)* %3, align 8
  br label %38

38:                                               ; preds = %36, %38
  %39 = phi double [ %37, %36 ], [ %44, %38 ]
  %40 = phi i32 [ 1, %36 ], [ %46, %38 ]
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds double, double addrspace(1)* %0, i64 %41
  %43 = load double, double addrspace(1)* %42, align 8, !tbaa !8
  %44 = fadd contract double %43, %39
  %45 = getelementptr inbounds double, double addrspace(1)* %3, i64 %41
  store double %44, double addrspace(1)* %45, align 8, !tbaa !8
  %46 = add nuw nsw i32 %40, 1
  %47 = icmp eq i32 %46, %1
  br i1 %47, label %48, label %38, !llvm.loop !14

48:                                               ; preds = %38, %33
  %49 = sitofp i32 %1 to double
  %50 = fdiv contract double 1.000000e+00, %49
  %51 = load i32, i32 addrspace(1)* %5, align 4, !tbaa !15, !amdgpu.noclobber !6
  %52 = mul nsw i32 %51, 1103515245
  %53 = add nsw i32 %52, 12345
  %54 = srem i32 %53, 2147483647
  store i32 %54, i32 addrspace(1)* %5, align 4, !tbaa !15
  %55 = sitofp i32 %54 to double
  %56 = fdiv contract double %55, 0x41DFFFFFFFC00000
  %57 = tail call double @llvm.fabs.f64(double %56)
  %58 = fmul contract double %50, %57
  store double %58, double addrspace(1)* %4, align 8, !tbaa !8
  br label %59

59:                                               ; preds = %48, %31
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %19, label %60, label %62

60:                                               ; preds = %59
  %61 = load double, double addrspace(1)* %4, align 8, !tbaa !8
  store double %61, double addrspace(3)* @_ZZ24normalize_weights_kernelPdiS_S_S_PiE2u1, align 8, !tbaa !8
  br label %62

62:                                               ; preds = %60, %59
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %23, label %63, label %70

63:                                               ; preds = %62
  %64 = load double, double addrspace(3)* @_ZZ24normalize_weights_kernelPdiS_S_S_PiE2u1, align 8, !tbaa !8
  %65 = sitofp i32 %18 to double
  %66 = sitofp i32 %1 to double
  %67 = fdiv contract double %65, %66
  %68 = fadd contract double %67, %64
  %69 = getelementptr inbounds double, double addrspace(1)* %4, i64 %25
  store double %68, double addrspace(1)* %69, align 8, !tbaa !8
  br label %70

70:                                               ; preds = %63, %62
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z10sum_kernelPdi(double addrspace(1)* nocapture %0, i32 %1) local_unnamed_addr #1 {
  %3 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %4 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %5 = getelementptr i8, i8 addrspace(4)* %4, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !5, !invariant.load !6
  %8 = zext i16 %7 to i32
  %9 = mul i32 %3, %8
  %10 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %11 = sub nsw i32 0, %10
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = sitofp i32 %1 to double
  %15 = fmul contract double %14, 0x3F60000000000000
  %16 = tail call double @llvm.ceil.f64(double %15)
  %17 = fptosi double %16 to i32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13, %19
  %20 = phi i32 [ %26, %19 ], [ 0, %13 ]
  %21 = phi double [ %25, %19 ], [ 0.000000e+00, %13 ]
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds double, double addrspace(1)* %0, i64 %22
  %24 = load double, double addrspace(1)* %23, align 8, !tbaa !8, !amdgpu.noclobber !6
  %25 = fadd contract double %21, %24
  %26 = add nuw nsw i32 %20, 1
  %27 = icmp eq i32 %26, %17
  br i1 %27, label %28, label %19, !llvm.loop !17

28:                                               ; preds = %19, %13
  %29 = phi double [ 0.000000e+00, %13 ], [ %25, %19 ]
  store double %29, double addrspace(1)* %0, align 8, !tbaa !8
  br label %30

30:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_(double addrspace(1)* nocapture %0, double addrspace(1)* nocapture %1, double addrspace(1)* nocapture readonly %2, double addrspace(1)* nocapture readonly %3, double addrspace(1)* nocapture readnone %4, i32 addrspace(1)* nocapture %5, i32 addrspace(1)* nocapture readonly %6, double addrspace(1)* nocapture writeonly %7, i8 addrspace(1)* nocapture readonly %8, double addrspace(1)* nocapture readnone %9, double addrspace(1)* nocapture %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 addrspace(1)* nocapture %17, double addrspace(1)* nocapture writeonly %18) local_unnamed_addr #2 {
  %20 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %21 = zext i32 %20 to i64
  %22 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %23 = getelementptr i8, i8 addrspace(4)* %22, i64 4
  %24 = bitcast i8 addrspace(4)* %23 to i16 addrspace(4)*
  %25 = load i16, i16 addrspace(4)* %24, align 4, !range !5, !invariant.load !6
  %26 = zext i16 %25 to i64
  %27 = mul nuw nsw i64 %26, %21
  %28 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, %11
  br i1 %32, label %33, label %569

33:                                               ; preds = %19
  %34 = shl i64 %30, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds double, double addrspace(1)* %2, i64 %35
  %37 = load double, double addrspace(1)* %36, align 8, !tbaa !8, !amdgpu.noclobber !6
  %38 = getelementptr inbounds double, double addrspace(1)* %0, i64 %35
  store double %37, double addrspace(1)* %38, align 8, !tbaa !8
  %39 = getelementptr inbounds double, double addrspace(1)* %3, i64 %35
  %40 = load double, double addrspace(1)* %39, align 8, !tbaa !8
  %41 = getelementptr inbounds double, double addrspace(1)* %1, i64 %35
  store double %40, double addrspace(1)* %41, align 8, !tbaa !8
  %42 = sitofp i32 %11 to double
  %43 = fdiv contract double 1.000000e+00, %42
  %44 = getelementptr inbounds double, double addrspace(1)* %10, i64 %35
  store double %43, double addrspace(1)* %44, align 8, !tbaa !8
  %45 = load double, double addrspace(1)* %38, align 8, !tbaa !8
  %46 = fadd contract double %45, 1.000000e+00
  %47 = getelementptr inbounds i32, i32 addrspace(1)* %17, i64 %35
  %48 = load i32, i32 addrspace(1)* %47, align 4, !tbaa !15, !amdgpu.noclobber !6
  %49 = mul nsw i32 %48, 1103515245
  %50 = add nsw i32 %49, 12345
  %51 = srem i32 %50, 2147483647
  %52 = sitofp i32 %51 to double
  %53 = fdiv contract double %52, 0x41DFFFFFFFC00000
  %54 = tail call double @llvm.fabs.f64(double %53)
  %55 = mul nsw i32 %51, 1103515245
  %56 = add nsw i32 %55, 12345
  %57 = srem i32 %56, 2147483647
  store i32 %57, i32 addrspace(1)* %47, align 4, !tbaa !15
  %58 = sitofp i32 %57 to double
  %59 = fdiv contract double %58, 0x41DFFFFFFFC00000
  %60 = tail call double @llvm.fabs.f64(double %59)
  %61 = fmul contract double %60, 0x401921FB54442D18
  %62 = fcmp olt double %61, 0x41D0000000000000
  br i1 %62, label %63, label %82

63:                                               ; preds = %33
  %64 = fmul double %61, 0x3FE45F306DC9C883
  %65 = tail call double @llvm.rint.f64(double %64)
  %66 = tail call double @llvm.fma.f64(double %65, double 0xBFF921FB54442D18, double %61)
  %67 = tail call double @llvm.fma.f64(double %65, double 0xBC91A62633145C00, double %66)
  %68 = fmul double %65, 0x3C91A62633145C00
  %69 = fneg double %68
  %70 = tail call double @llvm.fma.f64(double %65, double 0x3C91A62633145C00, double %69)
  %71 = fsub double %66, %68
  %72 = fsub double %66, %71
  %73 = fsub double %72, %68
  %74 = fsub double %71, %67
  %75 = fadd double %74, %73
  %76 = fsub double %75, %70
  %77 = tail call double @llvm.fma.f64(double %65, double 0xB97B839A252049C0, double %76)
  %78 = fadd double %67, %77
  %79 = fsub double %78, %67
  %80 = fsub double %77, %79
  %81 = fptosi double %65 to i32
  br label %158

82:                                               ; preds = %33
  %83 = tail call double @llvm.amdgcn.trig.preop.f64(double %61, i32 0)
  %84 = tail call double @llvm.amdgcn.trig.preop.f64(double %61, i32 1)
  %85 = tail call double @llvm.amdgcn.trig.preop.f64(double %61, i32 2)
  %86 = fcmp oge double %61, 0x7B00000000000000
  %87 = tail call double @llvm.amdgcn.ldexp.f64(double %61, i32 -128)
  %88 = select i1 %86, double %87, double %61
  %89 = fmul double %85, %88
  %90 = fneg double %89
  %91 = tail call double @llvm.fma.f64(double %85, double %88, double %90)
  %92 = fmul double %84, %88
  %93 = fneg double %92
  %94 = tail call double @llvm.fma.f64(double %84, double %88, double %93)
  %95 = fmul double %83, %88
  %96 = fneg double %95
  %97 = tail call double @llvm.fma.f64(double %83, double %88, double %96)
  %98 = fadd double %92, %97
  %99 = fsub double %98, %92
  %100 = fsub double %98, %99
  %101 = fsub double %97, %99
  %102 = fsub double %92, %100
  %103 = fadd double %101, %102
  %104 = fadd double %89, %94
  %105 = fsub double %104, %89
  %106 = fsub double %104, %105
  %107 = fsub double %94, %105
  %108 = fsub double %89, %106
  %109 = fadd double %107, %108
  %110 = fadd double %104, %103
  %111 = fsub double %110, %104
  %112 = fsub double %110, %111
  %113 = fsub double %103, %111
  %114 = fsub double %104, %112
  %115 = fadd double %113, %114
  %116 = fadd double %109, %115
  %117 = fadd double %91, %116
  %118 = fadd double %95, %98
  %119 = fsub double %118, %95
  %120 = fsub double %98, %119
  %121 = fadd double %120, %110
  %122 = fsub double %121, %120
  %123 = fsub double %110, %122
  %124 = fadd double %123, %117
  %125 = tail call double @llvm.amdgcn.ldexp.f64(double %118, i32 -2)
  %126 = tail call double @llvm.amdgcn.fract.f64(double %125)
  %127 = tail call i1 @llvm.amdgcn.class.f64(double %125, i32 516)
  %128 = select i1 %127, double 0.000000e+00, double %126
  %129 = tail call double @llvm.amdgcn.ldexp.f64(double %128, i32 2)
  %130 = fadd double %129, %121
  %131 = fcmp olt double %130, 0.000000e+00
  %132 = select i1 %131, double 4.000000e+00, double 0.000000e+00
  %133 = fadd double %129, %132
  %134 = fadd double %121, %133
  %135 = fptosi double %134 to i32
  %136 = sitofp i32 %135 to double
  %137 = fsub double %133, %136
  %138 = fadd double %121, %137
  %139 = fsub double %138, %137
  %140 = fsub double %121, %139
  %141 = fadd double %124, %140
  %142 = fcmp oge double %138, 5.000000e-01
  %143 = zext i1 %142 to i32
  %144 = add nsw i32 %143, %135
  %145 = select i1 %142, double 1.000000e+00, double 0.000000e+00
  %146 = fsub double %138, %145
  %147 = fadd double %146, %141
  %148 = fsub double %147, %146
  %149 = fsub double %141, %148
  %150 = fmul double %147, 0x3FF921FB54442D18
  %151 = fneg double %150
  %152 = tail call double @llvm.fma.f64(double %147, double 0x3FF921FB54442D18, double %151)
  %153 = tail call double @llvm.fma.f64(double %147, double 0x3C91A62633145C07, double %152)
  %154 = tail call double @llvm.fma.f64(double %149, double 0x3FF921FB54442D18, double %153)
  %155 = fadd double %150, %154
  %156 = fsub double %155, %150
  %157 = fsub double %154, %156
  br label %158

158:                                              ; preds = %63, %82
  %159 = phi double [ %80, %63 ], [ %157, %82 ]
  %160 = phi double [ %78, %63 ], [ %155, %82 ]
  %161 = phi i32 [ %81, %63 ], [ %144, %82 ]
  %162 = fmul double %160, %160
  %163 = fmul double %162, 5.000000e-01
  %164 = fsub double 1.000000e+00, %163
  %165 = fsub double 1.000000e+00, %164
  %166 = fsub double %165, %163
  %167 = fmul double %162, %162
  %168 = tail call double @llvm.fma.f64(double %162, double 0xBDA907DB46CC5E42, double 0x3E21EEB69037AB78)
  %169 = tail call double @llvm.fma.f64(double %162, double %168, double 0xBE927E4FA17F65F6)
  %170 = tail call double @llvm.fma.f64(double %162, double %169, double 0x3EFA01A019F4EC90)
  %171 = tail call double @llvm.fma.f64(double %162, double %170, double 0xBF56C16C16C16967)
  %172 = tail call double @llvm.fma.f64(double %162, double %171, double 0x3FA5555555555555)
  %173 = fneg double %159
  %174 = tail call double @llvm.fma.f64(double %160, double %173, double %166)
  %175 = tail call double @llvm.fma.f64(double %167, double %172, double %174)
  %176 = fadd double %164, %175
  %177 = tail call double @llvm.fma.f64(double %162, double 0x3DE5E0B2F9A43BB8, double 0xBE5AE600B42FDFA7)
  %178 = tail call double @llvm.fma.f64(double %162, double %177, double 0x3EC71DE3796CDE01)
  %179 = tail call double @llvm.fma.f64(double %162, double %178, double 0xBF2A01A019E83E5C)
  %180 = tail call double @llvm.fma.f64(double %162, double %179, double 0x3F81111111110BB3)
  %181 = fneg double %162
  %182 = fmul double %160, %181
  %183 = fmul double %159, 5.000000e-01
  %184 = tail call double @llvm.fma.f64(double %182, double %180, double %183)
  %185 = tail call double @llvm.fma.f64(double %162, double %184, double %173)
  %186 = tail call double @llvm.fma.f64(double %182, double 0xBFC5555555555555, double %185)
  %187 = fsub double %160, %186
  %188 = fneg double %187
  %189 = and i32 %161, 1
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, double %176, double %188
  %192 = bitcast double %191 to <2 x i32>
  %193 = shl i32 %161, 30
  %194 = and i32 %193, -2147483648
  %195 = extractelement <2 x i32> %192, i64 1
  %196 = xor i32 %195, %194
  %197 = insertelement <2 x i32> %192, i32 %196, i64 1
  %198 = tail call i1 @llvm.amdgcn.class.f64(double %61, i32 504)
  %199 = select i1 %198, <2 x i32> %197, <2 x i32> <i32 0, i32 2146959360>
  %200 = bitcast <2 x i32> %199 to double
  %201 = tail call double @llvm.amdgcn.frexp.mant.f64(double %54)
  %202 = fcmp olt double %201, 0x3FE5555555555555
  %203 = zext i1 %202 to i32
  %204 = tail call double @llvm.amdgcn.ldexp.f64(double %201, i32 %203)
  %205 = tail call i32 @llvm.amdgcn.frexp.exp.i32.f64(double %54)
  %206 = sub nsw i32 %205, %203
  %207 = fadd double %204, -1.000000e+00
  %208 = fadd double %204, 1.000000e+00
  %209 = fadd double %208, -1.000000e+00
  %210 = fsub double %204, %209
  %211 = tail call double @llvm.amdgcn.rcp.f64(double %208)
  %212 = fneg double %208
  %213 = tail call double @llvm.fma.f64(double %212, double %211, double 1.000000e+00)
  %214 = tail call double @llvm.fma.f64(double %213, double %211, double %211)
  %215 = tail call double @llvm.fma.f64(double %212, double %214, double 1.000000e+00)
  %216 = tail call double @llvm.fma.f64(double %215, double %214, double %214)
  %217 = fmul double %207, %216
  %218 = fmul double %208, %217
  %219 = fneg double %218
  %220 = tail call double @llvm.fma.f64(double %217, double %208, double %219)
  %221 = tail call double @llvm.fma.f64(double %217, double %210, double %220)
  %222 = fadd double %218, %221
  %223 = fsub double %222, %218
  %224 = fsub double %221, %223
  %225 = fsub double %207, %222
  %226 = fsub double %207, %225
  %227 = fsub double %226, %222
  %228 = fsub double %227, %224
  %229 = fadd double %225, %228
  %230 = fmul double %216, %229
  %231 = fadd double %217, %230
  %232 = fsub double %231, %217
  %233 = fsub double %230, %232
  %234 = fmul double %231, %231
  %235 = tail call double @llvm.fma.f64(double %234, double 0x3FC3AB76BF559E2B, double 0x3FC385386B47B09A)
  %236 = tail call double @llvm.fma.f64(double %234, double %235, double 0x3FC7474DD7F4DF2E)
  %237 = tail call double @llvm.fma.f64(double %234, double %236, double 0x3FCC71C016291751)
  %238 = tail call double @llvm.fma.f64(double %234, double %237, double 0x3FD249249B27ACF1)
  %239 = tail call double @llvm.fma.f64(double %234, double %238, double 0x3FD99999998EF7B6)
  %240 = tail call double @llvm.fma.f64(double %234, double %239, double 0x3FE5555555555780)
  %241 = tail call double @llvm.amdgcn.ldexp.f64(double %231, i32 1)
  %242 = tail call double @llvm.amdgcn.ldexp.f64(double %233, i32 1)
  %243 = fmul double %231, %234
  %244 = fmul double %243, %240
  %245 = fadd double %241, %244
  %246 = fsub double %245, %241
  %247 = fsub double %244, %246
  %248 = fadd double %242, %247
  %249 = fadd double %245, %248
  %250 = fsub double %249, %245
  %251 = fsub double %248, %250
  %252 = sitofp i32 %206 to double
  %253 = fmul double %252, 0x3FE62E42FEFA39EF
  %254 = fneg double %253
  %255 = tail call double @llvm.fma.f64(double %252, double 0x3FE62E42FEFA39EF, double %254)
  %256 = tail call double @llvm.fma.f64(double %252, double 0x3C7ABC9E3B39803F, double %255)
  %257 = fadd double %253, %256
  %258 = fsub double %257, %253
  %259 = fsub double %256, %258
  %260 = fadd double %257, %249
  %261 = fsub double %260, %257
  %262 = fsub double %260, %261
  %263 = fsub double %257, %262
  %264 = fsub double %249, %261
  %265 = fadd double %264, %263
  %266 = fadd double %259, %251
  %267 = fsub double %266, %259
  %268 = fsub double %266, %267
  %269 = fsub double %259, %268
  %270 = fsub double %251, %267
  %271 = fadd double %270, %269
  %272 = fadd double %266, %265
  %273 = fadd double %260, %272
  %274 = fsub double %273, %260
  %275 = fsub double %272, %274
  %276 = fadd double %271, %275
  %277 = fadd double %273, %276
  %278 = fcmp oeq double %54, 0x7FF0000000000000
  %279 = select i1 %278, double %54, double %277
  %280 = fcmp oeq double %53, 0.000000e+00
  %281 = fmul contract double %279, -2.000000e+00
  %282 = select i1 %280, double 0x7FF0000000000000, double %281
  %283 = fcmp olt double %282, 0x1000000000000000
  %284 = select i1 %283, double 0x4FF0000000000000, double 1.000000e+00
  %285 = fmul double %282, %284
  %286 = tail call double @llvm.amdgcn.rsq.f64(double %285)
  %287 = fmul double %285, %286
  %288 = fmul double %286, 5.000000e-01
  %289 = fneg double %288
  %290 = tail call double @llvm.fma.f64(double %289, double %287, double 5.000000e-01)
  %291 = tail call double @llvm.fma.f64(double %288, double %290, double %288)
  %292 = tail call double @llvm.fma.f64(double %287, double %290, double %287)
  %293 = fneg double %292
  %294 = tail call double @llvm.fma.f64(double %293, double %292, double %285)
  %295 = tail call double @llvm.fma.f64(double %294, double %291, double %292)
  %296 = fneg double %295
  %297 = tail call double @llvm.fma.f64(double %296, double %295, double %285)
  %298 = tail call double @llvm.fma.f64(double %297, double %291, double %295)
  %299 = select i1 %283, double 0x37F0000000000000, double 1.000000e+00
  %300 = fmul double %299, %298
  %301 = fcmp oeq double %285, 0.000000e+00
  %302 = fcmp oeq double %285, 0x7FF0000000000000
  %303 = or i1 %301, %302
  %304 = select i1 %303, double %285, double %300
  %305 = fmul contract double %304, %200
  %306 = fmul contract double %305, 5.000000e+00
  %307 = fadd contract double %46, %306
  store double %307, double addrspace(1)* %38, align 8, !tbaa !8
  %308 = load double, double addrspace(1)* %41, align 8, !tbaa !8
  %309 = fadd contract double %308, -2.000000e+00
  %310 = mul nsw i32 %57, 1103515245
  %311 = add nsw i32 %310, 12345
  %312 = srem i32 %311, 2147483647
  %313 = sitofp i32 %312 to double
  %314 = fdiv contract double %313, 0x41DFFFFFFFC00000
  %315 = tail call double @llvm.fabs.f64(double %314)
  %316 = mul nsw i32 %312, 1103515245
  %317 = add nsw i32 %316, 12345
  %318 = srem i32 %317, 2147483647
  store i32 %318, i32 addrspace(1)* %47, align 4, !tbaa !15
  %319 = sitofp i32 %318 to double
  %320 = fdiv contract double %319, 0x41DFFFFFFFC00000
  %321 = tail call double @llvm.fabs.f64(double %320)
  %322 = fmul contract double %321, 0x401921FB54442D18
  %323 = fcmp olt double %322, 0x41D0000000000000
  br i1 %323, label %324, label %343

324:                                              ; preds = %158
  %325 = fmul double %322, 0x3FE45F306DC9C883
  %326 = tail call double @llvm.rint.f64(double %325)
  %327 = tail call double @llvm.fma.f64(double %326, double 0xBFF921FB54442D18, double %322)
  %328 = tail call double @llvm.fma.f64(double %326, double 0xBC91A62633145C00, double %327)
  %329 = fmul double %326, 0x3C91A62633145C00
  %330 = fneg double %329
  %331 = tail call double @llvm.fma.f64(double %326, double 0x3C91A62633145C00, double %330)
  %332 = fsub double %327, %329
  %333 = fsub double %327, %332
  %334 = fsub double %333, %329
  %335 = fsub double %332, %328
  %336 = fadd double %335, %334
  %337 = fsub double %336, %331
  %338 = tail call double @llvm.fma.f64(double %326, double 0xB97B839A252049C0, double %337)
  %339 = fadd double %328, %338
  %340 = fsub double %339, %328
  %341 = fsub double %338, %340
  %342 = fptosi double %326 to i32
  br label %419

343:                                              ; preds = %158
  %344 = tail call double @llvm.amdgcn.trig.preop.f64(double %322, i32 0)
  %345 = tail call double @llvm.amdgcn.trig.preop.f64(double %322, i32 1)
  %346 = tail call double @llvm.amdgcn.trig.preop.f64(double %322, i32 2)
  %347 = fcmp oge double %322, 0x7B00000000000000
  %348 = tail call double @llvm.amdgcn.ldexp.f64(double %322, i32 -128)
  %349 = select i1 %347, double %348, double %322
  %350 = fmul double %346, %349
  %351 = fneg double %350
  %352 = tail call double @llvm.fma.f64(double %346, double %349, double %351)
  %353 = fmul double %345, %349
  %354 = fneg double %353
  %355 = tail call double @llvm.fma.f64(double %345, double %349, double %354)
  %356 = fmul double %344, %349
  %357 = fneg double %356
  %358 = tail call double @llvm.fma.f64(double %344, double %349, double %357)
  %359 = fadd double %353, %358
  %360 = fsub double %359, %353
  %361 = fsub double %359, %360
  %362 = fsub double %358, %360
  %363 = fsub double %353, %361
  %364 = fadd double %362, %363
  %365 = fadd double %350, %355
  %366 = fsub double %365, %350
  %367 = fsub double %365, %366
  %368 = fsub double %355, %366
  %369 = fsub double %350, %367
  %370 = fadd double %368, %369
  %371 = fadd double %365, %364
  %372 = fsub double %371, %365
  %373 = fsub double %371, %372
  %374 = fsub double %364, %372
  %375 = fsub double %365, %373
  %376 = fadd double %374, %375
  %377 = fadd double %370, %376
  %378 = fadd double %352, %377
  %379 = fadd double %356, %359
  %380 = fsub double %379, %356
  %381 = fsub double %359, %380
  %382 = fadd double %381, %371
  %383 = fsub double %382, %381
  %384 = fsub double %371, %383
  %385 = fadd double %384, %378
  %386 = tail call double @llvm.amdgcn.ldexp.f64(double %379, i32 -2)
  %387 = tail call double @llvm.amdgcn.fract.f64(double %386)
  %388 = tail call i1 @llvm.amdgcn.class.f64(double %386, i32 516)
  %389 = select i1 %388, double 0.000000e+00, double %387
  %390 = tail call double @llvm.amdgcn.ldexp.f64(double %389, i32 2)
  %391 = fadd double %390, %382
  %392 = fcmp olt double %391, 0.000000e+00
  %393 = select i1 %392, double 4.000000e+00, double 0.000000e+00
  %394 = fadd double %390, %393
  %395 = fadd double %382, %394
  %396 = fptosi double %395 to i32
  %397 = sitofp i32 %396 to double
  %398 = fsub double %394, %397
  %399 = fadd double %382, %398
  %400 = fsub double %399, %398
  %401 = fsub double %382, %400
  %402 = fadd double %385, %401
  %403 = fcmp oge double %399, 5.000000e-01
  %404 = zext i1 %403 to i32
  %405 = add nsw i32 %404, %396
  %406 = select i1 %403, double 1.000000e+00, double 0.000000e+00
  %407 = fsub double %399, %406
  %408 = fadd double %407, %402
  %409 = fsub double %408, %407
  %410 = fsub double %402, %409
  %411 = fmul double %408, 0x3FF921FB54442D18
  %412 = fneg double %411
  %413 = tail call double @llvm.fma.f64(double %408, double 0x3FF921FB54442D18, double %412)
  %414 = tail call double @llvm.fma.f64(double %408, double 0x3C91A62633145C07, double %413)
  %415 = tail call double @llvm.fma.f64(double %410, double 0x3FF921FB54442D18, double %414)
  %416 = fadd double %411, %415
  %417 = fsub double %416, %411
  %418 = fsub double %415, %417
  br label %419

419:                                              ; preds = %324, %343
  %420 = phi double [ %341, %324 ], [ %418, %343 ]
  %421 = phi double [ %339, %324 ], [ %416, %343 ]
  %422 = phi i32 [ %342, %324 ], [ %405, %343 ]
  %423 = fmul double %421, %421
  %424 = fmul double %423, 5.000000e-01
  %425 = fsub double 1.000000e+00, %424
  %426 = fsub double 1.000000e+00, %425
  %427 = fsub double %426, %424
  %428 = fmul double %423, %423
  %429 = tail call double @llvm.fma.f64(double %423, double 0xBDA907DB46CC5E42, double 0x3E21EEB69037AB78)
  %430 = tail call double @llvm.fma.f64(double %423, double %429, double 0xBE927E4FA17F65F6)
  %431 = tail call double @llvm.fma.f64(double %423, double %430, double 0x3EFA01A019F4EC90)
  %432 = tail call double @llvm.fma.f64(double %423, double %431, double 0xBF56C16C16C16967)
  %433 = tail call double @llvm.fma.f64(double %423, double %432, double 0x3FA5555555555555)
  %434 = fneg double %420
  %435 = tail call double @llvm.fma.f64(double %421, double %434, double %427)
  %436 = tail call double @llvm.fma.f64(double %428, double %433, double %435)
  %437 = fadd double %425, %436
  %438 = tail call double @llvm.fma.f64(double %423, double 0x3DE5E0B2F9A43BB8, double 0xBE5AE600B42FDFA7)
  %439 = tail call double @llvm.fma.f64(double %423, double %438, double 0x3EC71DE3796CDE01)
  %440 = tail call double @llvm.fma.f64(double %423, double %439, double 0xBF2A01A019E83E5C)
  %441 = tail call double @llvm.fma.f64(double %423, double %440, double 0x3F81111111110BB3)
  %442 = fneg double %423
  %443 = fmul double %421, %442
  %444 = fmul double %420, 5.000000e-01
  %445 = tail call double @llvm.fma.f64(double %443, double %441, double %444)
  %446 = tail call double @llvm.fma.f64(double %423, double %445, double %434)
  %447 = tail call double @llvm.fma.f64(double %443, double 0xBFC5555555555555, double %446)
  %448 = fsub double %421, %447
  %449 = fneg double %448
  %450 = and i32 %422, 1
  %451 = icmp eq i32 %450, 0
  %452 = select i1 %451, double %437, double %449
  %453 = bitcast double %452 to <2 x i32>
  %454 = shl i32 %422, 30
  %455 = and i32 %454, -2147483648
  %456 = extractelement <2 x i32> %453, i64 1
  %457 = xor i32 %456, %455
  %458 = insertelement <2 x i32> %453, i32 %457, i64 1
  %459 = tail call i1 @llvm.amdgcn.class.f64(double %322, i32 504)
  %460 = select i1 %459, <2 x i32> %458, <2 x i32> <i32 0, i32 2146959360>
  %461 = bitcast <2 x i32> %460 to double
  %462 = tail call double @llvm.amdgcn.frexp.mant.f64(double %315)
  %463 = fcmp olt double %462, 0x3FE5555555555555
  %464 = zext i1 %463 to i32
  %465 = tail call double @llvm.amdgcn.ldexp.f64(double %462, i32 %464)
  %466 = tail call i32 @llvm.amdgcn.frexp.exp.i32.f64(double %315)
  %467 = sub nsw i32 %466, %464
  %468 = fadd double %465, -1.000000e+00
  %469 = fadd double %465, 1.000000e+00
  %470 = fadd double %469, -1.000000e+00
  %471 = fsub double %465, %470
  %472 = tail call double @llvm.amdgcn.rcp.f64(double %469)
  %473 = fneg double %469
  %474 = tail call double @llvm.fma.f64(double %473, double %472, double 1.000000e+00)
  %475 = tail call double @llvm.fma.f64(double %474, double %472, double %472)
  %476 = tail call double @llvm.fma.f64(double %473, double %475, double 1.000000e+00)
  %477 = tail call double @llvm.fma.f64(double %476, double %475, double %475)
  %478 = fmul double %468, %477
  %479 = fmul double %469, %478
  %480 = fneg double %479
  %481 = tail call double @llvm.fma.f64(double %478, double %469, double %480)
  %482 = tail call double @llvm.fma.f64(double %478, double %471, double %481)
  %483 = fadd double %479, %482
  %484 = fsub double %483, %479
  %485 = fsub double %482, %484
  %486 = fsub double %468, %483
  %487 = fsub double %468, %486
  %488 = fsub double %487, %483
  %489 = fsub double %488, %485
  %490 = fadd double %486, %489
  %491 = fmul double %477, %490
  %492 = fadd double %478, %491
  %493 = fsub double %492, %478
  %494 = fsub double %491, %493
  %495 = fmul double %492, %492
  %496 = tail call double @llvm.fma.f64(double %495, double 0x3FC3AB76BF559E2B, double 0x3FC385386B47B09A)
  %497 = tail call double @llvm.fma.f64(double %495, double %496, double 0x3FC7474DD7F4DF2E)
  %498 = tail call double @llvm.fma.f64(double %495, double %497, double 0x3FCC71C016291751)
  %499 = tail call double @llvm.fma.f64(double %495, double %498, double 0x3FD249249B27ACF1)
  %500 = tail call double @llvm.fma.f64(double %495, double %499, double 0x3FD99999998EF7B6)
  %501 = tail call double @llvm.fma.f64(double %495, double %500, double 0x3FE5555555555780)
  %502 = tail call double @llvm.amdgcn.ldexp.f64(double %492, i32 1)
  %503 = tail call double @llvm.amdgcn.ldexp.f64(double %494, i32 1)
  %504 = fmul double %492, %495
  %505 = fmul double %504, %501
  %506 = fadd double %502, %505
  %507 = fsub double %506, %502
  %508 = fsub double %505, %507
  %509 = fadd double %503, %508
  %510 = fadd double %506, %509
  %511 = fsub double %510, %506
  %512 = fsub double %509, %511
  %513 = sitofp i32 %467 to double
  %514 = fmul double %513, 0x3FE62E42FEFA39EF
  %515 = fneg double %514
  %516 = tail call double @llvm.fma.f64(double %513, double 0x3FE62E42FEFA39EF, double %515)
  %517 = tail call double @llvm.fma.f64(double %513, double 0x3C7ABC9E3B39803F, double %516)
  %518 = fadd double %514, %517
  %519 = fsub double %518, %514
  %520 = fsub double %517, %519
  %521 = fadd double %518, %510
  %522 = fsub double %521, %518
  %523 = fsub double %521, %522
  %524 = fsub double %518, %523
  %525 = fsub double %510, %522
  %526 = fadd double %525, %524
  %527 = fadd double %520, %512
  %528 = fsub double %527, %520
  %529 = fsub double %527, %528
  %530 = fsub double %520, %529
  %531 = fsub double %512, %528
  %532 = fadd double %531, %530
  %533 = fadd double %527, %526
  %534 = fadd double %521, %533
  %535 = fsub double %534, %521
  %536 = fsub double %533, %535
  %537 = fadd double %532, %536
  %538 = fadd double %534, %537
  %539 = fcmp oeq double %315, 0x7FF0000000000000
  %540 = select i1 %539, double %315, double %538
  %541 = fcmp oeq double %314, 0.000000e+00
  %542 = fmul contract double %540, -2.000000e+00
  %543 = select i1 %541, double 0x7FF0000000000000, double %542
  %544 = fcmp olt double %543, 0x1000000000000000
  %545 = select i1 %544, double 0x4FF0000000000000, double 1.000000e+00
  %546 = fmul double %543, %545
  %547 = tail call double @llvm.amdgcn.rsq.f64(double %546)
  %548 = fmul double %546, %547
  %549 = fmul double %547, 5.000000e-01
  %550 = fneg double %549
  %551 = tail call double @llvm.fma.f64(double %550, double %548, double 5.000000e-01)
  %552 = tail call double @llvm.fma.f64(double %549, double %551, double %549)
  %553 = tail call double @llvm.fma.f64(double %548, double %551, double %548)
  %554 = fneg double %553
  %555 = tail call double @llvm.fma.f64(double %554, double %553, double %546)
  %556 = tail call double @llvm.fma.f64(double %555, double %552, double %553)
  %557 = fneg double %556
  %558 = tail call double @llvm.fma.f64(double %557, double %556, double %546)
  %559 = tail call double @llvm.fma.f64(double %558, double %552, double %556)
  %560 = select i1 %544, double 0x37F0000000000000, double 1.000000e+00
  %561 = fmul double %560, %559
  %562 = fcmp oeq double %546, 0.000000e+00
  %563 = fcmp oeq double %546, 0x7FF0000000000000
  %564 = or i1 %562, %563
  %565 = select i1 %564, double %546, double %561
  %566 = fmul contract double %565, %461
  %567 = fmul contract double %566, 2.000000e+00
  %568 = fadd contract double %309, %567
  store double %568, double addrspace(1)* %41, align 8, !tbaa !8
  br label %569

569:                                              ; preds = %419, %19
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %32, label %570, label %995

570:                                              ; preds = %569
  %571 = icmp sgt i32 %12, 0
  br i1 %571, label %572, label %963

572:                                              ; preds = %570
  %573 = shl i64 %30, 32
  %574 = ashr exact i64 %573, 32
  %575 = getelementptr inbounds double, double addrspace(1)* %0, i64 %574
  %576 = load double, double addrspace(1)* %575, align 8, !tbaa !8
  %577 = fptosi double %576 to i32
  %578 = getelementptr inbounds double, double addrspace(1)* %1, i64 %574
  %579 = load double, double addrspace(1)* %578, align 8, !tbaa !8
  %580 = fptosi double %579 to i32
  %581 = mul nsw i32 %31, %12
  br label %582

582:                                              ; preds = %572, %582
  %583 = phi i32 [ 0, %572 ], [ %606, %582 ]
  %584 = shl nuw nsw i32 %583, 1
  %585 = or i32 %584, 1
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32 addrspace(1)* %6, i64 %586
  %588 = load i32, i32 addrspace(1)* %587, align 4, !tbaa !15
  %589 = add i32 %588, %577
  %590 = zext i32 %584 to i64
  %591 = getelementptr inbounds i32, i32 addrspace(1)* %6, i64 %590
  %592 = load i32, i32 addrspace(1)* %591, align 4, !tbaa !15
  %593 = add i32 %592, %580
  %594 = mul nsw i32 %589, %15
  %595 = add i32 %594, %593
  %596 = mul i32 %595, %16
  %597 = add nsw i32 %596, %14
  %598 = sitofp i32 %597 to float
  %599 = tail call float @llvm.fabs.f32(float %598)
  %600 = fptosi float %599 to i32
  %601 = add nsw i32 %583, %581
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %602
  %604 = icmp slt i32 %600, %13
  %605 = select i1 %604, i32 %600, i32 0
  store i32 %605, i32 addrspace(1)* %603, align 4, !tbaa !15
  %606 = add nuw nsw i32 %583, 1
  %607 = icmp eq i32 %606, %12
  br i1 %607, label %608, label %582, !llvm.loop !18

608:                                              ; preds = %582
  br i1 %571, label %609, label %963

609:                                              ; preds = %608
  %610 = mul nsw i32 %31, %12
  br label %611

611:                                              ; preds = %611, %609
  %612 = phi i32 [ 0, %609 ], [ %961, %611 ]
  %613 = phi double [ 0.000000e+00, %609 ], [ %960, %611 ]
  %614 = add nsw i32 %612, %610
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %615
  %617 = load i32, i32 addrspace(1)* %616, align 4, !tbaa !15
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i8, i8 addrspace(1)* %8, i64 %618
  %620 = load i8, i8 addrspace(1)* %619, align 1, !tbaa !19
  %621 = zext i8 %620 to i32
  %622 = add nsw i32 %621, -100
  %623 = sitofp i32 %622 to double
  %624 = tail call double @llvm.fabs.f64(double %623)
  %625 = tail call double @llvm.amdgcn.frexp.mant.f64(double %624)
  %626 = fcmp olt double %625, 0x3FE5555555555555
  %627 = zext i1 %626 to i32
  %628 = tail call double @llvm.amdgcn.ldexp.f64(double %625, i32 %627)
  %629 = tail call i32 @llvm.amdgcn.frexp.exp.i32.f64(double %624)
  %630 = sub nsw i32 %629, %627
  %631 = fadd double %628, -1.000000e+00
  %632 = fadd double %628, 1.000000e+00
  %633 = fadd double %632, -1.000000e+00
  %634 = fsub double %628, %633
  %635 = tail call double @llvm.amdgcn.rcp.f64(double %632)
  %636 = fneg double %632
  %637 = tail call double @llvm.fma.f64(double %636, double %635, double 1.000000e+00)
  %638 = tail call double @llvm.fma.f64(double %637, double %635, double %635)
  %639 = tail call double @llvm.fma.f64(double %636, double %638, double 1.000000e+00)
  %640 = tail call double @llvm.fma.f64(double %639, double %638, double %638)
  %641 = fmul double %631, %640
  %642 = fmul double %632, %641
  %643 = fneg double %642
  %644 = tail call double @llvm.fma.f64(double %641, double %632, double %643)
  %645 = tail call double @llvm.fma.f64(double %641, double %634, double %644)
  %646 = fadd double %642, %645
  %647 = fsub double %646, %642
  %648 = fsub double %645, %647
  %649 = fsub double %631, %646
  %650 = fsub double %631, %649
  %651 = fsub double %650, %646
  %652 = fsub double %651, %648
  %653 = fadd double %649, %652
  %654 = fmul double %640, %653
  %655 = fadd double %641, %654
  %656 = fsub double %655, %641
  %657 = fsub double %654, %656
  %658 = fmul double %655, %655
  %659 = fneg double %658
  %660 = tail call double @llvm.fma.f64(double %655, double %655, double %659)
  %661 = fmul double %657, 2.000000e+00
  %662 = tail call double @llvm.fma.f64(double %655, double %661, double %660)
  %663 = fadd double %658, %662
  %664 = fsub double %663, %658
  %665 = fsub double %662, %664
  %666 = tail call double @llvm.fma.f64(double %663, double 0x3FBDEE674222DE17, double 0x3FBA6564968915A9)
  %667 = tail call double @llvm.fma.f64(double %663, double %666, double 0x3FBE25E43ABE935A)
  %668 = tail call double @llvm.fma.f64(double %663, double %667, double 0x3FC110EF47E6C9C2)
  %669 = tail call double @llvm.fma.f64(double %663, double %668, double 0x3FC3B13BCFA74449)
  %670 = tail call double @llvm.fma.f64(double %663, double %669, double 0x3FC745D171BF3C30)
  %671 = tail call double @llvm.fma.f64(double %663, double %670, double 0x3FCC71C71C7792CE)
  %672 = tail call double @llvm.fma.f64(double %663, double %671, double 0x3FD24924924920DA)
  %673 = tail call double @llvm.fma.f64(double %663, double %672, double 0x3FD999999999999C)
  %674 = sitofp i32 %630 to double
  %675 = fmul double %674, 0x3FE62E42FEFA39EF
  %676 = fneg double %675
  %677 = tail call double @llvm.fma.f64(double %674, double 0x3FE62E42FEFA39EF, double %676)
  %678 = tail call double @llvm.fma.f64(double %674, double 0x3C7ABC9E3B39803F, double %677)
  %679 = fadd double %675, %678
  %680 = fsub double %679, %675
  %681 = fsub double %678, %680
  %682 = tail call double @llvm.amdgcn.ldexp.f64(double %655, i32 1)
  %683 = tail call double @llvm.amdgcn.ldexp.f64(double %657, i32 1)
  %684 = fmul double %655, %663
  %685 = fneg double %684
  %686 = tail call double @llvm.fma.f64(double %663, double %655, double %685)
  %687 = tail call double @llvm.fma.f64(double %663, double %657, double %686)
  %688 = tail call double @llvm.fma.f64(double %665, double %655, double %687)
  %689 = fadd double %684, %688
  %690 = fsub double %689, %684
  %691 = fsub double %688, %690
  %692 = fmul double %663, %673
  %693 = fneg double %692
  %694 = tail call double @llvm.fma.f64(double %663, double %673, double %693)
  %695 = tail call double @llvm.fma.f64(double %665, double %673, double %694)
  %696 = fadd double %692, %695
  %697 = fsub double %696, %692
  %698 = fsub double %695, %697
  %699 = fadd double %696, 0x3FE5555555555555
  %700 = fadd double %699, 0xBFE5555555555555
  %701 = fsub double %696, %700
  %702 = fadd double %698, 0x3C8543B0D5DF274D
  %703 = fadd double %702, %701
  %704 = fadd double %699, %703
  %705 = fsub double %704, %699
  %706 = fsub double %703, %705
  %707 = fmul double %689, %704
  %708 = fneg double %707
  %709 = tail call double @llvm.fma.f64(double %689, double %704, double %708)
  %710 = tail call double @llvm.fma.f64(double %689, double %706, double %709)
  %711 = tail call double @llvm.fma.f64(double %691, double %704, double %710)
  %712 = fadd double %707, %711
  %713 = fsub double %712, %707
  %714 = fsub double %711, %713
  %715 = fadd double %682, %712
  %716 = fsub double %715, %682
  %717 = fsub double %712, %716
  %718 = fadd double %683, %714
  %719 = fadd double %718, %717
  %720 = fadd double %715, %719
  %721 = fsub double %720, %715
  %722 = fsub double %719, %721
  %723 = fadd double %679, %720
  %724 = fsub double %723, %679
  %725 = fsub double %723, %724
  %726 = fsub double %679, %725
  %727 = fsub double %720, %724
  %728 = fadd double %727, %726
  %729 = fadd double %681, %722
  %730 = fsub double %729, %681
  %731 = fsub double %729, %730
  %732 = fsub double %681, %731
  %733 = fsub double %722, %730
  %734 = fadd double %733, %732
  %735 = fadd double %729, %728
  %736 = fadd double %723, %735
  %737 = fsub double %736, %723
  %738 = fsub double %735, %737
  %739 = fadd double %734, %738
  %740 = fadd double %736, %739
  %741 = fsub double %740, %736
  %742 = fsub double %739, %741
  %743 = fmul double %740, 2.000000e+00
  %744 = fneg double %743
  %745 = tail call double @llvm.fma.f64(double %740, double 2.000000e+00, double %744)
  %746 = tail call double @llvm.fma.f64(double %742, double 2.000000e+00, double %745)
  %747 = fadd double %743, %746
  %748 = fsub double %747, %743
  %749 = fsub double %746, %748
  %750 = tail call double @llvm.fabs.f64(double %743) #6
  %751 = fcmp oeq double %750, 0x7FF0000000000000
  %752 = select i1 %751, double %743, double %747
  %753 = tail call double @llvm.fabs.f64(double %752) #6
  %754 = fcmp oeq double %753, 0x7FF0000000000000
  %755 = select i1 %754, double 0.000000e+00, double %749
  %756 = fmul double %752, 0x3FF71547652B82FE
  %757 = tail call double @llvm.rint.f64(double %756)
  %758 = fneg double %757
  %759 = tail call double @llvm.fma.f64(double %758, double 0x3FE62E42FEFA39EF, double %752)
  %760 = tail call double @llvm.fma.f64(double %758, double 0x3C7ABC9E3B39803F, double %759)
  %761 = tail call double @llvm.fma.f64(double %760, double 0x3E5ADE156A5DCB37, double 0x3E928AF3FCA7AB0C)
  %762 = tail call double @llvm.fma.f64(double %760, double %761, double 0x3EC71DEE623FDE64)
  %763 = tail call double @llvm.fma.f64(double %760, double %762, double 0x3EFA01997C89E6B0)
  %764 = tail call double @llvm.fma.f64(double %760, double %763, double 0x3F2A01A014761F6E)
  %765 = tail call double @llvm.fma.f64(double %760, double %764, double 0x3F56C16C1852B7B0)
  %766 = tail call double @llvm.fma.f64(double %760, double %765, double 0x3F81111111122322)
  %767 = tail call double @llvm.fma.f64(double %760, double %766, double 0x3FA55555555502A1)
  %768 = tail call double @llvm.fma.f64(double %760, double %767, double 0x3FC5555555555511)
  %769 = tail call double @llvm.fma.f64(double %760, double %768, double 0x3FE000000000000B)
  %770 = tail call double @llvm.fma.f64(double %760, double %769, double 1.000000e+00)
  %771 = tail call double @llvm.fma.f64(double %760, double %770, double 1.000000e+00)
  %772 = fptosi double %757 to i32
  %773 = tail call double @llvm.amdgcn.ldexp.f64(double %771, i32 %772)
  %774 = fcmp ogt double %752, 1.024000e+03
  %775 = select i1 %774, double 0x7FF0000000000000, double %773
  %776 = fcmp olt double %752, -1.075000e+03
  %777 = select i1 %776, double 0.000000e+00, double %775
  %778 = tail call double @llvm.fma.f64(double %777, double %755, double %777)
  %779 = tail call double @llvm.fabs.f64(double %777) #6
  %780 = fcmp oeq double %779, 0x7FF0000000000000
  %781 = select i1 %780, double %777, double %778
  %782 = tail call double @llvm.fabs.f64(double %781)
  %783 = fcmp oeq double %624, 0x7FF0000000000000
  %784 = icmp eq i32 %622, 0
  %785 = or i1 %784, %783
  %786 = select i1 %784, double 0.000000e+00, double 0x7FF0000000000000
  %787 = select i1 %785, double %786, double %782
  %788 = icmp eq i32 %622, 1
  %789 = select i1 %788, double 1.000000e+00, double %787
  %790 = add nsw i32 %621, -228
  %791 = sitofp i32 %790 to double
  %792 = tail call double @llvm.fabs.f64(double %791)
  %793 = tail call double @llvm.amdgcn.frexp.mant.f64(double %792)
  %794 = fcmp olt double %793, 0x3FE5555555555555
  %795 = zext i1 %794 to i32
  %796 = tail call double @llvm.amdgcn.ldexp.f64(double %793, i32 %795)
  %797 = tail call i32 @llvm.amdgcn.frexp.exp.i32.f64(double %792)
  %798 = sub nsw i32 %797, %795
  %799 = fadd double %796, -1.000000e+00
  %800 = fadd double %796, 1.000000e+00
  %801 = fadd double %800, -1.000000e+00
  %802 = fsub double %796, %801
  %803 = tail call double @llvm.amdgcn.rcp.f64(double %800)
  %804 = fneg double %800
  %805 = tail call double @llvm.fma.f64(double %804, double %803, double 1.000000e+00)
  %806 = tail call double @llvm.fma.f64(double %805, double %803, double %803)
  %807 = tail call double @llvm.fma.f64(double %804, double %806, double 1.000000e+00)
  %808 = tail call double @llvm.fma.f64(double %807, double %806, double %806)
  %809 = fmul double %799, %808
  %810 = fmul double %800, %809
  %811 = fneg double %810
  %812 = tail call double @llvm.fma.f64(double %809, double %800, double %811)
  %813 = tail call double @llvm.fma.f64(double %809, double %802, double %812)
  %814 = fadd double %810, %813
  %815 = fsub double %814, %810
  %816 = fsub double %813, %815
  %817 = fsub double %799, %814
  %818 = fsub double %799, %817
  %819 = fsub double %818, %814
  %820 = fsub double %819, %816
  %821 = fadd double %817, %820
  %822 = fmul double %808, %821
  %823 = fadd double %809, %822
  %824 = fsub double %823, %809
  %825 = fsub double %822, %824
  %826 = fmul double %823, %823
  %827 = fneg double %826
  %828 = tail call double @llvm.fma.f64(double %823, double %823, double %827)
  %829 = fmul double %825, 2.000000e+00
  %830 = tail call double @llvm.fma.f64(double %823, double %829, double %828)
  %831 = fadd double %826, %830
  %832 = fsub double %831, %826
  %833 = fsub double %830, %832
  %834 = tail call double @llvm.fma.f64(double %831, double 0x3FBDEE674222DE17, double 0x3FBA6564968915A9)
  %835 = tail call double @llvm.fma.f64(double %831, double %834, double 0x3FBE25E43ABE935A)
  %836 = tail call double @llvm.fma.f64(double %831, double %835, double 0x3FC110EF47E6C9C2)
  %837 = tail call double @llvm.fma.f64(double %831, double %836, double 0x3FC3B13BCFA74449)
  %838 = tail call double @llvm.fma.f64(double %831, double %837, double 0x3FC745D171BF3C30)
  %839 = tail call double @llvm.fma.f64(double %831, double %838, double 0x3FCC71C71C7792CE)
  %840 = tail call double @llvm.fma.f64(double %831, double %839, double 0x3FD24924924920DA)
  %841 = tail call double @llvm.fma.f64(double %831, double %840, double 0x3FD999999999999C)
  %842 = sitofp i32 %798 to double
  %843 = fmul double %842, 0x3FE62E42FEFA39EF
  %844 = fneg double %843
  %845 = tail call double @llvm.fma.f64(double %842, double 0x3FE62E42FEFA39EF, double %844)
  %846 = tail call double @llvm.fma.f64(double %842, double 0x3C7ABC9E3B39803F, double %845)
  %847 = fadd double %843, %846
  %848 = fsub double %847, %843
  %849 = fsub double %846, %848
  %850 = tail call double @llvm.amdgcn.ldexp.f64(double %823, i32 1)
  %851 = tail call double @llvm.amdgcn.ldexp.f64(double %825, i32 1)
  %852 = fmul double %823, %831
  %853 = fneg double %852
  %854 = tail call double @llvm.fma.f64(double %831, double %823, double %853)
  %855 = tail call double @llvm.fma.f64(double %831, double %825, double %854)
  %856 = tail call double @llvm.fma.f64(double %833, double %823, double %855)
  %857 = fadd double %852, %856
  %858 = fsub double %857, %852
  %859 = fsub double %856, %858
  %860 = fmul double %831, %841
  %861 = fneg double %860
  %862 = tail call double @llvm.fma.f64(double %831, double %841, double %861)
  %863 = tail call double @llvm.fma.f64(double %833, double %841, double %862)
  %864 = fadd double %860, %863
  %865 = fsub double %864, %860
  %866 = fsub double %863, %865
  %867 = fadd double %864, 0x3FE5555555555555
  %868 = fadd double %867, 0xBFE5555555555555
  %869 = fsub double %864, %868
  %870 = fadd double %866, 0x3C8543B0D5DF274D
  %871 = fadd double %870, %869
  %872 = fadd double %867, %871
  %873 = fsub double %872, %867
  %874 = fsub double %871, %873
  %875 = fmul double %857, %872
  %876 = fneg double %875
  %877 = tail call double @llvm.fma.f64(double %857, double %872, double %876)
  %878 = tail call double @llvm.fma.f64(double %857, double %874, double %877)
  %879 = tail call double @llvm.fma.f64(double %859, double %872, double %878)
  %880 = fadd double %875, %879
  %881 = fsub double %880, %875
  %882 = fsub double %879, %881
  %883 = fadd double %850, %880
  %884 = fsub double %883, %850
  %885 = fsub double %880, %884
  %886 = fadd double %851, %882
  %887 = fadd double %886, %885
  %888 = fadd double %883, %887
  %889 = fsub double %888, %883
  %890 = fsub double %887, %889
  %891 = fadd double %847, %888
  %892 = fsub double %891, %847
  %893 = fsub double %891, %892
  %894 = fsub double %847, %893
  %895 = fsub double %888, %892
  %896 = fadd double %895, %894
  %897 = fadd double %849, %890
  %898 = fsub double %897, %849
  %899 = fsub double %897, %898
  %900 = fsub double %849, %899
  %901 = fsub double %890, %898
  %902 = fadd double %901, %900
  %903 = fadd double %897, %896
  %904 = fadd double %891, %903
  %905 = fsub double %904, %891
  %906 = fsub double %903, %905
  %907 = fadd double %902, %906
  %908 = fadd double %904, %907
  %909 = fsub double %908, %904
  %910 = fsub double %907, %909
  %911 = fmul double %908, 2.000000e+00
  %912 = fneg double %911
  %913 = tail call double @llvm.fma.f64(double %908, double 2.000000e+00, double %912)
  %914 = tail call double @llvm.fma.f64(double %910, double 2.000000e+00, double %913)
  %915 = fadd double %911, %914
  %916 = fsub double %915, %911
  %917 = fsub double %914, %916
  %918 = tail call double @llvm.fabs.f64(double %911) #6
  %919 = fcmp oeq double %918, 0x7FF0000000000000
  %920 = select i1 %919, double %911, double %915
  %921 = tail call double @llvm.fabs.f64(double %920) #6
  %922 = fcmp oeq double %921, 0x7FF0000000000000
  %923 = select i1 %922, double 0.000000e+00, double %917
  %924 = fmul double %920, 0x3FF71547652B82FE
  %925 = tail call double @llvm.rint.f64(double %924)
  %926 = fneg double %925
  %927 = tail call double @llvm.fma.f64(double %926, double 0x3FE62E42FEFA39EF, double %920)
  %928 = tail call double @llvm.fma.f64(double %926, double 0x3C7ABC9E3B39803F, double %927)
  %929 = tail call double @llvm.fma.f64(double %928, double 0x3E5ADE156A5DCB37, double 0x3E928AF3FCA7AB0C)
  %930 = tail call double @llvm.fma.f64(double %928, double %929, double 0x3EC71DEE623FDE64)
  %931 = tail call double @llvm.fma.f64(double %928, double %930, double 0x3EFA01997C89E6B0)
  %932 = tail call double @llvm.fma.f64(double %928, double %931, double 0x3F2A01A014761F6E)
  %933 = tail call double @llvm.fma.f64(double %928, double %932, double 0x3F56C16C1852B7B0)
  %934 = tail call double @llvm.fma.f64(double %928, double %933, double 0x3F81111111122322)
  %935 = tail call double @llvm.fma.f64(double %928, double %934, double 0x3FA55555555502A1)
  %936 = tail call double @llvm.fma.f64(double %928, double %935, double 0x3FC5555555555511)
  %937 = tail call double @llvm.fma.f64(double %928, double %936, double 0x3FE000000000000B)
  %938 = tail call double @llvm.fma.f64(double %928, double %937, double 1.000000e+00)
  %939 = tail call double @llvm.fma.f64(double %928, double %938, double 1.000000e+00)
  %940 = fptosi double %925 to i32
  %941 = tail call double @llvm.amdgcn.ldexp.f64(double %939, i32 %940)
  %942 = fcmp ogt double %920, 1.024000e+03
  %943 = select i1 %942, double 0x7FF0000000000000, double %941
  %944 = fcmp olt double %920, -1.075000e+03
  %945 = select i1 %944, double 0.000000e+00, double %943
  %946 = tail call double @llvm.fma.f64(double %945, double %923, double %945)
  %947 = tail call double @llvm.fabs.f64(double %945) #6
  %948 = fcmp oeq double %947, 0x7FF0000000000000
  %949 = select i1 %948, double %945, double %946
  %950 = tail call double @llvm.fabs.f64(double %949)
  %951 = fcmp oeq double %792, 0x7FF0000000000000
  %952 = icmp eq i32 %790, 0
  %953 = or i1 %952, %951
  %954 = select i1 %952, double 0.000000e+00, double 0x7FF0000000000000
  %955 = select i1 %953, double %954, double %950
  %956 = icmp eq i32 %790, 1
  %957 = select i1 %956, double 1.000000e+00, double %955
  %958 = fsub contract double %789, %957
  %959 = fdiv contract double %958, 5.000000e+01
  %960 = fadd contract double %613, %959
  %961 = add nuw nsw i32 %612, 1
  %962 = icmp eq i32 %961, %12
  br i1 %962, label %963, label %611, !llvm.loop !20

963:                                              ; preds = %611, %570, %608
  %964 = phi double [ 0.000000e+00, %608 ], [ 0.000000e+00, %570 ], [ %960, %611 ]
  %965 = shl i64 %30, 32
  %966 = ashr exact i64 %965, 32
  %967 = getelementptr inbounds double, double addrspace(1)* %7, i64 %966
  %968 = sitofp i32 %12 to double
  %969 = fdiv contract double %964, %968
  store double %969, double addrspace(1)* %967, align 8, !tbaa !8
  %970 = getelementptr inbounds double, double addrspace(1)* %10, i64 %966
  %971 = load double, double addrspace(1)* %970, align 8, !tbaa !8
  %972 = fmul double %969, 0x3FF71547652B82FE
  %973 = tail call double @llvm.rint.f64(double %972)
  %974 = fneg double %973
  %975 = tail call double @llvm.fma.f64(double %974, double 0x3FE62E42FEFA39EF, double %969)
  %976 = tail call double @llvm.fma.f64(double %974, double 0x3C7ABC9E3B39803F, double %975)
  %977 = tail call double @llvm.fma.f64(double %976, double 0x3E5ADE156A5DCB37, double 0x3E928AF3FCA7AB0C)
  %978 = tail call double @llvm.fma.f64(double %976, double %977, double 0x3EC71DEE623FDE64)
  %979 = tail call double @llvm.fma.f64(double %976, double %978, double 0x3EFA01997C89E6B0)
  %980 = tail call double @llvm.fma.f64(double %976, double %979, double 0x3F2A01A014761F6E)
  %981 = tail call double @llvm.fma.f64(double %976, double %980, double 0x3F56C16C1852B7B0)
  %982 = tail call double @llvm.fma.f64(double %976, double %981, double 0x3F81111111122322)
  %983 = tail call double @llvm.fma.f64(double %976, double %982, double 0x3FA55555555502A1)
  %984 = tail call double @llvm.fma.f64(double %976, double %983, double 0x3FC5555555555511)
  %985 = tail call double @llvm.fma.f64(double %976, double %984, double 0x3FE000000000000B)
  %986 = tail call double @llvm.fma.f64(double %976, double %985, double 1.000000e+00)
  %987 = tail call double @llvm.fma.f64(double %976, double %986, double 1.000000e+00)
  %988 = fptosi double %973 to i32
  %989 = tail call double @llvm.amdgcn.ldexp.f64(double %987, i32 %988)
  %990 = fcmp ogt double %969, 1.024000e+03
  %991 = select i1 %990, double 0x7FF0000000000000, double %989
  %992 = fcmp olt double %969, -1.075000e+03
  %993 = select i1 %992, double 0.000000e+00, double %991
  %994 = fmul contract double %971, %993
  store double %994, double addrspace(1)* %970, align 8, !tbaa !8
  br label %995

995:                                              ; preds = %963, %569
  %996 = getelementptr inbounds [512 x double], [512 x double] addrspace(3)* @_ZZ17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_E6buffer, i32 0, i32 %28
  store double 0.000000e+00, double addrspace(3)* %996, align 8, !tbaa !8
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %32, label %997, label %1002

997:                                              ; preds = %995
  %998 = shl i64 %30, 32
  %999 = ashr exact i64 %998, 32
  %1000 = getelementptr inbounds double, double addrspace(1)* %10, i64 %999
  %1001 = load double, double addrspace(1)* %1000, align 8, !tbaa !8
  store double %1001, double addrspace(3)* %996, align 8, !tbaa !8
  br label %1002

1002:                                             ; preds = %997, %995
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1003 = lshr i64 %26, 1
  %1004 = trunc i64 %1003 to i32
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1008

1006:                                             ; preds = %1017, %1002
  %1007 = icmp eq i32 %28, 0
  br i1 %1007, label %1020, label %1023

1008:                                             ; preds = %1002, %1017
  %1009 = phi i32 [ %1018, %1017 ], [ %1004, %1002 ]
  %1010 = icmp ult i32 %28, %1009
  br i1 %1010, label %1011, label %1017

1011:                                             ; preds = %1008
  %1012 = add nuw nsw i32 %1009, %28
  %1013 = getelementptr inbounds [512 x double], [512 x double] addrspace(3)* @_ZZ17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_E6buffer, i32 0, i32 %1012
  %1014 = load double, double addrspace(3)* %1013, align 8, !tbaa !8
  %1015 = load double, double addrspace(3)* %996, align 8, !tbaa !8
  %1016 = fadd contract double %1014, %1015
  store double %1016, double addrspace(3)* %996, align 8, !tbaa !8
  br label %1017

1017:                                             ; preds = %1011, %1008
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1018 = lshr i32 %1009, 1
  %1019 = icmp ult i32 %1009, 2
  br i1 %1019, label %1006, label %1008, !llvm.loop !21

1020:                                             ; preds = %1006
  %1021 = getelementptr inbounds double, double addrspace(1)* %18, i64 %21
  %1022 = load double, double addrspace(3)* getelementptr inbounds ([512 x double], [512 x double] addrspace(3)* @_ZZ17likelihood_kernelPdS_S_S_S_PiS0_S_PhS_S_iiiiiiS0_S_E6buffer, i32 0, i32 0), align 16, !tbaa !8
  store double %1022, double addrspace(1)* %1021, align 8, !tbaa !8
  br label %1023

1023:                                             ; preds = %1020, %1006
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fma.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.amdgcn.ldexp.f64(double, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f64(double, i32) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.amdgcn.trig.preop.f64(double, i32) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.amdgcn.fract.f64(double) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.amdgcn.frexp.mant.f64(double) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.frexp.exp.i32.f64(double) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.amdgcn.rcp.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.amdgcn.rsq.f64(double) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #5

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #3 = { convergent mustprogress nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { readnone }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{i16 1, i16 1025}
!6 = !{}
!7 = !{i32 0, i32 1024}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !10, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{!10, !10, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
