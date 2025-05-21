; ModuleID = 'find_ellipse_kernel.cu'
source_filename = "find_ellipse_kernel.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.texture = type { %struct.textureReference }
%struct.textureReference = type { i32, i32, i32, [3 x i32], %struct.hipChannelFormatDesc, i32, i32, i32, float, float, float, %struct.__hip_texture*, i32, i32 }
%struct.hipChannelFormatDesc = type { i32, i32, i32, i32, i32 }
%struct.__hip_texture = type opaque

@t_grad_x = protected addrspace(1) externally_initialized global %struct.texture undef, align 8
@t_grad_y = protected addrspace(1) externally_initialized global %struct.texture undef, align 8
@t_img = protected addrspace(1) externally_initialized global %struct.texture undef, align 8
@llvm.compiler.used = appending addrspace(1) global [3 x i8*] [i8* addrspacecast (i8 addrspace(1)* bitcast (%struct.texture addrspace(1)* @t_grad_x to i8 addrspace(1)*) to i8*), i8* addrspacecast (i8 addrspace(1)* bitcast (%struct.texture addrspace(1)* @t_grad_y to i8 addrspace(1)*) to i8*), i8* addrspacecast (i8 addrspace(1)* bitcast (%struct.texture addrspace(1)* @t_img to i8 addrspace(1)*) to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z12GICOV_kerneliPfS_S_PiS0_(i32 %0, float addrspace(1)* nocapture writeonly %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture readonly %3, i32 addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture readonly %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = add i32 %7, 22
  %9 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %10 = add nuw nsw i32 %9, 22
  %11 = load <4 x i32>*, <4 x i32>* addrspace(1)* bitcast (%struct.__hip_texture* addrspace(1)* getelementptr inbounds (%struct.texture, %struct.texture addrspace(1)* @t_grad_x, i64 0, i32 0, i32 11) to <4 x i32>* addrspace(1)*), align 8
  %12 = addrspacecast <4 x i32>* %11 to <4 x i32> addrspace(4)*
  %13 = load <4 x i32>, <4 x i32> addrspace(4)* %12, align 16, !tbaa !6
  %14 = load <4 x i32>*, <4 x i32>* addrspace(1)* bitcast (%struct.__hip_texture* addrspace(1)* getelementptr inbounds (%struct.texture, %struct.texture addrspace(1)* @t_grad_y, i64 0, i32 0, i32 11) to <4 x i32>* addrspace(1)*), align 8
  %15 = addrspacecast <4 x i32>* %14 to <4 x i32> addrspace(4)*
  %16 = load <4 x i32>, <4 x i32> addrspace(4)* %15, align 16, !tbaa !6
  br label %17

17:                                               ; preds = %6, %114
  %18 = phi i32 [ 0, %6 ], [ %121, %114 ]
  %19 = phi float [ 0.000000e+00, %6 ], [ %120, %114 ]
  %20 = mul nuw nsw i32 %18, 150
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ 0, %17 ], [ %106, %21 ]
  %23 = phi float [ 0.000000e+00, %17 ], [ %104, %21 ]
  %24 = phi float [ 0.000000e+00, %17 ], [ %112, %21 ]
  %25 = phi float [ 0.000000e+00, %17 ], [ %109, %21 ]
  %26 = add nuw nsw i32 %22, %20
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %27
  %29 = load i32, i32 addrspace(1)* %28, align 4, !tbaa !9, !amdgpu.noclobber !13
  %30 = add nsw i32 %29, %10
  %31 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %27
  %32 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !9, !amdgpu.noclobber !13
  %33 = add nsw i32 %32, %8
  %34 = mul nsw i32 %33, %0
  %35 = add nsw i32 %30, %34
  %36 = tail call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %13, i32 %35, i32 0, i32 0, i32 0)
  %37 = zext i32 %22 to i64
  %38 = getelementptr inbounds float, float addrspace(1)* %3, i64 %37
  %39 = load float, float addrspace(1)* %38, align 4, !tbaa !14, !amdgpu.noclobber !13
  %40 = fmul contract float %36, %39
  %41 = tail call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %16, i32 %35, i32 0, i32 0, i32 0)
  %42 = getelementptr inbounds float, float addrspace(1)* %2, i64 %37
  %43 = load float, float addrspace(1)* %42, align 4, !tbaa !14, !amdgpu.noclobber !13
  %44 = fmul contract float %41, %43
  %45 = fadd contract float %40, %44
  %46 = fadd contract float %23, %45
  %47 = fsub contract float %45, %25
  %48 = add nuw nsw i32 %22, 1
  %49 = sitofp i32 %48 to float
  %50 = fdiv contract float %47, %49
  %51 = fadd contract float %25, %50
  %52 = fsub contract float %45, %51
  %53 = fmul contract float %47, %52
  %54 = fadd contract float %24, %53
  %55 = add nuw nsw i32 %48, %20
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %56
  %58 = load i32, i32 addrspace(1)* %57, align 4, !tbaa !9, !amdgpu.noclobber !13
  %59 = add nsw i32 %58, %10
  %60 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %56
  %61 = load i32, i32 addrspace(1)* %60, align 4, !tbaa !9, !amdgpu.noclobber !13
  %62 = add nsw i32 %61, %8
  %63 = mul nsw i32 %62, %0
  %64 = add nsw i32 %59, %63
  %65 = tail call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %13, i32 %64, i32 0, i32 0, i32 0)
  %66 = zext i32 %48 to i64
  %67 = getelementptr inbounds float, float addrspace(1)* %3, i64 %66
  %68 = load float, float addrspace(1)* %67, align 4, !tbaa !14, !amdgpu.noclobber !13
  %69 = fmul contract float %65, %68
  %70 = tail call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %16, i32 %64, i32 0, i32 0, i32 0)
  %71 = getelementptr inbounds float, float addrspace(1)* %2, i64 %66
  %72 = load float, float addrspace(1)* %71, align 4, !tbaa !14, !amdgpu.noclobber !13
  %73 = fmul contract float %70, %72
  %74 = fadd contract float %69, %73
  %75 = fadd contract float %46, %74
  %76 = fsub contract float %74, %51
  %77 = add nuw nsw i32 %22, 2
  %78 = sitofp i32 %77 to float
  %79 = fdiv contract float %76, %78
  %80 = fadd contract float %51, %79
  %81 = fsub contract float %74, %80
  %82 = fmul contract float %76, %81
  %83 = fadd contract float %54, %82
  %84 = add nuw nsw i32 %77, %20
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %85
  %87 = load i32, i32 addrspace(1)* %86, align 4, !tbaa !9, !amdgpu.noclobber !13
  %88 = add nsw i32 %87, %10
  %89 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %85
  %90 = load i32, i32 addrspace(1)* %89, align 4, !tbaa !9, !amdgpu.noclobber !13
  %91 = add nsw i32 %90, %8
  %92 = mul nsw i32 %91, %0
  %93 = add nsw i32 %88, %92
  %94 = tail call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %13, i32 %93, i32 0, i32 0, i32 0)
  %95 = zext i32 %77 to i64
  %96 = getelementptr inbounds float, float addrspace(1)* %3, i64 %95
  %97 = load float, float addrspace(1)* %96, align 4, !tbaa !14, !amdgpu.noclobber !13
  %98 = fmul contract float %94, %97
  %99 = tail call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %16, i32 %93, i32 0, i32 0, i32 0)
  %100 = getelementptr inbounds float, float addrspace(1)* %2, i64 %95
  %101 = load float, float addrspace(1)* %100, align 4, !tbaa !14, !amdgpu.noclobber !13
  %102 = fmul contract float %99, %101
  %103 = fadd contract float %98, %102
  %104 = fadd contract float %75, %103
  %105 = fsub contract float %103, %80
  %106 = add nuw nsw i32 %22, 3
  %107 = sitofp i32 %106 to float
  %108 = fdiv contract float %105, %107
  %109 = fadd contract float %80, %108
  %110 = fsub contract float %103, %109
  %111 = fmul contract float %105, %110
  %112 = fadd contract float %83, %111
  %113 = icmp eq i32 %106, 150
  br i1 %113, label %114, label %21, !llvm.loop !16

114:                                              ; preds = %21
  %115 = fdiv contract float %104, 1.500000e+02
  %116 = fdiv contract float %112, 1.490000e+02
  %117 = fmul contract float %115, %115
  %118 = fdiv contract float %117, %116
  %119 = fcmp contract ogt float %118, %19
  %120 = select i1 %119, float %118, float %19
  %121 = add nuw nsw i32 %18, 1
  %122 = icmp eq i32 %121, 7
  br i1 %122, label %123, label %17, !llvm.loop !18

123:                                              ; preds = %114
  %124 = mul nsw i32 %8, %0
  %125 = add nsw i32 %124, %10
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float addrspace(1)* %1, i64 %126
  store float %120, float addrspace(1)* %127, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z13dilate_kerneliiiiPfS_(i32 %0, i32 %1, i32 %2, i32 %3, float addrspace(1)* nocapture writeonly %4, float addrspace(1)* nocapture readonly %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %9 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %10 = bitcast i8 addrspace(4)* %9 to i16 addrspace(4)*
  %11 = load i16, i16 addrspace(4)* %10, align 4, !range !19, !invariant.load !13
  %12 = zext i16 %11 to i32
  %13 = mul i32 %7, %12
  %14 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %15 = add i32 %13, %14
  %16 = freeze i32 %15
  %17 = freeze i32 %0
  %18 = sdiv i32 %16, %17
  %19 = mul i32 %18, %17
  %20 = sub i32 %16, %19
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %6
  %23 = sdiv i32 %3, -2
  %24 = lshr i32 %2, 1
  %25 = sub i32 %20, %24
  %26 = icmp slt i32 %3, 1
  %27 = add i32 %18, %23
  %28 = load <4 x i32>*, <4 x i32>* addrspace(1)* bitcast (%struct.__hip_texture* addrspace(1)* getelementptr inbounds (%struct.texture, %struct.texture addrspace(1)* @t_img, i64 0, i32 0, i32 11) to <4 x i32>* addrspace(1)*), align 8
  %29 = addrspacecast <4 x i32>* %28 to <4 x i32> addrspace(4)*
  br label %30

30:                                               ; preds = %22, %64
  %31 = phi float [ 0.000000e+00, %22 ], [ %65, %64 ]
  %32 = phi i32 [ 0, %22 ], [ %66, %64 ]
  %33 = add nsw i32 %25, %32
  %34 = icmp slt i32 %33, 0
  %35 = icmp sge i32 %33, %0
  %36 = select i1 %34, i1 true, i1 %35
  %37 = select i1 %36, i1 true, i1 %26
  br i1 %37, label %64, label %38

38:                                               ; preds = %30
  %39 = mul nsw i32 %32, %3
  br label %40

40:                                               ; preds = %38, %60
  %41 = phi float [ %31, %38 ], [ %61, %60 ]
  %42 = phi i32 [ 0, %38 ], [ %62, %60 ]
  %43 = add nsw i32 %27, %42
  %44 = icmp sgt i32 %43, -1
  %45 = icmp slt i32 %43, %1
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = add nsw i32 %42, %39
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float addrspace(1)* %5, i64 %49
  %51 = load float, float addrspace(1)* %50, align 4, !tbaa !14, !amdgpu.noclobber !13
  %52 = fcmp contract une float %51, 0.000000e+00
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = mul nsw i32 %43, %0
  %55 = add nsw i32 %54, %33
  %56 = load <4 x i32>, <4 x i32> addrspace(4)* %29, align 16, !tbaa !6
  %57 = tail call float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32> %56, i32 %55, i32 0, i32 0, i32 0)
  %58 = fcmp contract ogt float %57, %41
  %59 = select i1 %58, float %57, float %41
  br label %60

60:                                               ; preds = %40, %47, %53
  %61 = phi float [ %59, %53 ], [ %41, %47 ], [ %41, %40 ]
  %62 = add nuw nsw i32 %42, 1
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %64, label %40, !llvm.loop !20

64:                                               ; preds = %60, %30
  %65 = phi float [ %31, %30 ], [ %61, %60 ]
  %66 = add nuw nsw i32 %32, 1
  %67 = icmp eq i32 %66, %2
  br i1 %67, label %68, label %30, !llvm.loop !21

68:                                               ; preds = %64, %6
  %69 = phi float [ 0.000000e+00, %6 ], [ %65, %64 ]
  %70 = mul nsw i32 %20, %1
  %71 = add nsw i32 %70, %18
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float addrspace(1)* %4, i64 %72
  store float %69, float addrspace(1)* %73, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: nounwind readonly willreturn
declare float @llvm.amdgcn.struct.buffer.load.format.f32(<4 x i32>, i32, i32, i32, i32 immarg) #2

attributes #0 = { mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn }

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
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = !{}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{i16 1, i16 1025}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
