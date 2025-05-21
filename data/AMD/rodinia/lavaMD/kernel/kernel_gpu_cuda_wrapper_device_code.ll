; ModuleID = 'hip/lavaMD/kernel/kernel_gpu_cuda_wrapper.cu'
source_filename = "hip/lavaMD/kernel/kernel_gpu_cuda_wrapper.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.FOUR_VECTOR = type { double, double, double, double }
%struct.dim_str = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.box_str = type { i32, i32, i32, i32, i64, i32, [26 x %struct.nei_str] }
%struct.nei_str = type { i32, i32, i32, i32, i64 }

@_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared = internal unnamed_addr addrspace(3) global [100 x %struct.FOUR_VECTOR] undef, align 16
@_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rB_shared = internal unnamed_addr addrspace(3) global [100 x %struct.FOUR_VECTOR] undef, align 16
@_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9qB_shared = internal unnamed_addr addrspace(3) global [100 x double] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_(double %0, %struct.dim_str addrspace(4)* nocapture readonly byref(%struct.dim_str) align 8 %1, %struct.box_str addrspace(1)* nocapture readonly %2, %struct.FOUR_VECTOR addrspace(1)* nocapture readonly %3, double addrspace(1)* nocapture readonly %4, %struct.FOUR_VECTOR addrspace(1)* nocapture %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.dim_str, %struct.dim_str addrspace(4)* %1, i64 0, i32 4
  %8 = load i64, i64 addrspace(4)* %7, align 8, !amdgpu.noclobber !5
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !6
  %11 = sext i32 %9 to i64
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %148

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.box_str, %struct.box_str addrspace(1)* %2, i64 %11, i32 4
  %15 = load i64, i64 addrspace(1)* %14, align 8, !tbaa !7, !amdgpu.noclobber !5
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  %18 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %5, i64 %17
  %19 = icmp ult i32 %10, 100
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %3, i64 %17
  %22 = zext i32 %10 to i64
  %23 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %21, i64 %22
  %24 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared, i32 0, i32 %10
  %25 = bitcast %struct.FOUR_VECTOR addrspace(3)* %24 to i8 addrspace(3)*
  %26 = bitcast %struct.FOUR_VECTOR addrspace(1)* %23 to i8 addrspace(1)*
  tail call void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(32) %25, i8 addrspace(1)* noundef align 8 dereferenceable(32) %26, i64 32, i1 false), !tbaa.struct !13
  br label %27

27:                                               ; preds = %20, %13
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %28 = getelementptr inbounds %struct.box_str, %struct.box_str addrspace(1)* %2, i64 %11, i32 5
  %29 = load i32, i32 addrspace(1)* %28, align 8, !tbaa !16, !amdgpu.noclobber !5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %148, label %31

31:                                               ; preds = %27
  %32 = fmul contract double %0, -2.000000e+00
  %33 = fmul contract double %32, %0
  %34 = zext i32 %10 to i64
  %35 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rB_shared, i32 0, i32 %10
  %36 = bitcast %struct.FOUR_VECTOR addrspace(3)* %35 to i8 addrspace(3)*
  %37 = getelementptr inbounds [100 x double], [100 x double] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9qB_shared, i32 0, i32 %10
  %38 = zext i32 %10 to i64
  %39 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared, i32 0, i32 %10, i32 0
  %40 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared, i32 0, i32 %10, i32 1
  %41 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared, i32 0, i32 %10, i32 2
  %42 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rA_shared, i32 0, i32 %10, i32 3
  %43 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %18, i64 %38
  %44 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %43, i64 0, i32 0
  %45 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %43, i64 0, i32 1
  %46 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %43, i64 0, i32 2
  %47 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %43, i64 0, i32 3
  %48 = getelementptr double, double addrspace(1)* %4, i64 %34
  %49 = getelementptr %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %3, i64 %34
  br label %50

50:                                               ; preds = %31, %144
  %51 = phi i32 [ 0, %31 ], [ %145, %144 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = add nsw i32 %51, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.box_str, %struct.box_str addrspace(1)* %2, i64 %11, i32 6, i64 %55, i32 3
  %57 = load i32, i32 addrspace(1)* %56, align 4, !tbaa !17, !amdgpu.noclobber !5
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %50, %53
  %60 = phi i64 [ %11, %50 ], [ %58, %53 ]
  %61 = getelementptr inbounds %struct.box_str, %struct.box_str addrspace(1)* %2, i64 %60, i32 4
  %62 = load i64, i64 addrspace(1)* %61, align 8, !tbaa !7, !amdgpu.noclobber !5
  %63 = shl i64 %62, 32
  %64 = ashr exact i64 %63, 32
  br i1 %19, label %65, label %70

65:                                               ; preds = %59
  %66 = getelementptr %struct.FOUR_VECTOR, %struct.FOUR_VECTOR addrspace(1)* %49, i64 %64
  %67 = bitcast %struct.FOUR_VECTOR addrspace(1)* %66 to i8 addrspace(1)*
  tail call void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noundef align 16 dereferenceable(32) %36, i8 addrspace(1)* noundef align 8 dereferenceable(32) %67, i64 32, i1 false), !tbaa.struct !13
  %68 = getelementptr double, double addrspace(1)* %48, i64 %64
  %69 = load double, double addrspace(1)* %68, align 8, !tbaa !14
  store double %69, double addrspace(3)* %37, align 8, !tbaa !14
  br label %70

70:                                               ; preds = %65, %59
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %19, label %71, label %144

71:                                               ; preds = %70
  %72 = load double, double addrspace(3)* %39, align 16, !tbaa !19
  %73 = load double, double addrspace(3)* %40, align 8, !tbaa !21
  %74 = load double, double addrspace(3)* %41, align 16, !tbaa !22
  %75 = load double, double addrspace(3)* %42, align 8, !tbaa !23
  %76 = load double, double addrspace(1)* %44, align 8, !tbaa !19
  %77 = load double, double addrspace(1)* %45, align 8, !tbaa !21
  %78 = load double, double addrspace(1)* %46, align 8, !tbaa !22
  %79 = load double, double addrspace(1)* %47, align 8, !tbaa !23
  br label %80

80:                                               ; preds = %71, %80
  %81 = phi i32 [ 0, %71 ], [ %141, %80 ]
  %82 = phi double [ %76, %71 ], [ %134, %80 ]
  %83 = phi double [ %77, %71 ], [ %136, %80 ]
  %84 = phi double [ %78, %71 ], [ %138, %80 ]
  %85 = phi double [ %79, %71 ], [ %140, %80 ]
  %86 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rB_shared, i32 0, i32 %81, i32 0
  %87 = load double, double addrspace(3)* %86, align 16, !tbaa !19
  %88 = fadd contract double %72, %87
  %89 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rB_shared, i32 0, i32 %81, i32 1
  %90 = load double, double addrspace(3)* %89, align 8, !tbaa !21
  %91 = fmul contract double %73, %90
  %92 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rB_shared, i32 0, i32 %81, i32 2
  %93 = load double, double addrspace(3)* %92, align 16, !tbaa !22
  %94 = fmul contract double %74, %93
  %95 = fadd contract double %91, %94
  %96 = getelementptr inbounds [100 x %struct.FOUR_VECTOR], [100 x %struct.FOUR_VECTOR] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9rB_shared, i32 0, i32 %81, i32 3
  %97 = load double, double addrspace(3)* %96, align 8, !tbaa !23
  %98 = fmul contract double %75, %97
  %99 = fadd contract double %95, %98
  %100 = fsub contract double %88, %99
  %101 = fmul contract double %33, %100
  %102 = fmul double %101, 0x3FF71547652B82FE
  %103 = tail call double @llvm.rint.f64(double %102)
  %104 = fneg double %103
  %105 = tail call double @llvm.fma.f64(double %104, double 0x3FE62E42FEFA39EF, double %101)
  %106 = tail call double @llvm.fma.f64(double %104, double 0x3C7ABC9E3B39803F, double %105)
  %107 = tail call double @llvm.fma.f64(double %106, double 0x3E5ADE156A5DCB37, double 0x3E928AF3FCA7AB0C)
  %108 = tail call double @llvm.fma.f64(double %106, double %107, double 0x3EC71DEE623FDE64)
  %109 = tail call double @llvm.fma.f64(double %106, double %108, double 0x3EFA01997C89E6B0)
  %110 = tail call double @llvm.fma.f64(double %106, double %109, double 0x3F2A01A014761F6E)
  %111 = tail call double @llvm.fma.f64(double %106, double %110, double 0x3F56C16C1852B7B0)
  %112 = tail call double @llvm.fma.f64(double %106, double %111, double 0x3F81111111122322)
  %113 = tail call double @llvm.fma.f64(double %106, double %112, double 0x3FA55555555502A1)
  %114 = tail call double @llvm.fma.f64(double %106, double %113, double 0x3FC5555555555511)
  %115 = tail call double @llvm.fma.f64(double %106, double %114, double 0x3FE000000000000B)
  %116 = tail call double @llvm.fma.f64(double %106, double %115, double 1.000000e+00)
  %117 = tail call double @llvm.fma.f64(double %106, double %116, double 1.000000e+00)
  %118 = fptosi double %103 to i32
  %119 = tail call double @llvm.amdgcn.ldexp.f64(double %117, i32 %118)
  %120 = fcmp ogt double %101, 1.024000e+03
  %121 = select i1 %120, double 0x7FF0000000000000, double %119
  %122 = fcmp olt double %101, -1.075000e+03
  %123 = select i1 %122, double 0.000000e+00, double %121
  %124 = fmul contract double %123, 2.000000e+00
  %125 = fsub contract double %73, %90
  %126 = fmul contract double %125, %124
  %127 = fsub contract double %74, %93
  %128 = fmul contract double %127, %124
  %129 = fsub contract double %75, %97
  %130 = fmul contract double %129, %124
  %131 = getelementptr inbounds [100 x double], [100 x double] addrspace(3)* @_ZZ15kernel_gpu_cuda7par_str7dim_strP7box_strP11FOUR_VECTORPdS4_E9qB_shared, i32 0, i32 %81
  %132 = load double, double addrspace(3)* %131, align 8, !tbaa !14
  %133 = fmul contract double %132, %123
  %134 = fadd contract double %82, %133
  %135 = fmul contract double %132, %126
  %136 = fadd contract double %83, %135
  %137 = fmul contract double %132, %128
  %138 = fadd contract double %84, %137
  %139 = fmul contract double %132, %130
  %140 = fadd contract double %85, %139
  %141 = add nuw nsw i32 %81, 1
  %142 = icmp eq i32 %141, 100
  br i1 %142, label %143, label %80, !llvm.loop !24

143:                                              ; preds = %80
  store double %134, double addrspace(1)* %44, align 8, !tbaa !19
  store double %136, double addrspace(1)* %45, align 8, !tbaa !21
  store double %138, double addrspace(1)* %46, align 8, !tbaa !22
  store double %140, double addrspace(1)* %47, align 8, !tbaa !23
  br label %144

144:                                              ; preds = %143, %70
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %145 = add nuw nsw i32 %51, 1
  %146 = load i32, i32 addrspace(1)* %28, align 8, !tbaa !16, !amdgpu.noclobber !5
  %147 = icmp slt i32 %51, %146
  br i1 %147, label %50, label %148, !llvm.loop !26

148:                                              ; preds = %144, %27, %6
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.rint.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.amdgcn.ldexp.f64(double, i32) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noalias nocapture writeonly, i8 addrspace(1)* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{}
!6 = !{i32 0, i32 1024}
!7 = !{!8, !12, i64 16}
!8 = !{!"_ZTS7box_str", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16, !9, i64 24, !10, i64 32}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"long", !10, i64 0}
!13 = !{i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !10, i64 0}
!16 = !{!8, !9, i64 24}
!17 = !{!18, !9, i64 12}
!18 = !{!"_ZTS7nei_str", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16}
!19 = !{!20, !15, i64 0}
!20 = !{!"_ZTS11FOUR_VECTOR", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!21 = !{!20, !15, i64 8}
!22 = !{!20, !15, i64 16}
!23 = !{!20, !15, i64 24}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
