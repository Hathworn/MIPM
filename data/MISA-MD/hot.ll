
; __CLANG_OFFLOAD_BUNDLE____START__ hip-amdgcn-amd-amdhsa-gfx906
; ModuleID = 'hip_kernels.hip.cpp'
source_filename = "hip_kernels.hip.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct._cuAtomElement = type { i32, double, double }
%struct._domain = type { i32, i32, i32 }

@shared_atoms = external hidden local_unnamed_addr addrspace(3) global [0 x %struct._cuAtomElement], align 8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z5calDfP14_cuAtomElementll7_domain(%struct._cuAtomElement addrspace(1)* nocapture %0, i64 %1, i64 %2, %struct._domain addrspace(4)* nocapture readonly byref(%struct._domain) align 4 %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 0
  %6 = load i32, i32 addrspace(4)* %5, align 4, !amdgpu.noclobber !4
  %7 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 1
  %8 = load i32, i32 addrspace(4)* %7, align 4, !amdgpu.noclobber !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %16 = bitcast i8 addrspace(4)* %15 to i32 addrspace(4)*
  %17 = load i32, i32 addrspace(4)* %16, align 4, !tbaa !6
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !15
  %19 = mul i32 %9, %14
  %20 = add i32 %19, %18
  %21 = sub nsw i64 %2, %1
  %22 = sext i32 %6 to i64
  %23 = mul nsw i64 %21, %22
  %24 = sext i32 %8 to i64
  %25 = mul nsw i64 %23, %24
  %26 = udiv i32 %17, %14
  %27 = mul i32 %26, %14
  %28 = icmp ugt i32 %17, %27
  %29 = zext i1 %28 to i32
  %30 = add i32 %26, %29
  %31 = mul i32 %30, %14
  %32 = sext i32 %20 to i64
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = mul i32 %8, %6
  %36 = freeze i32 %35
  br label %38

37:                                               ; preds = %56, %4
  ret void

38:                                               ; preds = %34, %56
  %39 = phi i32 [ %20, %34 ], [ %57, %56 ]
  %40 = freeze i32 %39
  %41 = srem i32 %40, %36
  %42 = srem i32 %40, %36
  %43 = sub nsw i32 %40, %42
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 0
  %47 = load i32, i32 addrspace(1)* %46, align 8, !tbaa !16, !amdgpu.noclobber !4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 1
  %51 = load double, double addrspace(1)* %50, align 8, !tbaa !22, !amdgpu.noclobber !4
  %52 = sitofp i32 %47 to double
  %53 = fmul contract double %51, %52
  %54 = fmul contract double %53, 5.000000e-01
  %55 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 2
  store double %54, double addrspace(1)* %55, align 8, !tbaa !23
  br label %56

56:                                               ; preds = %38, %49
  %57 = add i32 %40, %31
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i64 %25, %58
  br i1 %59, label %38, label %37, !llvm.loop !24
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z15calDf_optimizedP14_cuAtomElementll7_domain(%struct._cuAtomElement addrspace(1)* nocapture %0, i64 %1, i64 %2, %struct._domain addrspace(4)* nocapture readonly byref(%struct._domain) align 4 %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 0
  %6 = load i32, i32 addrspace(4)* %5, align 4, !amdgpu.noclobber !4
  %7 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 1
  %8 = load i32, i32 addrspace(4)* %7, align 4, !amdgpu.noclobber !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %16 = bitcast i8 addrspace(4)* %15 to i32 addrspace(4)*
  %17 = load i32, i32 addrspace(4)* %16, align 4, !tbaa !6
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !15
  %19 = mul i32 %9, %14
  %20 = add i32 %19, %18
  %21 = sub nsw i64 %2, %1
  %22 = sext i32 %6 to i64
  %23 = mul nsw i64 %21, %22
  %24 = sext i32 %8 to i64
  %25 = mul nsw i64 %23, %24
  %26 = udiv i32 %17, %14
  %27 = mul i32 %26, %14
  %28 = icmp ugt i32 %17, %27
  %29 = zext i1 %28 to i32
  %30 = add i32 %26, %29
  %31 = mul i32 %30, %14
  %32 = sext i32 %20 to i64
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = mul i32 %8, %6
  %36 = freeze i32 %35
  %37 = getelementptr inbounds [0 x %struct._cuAtomElement], [0 x %struct._cuAtomElement] addrspace(3)* @shared_atoms, i32 0, i32 %18
  %38 = bitcast %struct._cuAtomElement addrspace(3)* %37 to i8 addrspace(3)*
  %39 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(3)* %37, i32 0, i32 0
  %40 = getelementptr inbounds [0 x %struct._cuAtomElement], [0 x %struct._cuAtomElement] addrspace(3)* @shared_atoms, i32 0, i32 %18, i32 1
  br label %42

41:                                               ; preds = %60, %4
  ret void

42:                                               ; preds = %34, %60
  %43 = phi i32 [ %20, %34 ], [ %61, %60 ]
  %44 = freeze i32 %43
  %45 = srem i32 %44, %36
  %46 = srem i32 %44, %36
  %47 = sub nsw i32 %44, %46
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %49
  %51 = bitcast %struct._cuAtomElement addrspace(1)* %50 to i8 addrspace(1)*
  tail call void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noundef align 8 dereferenceable(24) %38, i8 addrspace(1)* noundef align 8 dereferenceable(24) %51, i64 24, i1 false), !tbaa.struct !26
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %52 = load i32, i32 addrspace(3)* %39, align 8, !tbaa !16
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load double, double addrspace(3)* %40, align 8, !tbaa !22
  %56 = sitofp i32 %52 to double
  %57 = fmul contract double %55, %56
  %58 = fmul contract double %57, 5.000000e-01
  %59 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %49, i32 2
  store double %58, double addrspace(1)* %59, align 8, !tbaa !23
  br label %60

60:                                               ; preds = %54, %42
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %61 = add i32 %44, %31
  %62 = sext i32 %61 to i64
  %63 = icmp sgt i64 %25, %62
  br i1 %63, label %42, label %41, !llvm.loop !29
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noalias nocapture writeonly, i8 addrspace(1)* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 340750feeda88c9c2ce8ad481b11d9aa7f033d39)"}
!4 = !{}
!5 = !{i16 1, i16 1025}
!6 = !{!7, !11, i64 12}
!7 = !{!"hsa_kernel_dispatch_packet_s", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !13, i64 40, !12, i64 48, !14, i64 56}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"hsa_signal_s", !12, i64 0}
!15 = !{i32 0, i32 1024}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTS14_cuAtomElement", !18, i64 0, !21, i64 8, !21, i64 16}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"double", !19, i64 0}
!22 = !{!17, !21, i64 8}
!23 = !{!17, !21, i64 16}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 0, i64 4, !27, i64 8, i64 8, !28, i64 16, i64 8, !28}
!27 = !{!18, !18, i64 0}
!28 = !{!21, !21, i64 0}
!29 = distinct !{!29, !25}

; __CLANG_OFFLOAD_BUNDLE____END__ hip-amdgcn-amd-amdhsa-gfx906

; __CLANG_OFFLOAD_BUNDLE____START__ hip-amdgcn-amd-amdhsa-gfx926
; ModuleID = 'hip_kernels.hip.cpp'
source_filename = "hip_kernels.hip.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct._cuAtomElement = type { i32, double, double }
%struct._domain = type { i32, i32, i32 }

@shared_atoms = external hidden local_unnamed_addr addrspace(3) global [0 x %struct._cuAtomElement], align 8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z5calDfP14_cuAtomElementll7_domain(%struct._cuAtomElement addrspace(1)* nocapture %0, i64 %1, i64 %2, %struct._domain addrspace(4)* nocapture readonly byref(%struct._domain) align 4 %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 0
  %6 = load i32, i32 addrspace(4)* %5, align 4, !amdgpu.noclobber !4
  %7 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 1
  %8 = load i32, i32 addrspace(4)* %7, align 4, !amdgpu.noclobber !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %16 = bitcast i8 addrspace(4)* %15 to i32 addrspace(4)*
  %17 = load i32, i32 addrspace(4)* %16, align 4, !tbaa !6
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !15
  %19 = mul i32 %9, %14
  %20 = add i32 %19, %18
  %21 = sub nsw i64 %2, %1
  %22 = sext i32 %6 to i64
  %23 = mul nsw i64 %21, %22
  %24 = sext i32 %8 to i64
  %25 = mul nsw i64 %23, %24
  %26 = udiv i32 %17, %14
  %27 = mul i32 %26, %14
  %28 = icmp ugt i32 %17, %27
  %29 = zext i1 %28 to i32
  %30 = add i32 %26, %29
  %31 = mul i32 %30, %14
  %32 = sext i32 %20 to i64
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = mul i32 %8, %6
  %36 = freeze i32 %35
  br label %38

37:                                               ; preds = %56, %4
  ret void

38:                                               ; preds = %34, %56
  %39 = phi i32 [ %20, %34 ], [ %57, %56 ]
  %40 = freeze i32 %39
  %41 = srem i32 %40, %36
  %42 = srem i32 %40, %36
  %43 = sub nsw i32 %40, %42
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 0
  %47 = load i32, i32 addrspace(1)* %46, align 8, !tbaa !16, !amdgpu.noclobber !4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 1
  %51 = load double, double addrspace(1)* %50, align 8, !tbaa !22, !amdgpu.noclobber !4
  %52 = sitofp i32 %47 to double
  %53 = fmul contract double %51, %52
  %54 = fmul contract double %53, 5.000000e-01
  %55 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 2
  store double %54, double addrspace(1)* %55, align 8, !tbaa !23
  br label %56

56:                                               ; preds = %38, %49
  %57 = add i32 %40, %31
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i64 %25, %58
  br i1 %59, label %38, label %37, !llvm.loop !24
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z15calDf_optimizedP14_cuAtomElementll7_domain(%struct._cuAtomElement addrspace(1)* nocapture %0, i64 %1, i64 %2, %struct._domain addrspace(4)* nocapture readonly byref(%struct._domain) align 4 %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 0
  %6 = load i32, i32 addrspace(4)* %5, align 4, !amdgpu.noclobber !4
  %7 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 1
  %8 = load i32, i32 addrspace(4)* %7, align 4, !amdgpu.noclobber !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %16 = bitcast i8 addrspace(4)* %15 to i32 addrspace(4)*
  %17 = load i32, i32 addrspace(4)* %16, align 4, !tbaa !6
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !15
  %19 = mul i32 %9, %14
  %20 = add i32 %19, %18
  %21 = sub nsw i64 %2, %1
  %22 = sext i32 %6 to i64
  %23 = mul nsw i64 %21, %22
  %24 = sext i32 %8 to i64
  %25 = mul nsw i64 %23, %24
  %26 = udiv i32 %17, %14
  %27 = mul i32 %26, %14
  %28 = icmp ugt i32 %17, %27
  %29 = zext i1 %28 to i32
  %30 = add i32 %26, %29
  %31 = mul i32 %30, %14
  %32 = sext i32 %20 to i64
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = mul i32 %8, %6
  %36 = freeze i32 %35
  %37 = getelementptr inbounds [0 x %struct._cuAtomElement], [0 x %struct._cuAtomElement] addrspace(3)* @shared_atoms, i32 0, i32 %18
  %38 = bitcast %struct._cuAtomElement addrspace(3)* %37 to i8 addrspace(3)*
  %39 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(3)* %37, i32 0, i32 0
  %40 = getelementptr inbounds [0 x %struct._cuAtomElement], [0 x %struct._cuAtomElement] addrspace(3)* @shared_atoms, i32 0, i32 %18, i32 1
  br label %42

41:                                               ; preds = %60, %4
  ret void

42:                                               ; preds = %34, %60
  %43 = phi i32 [ %20, %34 ], [ %61, %60 ]
  %44 = freeze i32 %43
  %45 = srem i32 %44, %36
  %46 = srem i32 %44, %36
  %47 = sub nsw i32 %44, %46
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %49
  %51 = bitcast %struct._cuAtomElement addrspace(1)* %50 to i8 addrspace(1)*
  tail call void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noundef align 8 dereferenceable(24) %38, i8 addrspace(1)* noundef align 8 dereferenceable(24) %51, i64 24, i1 false), !tbaa.struct !26
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %52 = load i32, i32 addrspace(3)* %39, align 8, !tbaa !16
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load double, double addrspace(3)* %40, align 8, !tbaa !22
  %56 = sitofp i32 %52 to double
  %57 = fmul contract double %55, %56
  %58 = fmul contract double %57, 5.000000e-01
  %59 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %49, i32 2
  store double %58, double addrspace(1)* %59, align 8, !tbaa !23
  br label %60

60:                                               ; preds = %54, %42
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %61 = add i32 %44, %31
  %62 = sext i32 %61 to i64
  %63 = icmp sgt i64 %25, %62
  br i1 %63, label %42, label %41, !llvm.loop !29
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noalias nocapture writeonly, i8 addrspace(1)* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx926" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx926-insts,+mmop-insts,+mmop64-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx926" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx926-insts,+mmop-insts,+mmop64-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 340750feeda88c9c2ce8ad481b11d9aa7f033d39)"}
!4 = !{}
!5 = !{i16 1, i16 1025}
!6 = !{!7, !11, i64 12}
!7 = !{!"hsa_kernel_dispatch_packet_s", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !13, i64 40, !12, i64 48, !14, i64 56}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"hsa_signal_s", !12, i64 0}
!15 = !{i32 0, i32 1024}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTS14_cuAtomElement", !18, i64 0, !21, i64 8, !21, i64 16}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"double", !19, i64 0}
!22 = !{!17, !21, i64 8}
!23 = !{!17, !21, i64 16}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 0, i64 4, !27, i64 8, i64 8, !28, i64 16, i64 8, !28}
!27 = !{!18, !18, i64 0}
!28 = !{!21, !21, i64 0}
!29 = distinct !{!29, !25}

; __CLANG_OFFLOAD_BUNDLE____END__ hip-amdgcn-amd-amdhsa-gfx926

; __CLANG_OFFLOAD_BUNDLE____START__ hip-amdgcn-amd-amdhsa-gfx928
; ModuleID = 'hip_kernels.hip.cpp'
source_filename = "hip_kernels.hip.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct._cuAtomElement = type { i32, double, double }
%struct._domain = type { i32, i32, i32 }

@shared_atoms = external hidden local_unnamed_addr addrspace(3) global [0 x %struct._cuAtomElement], align 8
@softfloat_countLeadingZeros8 = internal unnamed_addr addrspace(1) constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 1
@llvm.compiler.used = appending addrspace(1) global [4 x i8*] [i8* bitcast (double (double, double)* @__softfloat_f64_add to i8*), i8* bitcast (double (double, double)* @__softfloat_f64_div to i8*), i8* bitcast (double (double, double)* @__softfloat_f64_mul to i8*), i8* bitcast (double (double, double)* @__softfloat_f64_sub to i8*)], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z5calDfP14_cuAtomElementll7_domain(%struct._cuAtomElement addrspace(1)* nocapture %0, i64 %1, i64 %2, %struct._domain addrspace(4)* nocapture readonly byref(%struct._domain) align 4 %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 0
  %6 = load i32, i32 addrspace(4)* %5, align 4, !amdgpu.noclobber !4
  %7 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 1
  %8 = load i32, i32 addrspace(4)* %7, align 4, !amdgpu.noclobber !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %16 = bitcast i8 addrspace(4)* %15 to i32 addrspace(4)*
  %17 = load i32, i32 addrspace(4)* %16, align 4, !tbaa !6
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !15
  %19 = mul i32 %9, %14
  %20 = add i32 %19, %18
  %21 = sub nsw i64 %2, %1
  %22 = sext i32 %6 to i64
  %23 = mul nsw i64 %21, %22
  %24 = sext i32 %8 to i64
  %25 = mul nsw i64 %23, %24
  %26 = udiv i32 %17, %14
  %27 = mul i32 %26, %14
  %28 = icmp ugt i32 %17, %27
  %29 = zext i1 %28 to i32
  %30 = add i32 %26, %29
  %31 = mul i32 %30, %14
  %32 = sext i32 %20 to i64
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = mul i32 %8, %6
  %36 = freeze i32 %35
  br label %38

37:                                               ; preds = %56, %4
  ret void

38:                                               ; preds = %34, %56
  %39 = phi i32 [ %20, %34 ], [ %57, %56 ]
  %40 = freeze i32 %39
  %41 = srem i32 %40, %36
  %42 = srem i32 %40, %36
  %43 = sub nsw i32 %40, %42
  %44 = add nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 0
  %47 = load i32, i32 addrspace(1)* %46, align 8, !tbaa !16, !amdgpu.noclobber !4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 1
  %51 = load double, double addrspace(1)* %50, align 8, !tbaa !22, !amdgpu.noclobber !4
  %52 = sitofp i32 %47 to double
  %53 = fmul contract double %51, %52
  %54 = fmul contract double %53, 5.000000e-01
  %55 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %45, i32 2
  store double %54, double addrspace(1)* %55, align 8, !tbaa !23
  br label %56

56:                                               ; preds = %38, %49
  %57 = add i32 %40, %31
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i64 %25, %58
  br i1 %59, label %38, label %37, !llvm.loop !24
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z15calDf_optimizedP14_cuAtomElementll7_domain(%struct._cuAtomElement addrspace(1)* nocapture %0, i64 %1, i64 %2, %struct._domain addrspace(4)* nocapture readonly byref(%struct._domain) align 4 %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 0
  %6 = load i32, i32 addrspace(4)* %5, align 4, !amdgpu.noclobber !4
  %7 = getelementptr inbounds %struct._domain, %struct._domain addrspace(4)* %3, i64 0, i32 1
  %8 = load i32, i32 addrspace(4)* %7, align 4, !amdgpu.noclobber !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %16 = bitcast i8 addrspace(4)* %15 to i32 addrspace(4)*
  %17 = load i32, i32 addrspace(4)* %16, align 4, !tbaa !6
  %18 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !15
  %19 = mul i32 %9, %14
  %20 = add i32 %19, %18
  %21 = sub nsw i64 %2, %1
  %22 = sext i32 %6 to i64
  %23 = mul nsw i64 %21, %22
  %24 = sext i32 %8 to i64
  %25 = mul nsw i64 %23, %24
  %26 = udiv i32 %17, %14
  %27 = mul i32 %26, %14
  %28 = icmp ugt i32 %17, %27
  %29 = zext i1 %28 to i32
  %30 = add i32 %26, %29
  %31 = mul i32 %30, %14
  %32 = sext i32 %20 to i64
  %33 = icmp sgt i64 %25, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = mul i32 %8, %6
  %36 = freeze i32 %35
  %37 = getelementptr inbounds [0 x %struct._cuAtomElement], [0 x %struct._cuAtomElement] addrspace(3)* @shared_atoms, i32 0, i32 %18
  %38 = bitcast %struct._cuAtomElement addrspace(3)* %37 to i8 addrspace(3)*
  %39 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(3)* %37, i32 0, i32 0
  %40 = getelementptr inbounds [0 x %struct._cuAtomElement], [0 x %struct._cuAtomElement] addrspace(3)* @shared_atoms, i32 0, i32 %18, i32 1
  br label %42

41:                                               ; preds = %60, %4
  ret void

42:                                               ; preds = %34, %60
  %43 = phi i32 [ %20, %34 ], [ %61, %60 ]
  %44 = freeze i32 %43
  %45 = srem i32 %44, %36
  %46 = srem i32 %44, %36
  %47 = sub nsw i32 %44, %46
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %49
  %51 = bitcast %struct._cuAtomElement addrspace(1)* %50 to i8 addrspace(1)*
  tail call void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noundef align 8 dereferenceable(24) %38, i8 addrspace(1)* noundef align 8 dereferenceable(24) %51, i64 24, i1 false), !tbaa.struct !26
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %52 = load i32, i32 addrspace(3)* %39, align 8, !tbaa !16
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load double, double addrspace(3)* %40, align 8, !tbaa !22
  %56 = sitofp i32 %52 to double
  %57 = fmul contract double %55, %56
  %58 = fmul contract double %57, 5.000000e-01
  %59 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement addrspace(1)* %0, i64 %49, i32 2
  store double %58, double addrspace(1)* %59, align 8, !tbaa !23
  br label %60

60:                                               ; preds = %54, %42
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %61 = add i32 %44, %31
  %62 = sext i32 %61 to i64
  %63 = icmp sgt i64 %25, %62
  br i1 %63, label %42, label %41, !llvm.loop !29
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal double @__softfloat_f64_add(double noundef %0, double noundef %1) #3 {
  %3 = bitcast double %0 to i64
  %4 = bitcast double %1 to i64
  %5 = icmp slt i64 %3, 0
  %6 = lshr i64 %3, 63
  %7 = trunc i64 %6 to i32
  %8 = lshr i64 %4, 63
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = lshr i64 %3, 52
  %12 = and i64 %11, 2047
  %13 = and i64 %3, 4503599627370495
  %14 = lshr i64 %4, 52
  %15 = and i64 %14, 2047
  %16 = and i64 %4, 4503599627370495
  %17 = sub nsw i64 %12, %15
  %18 = icmp eq i64 %12, %15
  br i1 %10, label %19, label %129

19:                                               ; preds = %2
  br i1 %18, label %20, label %30

20:                                               ; preds = %19
  switch i64 %12, label %26 [
    i64 0, label %21
    i64 2047, label %23
  ]

21:                                               ; preds = %20
  %22 = add i64 %16, %3
  br label %326

23:                                               ; preds = %20
  %24 = or i64 %16, %13
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %326, label %123

26:                                               ; preds = %20
  %27 = or i64 %13, 9007199254740992
  %28 = add nuw nsw i64 %27, %16
  %29 = shl nuw nsw i64 %28, 9
  br label %89

30:                                               ; preds = %19
  %31 = shl nuw nsw i64 %13, 9
  %32 = shl nuw nsw i64 %16, 9
  %33 = icmp slt i64 %17, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = icmp eq i64 %15, 2047
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = icmp eq i64 %16, 0
  br i1 %37, label %38, label %123

38:                                               ; preds = %36
  %39 = select i1 %5, i64 -4503599627370496, i64 9218868437227405312
  br label %326

40:                                               ; preds = %34
  %41 = icmp eq i64 %12, 0
  %42 = add nuw nsw i64 %31, 2305843009213693952
  %43 = shl nuw nsw i64 %13, 10
  %44 = select i1 %41, i64 %43, i64 %42
  %45 = sub nsw i64 0, %17
  %46 = icmp ult i64 %45, 63
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = lshr i64 %44, %45
  %49 = and i64 %17, 63
  %50 = shl i64 %44, %49
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = or i64 %48, %52
  br label %78

54:                                               ; preds = %40
  %55 = icmp ne i64 %44, 0
  %56 = zext i1 %55 to i64
  br label %78

57:                                               ; preds = %30
  %58 = icmp eq i64 %12, 2047
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = icmp eq i64 %13, 0
  br i1 %60, label %326, label %123

61:                                               ; preds = %57
  %62 = icmp eq i64 %15, 0
  %63 = add nuw nsw i64 %32, 2305843009213693952
  %64 = shl nuw nsw i64 %16, 10
  %65 = select i1 %62, i64 %64, i64 %63
  %66 = icmp ult i64 %17, 63
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = lshr i64 %65, %17
  %69 = sub nsw i64 0, %17
  %70 = and i64 %69, 63
  %71 = shl i64 %65, %70
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = or i64 %68, %73
  br label %78

75:                                               ; preds = %61
  %76 = icmp ne i64 %65, 0
  %77 = zext i1 %76 to i64
  br label %78

78:                                               ; preds = %75, %67, %54, %47
  %79 = phi i64 [ %32, %47 ], [ %32, %54 ], [ %74, %67 ], [ %77, %75 ]
  %80 = phi i64 [ %53, %47 ], [ %56, %54 ], [ %31, %67 ], [ %31, %75 ]
  %81 = phi i64 [ %15, %47 ], [ %15, %54 ], [ %12, %67 ], [ %12, %75 ]
  %82 = add nuw nsw i64 %79, 2305843009213693952
  %83 = add nuw nsw i64 %82, %80
  %84 = icmp ult i64 %83, 4611686018427387904
  %85 = sext i1 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = zext i1 %84 to i64
  %88 = shl nuw i64 %83, %87
  br label %89

89:                                               ; preds = %78, %26
  %90 = phi i64 [ %12, %26 ], [ %86, %78 ]
  %91 = phi i64 [ %29, %26 ], [ %88, %78 ]
  %92 = and i64 %90, 65535
  %93 = icmp ugt i64 %92, 2044
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = icmp slt i64 %90, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = lshr i64 %91, 1
  %98 = and i64 %91, 1
  %99 = or i64 %97, %98
  br label %107

100:                                              ; preds = %94
  %101 = icmp ugt i64 %90, 2045
  %102 = add i64 %91, 512
  %103 = icmp slt i64 %102, 0
  %104 = or i1 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = select i1 %5, i64 -4503599627370496, i64 9218868437227405312
  br label %326

107:                                              ; preds = %100, %96, %89
  %108 = phi i64 [ %91, %89 ], [ %91, %100 ], [ %99, %96 ]
  %109 = phi i64 [ %90, %89 ], [ 2045, %100 ], [ 0, %96 ]
  %110 = and i64 %108, 1023
  %111 = add i64 %108, 512
  %112 = lshr i64 %111, 10
  %113 = icmp eq i64 %110, 512
  %114 = zext i1 %113 to i64
  %115 = xor i64 %114, -1
  %116 = and i64 %112, %115
  %117 = icmp eq i64 %116, 0
  %118 = and i64 %3, -9223372036854775808
  %119 = shl nsw i64 %109, 52
  %120 = select i1 %117, i64 0, i64 %119
  %121 = or i64 %116, %118
  %122 = add i64 %121, %120
  br label %326

123:                                              ; preds = %59, %36, %23
  %124 = and i64 %3, 9218868437227405312
  %125 = icmp ne i64 %124, 9218868437227405312
  %126 = icmp eq i64 %13, 0
  %127 = or i1 %125, %126
  %128 = select i1 %127, i64 %4, i64 %3
  br label %326

129:                                              ; preds = %2
  br i1 %18, label %130, label %177

130:                                              ; preds = %129
  %131 = icmp eq i64 %12, 2047
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = or i64 %16, %13
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %326, label %320

135:                                              ; preds = %130
  %136 = sub nsw i64 %13, %16
  %137 = icmp eq i64 %13, %16
  br i1 %137, label %326, label %138

138:                                              ; preds = %135
  %139 = tail call i64 @llvm.usub.sat.i64(i64 %12, i64 1)
  %140 = xor i64 %136, %3
  %141 = tail call i64 @llvm.abs.i64(i64 %136, i1 true)
  %142 = lshr i64 %141, 32
  %143 = trunc i64 %142 to i32
  %144 = icmp eq i32 %143, 0
  %145 = trunc i64 %141 to i32
  %146 = select i1 %144, i8 32, i8 0
  %147 = select i1 %144, i32 %145, i32 %143
  %148 = icmp ult i32 %147, 65536
  %149 = or i8 %146, 16
  %150 = shl i32 %147, 16
  %151 = select i1 %148, i8 %149, i8 %146
  %152 = select i1 %148, i32 %150, i32 %147
  %153 = icmp ult i32 %152, 16777216
  %154 = or i8 %151, 8
  %155 = shl i32 %152, 8
  %156 = select i1 %153, i8 %154, i8 %151
  %157 = select i1 %153, i32 %155, i32 %152
  %158 = lshr i32 %157, 24
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %159
  %161 = load i8, i8 addrspace(1)* %160, align 1, !tbaa !30
  %162 = add nsw i8 %156, -11
  %163 = add i8 %162, %161
  %164 = sext i8 %163 to i64
  %165 = sub nsw i64 %139, %164
  %166 = icmp slt i64 %165, 0
  %167 = trunc i64 %139 to i8
  %168 = select i1 %166, i8 %167, i8 %163
  %169 = tail call i64 @llvm.smax.i64(i64 %165, i64 0)
  %170 = and i64 %140, -9223372036854775808
  %171 = shl nuw i64 %169, 52
  %172 = add i64 %171, %170
  %173 = and i8 %168, 63
  %174 = zext i8 %173 to i64
  %175 = shl i64 %141, %174
  %176 = add i64 %172, %175
  br label %326

177:                                              ; preds = %129
  %178 = shl nuw nsw i64 %13, 10
  %179 = shl nuw nsw i64 %16, 10
  %180 = icmp slt i64 %17, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %177
  %182 = icmp eq i64 %15, 2047
  br i1 %182, label %183, label %187

183:                                              ; preds = %181
  %184 = icmp eq i64 %16, 0
  br i1 %184, label %185, label %320

185:                                              ; preds = %183
  %186 = select i1 %5, i64 9218868437227405312, i64 -4503599627370496
  br label %326

187:                                              ; preds = %181
  %188 = xor i1 %5, true
  %189 = icmp eq i64 %12, 0
  %190 = select i1 %189, i64 %178, i64 4611686018427387904
  %191 = add nuw nsw i64 %190, %178
  %192 = sub nsw i64 0, %17
  %193 = icmp ult i64 %192, 63
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = lshr i64 %191, %192
  %196 = and i64 %17, 63
  %197 = shl i64 %191, %196
  %198 = icmp ne i64 %197, 0
  %199 = zext i1 %198 to i64
  %200 = or i64 %195, %199
  br label %204

201:                                              ; preds = %187
  %202 = icmp ne i64 %191, 0
  %203 = zext i1 %202 to i64
  br label %204

204:                                              ; preds = %201, %194
  %205 = phi i64 [ %200, %194 ], [ %203, %201 ]
  %206 = sub nsw i64 %179, %205
  br label %230

207:                                              ; preds = %177
  %208 = icmp eq i64 %12, 2047
  br i1 %208, label %209, label %211

209:                                              ; preds = %207
  %210 = icmp eq i64 %13, 0
  br i1 %210, label %326, label %320

211:                                              ; preds = %207
  %212 = icmp eq i64 %15, 0
  %213 = select i1 %212, i64 %179, i64 4611686018427387904
  %214 = add nuw nsw i64 %213, %179
  %215 = icmp ult i64 %17, 63
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = lshr i64 %214, %17
  %218 = sub nsw i64 0, %17
  %219 = and i64 %218, 63
  %220 = shl i64 %214, %219
  %221 = icmp ne i64 %220, 0
  %222 = zext i1 %221 to i64
  %223 = or i64 %217, %222
  br label %227

224:                                              ; preds = %211
  %225 = icmp ne i64 %214, 0
  %226 = zext i1 %225 to i64
  br label %227

227:                                              ; preds = %224, %216
  %228 = phi i64 [ %223, %216 ], [ %226, %224 ]
  %229 = sub nsw i64 %178, %228
  br label %230

230:                                              ; preds = %227, %204
  %231 = phi i1 [ %188, %204 ], [ %5, %227 ]
  %232 = phi i64 [ %15, %204 ], [ %12, %227 ]
  %233 = phi i64 [ %206, %204 ], [ %229, %227 ]
  %234 = add nsw i64 %233, 4611686018427387904
  %235 = lshr i64 %234, 32
  %236 = trunc i64 %235 to i32
  %237 = icmp eq i32 %236, 0
  %238 = trunc i64 %233 to i32
  %239 = select i1 %237, i8 32, i8 0
  %240 = select i1 %237, i32 %238, i32 %236
  %241 = icmp ult i32 %240, 65536
  %242 = or i8 %239, 16
  %243 = shl i32 %240, 16
  %244 = select i1 %241, i8 %242, i8 %239
  %245 = select i1 %241, i32 %243, i32 %240
  %246 = icmp ult i32 %245, 16777216
  %247 = or i8 %244, 8
  %248 = shl i32 %245, 8
  %249 = select i1 %246, i8 %247, i8 %244
  %250 = select i1 %246, i32 %248, i32 %245
  %251 = lshr i32 %250, 24
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %252
  %254 = load i8, i8 addrspace(1)* %253, align 1, !tbaa !30
  %255 = add i8 %254, -1
  %256 = add i8 %255, %249
  %257 = xor i8 %256, -1
  %258 = sext i8 %257 to i64
  %259 = add nsw i64 %232, %258
  %260 = zext i8 %256 to i32
  %261 = icmp sgt i8 %256, 9
  %262 = trunc i64 %259 to i32
  %263 = icmp ult i32 %262, 2045
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %276

265:                                              ; preds = %230
  %266 = select i1 %231, i64 -9223372036854775808, i64 0
  %267 = icmp eq i64 %234, 0
  %268 = shl i64 %259, 52
  %269 = select i1 %267, i64 0, i64 %268
  %270 = add i64 %269, %266
  %271 = add nuw nsw i32 %260, 54
  %272 = and i32 %271, 63
  %273 = zext i32 %272 to i64
  %274 = shl i64 %234, %273
  %275 = add i64 %270, %274
  br label %326

276:                                              ; preds = %230
  %277 = and i32 %260, 63
  %278 = zext i32 %277 to i64
  %279 = shl i64 %234, %278
  %280 = and i64 %259, 65535
  %281 = icmp ugt i64 %280, 2044
  br i1 %281, label %282, label %304

282:                                              ; preds = %276
  %283 = icmp slt i64 %259, 0
  br i1 %283, label %284, label %297

284:                                              ; preds = %282
  %285 = sub nsw i64 0, %259
  %286 = icmp ult i64 %285, 63
  br i1 %286, label %287, label %294

287:                                              ; preds = %284
  %288 = lshr i64 %279, %285
  %289 = and i64 %259, 63
  %290 = shl i64 %279, %289
  %291 = icmp ne i64 %290, 0
  %292 = zext i1 %291 to i64
  %293 = or i64 %288, %292
  br label %304

294:                                              ; preds = %284
  %295 = icmp ne i64 %279, 0
  %296 = zext i1 %295 to i64
  br label %304

297:                                              ; preds = %282
  %298 = icmp ugt i64 %259, 2045
  %299 = add i64 %279, 512
  %300 = icmp slt i64 %299, 0
  %301 = or i1 %298, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = select i1 %231, i64 -4503599627370496, i64 9218868437227405312
  br label %326

304:                                              ; preds = %297, %294, %287, %276
  %305 = phi i64 [ %279, %276 ], [ %279, %297 ], [ %293, %287 ], [ %296, %294 ]
  %306 = phi i64 [ %259, %276 ], [ 2045, %297 ], [ 0, %287 ], [ 0, %294 ]
  %307 = and i64 %305, 1023
  %308 = add i64 %305, 512
  %309 = lshr i64 %308, 10
  %310 = icmp eq i64 %307, 512
  %311 = zext i1 %310 to i64
  %312 = xor i64 %311, -1
  %313 = and i64 %309, %312
  %314 = icmp eq i64 %313, 0
  %315 = select i1 %231, i64 -9223372036854775808, i64 0
  %316 = shl i64 %306, 52
  %317 = select i1 %314, i64 0, i64 %316
  %318 = or i64 %313, %315
  %319 = add i64 %318, %317
  br label %326

320:                                              ; preds = %209, %183, %132
  %321 = and i64 %3, 9218868437227405312
  %322 = icmp ne i64 %321, 9218868437227405312
  %323 = icmp eq i64 %13, 0
  %324 = or i1 %322, %323
  %325 = select i1 %324, i64 %4, i64 %3
  br label %326

326:                                              ; preds = %320, %304, %302, %265, %209, %185, %138, %135, %132, %123, %107, %105, %59, %38, %23, %21
  %327 = phi i64 [ %128, %123 ], [ %39, %38 ], [ %22, %21 ], [ %3, %23 ], [ %3, %59 ], [ %122, %107 ], [ %106, %105 ], [ %325, %320 ], [ %186, %185 ], [ %176, %138 ], [ -2251799813685248, %132 ], [ 0, %135 ], [ %3, %209 ], [ %275, %265 ], [ %319, %304 ], [ %303, %302 ]
  %328 = bitcast i64 %327 to double
  ret double %328
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal double @__softfloat_f64_div(double noundef %0, double noundef %1) #3 {
  %3 = bitcast double %0 to i64
  %4 = bitcast double %1 to i64
  %5 = lshr i64 %3, 52
  %6 = and i64 %5, 2047
  %7 = and i64 %3, 4503599627370495
  %8 = lshr i64 %4, 52
  %9 = and i64 %8, 2047
  %10 = and i64 %4, 4503599627370495
  %11 = xor i64 %4, %3
  %12 = icmp eq i64 %6, 2047
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %15, label %189

15:                                               ; preds = %13
  %16 = icmp eq i64 %9, 2047
  br i1 %16, label %17, label %195

17:                                               ; preds = %15
  %18 = icmp eq i64 %10, 0
  br i1 %18, label %200, label %189

19:                                               ; preds = %2
  switch i64 %9, label %56 [
    i64 2047, label %20
    i64 0, label %22
  ]

20:                                               ; preds = %19
  %21 = icmp eq i64 %10, 0
  br i1 %21, label %198, label %189

22:                                               ; preds = %19
  %23 = icmp eq i64 %10, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = or i64 %6, %7
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %200, label %195

27:                                               ; preds = %22
  %28 = lshr i64 %10, 32
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %29, 0
  %31 = trunc i64 %4 to i32
  %32 = select i1 %30, i8 32, i8 0
  %33 = select i1 %30, i32 %31, i32 %29
  %34 = icmp ult i32 %33, 65536
  %35 = or i8 %32, 16
  %36 = shl i32 %33, 16
  %37 = select i1 %34, i8 %35, i8 %32
  %38 = select i1 %34, i32 %36, i32 %33
  %39 = icmp ult i32 %38, 16777216
  %40 = or i8 %37, 8
  %41 = shl i32 %38, 8
  %42 = select i1 %39, i8 %40, i8 %37
  %43 = select i1 %39, i32 %41, i32 %38
  %44 = lshr i32 %43, 24
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %45
  %47 = load i8, i8 addrspace(1)* %46, align 1, !tbaa !30
  %48 = add nsw i8 %42, -11
  %49 = add i8 %48, %47
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = and i32 %50, 63
  %54 = zext i32 %53 to i64
  %55 = shl i64 %10, %54
  br label %56

56:                                               ; preds = %27, %19
  %57 = phi i64 [ %55, %27 ], [ %10, %19 ]
  %58 = phi i64 [ %52, %27 ], [ %9, %19 ]
  %59 = icmp eq i64 %6, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = icmp eq i64 %7, 0
  br i1 %61, label %198, label %62

62:                                               ; preds = %60
  %63 = lshr i64 %7, 32
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 0
  %66 = trunc i64 %3 to i32
  %67 = select i1 %65, i8 32, i8 0
  %68 = select i1 %65, i32 %66, i32 %64
  %69 = icmp ult i32 %68, 65536
  %70 = or i8 %67, 16
  %71 = shl i32 %68, 16
  %72 = select i1 %69, i8 %70, i8 %67
  %73 = select i1 %69, i32 %71, i32 %68
  %74 = icmp ult i32 %73, 16777216
  %75 = or i8 %72, 8
  %76 = shl i32 %73, 8
  %77 = select i1 %74, i8 %75, i8 %72
  %78 = select i1 %74, i32 %76, i32 %73
  %79 = lshr i32 %78, 24
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %80
  %82 = load i8, i8 addrspace(1)* %81, align 1, !tbaa !30
  %83 = add nsw i8 %77, -11
  %84 = add i8 %83, %82
  %85 = sext i8 %84 to i32
  %86 = sub nsw i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = and i32 %85, 63
  %89 = zext i32 %88 to i64
  %90 = shl i64 %7, %89
  br label %91

91:                                               ; preds = %62, %56
  %92 = phi i64 [ %7, %56 ], [ %90, %62 ]
  %93 = phi i64 [ %6, %56 ], [ %87, %62 ]
  %94 = sub nsw i64 %93, %58
  %95 = or i64 %92, 4503599627370496
  %96 = or i64 %57, 4503599627370496
  %97 = icmp ult i64 %95, %96
  %98 = select i1 %97, i64 1021, i64 1022
  %99 = select i1 %97, i64 11, i64 10
  %100 = add nsw i64 %98, %94
  %101 = shl i64 %95, %99
  %102 = shl i64 %96, 11
  %103 = lshr i64 %102, 32
  %104 = udiv i64 9223372036854775807, %103
  %105 = add nuw nsw i64 %104, 4294967294
  %106 = lshr i64 %101, 32
  %107 = and i64 %105, 4294967295
  %108 = mul nuw i64 %106, %107
  %109 = lshr i64 %108, 31
  %110 = and i64 %109, 4294967294
  %111 = mul nuw i64 %110, %103
  %112 = sub i64 %101, %111
  %113 = shl i64 %112, 28
  %114 = lshr exact i64 %102, 4
  %115 = and i64 %114, 268435328
  %116 = mul nuw nsw i64 %110, %115
  %117 = sub i64 %113, %116
  %118 = lshr i64 %117, 32
  %119 = mul nuw i64 %118, %107
  %120 = lshr i64 %119, 32
  %121 = trunc i64 %120 to i32
  %122 = add i32 %121, 4
  %123 = and i64 %108, -4294967296
  %124 = zext i32 %122 to i64
  %125 = shl nuw nsw i64 %124, 4
  %126 = add i64 %125, %123
  %127 = and i64 %124, 28
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %91
  %130 = and i64 %126, -128
  %131 = shl i32 %122, 1
  %132 = and i32 %131, -16
  %133 = zext i32 %132 to i64
  %134 = mul nuw i64 %103, %133
  %135 = sub i64 %117, %134
  %136 = shl i64 %135, 28
  %137 = mul nuw nsw i64 %115, %133
  %138 = sub i64 %136, %137
  %139 = icmp sgt i64 %138, -1
  br i1 %139, label %142, label %140

140:                                              ; preds = %129
  %141 = add i64 %130, -128
  br label %146

142:                                              ; preds = %129
  %143 = icmp ne i64 %136, %137
  %144 = zext i1 %143 to i64
  %145 = or i64 %130, %144
  br label %146

146:                                              ; preds = %142, %140, %91
  %147 = phi i64 [ %141, %140 ], [ %126, %91 ], [ %145, %142 ]
  %148 = and i64 %100, 65535
  %149 = icmp ugt i64 %148, 2044
  br i1 %149, label %150, label %173

150:                                              ; preds = %146
  %151 = icmp slt i64 %100, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %150
  %153 = sub nsw i64 0, %100
  %154 = icmp ult i64 %153, 63
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = lshr i64 %147, %153
  %157 = and i64 %100, 63
  %158 = shl i64 %147, %157
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = or i64 %156, %160
  br label %173

162:                                              ; preds = %152
  %163 = icmp ne i64 %147, 0
  %164 = zext i1 %163 to i64
  br label %173

165:                                              ; preds = %150
  %166 = icmp ugt i64 %100, 2045
  %167 = add i64 %147, 512
  %168 = icmp slt i64 %167, 0
  %169 = or i1 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = and i64 %11, -9223372036854775808
  %172 = or i64 %171, 9218868437227405312
  br label %200

173:                                              ; preds = %165, %162, %155, %146
  %174 = phi i64 [ %147, %146 ], [ %147, %165 ], [ %161, %155 ], [ %164, %162 ]
  %175 = phi i64 [ %100, %146 ], [ 2045, %165 ], [ 0, %155 ], [ 0, %162 ]
  %176 = and i64 %174, 1023
  %177 = add i64 %174, 512
  %178 = lshr i64 %177, 10
  %179 = icmp eq i64 %176, 512
  %180 = zext i1 %179 to i64
  %181 = xor i64 %180, -1
  %182 = and i64 %178, %181
  %183 = icmp eq i64 %182, 0
  %184 = and i64 %11, -9223372036854775808
  %185 = shl i64 %175, 52
  %186 = select i1 %183, i64 0, i64 %185
  %187 = or i64 %182, %184
  %188 = add i64 %187, %186
  br label %200

189:                                              ; preds = %20, %17, %13
  %190 = and i64 %3, 9218868437227405312
  %191 = icmp ne i64 %190, 9218868437227405312
  %192 = icmp eq i64 %7, 0
  %193 = or i1 %191, %192
  %194 = select i1 %193, i64 %4, i64 %3
  br label %200

195:                                              ; preds = %24, %15
  %196 = and i64 %11, -9223372036854775808
  %197 = or i64 %196, 9218868437227405312
  br label %200

198:                                              ; preds = %60, %20
  %199 = and i64 %11, -9223372036854775808
  br label %200

200:                                              ; preds = %198, %195, %189, %173, %170, %24, %17
  %201 = phi i64 [ %194, %189 ], [ %197, %195 ], [ %199, %198 ], [ -2251799813685248, %24 ], [ -2251799813685248, %17 ], [ %188, %173 ], [ %172, %170 ]
  %202 = bitcast i64 %201 to double
  ret double %202
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal double @__softfloat_f64_mul(double noundef %0, double noundef %1) #3 {
  %3 = bitcast double %0 to i64
  %4 = bitcast double %1 to i64
  %5 = lshr i64 %3, 52
  %6 = and i64 %5, 2047
  %7 = and i64 %3, 4503599627370495
  %8 = lshr i64 %4, 52
  %9 = and i64 %8, 2047
  %10 = and i64 %4, 4503599627370495
  %11 = xor i64 %4, %3
  %12 = icmp eq i64 %6, 2047
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = icmp eq i64 %7, 0
  br i1 %14, label %15, label %158

15:                                               ; preds = %13
  %16 = icmp eq i64 %9, 2047
  %17 = icmp ne i64 %10, 0
  %18 = and i1 %17, %16
  br i1 %18, label %158, label %19

19:                                               ; preds = %15
  %20 = or i64 %9, %10
  br label %164

21:                                               ; preds = %2
  %22 = icmp eq i64 %9, 2047
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = icmp eq i64 %10, 0
  br i1 %24, label %25, label %158

25:                                               ; preds = %23
  %26 = or i64 %6, %7
  br label %164

27:                                               ; preds = %21
  %28 = icmp eq i64 %6, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %27
  %30 = icmp eq i64 %7, 0
  br i1 %30, label %170, label %31

31:                                               ; preds = %29
  %32 = lshr i64 %7, 32
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, 0
  %35 = trunc i64 %3 to i32
  %36 = select i1 %34, i8 32, i8 0
  %37 = select i1 %34, i32 %35, i32 %33
  %38 = icmp ult i32 %37, 65536
  %39 = or i8 %36, 16
  %40 = shl i32 %37, 16
  %41 = select i1 %38, i8 %39, i8 %36
  %42 = select i1 %38, i32 %40, i32 %37
  %43 = icmp ult i32 %42, 16777216
  %44 = or i8 %41, 8
  %45 = shl i32 %42, 8
  %46 = select i1 %43, i8 %44, i8 %41
  %47 = select i1 %43, i32 %45, i32 %42
  %48 = lshr i32 %47, 24
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %49
  %51 = load i8, i8 addrspace(1)* %50, align 1, !tbaa !30
  %52 = add nsw i8 %46, -11
  %53 = add i8 %52, %51
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 1, %54
  %56 = sext i32 %55 to i64
  %57 = and i32 %54, 63
  %58 = zext i32 %57 to i64
  %59 = shl i64 %7, %58
  br label %60

60:                                               ; preds = %31, %27
  %61 = phi i64 [ %7, %27 ], [ %59, %31 ]
  %62 = phi i64 [ %6, %27 ], [ %56, %31 ]
  %63 = icmp eq i64 %9, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = icmp eq i64 %10, 0
  br i1 %65, label %170, label %66

66:                                               ; preds = %64
  %67 = lshr i64 %10, 32
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, 0
  %70 = trunc i64 %4 to i32
  %71 = select i1 %69, i8 32, i8 0
  %72 = select i1 %69, i32 %70, i32 %68
  %73 = icmp ult i32 %72, 65536
  %74 = or i8 %71, 16
  %75 = shl i32 %72, 16
  %76 = select i1 %73, i8 %74, i8 %71
  %77 = select i1 %73, i32 %75, i32 %72
  %78 = icmp ult i32 %77, 16777216
  %79 = or i8 %76, 8
  %80 = shl i32 %77, 8
  %81 = select i1 %78, i8 %79, i8 %76
  %82 = select i1 %78, i32 %80, i32 %77
  %83 = lshr i32 %82, 24
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %84
  %86 = load i8, i8 addrspace(1)* %85, align 1, !tbaa !30
  %87 = add nsw i8 %81, -11
  %88 = add i8 %87, %86
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 1, %89
  %91 = sext i32 %90 to i64
  %92 = and i32 %89, 63
  %93 = zext i32 %92 to i64
  %94 = shl i64 %10, %93
  br label %95

95:                                               ; preds = %66, %60
  %96 = phi i64 [ %10, %60 ], [ %94, %66 ]
  %97 = phi i64 [ %9, %60 ], [ %91, %66 ]
  %98 = add nsw i64 %97, %62
  %99 = shl i64 %61, 10
  %100 = or i64 %99, 4611686018427387904
  %101 = shl i64 %96, 11
  %102 = or i64 %101, -9223372036854775808
  %103 = zext i64 %100 to i128
  %104 = zext i64 %102 to i128
  %105 = mul nuw i128 %104, %103
  %106 = trunc i128 %105 to i64
  %107 = lshr i128 %105, 64
  %108 = trunc i128 %107 to i64
  %109 = icmp ne i64 %106, 0
  %110 = zext i1 %109 to i64
  %111 = or i64 %110, %108
  %112 = icmp ult i64 %111, 4611686018427387904
  %113 = select i1 %112, i64 -1024, i64 -1023
  %114 = add nsw i64 %98, %113
  %115 = zext i1 %112 to i64
  %116 = shl i64 %111, %115
  %117 = and i64 %114, 65535
  %118 = icmp ugt i64 %117, 2044
  br i1 %118, label %119, label %142

119:                                              ; preds = %95
  %120 = icmp slt i64 %114, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %119
  %122 = sub nsw i64 0, %114
  %123 = icmp ult i64 %122, 63
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = lshr i64 %116, %122
  %126 = and i64 %114, 63
  %127 = shl i64 %116, %126
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = or i64 %125, %129
  br label %142

131:                                              ; preds = %121
  %132 = icmp ne i64 %116, 0
  %133 = zext i1 %132 to i64
  br label %142

134:                                              ; preds = %119
  %135 = icmp ugt i64 %114, 2045
  %136 = add i64 %116, 512
  %137 = icmp slt i64 %136, 0
  %138 = or i1 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = and i64 %11, -9223372036854775808
  %141 = or i64 %140, 9218868437227405312
  br label %172

142:                                              ; preds = %134, %131, %124, %95
  %143 = phi i64 [ %116, %95 ], [ %116, %134 ], [ %130, %124 ], [ %133, %131 ]
  %144 = phi i64 [ %114, %95 ], [ 2045, %134 ], [ 0, %124 ], [ 0, %131 ]
  %145 = and i64 %143, 1023
  %146 = add i64 %143, 512
  %147 = lshr i64 %146, 10
  %148 = icmp eq i64 %145, 512
  %149 = zext i1 %148 to i64
  %150 = xor i64 %149, -1
  %151 = and i64 %147, %150
  %152 = icmp eq i64 %151, 0
  %153 = and i64 %11, -9223372036854775808
  %154 = shl i64 %144, 52
  %155 = select i1 %152, i64 0, i64 %154
  %156 = or i64 %151, %153
  %157 = add i64 %156, %155
  br label %172

158:                                              ; preds = %23, %15, %13
  %159 = and i64 %3, 9218868437227405312
  %160 = icmp ne i64 %159, 9218868437227405312
  %161 = icmp eq i64 %7, 0
  %162 = or i1 %160, %161
  %163 = select i1 %162, i64 %4, i64 %3
  br label %172

164:                                              ; preds = %25, %19
  %165 = phi i64 [ %20, %19 ], [ %26, %25 ]
  %166 = icmp eq i64 %165, 0
  %167 = and i64 %11, -9223372036854775808
  %168 = or i64 %167, 9218868437227405312
  %169 = select i1 %166, i64 -2251799813685248, i64 %168
  br label %172

170:                                              ; preds = %64, %29
  %171 = and i64 %11, -9223372036854775808
  br label %172

172:                                              ; preds = %170, %164, %158, %142, %139
  %173 = phi i64 [ %163, %158 ], [ %171, %170 ], [ %169, %164 ], [ %157, %142 ], [ %141, %139 ]
  %174 = bitcast i64 %173 to double
  ret double %174
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal double @__softfloat_f64_sub(double noundef %0, double noundef %1) #3 {
  %3 = bitcast double %0 to i64
  %4 = bitcast double %1 to i64
  %5 = icmp slt i64 %3, 0
  %6 = lshr i64 %3, 63
  %7 = trunc i64 %6 to i32
  %8 = lshr i64 %4, 63
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, %9
  %11 = lshr i64 %3, 52
  %12 = and i64 %11, 2047
  %13 = and i64 %3, 4503599627370495
  %14 = lshr i64 %4, 52
  %15 = and i64 %14, 2047
  %16 = and i64 %4, 4503599627370495
  %17 = sub nsw i64 %12, %15
  %18 = icmp eq i64 %12, %15
  br i1 %10, label %19, label %216

19:                                               ; preds = %2
  br i1 %18, label %20, label %67

20:                                               ; preds = %19
  %21 = icmp eq i64 %12, 2047
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = or i64 %16, %13
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %326, label %210

25:                                               ; preds = %20
  %26 = sub nsw i64 %13, %16
  %27 = icmp eq i64 %13, %16
  br i1 %27, label %326, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.usub.sat.i64(i64 %12, i64 1)
  %30 = xor i64 %26, %3
  %31 = tail call i64 @llvm.abs.i64(i64 %26, i1 true)
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, 0
  %35 = trunc i64 %31 to i32
  %36 = select i1 %34, i8 32, i8 0
  %37 = select i1 %34, i32 %35, i32 %33
  %38 = icmp ult i32 %37, 65536
  %39 = or i8 %36, 16
  %40 = shl i32 %37, 16
  %41 = select i1 %38, i8 %39, i8 %36
  %42 = select i1 %38, i32 %40, i32 %37
  %43 = icmp ult i32 %42, 16777216
  %44 = or i8 %41, 8
  %45 = shl i32 %42, 8
  %46 = select i1 %43, i8 %44, i8 %41
  %47 = select i1 %43, i32 %45, i32 %42
  %48 = lshr i32 %47, 24
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %49
  %51 = load i8, i8 addrspace(1)* %50, align 1, !tbaa !30
  %52 = add nsw i8 %46, -11
  %53 = add i8 %52, %51
  %54 = sext i8 %53 to i64
  %55 = sub nsw i64 %29, %54
  %56 = icmp slt i64 %55, 0
  %57 = trunc i64 %29 to i8
  %58 = select i1 %56, i8 %57, i8 %53
  %59 = tail call i64 @llvm.smax.i64(i64 %55, i64 0)
  %60 = and i64 %30, -9223372036854775808
  %61 = shl nuw i64 %59, 52
  %62 = add i64 %61, %60
  %63 = and i8 %58, 63
  %64 = zext i8 %63 to i64
  %65 = shl i64 %31, %64
  %66 = add i64 %62, %65
  br label %326

67:                                               ; preds = %19
  %68 = shl nuw nsw i64 %13, 10
  %69 = shl nuw nsw i64 %16, 10
  %70 = icmp slt i64 %17, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = icmp eq i64 %15, 2047
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = icmp eq i64 %16, 0
  br i1 %74, label %75, label %210

75:                                               ; preds = %73
  %76 = select i1 %5, i64 9218868437227405312, i64 -4503599627370496
  br label %326

77:                                               ; preds = %71
  %78 = xor i1 %5, true
  %79 = icmp eq i64 %12, 0
  %80 = select i1 %79, i64 %68, i64 4611686018427387904
  %81 = add nuw nsw i64 %80, %68
  %82 = sub nsw i64 0, %17
  %83 = icmp ult i64 %82, 63
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = lshr i64 %81, %82
  %86 = and i64 %17, 63
  %87 = shl i64 %81, %86
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = or i64 %85, %89
  br label %94

91:                                               ; preds = %77
  %92 = icmp ne i64 %81, 0
  %93 = zext i1 %92 to i64
  br label %94

94:                                               ; preds = %91, %84
  %95 = phi i64 [ %90, %84 ], [ %93, %91 ]
  %96 = sub nsw i64 %69, %95
  br label %120

97:                                               ; preds = %67
  %98 = icmp eq i64 %12, 2047
  br i1 %98, label %99, label %101

99:                                               ; preds = %97
  %100 = icmp eq i64 %13, 0
  br i1 %100, label %326, label %210

101:                                              ; preds = %97
  %102 = icmp eq i64 %15, 0
  %103 = select i1 %102, i64 %69, i64 4611686018427387904
  %104 = add nuw nsw i64 %103, %69
  %105 = icmp ult i64 %17, 63
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = lshr i64 %104, %17
  %108 = sub nsw i64 0, %17
  %109 = and i64 %108, 63
  %110 = shl i64 %104, %109
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = or i64 %107, %112
  br label %117

114:                                              ; preds = %101
  %115 = icmp ne i64 %104, 0
  %116 = zext i1 %115 to i64
  br label %117

117:                                              ; preds = %114, %106
  %118 = phi i64 [ %113, %106 ], [ %116, %114 ]
  %119 = sub nsw i64 %68, %118
  br label %120

120:                                              ; preds = %117, %94
  %121 = phi i1 [ %78, %94 ], [ %5, %117 ]
  %122 = phi i64 [ %15, %94 ], [ %12, %117 ]
  %123 = phi i64 [ %96, %94 ], [ %119, %117 ]
  %124 = add nsw i64 %123, 4611686018427387904
  %125 = lshr i64 %124, 32
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 0
  %128 = trunc i64 %123 to i32
  %129 = select i1 %127, i8 32, i8 0
  %130 = select i1 %127, i32 %128, i32 %126
  %131 = icmp ult i32 %130, 65536
  %132 = or i8 %129, 16
  %133 = shl i32 %130, 16
  %134 = select i1 %131, i8 %132, i8 %129
  %135 = select i1 %131, i32 %133, i32 %130
  %136 = icmp ult i32 %135, 16777216
  %137 = or i8 %134, 8
  %138 = shl i32 %135, 8
  %139 = select i1 %136, i8 %137, i8 %134
  %140 = select i1 %136, i32 %138, i32 %135
  %141 = lshr i32 %140, 24
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(1)* bitcast (<{ [128 x i8], [128 x i8] }> addrspace(1)* @softfloat_countLeadingZeros8 to [256 x i8] addrspace(1)*), i64 0, i64 %142
  %144 = load i8, i8 addrspace(1)* %143, align 1, !tbaa !30
  %145 = add i8 %144, -1
  %146 = add i8 %145, %139
  %147 = xor i8 %146, -1
  %148 = sext i8 %147 to i64
  %149 = add nsw i64 %122, %148
  %150 = zext i8 %146 to i32
  %151 = icmp sgt i8 %146, 9
  %152 = trunc i64 %149 to i32
  %153 = icmp ult i32 %152, 2045
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %166

155:                                              ; preds = %120
  %156 = select i1 %121, i64 -9223372036854775808, i64 0
  %157 = icmp eq i64 %124, 0
  %158 = shl i64 %149, 52
  %159 = select i1 %157, i64 0, i64 %158
  %160 = add i64 %159, %156
  %161 = add nuw nsw i32 %150, 54
  %162 = and i32 %161, 63
  %163 = zext i32 %162 to i64
  %164 = shl i64 %124, %163
  %165 = add i64 %160, %164
  br label %326

166:                                              ; preds = %120
  %167 = and i32 %150, 63
  %168 = zext i32 %167 to i64
  %169 = shl i64 %124, %168
  %170 = and i64 %149, 65535
  %171 = icmp ugt i64 %170, 2044
  br i1 %171, label %172, label %194

172:                                              ; preds = %166
  %173 = icmp slt i64 %149, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %172
  %175 = sub nsw i64 0, %149
  %176 = icmp ult i64 %175, 63
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = lshr i64 %169, %175
  %179 = and i64 %149, 63
  %180 = shl i64 %169, %179
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i64
  %183 = or i64 %178, %182
  br label %194

184:                                              ; preds = %174
  %185 = icmp ne i64 %169, 0
  %186 = zext i1 %185 to i64
  br label %194

187:                                              ; preds = %172
  %188 = icmp ugt i64 %149, 2045
  %189 = add i64 %169, 512
  %190 = icmp slt i64 %189, 0
  %191 = or i1 %188, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = select i1 %121, i64 -4503599627370496, i64 9218868437227405312
  br label %326

194:                                              ; preds = %187, %184, %177, %166
  %195 = phi i64 [ %169, %166 ], [ %169, %187 ], [ %183, %177 ], [ %186, %184 ]
  %196 = phi i64 [ %149, %166 ], [ 2045, %187 ], [ 0, %177 ], [ 0, %184 ]
  %197 = and i64 %195, 1023
  %198 = add i64 %195, 512
  %199 = lshr i64 %198, 10
  %200 = icmp eq i64 %197, 512
  %201 = zext i1 %200 to i64
  %202 = xor i64 %201, -1
  %203 = and i64 %199, %202
  %204 = icmp eq i64 %203, 0
  %205 = select i1 %121, i64 -9223372036854775808, i64 0
  %206 = shl i64 %196, 52
  %207 = select i1 %204, i64 0, i64 %206
  %208 = or i64 %203, %205
  %209 = add i64 %208, %207
  br label %326

210:                                              ; preds = %99, %73, %22
  %211 = and i64 %3, 9218868437227405312
  %212 = icmp ne i64 %211, 9218868437227405312
  %213 = icmp eq i64 %13, 0
  %214 = or i1 %212, %213
  %215 = select i1 %214, i64 %4, i64 %3
  br label %326

216:                                              ; preds = %2
  br i1 %18, label %217, label %227

217:                                              ; preds = %216
  switch i64 %12, label %223 [
    i64 0, label %218
    i64 2047, label %220
  ]

218:                                              ; preds = %217
  %219 = add i64 %16, %3
  br label %326

220:                                              ; preds = %217
  %221 = or i64 %16, %13
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %326, label %320

223:                                              ; preds = %217
  %224 = or i64 %13, 9007199254740992
  %225 = add nuw nsw i64 %224, %16
  %226 = shl nuw nsw i64 %225, 9
  br label %286

227:                                              ; preds = %216
  %228 = shl nuw nsw i64 %13, 9
  %229 = shl nuw nsw i64 %16, 9
  %230 = icmp slt i64 %17, 0
  br i1 %230, label %231, label %254

231:                                              ; preds = %227
  %232 = icmp eq i64 %15, 2047
  br i1 %232, label %233, label %237

233:                                              ; preds = %231
  %234 = icmp eq i64 %16, 0
  br i1 %234, label %235, label %320

235:                                              ; preds = %233
  %236 = select i1 %5, i64 -4503599627370496, i64 9218868437227405312
  br label %326

237:                                              ; preds = %231
  %238 = icmp eq i64 %12, 0
  %239 = add nuw nsw i64 %228, 2305843009213693952
  %240 = shl nuw nsw i64 %13, 10
  %241 = select i1 %238, i64 %240, i64 %239
  %242 = sub nsw i64 0, %17
  %243 = icmp ult i64 %242, 63
  br i1 %243, label %244, label %251

244:                                              ; preds = %237
  %245 = lshr i64 %241, %242
  %246 = and i64 %17, 63
  %247 = shl i64 %241, %246
  %248 = icmp ne i64 %247, 0
  %249 = zext i1 %248 to i64
  %250 = or i64 %245, %249
  br label %275

251:                                              ; preds = %237
  %252 = icmp ne i64 %241, 0
  %253 = zext i1 %252 to i64
  br label %275

254:                                              ; preds = %227
  %255 = icmp eq i64 %12, 2047
  br i1 %255, label %256, label %258

256:                                              ; preds = %254
  %257 = icmp eq i64 %13, 0
  br i1 %257, label %326, label %320

258:                                              ; preds = %254
  %259 = icmp eq i64 %15, 0
  %260 = add nuw nsw i64 %229, 2305843009213693952
  %261 = shl nuw nsw i64 %16, 10
  %262 = select i1 %259, i64 %261, i64 %260
  %263 = icmp ult i64 %17, 63
  br i1 %263, label %264, label %272

264:                                              ; preds = %258
  %265 = lshr i64 %262, %17
  %266 = sub nsw i64 0, %17
  %267 = and i64 %266, 63
  %268 = shl i64 %262, %267
  %269 = icmp ne i64 %268, 0
  %270 = zext i1 %269 to i64
  %271 = or i64 %265, %270
  br label %275

272:                                              ; preds = %258
  %273 = icmp ne i64 %262, 0
  %274 = zext i1 %273 to i64
  br label %275

275:                                              ; preds = %272, %264, %251, %244
  %276 = phi i64 [ %229, %244 ], [ %229, %251 ], [ %271, %264 ], [ %274, %272 ]
  %277 = phi i64 [ %250, %244 ], [ %253, %251 ], [ %228, %264 ], [ %228, %272 ]
  %278 = phi i64 [ %15, %244 ], [ %15, %251 ], [ %12, %264 ], [ %12, %272 ]
  %279 = add nuw nsw i64 %276, 2305843009213693952
  %280 = add nuw nsw i64 %279, %277
  %281 = icmp ult i64 %280, 4611686018427387904
  %282 = sext i1 %281 to i64
  %283 = add nsw i64 %278, %282
  %284 = zext i1 %281 to i64
  %285 = shl nuw i64 %280, %284
  br label %286

286:                                              ; preds = %275, %223
  %287 = phi i64 [ %12, %223 ], [ %283, %275 ]
  %288 = phi i64 [ %226, %223 ], [ %285, %275 ]
  %289 = and i64 %287, 65535
  %290 = icmp ugt i64 %289, 2044
  br i1 %290, label %291, label %304

291:                                              ; preds = %286
  %292 = icmp slt i64 %287, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %291
  %294 = lshr i64 %288, 1
  %295 = and i64 %288, 1
  %296 = or i64 %294, %295
  br label %304

297:                                              ; preds = %291
  %298 = icmp ugt i64 %287, 2045
  %299 = add i64 %288, 512
  %300 = icmp slt i64 %299, 0
  %301 = or i1 %298, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = select i1 %5, i64 -4503599627370496, i64 9218868437227405312
  br label %326

304:                                              ; preds = %297, %293, %286
  %305 = phi i64 [ %288, %286 ], [ %288, %297 ], [ %296, %293 ]
  %306 = phi i64 [ %287, %286 ], [ 2045, %297 ], [ 0, %293 ]
  %307 = and i64 %305, 1023
  %308 = add i64 %305, 512
  %309 = lshr i64 %308, 10
  %310 = icmp eq i64 %307, 512
  %311 = zext i1 %310 to i64
  %312 = xor i64 %311, -1
  %313 = and i64 %309, %312
  %314 = icmp eq i64 %313, 0
  %315 = and i64 %3, -9223372036854775808
  %316 = shl nsw i64 %306, 52
  %317 = select i1 %314, i64 0, i64 %316
  %318 = or i64 %313, %315
  %319 = add i64 %318, %317
  br label %326

320:                                              ; preds = %256, %233, %220
  %321 = and i64 %3, 9218868437227405312
  %322 = icmp ne i64 %321, 9218868437227405312
  %323 = icmp eq i64 %13, 0
  %324 = or i1 %322, %323
  %325 = select i1 %324, i64 %4, i64 %3
  br label %326

326:                                              ; preds = %320, %304, %302, %256, %235, %220, %218, %210, %194, %192, %155, %99, %75, %28, %25, %22
  %327 = phi i64 [ %215, %210 ], [ %76, %75 ], [ %66, %28 ], [ -2251799813685248, %22 ], [ 0, %25 ], [ %3, %99 ], [ %165, %155 ], [ %209, %194 ], [ %193, %192 ], [ %325, %320 ], [ %236, %235 ], [ %219, %218 ], [ %3, %220 ], [ %3, %256 ], [ %319, %304 ], [ %303, %302 ]
  %328 = bitcast i64 %327 to double
  ret double %328
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #5

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #5

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p3i8.p1i8.i64(i8 addrspace(3)* noalias nocapture writeonly, i8 addrspace(1)* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx928" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx928-insts,+mmop-insts,+mmop2-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx928" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+gfx928-insts,+mmop-insts,+mmop2-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 340750feeda88c9c2ce8ad481b11d9aa7f033d39)"}
!4 = !{}
!5 = !{i16 1, i16 1025}
!6 = !{!7, !11, i64 12}
!7 = !{!"hsa_kernel_dispatch_packet_s", !8, i64 0, !8, i64 2, !8, i64 4, !8, i64 6, !8, i64 8, !8, i64 10, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !13, i64 40, !12, i64 48, !14, i64 56}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"hsa_signal_s", !12, i64 0}
!15 = !{i32 0, i32 1024}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTS14_cuAtomElement", !18, i64 0, !21, i64 8, !21, i64 16}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"double", !19, i64 0}
!22 = !{!17, !21, i64 8}
!23 = !{!17, !21, i64 16}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i64 0, i64 4, !27, i64 8, i64 8, !28, i64 16, i64 8, !28}
!27 = !{!18, !18, i64 0}
!28 = !{!21, !21, i64 0}
!29 = distinct !{!29, !25}
!30 = !{!9, !9, i64 0}

; __CLANG_OFFLOAD_BUNDLE____END__ hip-amdgcn-amd-amdhsa-gfx928

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = 'hip_kernels.hip.cpp'
source_filename = "hip_kernels.hip.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct._cuAtomElement = type { i32, double, double }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct._domain = type { i32, i32, i32 }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque

$__hip_gpubin_handle = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_Z5calDfP14_cuAtomElementll7_domain = dso_local constant void (%struct._cuAtomElement*, i64, i64, i64, i32)* @_Z20__device_stub__calDfP14_cuAtomElementll7_domain, align 8
@_Z15calDf_optimizedP14_cuAtomElementll7_domain = dso_local constant void (%struct._cuAtomElement*, i64, i64, i64, i32)* @_Z30__device_stub__calDf_optimizedP14_cuAtomElementll7_domain, align 8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [18 x i8] c"Mismatch at atom \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Original df = \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c", Optimized df = \00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Original kernel execution time: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" ms\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Optimized kernel execution time: \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Results are consistent!\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Results are not consistent!\00", align 1
@0 = private unnamed_addr constant [36 x i8] c"_Z5calDfP14_cuAtomElementll7_domain\00", align 1
@1 = private unnamed_addr constant [47 x i8] c"_Z15calDf_optimizedP14_cuAtomElementll7_domain\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, comdat, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_hip_kernels.hip.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @__hip_module_ctor, i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable
define dso_local void @_Z20__device_stub__calDfP14_cuAtomElementll7_domain(%struct._cuAtomElement* noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i32 %4) #3 {
  %6 = alloca %struct._domain, align 8
  %7 = alloca %struct._cuAtomElement*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = bitcast %struct._domain* %6 to i64*
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds %struct._domain, %struct._domain* %6, i64 0, i32 2
  store i32 %4, i32* %15, align 8
  store %struct._cuAtomElement* %0, %struct._cuAtomElement** %7, align 8, !tbaa !3
  store i64 %1, i64* %8, align 8, !tbaa !7
  store i64 %2, i64* %9, align 8, !tbaa !7
  %16 = alloca [4 x i8*], align 16
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  %18 = bitcast [4 x i8*]* %16 to %struct._cuAtomElement***
  store %struct._cuAtomElement** %7, %struct._cuAtomElement*** %18, align 16
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 1
  %20 = bitcast i8** %19 to i64**
  store i64* %8, i64** %20, align 8
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 2
  %22 = bitcast i8** %21 to i64**
  store i64* %9, i64** %22, align 16
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 3
  %24 = bitcast i8** %23 to %struct._domain**
  store %struct._domain* %6, %struct._domain** %24, align 8
  %25 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %10, %struct.dim3* nonnull %11, i64* nonnull %12, i8** nonnull %13)
  %26 = load i64, i64* %12, align 8
  %27 = bitcast i8** %13 to %struct.ihipStream_t**
  %28 = load %struct.ihipStream_t*, %struct.ihipStream_t** %27, align 8
  %29 = bitcast %struct.dim3* %10 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = bitcast %struct.dim3* %11 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z5calDfP14_cuAtomElementll7_domain to i8*), i64 %30, i32 %32, i64 %34, i32 %36, i8** noundef nonnull %17, i64 noundef %26, %struct.ihipStream_t* noundef %28)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z30__device_stub__calDf_optimizedP14_cuAtomElementll7_domain(%struct._cuAtomElement* noundef %0, i64 noundef %1, i64 noundef %2, i64 %3, i32 %4) #3 {
  %6 = alloca %struct._domain, align 8
  %7 = alloca %struct._cuAtomElement*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dim3, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = bitcast %struct._domain* %6 to i64*
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds %struct._domain, %struct._domain* %6, i64 0, i32 2
  store i32 %4, i32* %15, align 8
  store %struct._cuAtomElement* %0, %struct._cuAtomElement** %7, align 8, !tbaa !3
  store i64 %1, i64* %8, align 8, !tbaa !7
  store i64 %2, i64* %9, align 8, !tbaa !7
  %16 = alloca [4 x i8*], align 16
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 0
  %18 = bitcast [4 x i8*]* %16 to %struct._cuAtomElement***
  store %struct._cuAtomElement** %7, %struct._cuAtomElement*** %18, align 16
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 1
  %20 = bitcast i8** %19 to i64**
  store i64* %8, i64** %20, align 8
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 2
  %22 = bitcast i8** %21 to i64**
  store i64* %9, i64** %22, align 16
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %16, i64 0, i64 3
  %24 = bitcast i8** %23 to %struct._domain**
  store %struct._domain* %6, %struct._domain** %24, align 8
  %25 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %10, %struct.dim3* nonnull %11, i64* nonnull %12, i8** nonnull %13)
  %26 = load i64, i64* %12, align 8
  %27 = bitcast i8** %13 to %struct.ihipStream_t**
  %28 = load %struct.ihipStream_t*, %struct.ihipStream_t** %27, align 8
  %29 = bitcast %struct.dim3* %10 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = bitcast %struct.dim3* %11 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z15calDf_optimizedP14_cuAtomElementll7_domain to i8*), i64 %30, i32 %32, i64 %34, i32 %36, i8** noundef nonnull %17, i64 noundef %26, %struct.ihipStream_t* noundef %28)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z23checkResultsConsistencyP14_cuAtomElementS0_i(%struct._cuAtomElement* nocapture noundef readonly %0, %struct._cuAtomElement* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %75, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = zext i32 %2 to i64
  %8 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement* %0, i64 0, i32 2
  %9 = load double, double* %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement* %1, i64 0, i32 2
  %11 = load double, double* %10, align 8, !tbaa !9
  %12 = fsub contract double %9, %11
  %13 = tail call contract double @llvm.fabs.f64(double %12)
  %14 = fcmp contract ogt double %13, 0x3EB0C6F7A0B5ED8D
  br i1 %14, label %26, label %69

15:                                               ; preds = %69
  %16 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement* %0, i64 %71, i32 2
  %17 = load double, double* %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement* %1, i64 %71, i32 2
  %19 = load double, double* %18, align 8, !tbaa !9
  %20 = fsub contract double %17, %19
  %21 = tail call contract double @llvm.fabs.f64(double %20)
  %22 = fcmp contract ogt double %21, 0x3EB0C6F7A0B5ED8D
  br i1 %22, label %23, label %69, !llvm.loop !13

23:                                               ; preds = %15
  %24 = icmp uge i64 %71, %6
  %25 = trunc i64 %71 to i32
  br label %26

26:                                               ; preds = %23, %5
  %27 = phi i32 [ %25, %23 ], [ 0, %5 ]
  %28 = phi i1 [ %24, %23 ], [ false, %5 ]
  %29 = phi double* [ %16, %23 ], [ %8, %5 ]
  %30 = phi double* [ %18, %23 ], [ %10, %5 ]
  %31 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 noundef 17)
  %32 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %27)
  %33 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %32, i8* noundef nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2)
  %34 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %32, i8* noundef nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 noundef 14)
  %35 = load double, double* %29, align 8, !tbaa !9
  %36 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %32, double noundef %35)
  %37 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %36, i8* noundef nonnull getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 noundef 17)
  %38 = load double, double* %30, align 8, !tbaa !9
  %39 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %36, double noundef %38)
  %40 = bitcast %"class.std::basic_ostream"* %39 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !15
  %42 = getelementptr i8, i8* %41, i64 -24
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = bitcast %"class.std::basic_ostream"* %39 to i8*
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  %47 = getelementptr inbounds i8, i8* %46, i64 240
  %48 = bitcast i8* %47 to %"class.std::ctype"**
  %49 = load %"class.std::ctype"*, %"class.std::ctype"** %48, align 8, !tbaa !17
  %50 = icmp eq %"class.std::ctype"* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %26
  tail call void @_ZSt16__throw_bad_castv() #12
  unreachable

52:                                               ; preds = %26
  %53 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %49, i64 0, i32 8
  %54 = load i8, i8* %53, align 8, !tbaa !25
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %49, i64 0, i32 9, i64 10
  %58 = load i8, i8* %57, align 1, !tbaa !28
  br label %65

59:                                               ; preds = %52
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %49)
  %60 = bitcast %"class.std::ctype"* %49 to i8 (%"class.std::ctype"*, i8)***
  %61 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %60, align 8, !tbaa !15
  %62 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %61, i64 6
  %63 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %62, align 8
  %64 = tail call noundef signext i8 %63(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %49, i8 noundef signext 10)
  br label %65

65:                                               ; preds = %56, %59
  %66 = phi i8 [ %58, %56 ], [ %64, %59 ]
  %67 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %39, i8 noundef signext %66)
  %68 = tail call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %67)
  br label %75

69:                                               ; preds = %5, %15
  %70 = phi i64 [ %71, %15 ], [ 0, %5 ]
  %71 = add nuw nsw i64 %70, 1
  %72 = icmp eq i64 %71, %7
  br i1 %72, label %73, label %15, !llvm.loop !13

73:                                               ; preds = %69
  %74 = icmp uge i64 %71, %6
  br label %75

75:                                               ; preds = %73, %3, %65
  %76 = phi i1 [ %28, %65 ], [ true, %3 ], [ %74, %73 ]
  ret i1 %76
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #6

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: uwtable
define dso_local void @_Z21testKernelPerformancev() local_unnamed_addr #7 {
  %1 = alloca %struct._domain, align 8
  %2 = alloca %struct._cuAtomElement*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i8*], align 16
  %10 = alloca %struct._domain, align 8
  %11 = alloca %struct._cuAtomElement*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca %struct.dim3, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca [4 x i8*], align 16
  %19 = alloca %struct._domain, align 8
  %20 = alloca %struct._cuAtomElement*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.dim3, align 8
  %24 = alloca %struct.dim3, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca [4 x i8*], align 16
  %28 = alloca %struct._domain, align 8
  %29 = alloca %struct._cuAtomElement*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.dim3, align 8
  %33 = alloca %struct.dim3, align 8
  %34 = alloca i64, align 8
  %35 = alloca i8*, align 8
  %36 = alloca [4 x i8*], align 16
  %37 = alloca %struct._cuAtomElement*, align 8
  %38 = alloca %struct._cuAtomElement*, align 8
  %39 = tail call noalias noundef nonnull dereferenceable(402653184) i8* @_Znam(i64 noundef 402653184) #13
  %40 = bitcast i8* %39 to %struct._cuAtomElement*
  %41 = bitcast %struct._cuAtomElement** %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #14
  %42 = bitcast %struct._cuAtomElement** %38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #14
  br label %54

43:                                               ; preds = %54
  %44 = bitcast %struct._cuAtomElement** %37 to i8**
  %45 = call i32 @hipMalloc(i8** noundef nonnull %44, i64 noundef 402653184)
  %46 = bitcast %struct._cuAtomElement** %38 to i8**
  %47 = call i32 @hipMalloc(i8** noundef nonnull %46, i64 noundef 402653184)
  %48 = load i8*, i8** %44, align 8, !tbaa !3
  %49 = call i32 @hipMemcpy(i8* noundef %48, i8* noundef nonnull %39, i64 noundef 402653184, i32 noundef 1)
  %50 = load i8*, i8** %46, align 8, !tbaa !3
  %51 = call i32 @hipMemcpy(i8* noundef %50, i8* noundef nonnull %39, i64 noundef 402653184, i32 noundef 1)
  %52 = call i32 @__hipPushCallConfiguration(i64 4295000064, i32 1, i64 4294967808, i32 1, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %67, label %101

54:                                               ; preds = %0, %54
  %55 = phi i64 [ 0, %0 ], [ %65, %54 ]
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 1, i32 -1
  %60 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement* %40, i64 %55, i32 0
  store i32 %59, i32* %60, align 8, !tbaa !29
  %61 = urem i32 %56, 10
  %62 = sitofp i32 %61 to double
  %63 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement* %40, i64 %55, i32 1
  store double %62, double* %63, align 8, !tbaa !30
  %64 = getelementptr inbounds %struct._cuAtomElement, %struct._cuAtomElement* %40, i64 %55, i32 2
  store double 0.000000e+00, double* %64, align 8, !tbaa !9
  %65 = add nuw nsw i64 %55, 1
  %66 = icmp eq i64 %65, 16777216
  br i1 %66, label %43, label %54, !llvm.loop !31

67:                                               ; preds = %43
  %68 = load %struct._cuAtomElement*, %struct._cuAtomElement** %37, align 8, !tbaa !3
  %69 = bitcast %struct._domain* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %69)
  %70 = bitcast %struct._cuAtomElement** %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70)
  %71 = bitcast i64* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71)
  %72 = bitcast i64* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72)
  %73 = bitcast %struct.dim3* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %73)
  %74 = bitcast %struct.dim3* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %74)
  %75 = bitcast i64* %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %75)
  %76 = bitcast i8** %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %76)
  %77 = bitcast [4 x i8*]* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %77)
  %78 = bitcast %struct._domain* %28 to i64*
  store i64 2199023256064, i64* %78, align 8
  %79 = getelementptr inbounds %struct._domain, %struct._domain* %28, i64 0, i32 2
  store i32 512, i32* %79, align 8
  store %struct._cuAtomElement* %68, %struct._cuAtomElement** %29, align 8, !tbaa !3
  store i64 0, i64* %30, align 8, !tbaa !7
  store i64 1, i64* %31, align 8, !tbaa !7
  %80 = getelementptr inbounds [4 x i8*], [4 x i8*]* %36, i64 0, i64 0
  %81 = bitcast [4 x i8*]* %36 to %struct._cuAtomElement***
  store %struct._cuAtomElement** %29, %struct._cuAtomElement*** %81, align 16
  %82 = getelementptr inbounds [4 x i8*], [4 x i8*]* %36, i64 0, i64 1
  %83 = bitcast i8** %82 to i64**
  store i64* %30, i64** %83, align 8
  %84 = getelementptr inbounds [4 x i8*], [4 x i8*]* %36, i64 0, i64 2
  %85 = bitcast i8** %84 to i64**
  store i64* %31, i64** %85, align 16
  %86 = getelementptr inbounds [4 x i8*], [4 x i8*]* %36, i64 0, i64 3
  %87 = bitcast i8** %86 to %struct._domain**
  store %struct._domain* %28, %struct._domain** %87, align 8
  %88 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %32, %struct.dim3* nonnull %33, i64* nonnull %34, i8** nonnull %35)
  %89 = load i64, i64* %34, align 8
  %90 = bitcast i8** %35 to %struct.ihipStream_t**
  %91 = load %struct.ihipStream_t*, %struct.ihipStream_t** %90, align 8
  %92 = bitcast %struct.dim3* %32 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.dim3, %struct.dim3* %32, i64 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = bitcast %struct.dim3* %33 to i64*
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.dim3, %struct.dim3* %33, i64 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z5calDfP14_cuAtomElementll7_domain to i8*), i64 %93, i32 %95, i64 %97, i32 %99, i8** noundef nonnull %80, i64 noundef %89, %struct.ihipStream_t* noundef %91)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %69)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %73)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %74)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %75)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %77)
  br label %101

101:                                              ; preds = %67, %43
  %102 = call i32 @hipDeviceSynchronize()
  %103 = call i32 @__hipPushCallConfiguration(i64 4295000064, i32 1, i64 4294967808, i32 1, i64 noundef 12288, %struct.ihipStream_t* noundef null)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %139

105:                                              ; preds = %101
  %106 = load %struct._cuAtomElement*, %struct._cuAtomElement** %38, align 8, !tbaa !3
  %107 = bitcast %struct._domain* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %107)
  %108 = bitcast %struct._cuAtomElement** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108)
  %109 = bitcast i64* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %109)
  %110 = bitcast i64* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %110)
  %111 = bitcast %struct.dim3* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %111)
  %112 = bitcast %struct.dim3* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %112)
  %113 = bitcast i64* %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113)
  %114 = bitcast i8** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114)
  %115 = bitcast [4 x i8*]* %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %115)
  %116 = bitcast %struct._domain* %19 to i64*
  store i64 2199023256064, i64* %116, align 8
  %117 = getelementptr inbounds %struct._domain, %struct._domain* %19, i64 0, i32 2
  store i32 512, i32* %117, align 8
  store %struct._cuAtomElement* %106, %struct._cuAtomElement** %20, align 8, !tbaa !3
  store i64 0, i64* %21, align 8, !tbaa !7
  store i64 1, i64* %22, align 8, !tbaa !7
  %118 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 0
  %119 = bitcast [4 x i8*]* %27 to %struct._cuAtomElement***
  store %struct._cuAtomElement** %20, %struct._cuAtomElement*** %119, align 16
  %120 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 1
  %121 = bitcast i8** %120 to i64**
  store i64* %21, i64** %121, align 8
  %122 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 2
  %123 = bitcast i8** %122 to i64**
  store i64* %22, i64** %123, align 16
  %124 = getelementptr inbounds [4 x i8*], [4 x i8*]* %27, i64 0, i64 3
  %125 = bitcast i8** %124 to %struct._domain**
  store %struct._domain* %19, %struct._domain** %125, align 8
  %126 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %23, %struct.dim3* nonnull %24, i64* nonnull %25, i8** nonnull %26)
  %127 = load i64, i64* %25, align 8
  %128 = bitcast i8** %26 to %struct.ihipStream_t**
  %129 = load %struct.ihipStream_t*, %struct.ihipStream_t** %128, align 8
  %130 = bitcast %struct.dim3* %23 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.dim3, %struct.dim3* %23, i64 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = bitcast %struct.dim3* %24 to i64*
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.dim3, %struct.dim3* %24, i64 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z15calDf_optimizedP14_cuAtomElementll7_domain to i8*), i64 %131, i32 %133, i64 %135, i32 %137, i8** noundef nonnull %118, i64 noundef %127, %struct.ihipStream_t* noundef %129)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %107)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %109)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %110)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %111)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %112)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %115)
  br label %139

139:                                              ; preds = %105, %101
  %140 = call i32 @hipDeviceSynchronize()
  %141 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #14
  %142 = call i32 @__hipPushCallConfiguration(i64 4295000064, i32 1, i64 4294967808, i32 1, i64 noundef 0, %struct.ihipStream_t* noundef null)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %178

144:                                              ; preds = %139
  %145 = load %struct._cuAtomElement*, %struct._cuAtomElement** %37, align 8, !tbaa !3
  %146 = bitcast %struct._domain* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %146)
  %147 = bitcast %struct._cuAtomElement** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %147)
  %148 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %148)
  %149 = bitcast i64* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %149)
  %150 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %150)
  %151 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %151)
  %152 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %152)
  %153 = bitcast i8** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %153)
  %154 = bitcast [4 x i8*]* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %154)
  %155 = bitcast %struct._domain* %10 to i64*
  store i64 2199023256064, i64* %155, align 8
  %156 = getelementptr inbounds %struct._domain, %struct._domain* %10, i64 0, i32 2
  store i32 512, i32* %156, align 8
  store %struct._cuAtomElement* %145, %struct._cuAtomElement** %11, align 8, !tbaa !3
  store i64 0, i64* %12, align 8, !tbaa !7
  store i64 1, i64* %13, align 8, !tbaa !7
  %157 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 0
  %158 = bitcast [4 x i8*]* %18 to %struct._cuAtomElement***
  store %struct._cuAtomElement** %11, %struct._cuAtomElement*** %158, align 16
  %159 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 1
  %160 = bitcast i8** %159 to i64**
  store i64* %12, i64** %160, align 8
  %161 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 2
  %162 = bitcast i8** %161 to i64**
  store i64* %13, i64** %162, align 16
  %163 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 3
  %164 = bitcast i8** %163 to %struct._domain**
  store %struct._domain* %10, %struct._domain** %164, align 8
  %165 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %14, %struct.dim3* nonnull %15, i64* nonnull %16, i8** nonnull %17)
  %166 = load i64, i64* %16, align 8
  %167 = bitcast i8** %17 to %struct.ihipStream_t**
  %168 = load %struct.ihipStream_t*, %struct.ihipStream_t** %167, align 8
  %169 = bitcast %struct.dim3* %14 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = bitcast %struct.dim3* %15 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z5calDfP14_cuAtomElementll7_domain to i8*), i64 %170, i32 %172, i64 %174, i32 %176, i8** noundef nonnull %157, i64 noundef %166, %struct.ihipStream_t* noundef %168)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %146)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %147)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %148)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %149)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %150)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %151)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %152)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %153)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %154)
  br label %178

178:                                              ; preds = %144, %139
  %179 = call i32 @hipDeviceSynchronize()
  %180 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #14
  %181 = sub nsw i64 %180, %141
  %182 = sitofp i64 %181 to double
  %183 = fdiv contract double %182, 1.000000e+06
  %184 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #14
  %185 = call i32 @__hipPushCallConfiguration(i64 4295000064, i32 1, i64 4294967808, i32 1, i64 noundef 12288, %struct.ihipStream_t* noundef null)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %221

187:                                              ; preds = %178
  %188 = load %struct._cuAtomElement*, %struct._cuAtomElement** %38, align 8, !tbaa !3
  %189 = bitcast %struct._domain* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %189)
  %190 = bitcast %struct._cuAtomElement** %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %190)
  %191 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %191)
  %192 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %192)
  %193 = bitcast %struct.dim3* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %193)
  %194 = bitcast %struct.dim3* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %194)
  %195 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %195)
  %196 = bitcast i8** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %196)
  %197 = bitcast [4 x i8*]* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %197)
  %198 = bitcast %struct._domain* %1 to i64*
  store i64 2199023256064, i64* %198, align 8
  %199 = getelementptr inbounds %struct._domain, %struct._domain* %1, i64 0, i32 2
  store i32 512, i32* %199, align 8
  store %struct._cuAtomElement* %188, %struct._cuAtomElement** %2, align 8, !tbaa !3
  store i64 0, i64* %3, align 8, !tbaa !7
  store i64 1, i64* %4, align 8, !tbaa !7
  %200 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %201 = bitcast [4 x i8*]* %9 to %struct._cuAtomElement***
  store %struct._cuAtomElement** %2, %struct._cuAtomElement*** %201, align 16
  %202 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 1
  %203 = bitcast i8** %202 to i64**
  store i64* %3, i64** %203, align 8
  %204 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 2
  %205 = bitcast i8** %204 to i64**
  store i64* %4, i64** %205, align 16
  %206 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 3
  %207 = bitcast i8** %206 to %struct._domain**
  store %struct._domain* %1, %struct._domain** %207, align 8
  %208 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %209 = load i64, i64* %7, align 8
  %210 = bitcast i8** %8 to %struct.ihipStream_t**
  %211 = load %struct.ihipStream_t*, %struct.ihipStream_t** %210, align 8
  %212 = bitcast %struct.dim3* %5 to i64*
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = bitcast %struct.dim3* %6 to i64*
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call noundef i32 @hipLaunchKernel(i8* noundef bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z15calDf_optimizedP14_cuAtomElementll7_domain to i8*), i64 %213, i32 %215, i64 %217, i32 %219, i8** noundef nonnull %200, i64 noundef %209, %struct.ihipStream_t* noundef %211)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %189)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %190)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %191)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %192)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %193)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %194)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %195)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %196)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %197)
  br label %221

221:                                              ; preds = %187, %178
  %222 = call i32 @hipDeviceSynchronize()
  %223 = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #14
  %224 = sub nsw i64 %223, %184
  %225 = sitofp i64 %224 to double
  %226 = fdiv contract double %225, 1.000000e+06
  %227 = load i8*, i8** %44, align 8, !tbaa !3
  %228 = call i32 @hipMemcpy(i8* noundef nonnull %39, i8* noundef %227, i64 noundef 402653184, i32 noundef 2)
  %229 = call noalias noundef nonnull dereferenceable(402653184) i8* @_Znam(i64 noundef 402653184) #13
  %230 = bitcast i8* %229 to %struct._cuAtomElement*
  %231 = load i8*, i8** %46, align 8, !tbaa !3
  %232 = call i32 @hipMemcpy(i8* noundef nonnull %229, i8* noundef %231, i64 noundef 402653184, i32 noundef 2)
  %233 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 noundef 32)
  %234 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %183)
  %235 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %234, i8* noundef nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef 3)
  %236 = bitcast %"class.std::basic_ostream"* %234 to i8**
  %237 = load i8*, i8** %236, align 8, !tbaa !15
  %238 = getelementptr i8, i8* %237, i64 -24
  %239 = bitcast i8* %238 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = bitcast %"class.std::basic_ostream"* %234 to i8*
  %242 = getelementptr inbounds i8, i8* %241, i64 %240
  %243 = getelementptr inbounds i8, i8* %242, i64 240
  %244 = bitcast i8* %243 to %"class.std::ctype"**
  %245 = load %"class.std::ctype"*, %"class.std::ctype"** %244, align 8, !tbaa !17
  %246 = icmp eq %"class.std::ctype"* %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %221
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

248:                                              ; preds = %221
  %249 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %245, i64 0, i32 8
  %250 = load i8, i8* %249, align 8, !tbaa !25
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %245, i64 0, i32 9, i64 10
  %254 = load i8, i8* %253, align 1, !tbaa !28
  br label %261

255:                                              ; preds = %248
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %245)
  %256 = bitcast %"class.std::ctype"* %245 to i8 (%"class.std::ctype"*, i8)***
  %257 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %256, align 8, !tbaa !15
  %258 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %257, i64 6
  %259 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %258, align 8
  %260 = call noundef signext i8 %259(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %245, i8 noundef signext 10)
  br label %261

261:                                              ; preds = %252, %255
  %262 = phi i8 [ %254, %252 ], [ %260, %255 ]
  %263 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %234, i8 noundef signext %262)
  %264 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %263)
  %265 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef nonnull getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 noundef 33)
  %266 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %226)
  %267 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %266, i8* noundef nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 noundef 3)
  %268 = bitcast %"class.std::basic_ostream"* %266 to i8**
  %269 = load i8*, i8** %268, align 8, !tbaa !15
  %270 = getelementptr i8, i8* %269, i64 -24
  %271 = bitcast i8* %270 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = bitcast %"class.std::basic_ostream"* %266 to i8*
  %274 = getelementptr inbounds i8, i8* %273, i64 %272
  %275 = getelementptr inbounds i8, i8* %274, i64 240
  %276 = bitcast i8* %275 to %"class.std::ctype"**
  %277 = load %"class.std::ctype"*, %"class.std::ctype"** %276, align 8, !tbaa !17
  %278 = icmp eq %"class.std::ctype"* %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %261
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

280:                                              ; preds = %261
  %281 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %277, i64 0, i32 8
  %282 = load i8, i8* %281, align 8, !tbaa !25
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %277, i64 0, i32 9, i64 10
  %286 = load i8, i8* %285, align 1, !tbaa !28
  br label %293

287:                                              ; preds = %280
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %277)
  %288 = bitcast %"class.std::ctype"* %277 to i8 (%"class.std::ctype"*, i8)***
  %289 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %288, align 8, !tbaa !15
  %290 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %289, i64 6
  %291 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %290, align 8
  %292 = call noundef signext i8 %291(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %277, i8 noundef signext 10)
  br label %293

293:                                              ; preds = %284, %287
  %294 = phi i8 [ %286, %284 ], [ %292, %287 ]
  %295 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %266, i8 noundef signext %294)
  %296 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %295)
  %297 = call noundef zeroext i1 @_Z23checkResultsConsistencyP14_cuAtomElementS0_i(%struct._cuAtomElement* noundef nonnull %40, %struct._cuAtomElement* noundef nonnull %230, i32 noundef 16777216)
  br i1 %297, label %298, label %323

298:                                              ; preds = %293
  %299 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 noundef 23)
  %300 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !15
  %301 = getelementptr i8, i8* %300, i64 -24
  %302 = bitcast i8* %301 to i64*
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %303
  %305 = getelementptr inbounds i8, i8* %304, i64 240
  %306 = bitcast i8* %305 to %"class.std::ctype"**
  %307 = load %"class.std::ctype"*, %"class.std::ctype"** %306, align 8, !tbaa !17
  %308 = icmp eq %"class.std::ctype"* %307, null
  br i1 %308, label %309, label %310

309:                                              ; preds = %298
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

310:                                              ; preds = %298
  %311 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %307, i64 0, i32 8
  %312 = load i8, i8* %311, align 8, !tbaa !25
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %310
  %315 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %307, i64 0, i32 9, i64 10
  %316 = load i8, i8* %315, align 1, !tbaa !28
  br label %348

317:                                              ; preds = %310
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %307)
  %318 = bitcast %"class.std::ctype"* %307 to i8 (%"class.std::ctype"*, i8)***
  %319 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %318, align 8, !tbaa !15
  %320 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %319, i64 6
  %321 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %320, align 8
  %322 = call noundef signext i8 %321(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %307, i8 noundef signext 10)
  br label %348

323:                                              ; preds = %293
  %324 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 noundef 27)
  %325 = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !15
  %326 = getelementptr i8, i8* %325, i64 -24
  %327 = bitcast i8* %326 to i64*
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %328
  %330 = getelementptr inbounds i8, i8* %329, i64 240
  %331 = bitcast i8* %330 to %"class.std::ctype"**
  %332 = load %"class.std::ctype"*, %"class.std::ctype"** %331, align 8, !tbaa !17
  %333 = icmp eq %"class.std::ctype"* %332, null
  br i1 %333, label %334, label %335

334:                                              ; preds = %323
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

335:                                              ; preds = %323
  %336 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %332, i64 0, i32 8
  %337 = load i8, i8* %336, align 8, !tbaa !25
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = getelementptr inbounds %"class.std::ctype", %"class.std::ctype"* %332, i64 0, i32 9, i64 10
  %341 = load i8, i8* %340, align 1, !tbaa !28
  br label %348

342:                                              ; preds = %335
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %332)
  %343 = bitcast %"class.std::ctype"* %332 to i8 (%"class.std::ctype"*, i8)***
  %344 = load i8 (%"class.std::ctype"*, i8)**, i8 (%"class.std::ctype"*, i8)*** %343, align 8, !tbaa !15
  %345 = getelementptr inbounds i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %344, i64 6
  %346 = load i8 (%"class.std::ctype"*, i8)*, i8 (%"class.std::ctype"*, i8)** %345, align 8
  %347 = call noundef signext i8 %346(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570) %332, i8 noundef signext 10)
  br label %348

348:                                              ; preds = %342, %339, %317, %314
  %349 = phi i8 [ %316, %314 ], [ %322, %317 ], [ %341, %339 ], [ %347, %342 ]
  %350 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %349)
  %351 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %350)
  %352 = load i8*, i8** %44, align 8, !tbaa !3
  %353 = call i32 @hipFree(i8* noundef %352)
  %354 = load i8*, i8** %46, align 8, !tbaa !3
  %355 = call i32 @hipFree(i8* noundef %354)
  call void @_ZdaPv(i8* noundef nonnull %39) #15
  call void @_ZdaPv(i8* noundef nonnull %229) #15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #14
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #8

declare dso_local i32 @hipMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64 noundef, %struct.ihipStream_t* noundef) local_unnamed_addr #0

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #1

declare dso_local i32 @hipFree(i8* noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8* noundef) local_unnamed_addr #9

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #10 {
  tail call void @_Z21testKernelPerformancev()
  ret i32 0
}

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo3putEc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo5flushEv(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare dso_local void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare dso_local void @_ZNKSt5ctypeIcE13_M_widen_initEv(%"class.std::ctype"* noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare dso_local i32 @hipMalloc(i8** noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_hip_kernels.hip.cpp() #7 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #14
  ret void
}

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local i8** @__hipRegisterFatBinary(i8*) local_unnamed_addr

define internal void @__hip_module_ctor() {
  %1 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %2 = icmp eq i8** %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i8** @__hipRegisterFatBinary(i8* bitcast ({ i32, i32, i8*, i8* }* @__hip_fatbin_wrapper to i8*))
  store i8** %4, i8*** @__hip_gpubin_handle, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i8** [ %4, %3 ], [ %1, %0 ]
  %7 = tail call i32 @__hipRegisterFunction(i8** %6, i8* bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z5calDfP14_cuAtomElementll7_domain to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %8 = tail call i32 @__hipRegisterFunction(i8** %6, i8* bitcast (void (%struct._cuAtomElement*, i64, i64, i64, i32)** @_Z15calDf_optimizedP14_cuAtomElementll7_domain to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @atexit(void ()* nonnull @__hip_module_dtor)
  ret void
}

declare dso_local void @__hipUnregisterFatBinary(i8**) local_unnamed_addr

define internal void @__hip_module_dtor() {
  %1 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %2 = icmp eq i8** %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @__hipUnregisterFatBinary(i8** nonnull %1)
  store i8** null, i8*** @__hip_gpubin_handle, align 8
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @atexit(void ()*) local_unnamed_addr

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 340750feeda88c9c2ce8ad481b11d9aa7f033d39)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !12, i64 16}
!10 = !{!"_ZTS14_cuAtomElement", !11, i64 0, !12, i64 8, !12, i64 16}
!11 = !{!"int", !5, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !6, i64 0}
!17 = !{!18, !4, i64 240}
!18 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0, !4, i64 216, !5, i64 224, !24, i64 225, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256}
!19 = !{!"_ZTSSt8ios_base", !8, i64 8, !8, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !4, i64 40, !22, i64 48, !5, i64 64, !11, i64 192, !4, i64 200, !23, i64 208}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !8, i64 8}
!23 = !{!"_ZTSSt6locale", !4, i64 0}
!24 = !{!"bool", !5, i64 0}
!25 = !{!26, !5, i64 56}
!26 = !{!"_ZTSSt5ctypeIcE", !27, i64 0, !4, i64 16, !24, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!27 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!28 = !{!5, !5, i64 0}
!29 = !{!10, !11, i64 0}
!30 = !{!10, !12, i64 8}
!31 = distinct !{!31, !14}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
