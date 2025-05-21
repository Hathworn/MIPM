; ModuleID = 'nn_hip.cu'
source_filename = "nn_hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.latLong = type { float, float }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z6euclidP7latLongPfiff(%struct.latLong addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture writeonly %1, i32 %2, float %3, float %4) local_unnamed_addr #0 {
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %7 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %8 = bitcast i8 addrspace(4)* %7 to i16 addrspace(4)*
  %9 = load i16, i16 addrspace(4)* %8, align 4, !range !5, !invariant.load !6
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds i8, i8 addrspace(4)* %6, i64 12
  %12 = bitcast i8 addrspace(4)* %11 to i32 addrspace(4)*
  %13 = load i32, i32 addrspace(4)* %12, align 4, !tbaa !7
  %14 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %15 = zext i16 %9 to i64
  %16 = udiv i32 %13, %10
  %17 = mul i32 %16, %10
  %18 = icmp ugt i32 %13, %17
  %19 = zext i1 %18 to i32
  %20 = add i32 %16, %19
  %21 = zext i32 %20 to i64
  %22 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %23 = zext i32 %22 to i64
  %24 = mul nuw i64 %21, %23
  %25 = zext i32 %14 to i64
  %26 = add nuw i64 %24, %25
  %27 = mul i64 %26, %15
  %28 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !16
  %29 = zext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = shl i64 %30, 32
  %33 = ashr exact i64 %32, 32
  %34 = icmp slt i32 %31, %2
  br i1 %34, label %35, label %67

35:                                               ; preds = %5
  %36 = getelementptr inbounds float, float addrspace(1)* %1, i64 %33
  %37 = getelementptr inbounds %struct.latLong, %struct.latLong addrspace(1)* %0, i64 %33, i32 0
  %38 = load float, float addrspace(1)* %37, align 4, !tbaa !17, !amdgpu.noclobber !6
  %39 = fsub contract float %3, %38
  %40 = fmul contract float %39, %39
  %41 = getelementptr inbounds %struct.latLong, %struct.latLong addrspace(1)* %0, i64 %33, i32 1
  %42 = load float, float addrspace(1)* %41, align 4, !tbaa !22, !amdgpu.noclobber !6
  %43 = fsub contract float %4, %42
  %44 = fmul contract float %43, %43
  %45 = fadd contract float %40, %44
  %46 = fcmp olt float %45, 0x39F0000000000000
  %47 = select i1 %46, float 0x41F0000000000000, float 1.000000e+00
  %48 = fmul float %45, %47
  %49 = tail call float @llvm.sqrt.f32(float %48)
  %50 = bitcast float %49 to i32
  %51 = add nsw i32 %50, -1
  %52 = bitcast i32 %51 to float
  %53 = add nsw i32 %50, 1
  %54 = bitcast i32 %53 to float
  %55 = tail call i1 @llvm.amdgcn.class.f32(float %48, i32 608)
  %56 = select i1 %46, float 0x3EF0000000000000, float 1.000000e+00
  %57 = fneg float %54
  %58 = tail call float @llvm.fma.f32(float %57, float %49, float %48)
  %59 = fcmp ogt float %58, 0.000000e+00
  %60 = fneg float %52
  %61 = tail call float @llvm.fma.f32(float %60, float %49, float %48)
  %62 = fcmp ole float %61, 0.000000e+00
  %63 = select i1 %62, float %52, float %49
  %64 = select i1 %59, float %54, float %63
  %65 = fmul float %56, %64
  %66 = select i1 %55, float %48, float %65
  store float %66, float addrspace(1)* %36, align 4, !tbaa !23
  br label %67

67:                                               ; preds = %35, %5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!7 = !{!8, !12, i64 12}
!8 = !{!"hsa_kernel_dispatch_packet_s", !9, i64 0, !9, i64 2, !9, i64 4, !9, i64 6, !9, i64 8, !9, i64 10, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !13, i64 32, !14, i64 40, !13, i64 48, !15, i64 56}
!9 = !{!"short", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"long", !10, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"hsa_signal_s", !13, i64 0}
!16 = !{i32 0, i32 1024}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTS7latLong", !19, i64 0, !19, i64 4}
!19 = !{!"float", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!18, !19, i64 4}
!23 = !{!19, !19, i64 0}
