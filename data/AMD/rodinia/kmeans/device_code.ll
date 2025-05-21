; ModuleID = 'kmeans_cuda.cu'
source_filename = "kmeans_cuda.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z14invert_mappingPfS_ii(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !6, !invariant.load !7
  %11 = zext i16 %10 to i32
  %12 = mul i32 %7, %11
  %13 = add i32 %12, %5
  %14 = icmp slt i32 %13, %2
  %15 = icmp sgt i32 %3, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = mul nsw i32 %13, %3
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i32 [ 0, %17 ], [ %29, %19 ]
  %21 = add nsw i32 %20, %18
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float addrspace(1)* %0, i64 %22
  %24 = load float, float addrspace(1)* %23, align 4, !tbaa !8
  %25 = mul nsw i32 %20, %2
  %26 = add nsw i32 %25, %13
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float addrspace(1)* %1, i64 %27
  store float %24, float addrspace(1)* %28, align 4, !tbaa !8
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, %3
  br i1 %30, label %31, label %19, !llvm.loop !12

31:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z11kmeansPointPfS_iiiPiS_S_S0_(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readnone %1, i32 %2, i32 %3, i32 %4, i32 addrspace(1)* nocapture writeonly %5, float addrspace(1)* nocapture readonly %6, float addrspace(1)* nocapture readnone %7, i32 addrspace(1)* nocapture readnone %8) local_unnamed_addr #0 {
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %11 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 12
  %12 = bitcast i8 addrspace(4)* %11 to i32 addrspace(4)*
  %13 = load i32, i32 addrspace(4)* %12, align 4, !tbaa !14
  %14 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %15 = bitcast i8 addrspace(4)* %14 to i16 addrspace(4)*
  %16 = load i16, i16 addrspace(4)* %15, align 4, !range !6, !invariant.load !7
  %17 = zext i16 %16 to i32
  %18 = udiv i32 %13, %17
  %19 = mul i32 %18, %17
  %20 = icmp ugt i32 %13, %19
  %21 = zext i1 %20 to i32
  %22 = add i32 %18, %21
  %23 = zext i32 %22 to i64
  %24 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %25 = zext i32 %24 to i64
  %26 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %27 = zext i32 %26 to i64
  %28 = zext i16 %16 to i64
  %29 = getelementptr i8, i8 addrspace(4)* %10, i64 6
  %30 = bitcast i8 addrspace(4)* %29 to i16 addrspace(4)*
  %31 = load i16, i16 addrspace(4)* %30, align 2, !range !6, !invariant.load !7
  %32 = zext i16 %31 to i64
  %33 = insertelement <2 x i64> poison, i64 %32, i64 0
  %34 = insertelement <2 x i64> %33, i64 %23, i64 1
  %35 = insertelement <2 x i64> poison, i64 %28, i64 0
  %36 = insertelement <2 x i64> %35, i64 %25, i64 1
  %37 = mul nuw <2 x i64> %34, %36
  %38 = trunc <2 x i64> %37 to <2 x i32>
  %39 = extractelement <2 x i32> %38, i64 1
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i64 %40, %27
  %42 = extractelement <2 x i32> %38, i64 0
  %43 = zext i32 %42 to i64
  %44 = mul i64 %41, %43
  %45 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %46 = zext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = icmp ult i32 %48, %3
  %50 = icmp sgt i32 %4, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %83

52:                                               ; preds = %9
  %53 = icmp sgt i32 %2, 0
  br label %54

54:                                               ; preds = %52, %76
  %55 = phi i32 [ -1, %52 ], [ %80, %76 ]
  %56 = phi i32 [ 0, %52 ], [ %81, %76 ]
  %57 = phi float [ 0x47EFFFFFE0000000, %52 ], [ %79, %76 ]
  %58 = mul nsw i32 %56, %2
  br i1 %53, label %59, label %76

59:                                               ; preds = %54, %59
  %60 = phi float [ %73, %59 ], [ 0.000000e+00, %54 ]
  %61 = phi i32 [ %74, %59 ], [ 0, %54 ]
  %62 = mul nsw i32 %61, %3
  %63 = add i32 %62, %48
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float addrspace(1)* %0, i64 %64
  %66 = load float, float addrspace(1)* %65, align 4, !tbaa !8, !amdgpu.noclobber !7
  %67 = add nsw i32 %61, %58
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float addrspace(1)* %6, i64 %68
  %70 = load float, float addrspace(1)* %69, align 4, !tbaa !8, !amdgpu.noclobber !7
  %71 = fsub contract float %66, %70
  %72 = fmul contract float %71, %71
  %73 = fadd contract float %60, %72
  %74 = add nuw nsw i32 %61, 1
  %75 = icmp eq i32 %74, %2
  br i1 %75, label %76, label %59, !llvm.loop !23

76:                                               ; preds = %59, %54
  %77 = phi float [ 0.000000e+00, %54 ], [ %73, %59 ]
  %78 = fcmp contract olt float %77, %57
  %79 = select i1 %78, float %77, float %57
  %80 = select i1 %78, i32 %56, i32 %55
  %81 = add nuw nsw i32 %56, 1
  %82 = icmp eq i32 %81, %4
  br i1 %82, label %83, label %54, !llvm.loop !24

83:                                               ; preds = %76, %9
  %84 = phi i32 [ -1, %9 ], [ %80, %76 ]
  br i1 %49, label %85, label %88

85:                                               ; preds = %83
  %86 = and i64 %47, 4294967295
  %87 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %86
  store i32 %84, i32 addrspace(1)* %87, align 4, !tbaa !25
  br label %88

88:                                               ; preds = %85, %83
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{i32 0, i32 1024}
!6 = !{i16 1, i16 1025}
!7 = !{}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !19, i64 12}
!15 = !{!"hsa_kernel_dispatch_packet_s", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !20, i64 32, !21, i64 40, !20, i64 48, !22, i64 56}
!16 = !{!"short", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"int", !17, i64 0}
!20 = !{!"long", !17, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"hsa_signal_s", !20, i64 0}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !10, i64 0}
