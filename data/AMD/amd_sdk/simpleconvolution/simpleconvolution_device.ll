; ModuleID = 'simpleconvolution/simpleconvolution.cpp'
source_filename = "simpleconvolution/simpleconvolution.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <2 x i32> }

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z29simpleNonSeparableConvolutionPjPfPi15HIP_vector_typeIjLj2EES3_j(i32 addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture writeonly %2, %struct.HIP_vector_type addrspace(4)* nocapture readonly byref(%struct.HIP_vector_type) align 8 %3, %struct.HIP_vector_type addrspace(4)* nocapture readonly byref(%struct.HIP_vector_type) align 8 %4, i32 %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i32, i32 addrspace(4)* %7, align 8
  %9 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %4, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i32, i32 addrspace(4)* %9, align 8
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %12 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %13 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %14 = bitcast i8 addrspace(4)* %13 to i16 addrspace(4)*
  %15 = load i16, i16 addrspace(4)* %14, align 4, !range !4, !invariant.load !5
  %16 = zext i16 %15 to i64
  %17 = zext i32 %12 to i64
  %18 = mul nuw nsw i64 %16, %17
  %19 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !6
  %20 = zext i32 %19 to i64
  %21 = add nuw nsw i64 %18, %20
  %22 = trunc i64 %21 to i32
  %23 = freeze i32 %22
  %24 = freeze i32 %8
  %25 = udiv i32 %23, %24
  %26 = mul i32 %25, %24
  %27 = sub i32 %23, %26
  %28 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %3, i64 0, i32 0, i32 0, i32 0, i64 1
  %29 = load i32, i32 addrspace(4)* %28, align 4
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %4, i64 0, i32 0, i32 0, i32 0, i64 1
  %33 = load i32, i32 addrspace(4)* %32, align 4
  %34 = add i32 %25, %33
  %35 = add i32 %27, %10
  %36 = icmp ult i32 %27, %35
  %37 = icmp ult i32 %25, %34
  br i1 %37, label %38, label %44

38:                                               ; preds = %31, %50
  %39 = phi float [ %51, %50 ], [ 0.000000e+00, %31 ]
  %40 = phi i32 [ %52, %50 ], [ %25, %31 ]
  %41 = phi i32 [ %53, %50 ], [ 0, %31 ]
  %42 = mul i32 %41, %10
  %43 = mul i32 %40, %5
  br i1 %36, label %55, label %50

44:                                               ; preds = %50, %31
  %45 = phi float [ 0.000000e+00, %31 ], [ %51, %50 ]
  %46 = fadd contract float %45, 5.000000e-01
  %47 = fptosi float %46 to i32
  %48 = and i64 %21, 4294967295
  %49 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %48
  store i32 %47, i32 addrspace(1)* %49, align 4, !tbaa !7
  br label %73

50:                                               ; preds = %55, %38
  %51 = phi float [ %39, %38 ], [ %69, %55 ]
  %52 = add nuw i32 %40, 1
  %53 = add nuw i32 %41, 1
  %54 = icmp eq i32 %53, %33
  br i1 %54, label %44, label %38, !llvm.loop !11

55:                                               ; preds = %38, %55
  %56 = phi float [ %69, %55 ], [ %39, %38 ]
  %57 = phi i32 [ %70, %55 ], [ %27, %38 ]
  %58 = phi i32 [ %71, %55 ], [ 0, %38 ]
  %59 = add i32 %58, %42
  %60 = add i32 %57, %43
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %61
  %63 = load i32, i32 addrspace(1)* %62, align 4, !tbaa !7
  %64 = uitofp i32 %63 to float
  %65 = zext i32 %59 to i64
  %66 = getelementptr inbounds float, float addrspace(1)* %1, i64 %65
  %67 = load float, float addrspace(1)* %66, align 4, !tbaa !13
  %68 = fmul contract float %67, %64
  %69 = fadd contract float %56, %68
  %70 = add nuw i32 %57, 1
  %71 = add nuw i32 %58, 1
  %72 = icmp eq i32 %71, %10
  br i1 %72, label %50, label %55, !llvm.loop !15

73:                                               ; preds = %6, %44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z31simpleSeparableConvolutionPass1PjPfS0_15HIP_vector_typeIjLj2EEjS2_(i32 addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture writeonly %2, %struct.HIP_vector_type addrspace(4)* nocapture readonly byref(%struct.HIP_vector_type) align 8 %3, i32 %4, %struct.HIP_vector_type addrspace(4)* nocapture readonly byref(%struct.HIP_vector_type) align 8 %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i32, i32 addrspace(4)* %7, align 8
  %9 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %5, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i32, i32 addrspace(4)* %9, align 4
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %12 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %13 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %14 = bitcast i8 addrspace(4)* %13 to i16 addrspace(4)*
  %15 = load i16, i16 addrspace(4)* %14, align 4, !range !4, !invariant.load !5
  %16 = zext i16 %15 to i32
  %17 = mul i32 %12, %16
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !6
  %19 = add i32 %17, %18
  %20 = freeze i32 %19
  %21 = freeze i32 %8
  %22 = udiv i32 %20, %21
  %23 = mul i32 %22, %21
  %24 = sub i32 %20, %23
  %25 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %3, i64 0, i32 0, i32 0, i32 0, i64 1
  %26 = load i32, i32 addrspace(4)* %25, align 4
  %27 = add i32 %4, -1
  %28 = add i32 %27, %26
  %29 = icmp ult i32 %22, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %5, i64 0, i32 0, i32 0, i32 0, i64 0
  %32 = load i32, i32 addrspace(4)* %31, align 8
  %33 = add i32 %24, %4
  %34 = mul i32 %22, %32
  %35 = icmp ult i32 %24, %33
  br i1 %35, label %42, label %36

36:                                               ; preds = %42, %30
  %37 = phi float [ 0.000000e+00, %30 ], [ %56, %42 ]
  %38 = mul i32 %24, %10
  %39 = add i32 %38, %22
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds float, float addrspace(1)* %2, i64 %40
  store float %37, float addrspace(1)* %41, align 4, !tbaa !13
  br label %59

42:                                               ; preds = %30, %42
  %43 = phi i32 [ %57, %42 ], [ %24, %30 ]
  %44 = phi float [ %56, %42 ], [ 0.000000e+00, %30 ]
  %45 = phi i32 [ %51, %42 ], [ 0, %30 ]
  %46 = add i32 %43, %34
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %47
  %49 = load i32, i32 addrspace(1)* %48, align 4, !tbaa !7
  %50 = uitofp i32 %49 to float
  %51 = add nuw i32 %45, 1
  %52 = zext i32 %45 to i64
  %53 = getelementptr inbounds float, float addrspace(1)* %1, i64 %52
  %54 = load float, float addrspace(1)* %53, align 4, !tbaa !13
  %55 = fmul contract float %54, %50
  %56 = fadd contract float %44, %55
  %57 = add nuw i32 %43, 1
  %58 = icmp eq i32 %51, %4
  br i1 %58, label %36, label %42, !llvm.loop !16

59:                                               ; preds = %6, %36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z31simpleSeparableConvolutionPass2PfS_Pi15HIP_vector_typeIjLj2EEjS2_(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture writeonly %2, %struct.HIP_vector_type addrspace(4)* nocapture readonly byref(%struct.HIP_vector_type) align 8 %3, i32 %4, %struct.HIP_vector_type addrspace(4)* nocapture readonly byref(%struct.HIP_vector_type) align 8 %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i32, i32 addrspace(4)* %7, align 8
  %9 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %3, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i32, i32 addrspace(4)* %9, align 4
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %12 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %13 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %14 = bitcast i8 addrspace(4)* %13 to i16 addrspace(4)*
  %15 = load i16, i16 addrspace(4)* %14, align 4, !range !4, !invariant.load !5
  %16 = zext i16 %15 to i32
  %17 = mul i32 %12, %16
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !6
  %19 = add i32 %17, %18
  %20 = freeze i32 %19
  %21 = freeze i32 %10
  %22 = udiv i32 %20, %21
  %23 = mul i32 %22, %21
  %24 = sub i32 %20, %23
  %25 = icmp ult i32 %22, %8
  br i1 %25, label %26, label %57

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(4)* %5, i64 0, i32 0, i32 0, i32 0, i64 1
  %28 = load i32, i32 addrspace(4)* %27, align 4
  %29 = add i32 %24, %4
  %30 = mul i32 %22, %28
  %31 = icmp ult i32 %24, %29
  br i1 %31, label %41, label %35

32:                                               ; preds = %41
  %33 = fadd contract float %54, 5.000000e-01
  %34 = fptosi float %33 to i32
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i32 [ 0, %26 ], [ %34, %32 ]
  %37 = mul i32 %24, %8
  %38 = add i32 %37, %22
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %39
  store i32 %36, i32 addrspace(1)* %40, align 4, !tbaa !7
  br label %57

41:                                               ; preds = %26, %41
  %42 = phi i32 [ %55, %41 ], [ %24, %26 ]
  %43 = phi float [ %54, %41 ], [ 0.000000e+00, %26 ]
  %44 = phi i32 [ %49, %41 ], [ 0, %26 ]
  %45 = add i32 %42, %30
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds float, float addrspace(1)* %0, i64 %46
  %48 = load float, float addrspace(1)* %47, align 4, !tbaa !13
  %49 = add nuw i32 %44, 1
  %50 = zext i32 %44 to i64
  %51 = getelementptr inbounds float, float addrspace(1)* %1, i64 %50
  %52 = load float, float addrspace(1)* %51, align 4, !tbaa !13
  %53 = fmul contract float %48, %52
  %54 = fadd contract float %43, %53
  %55 = add nuw i32 %42, 1
  %56 = icmp eq i32 %49, %4
  br i1 %56, label %32, label %41, !llvm.loop !17

57:                                               ; preds = %6, %35
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !9, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
