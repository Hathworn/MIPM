; ModuleID = 'streamcluster_hip.cu'
source_filename = "streamcluster_hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.Point = type { float, float*, i64, float }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z19kernel_compute_costiilP5PointiiPfS1_PiPb(i32 %0, i32 %1, i64 %2, %struct.Point addrspace(1)* nocapture readonly %3, i32 %4, i32 %5, float addrspace(1)* nocapture readonly %6, float addrspace(1)* nocapture %7, i32 addrspace(1)* nocapture readonly %8, i8 addrspace(1)* nocapture writeonly %9) local_unnamed_addr #0 {
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %12 = zext i32 %11 to i64
  %13 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %14 = getelementptr inbounds i8, i8 addrspace(4)* %13, i64 12
  %15 = bitcast i8 addrspace(4)* %14 to i32 addrspace(4)*
  %16 = load i32, i32 addrspace(4)* %15, align 4, !tbaa !5
  %17 = getelementptr i8, i8 addrspace(4)* %13, i64 4
  %18 = bitcast i8 addrspace(4)* %17 to i16 addrspace(4)*
  %19 = load i16, i16 addrspace(4)* %18, align 4, !range !14, !invariant.load !15
  %20 = zext i16 %19 to i32
  %21 = udiv i32 %16, %20
  %22 = mul i32 %21, %20
  %23 = icmp ugt i32 %16, %22
  %24 = zext i1 %23 to i32
  %25 = add i32 %21, %24
  %26 = zext i32 %25 to i64
  %27 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %28 = zext i32 %27 to i64
  %29 = mul nuw i64 %26, %28
  %30 = add nuw i64 %29, %12
  %31 = zext i16 %19 to i64
  %32 = mul i64 %30, %31
  %33 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !16
  %34 = zext i32 %33 to i64
  %35 = add i64 %32, %34
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %36, %0
  br i1 %37, label %38, label %87

38:                                               ; preds = %10
  %39 = mul nsw i32 %36, %5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float addrspace(1)* %7, i64 %40
  %42 = trunc i64 %2 to i32
  %43 = icmp sgt i32 %1, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %38, %44
  %45 = phi float [ %58, %44 ], [ 0.000000e+00, %38 ]
  %46 = phi i32 [ %59, %44 ], [ 0, %38 ]
  %47 = mul nsw i32 %46, %0
  %48 = add nsw i32 %47, %36
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float addrspace(1)* %6, i64 %49
  %51 = load float, float addrspace(1)* %50, align 4, !tbaa !17, !amdgpu.noclobber !15
  %52 = add nsw i32 %47, %42
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float addrspace(1)* %6, i64 %53
  %55 = load float, float addrspace(1)* %54, align 4, !tbaa !17, !amdgpu.noclobber !15
  %56 = fsub contract float %51, %55
  %57 = fmul contract float %56, %56
  %58 = fadd contract float %45, %57
  %59 = add nuw nsw i32 %46, 1
  %60 = icmp eq i32 %59, %1
  br i1 %60, label %61, label %44, !llvm.loop !21

61:                                               ; preds = %44, %38
  %62 = phi float [ 0.000000e+00, %38 ], [ %58, %44 ]
  %63 = shl i64 %35, 32
  %64 = ashr exact i64 %63, 32
  %65 = getelementptr inbounds %struct.Point, %struct.Point addrspace(1)* %3, i64 %64, i32 0
  %66 = load float, float addrspace(1)* %65, align 8, !tbaa !23, !amdgpu.noclobber !15
  %67 = fmul contract float %62, %66
  %68 = getelementptr inbounds %struct.Point, %struct.Point addrspace(1)* %3, i64 %64, i32 3
  %69 = load float, float addrspace(1)* %68, align 8, !tbaa !27, !amdgpu.noclobber !15
  %70 = fcmp contract olt float %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = getelementptr inbounds i8, i8 addrspace(1)* %9, i64 %64
  store i8 1, i8 addrspace(1)* %72, align 1, !tbaa !28
  %73 = fsub contract float %67, %69
  br label %80

74:                                               ; preds = %61
  %75 = fsub contract float %69, %67
  %76 = getelementptr inbounds %struct.Point, %struct.Point addrspace(1)* %3, i64 %64, i32 2
  %77 = load i64, i64 addrspace(1)* %76, align 8, !tbaa !30, !amdgpu.noclobber !15
  %78 = getelementptr inbounds i32, i32 addrspace(1)* %8, i64 %77
  %79 = load i32, i32 addrspace(1)* %78, align 4, !tbaa !31, !amdgpu.noclobber !15
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i32 [ %79, %74 ], [ %4, %71 ]
  %82 = phi float [ %75, %74 ], [ %73, %71 ]
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds float, float addrspace(1)* %41, i64 %83
  %85 = load float, float addrspace(1)* %84, align 4, !tbaa !17
  %86 = fadd contract float %82, %85
  store float %86, float addrspace(1)* %84, align 4, !tbaa !17
  br label %87

87:                                               ; preds = %80, %10
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
!5 = !{!6, !10, i64 12}
!6 = !{!"hsa_kernel_dispatch_packet_s", !7, i64 0, !7, i64 2, !7, i64 4, !7, i64 6, !7, i64 8, !7, i64 10, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !11, i64 32, !12, i64 40, !11, i64 48, !13, i64 56}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"hsa_signal_s", !11, i64 0}
!14 = !{i16 1, i16 1025}
!15 = !{}
!16 = !{i32 0, i32 1024}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !18, i64 0}
!24 = !{!"_ZTS5Point", !18, i64 0, !25, i64 8, !26, i64 16, !18, i64 24}
!25 = !{!"any pointer", !19, i64 0}
!26 = !{!"long", !19, i64 0}
!27 = !{!24, !18, i64 24}
!28 = !{!29, !29, i64 0}
!29 = !{!"bool", !19, i64 0}
!30 = !{!24, !26, i64 16}
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !19, i64 0}
