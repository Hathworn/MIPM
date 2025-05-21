; ModuleID = 'hip/hotspot/hotspot.cu'
source_filename = "hip/hotspot/hotspot.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16
@_ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z14calculate_tempiPfS_S_iiiiffffff(i32 %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture writeonly %3, i32 %4, i32 %5, i32 %6, i32 %7, float %8, float %9, float %10, float %11, float %12, float %13) local_unnamed_addr #0 {
  %15 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %16 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %17 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %18 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !5
  %19 = fdiv contract float %12, %8
  %20 = fdiv contract float 1.000000e+00, %9
  %21 = fdiv contract float 1.000000e+00, %10
  %22 = fdiv contract float 1.000000e+00, %11
  %23 = mul i32 %0, -2
  %24 = add i32 %23, 16
  %25 = mul nsw i32 %24, %16
  %26 = sub nsw i32 %25, %7
  %27 = mul nsw i32 %24, %15
  %28 = sub nsw i32 %27, %6
  %29 = add nsw i32 %26, 15
  %30 = add nsw i32 %28, 15
  %31 = add nsw i32 %26, %18
  %32 = add nsw i32 %28, %17
  %33 = mul nsw i32 %31, %4
  %34 = add nsw i32 %33, %32
  %35 = icmp sgt i32 %31, -1
  br i1 %35, label %36, label %50

36:                                               ; preds = %14
  %37 = icmp slt i32 %31, %5
  %38 = icmp sgt i32 %32, -1
  %39 = select i1 %37, i1 %38, i1 false
  %40 = icmp slt i32 %32, %4
  %41 = select i1 %39, i1 %40, i1 false
  %42 = sext i32 %34 to i64
  br i1 %41, label %43, label %50

43:                                               ; preds = %36
  %44 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda, i32 0, i32 %18, i32 %17
  %45 = getelementptr inbounds float, float addrspace(1)* %1, i64 %42
  %46 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda, i32 0, i32 %18, i32 %17
  %47 = getelementptr inbounds float, float addrspace(1)* %2, i64 %42
  %48 = load float, float addrspace(1)* %47, align 4, !tbaa !6, !amdgpu.noclobber !10
  store float %48, float addrspace(3)* %46, align 4, !tbaa !6
  %49 = load float, float addrspace(1)* %45, align 4, !tbaa !6, !amdgpu.noclobber !10
  store float %49, float addrspace(3)* %44, align 4, !tbaa !6
  br label %50

50:                                               ; preds = %43, %36, %14
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %51 = icmp slt i32 %26, 0
  %52 = sub nsw i32 0, %26
  %53 = select i1 %51, i32 %52, i32 0
  %54 = icmp slt i32 %29, %5
  %55 = sub i32 %5, %26
  %56 = add i32 %55, -1
  %57 = select i1 %54, i32 15, i32 %56
  %58 = icmp slt i32 %28, 0
  %59 = sub nsw i32 0, %28
  %60 = select i1 %58, i32 %59, i32 0
  %61 = icmp slt i32 %30, %4
  %62 = sub i32 %4, %28
  %63 = add i32 %62, -1
  %64 = select i1 %61, i32 15, i32 %63
  %65 = icmp sgt i32 %0, 0
  br i1 %65, label %66, label %139

66:                                               ; preds = %50
  %67 = add nuw nsw i32 %17, 1
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 %64)
  %69 = add nsw i32 %17, -1
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 %60)
  %71 = add nuw nsw i32 %18, 1
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 %57)
  %73 = add nsw i32 %18, -1
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 %53)
  %75 = icmp sgt i32 %60, %17
  %76 = icmp slt i32 %64, %17
  %77 = icmp sgt i32 %53, %18
  %78 = icmp slt i32 %57, %18
  %79 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda, i32 0, i32 %18, i32 %17
  %80 = fpext float %19 to double
  %81 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE13power_on_cuda, i32 0, i32 %18, i32 %17
  %82 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda, i32 0, i32 %72, i32 %17
  %83 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda, i32 0, i32 %74, i32 %17
  %84 = fpext float %21 to double
  %85 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda, i32 0, i32 %18, i32 %68
  %86 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE12temp_on_cuda, i32 0, i32 %18, i32 %70
  %87 = fpext float %20 to double
  %88 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t, i32 0, i32 %18, i32 %17
  %89 = add nsw i32 %0, -1
  br label %90

90:                                               ; preds = %138, %66
  %91 = phi i32 [ 0, %66 ], [ %92, %138 ]
  %92 = add nuw nsw i32 %91, 1
  %93 = icmp ult i32 %91, %17
  br i1 %93, label %94, label %132

94:                                               ; preds = %90
  %95 = sub nsw i32 14, %91
  %96 = icmp slt i32 %95, %17
  %97 = icmp uge i32 %91, %18
  %98 = select i1 %96, i1 true, i1 %97
  %99 = icmp slt i32 %95, %18
  %100 = select i1 %98, i1 true, i1 %99
  %101 = select i1 %100, i1 true, i1 %75
  %102 = select i1 %101, i1 true, i1 %76
  %103 = select i1 %102, i1 true, i1 %77
  %104 = select i1 %103, i1 true, i1 %78
  br i1 %104, label %132, label %105

105:                                              ; preds = %94
  %106 = load float, float addrspace(3)* %79, align 4, !tbaa !6
  %107 = fpext float %106 to double
  %108 = load float, float addrspace(3)* %81, align 4, !tbaa !6
  %109 = fpext float %108 to double
  %110 = load float, float addrspace(3)* %82, align 4, !tbaa !6
  %111 = load float, float addrspace(3)* %83, align 4, !tbaa !6
  %112 = fadd contract float %110, %111
  %113 = fpext float %112 to double
  %114 = fmul contract double %107, 2.000000e+00
  %115 = fsub contract double %113, %114
  %116 = fmul contract double %115, %84
  %117 = fadd contract double %116, %109
  %118 = load float, float addrspace(3)* %85, align 4, !tbaa !6
  %119 = load float, float addrspace(3)* %86, align 4, !tbaa !6
  %120 = fadd contract float %118, %119
  %121 = fpext float %120 to double
  %122 = fsub contract double %121, %114
  %123 = fmul contract double %122, %87
  %124 = fadd contract double %117, %123
  %125 = fsub contract float 8.000000e+01, %106
  %126 = fmul contract float %22, %125
  %127 = fpext float %126 to double
  %128 = fadd contract double %124, %127
  %129 = fmul contract double %128, %80
  %130 = fadd contract double %129, %107
  %131 = fptrunc double %130 to float
  store float %131, float addrspace(3)* %88, align 4, !tbaa !6
  br label %132

132:                                              ; preds = %105, %94, %90
  %133 = phi i1 [ true, %105 ], [ false, %94 ], [ false, %90 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %134 = icmp eq i32 %91, %89
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  br i1 %133, label %136, label %138

136:                                              ; preds = %135
  %137 = load float, float addrspace(3)* %88, align 4, !tbaa !6
  store float %137, float addrspace(3)* %79, align 4, !tbaa !6
  br label %138

138:                                              ; preds = %136, %135
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br label %90, !llvm.loop !11

139:                                              ; preds = %132, %50
  %140 = phi i1 [ undef, %50 ], [ %133, %132 ]
  br i1 %140, label %141, label %146

141:                                              ; preds = %139
  %142 = sext i32 %34 to i64
  %143 = getelementptr inbounds float, float addrspace(1)* %3, i64 %142
  %144 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ14calculate_tempiPfS_S_iiiiffffffE6temp_t, i32 0, i32 %18, i32 %17
  %145 = load float, float addrspace(3)* %144, align 4, !tbaa !6
  store float %145, float addrspace(1)* %143, align 4, !tbaa !6
  br label %146

146:                                              ; preds = %141, %139
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
