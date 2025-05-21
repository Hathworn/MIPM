; ModuleID = 'hip/hybridsort/histogram1024_kernel.hip.cu'
source_filename = "hip/hybridsort/histogram1024_kernel.hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ19histogram1024KernelPjPfffiE6s_Hist = internal addrspace(3) global [3072 x i32] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z19histogram1024KernelPjPfffi(i32 addrspace(1)* nocapture %0, float addrspace(1)* nocapture readonly %1, float %2, float %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !5, !invariant.load !6
  %11 = zext i16 %10 to i32
  %12 = shl i32 %6, 8
  %13 = ashr exact i32 %12, 8
  %14 = mul nsw i32 %13, %11
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %16 = add i32 %14, %15
  br label %32

17:                                               ; preds = %32
  %18 = shl i32 %15, 27
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %19 = icmp slt i32 %16, %4
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds float, float addrspace(1)* %1, i64 %21
  %23 = load float, float addrspace(1)* %22, align 4, !tbaa !8, !amdgpu.noclobber !6
  %24 = fsub contract float %23, %2
  %25 = fsub contract float %3, %2
  %26 = fdiv contract float %24, %25
  %27 = fmul contract float %26, 1.024000e+03
  %28 = fptoui float %27 to i32
  %29 = and i32 %28, 1023
  %30 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %29
  %31 = addrspacecast i32 addrspace(3)* %30 to i32*
  br label %39

32:                                               ; preds = %5, %32
  %33 = phi i32 [ %15, %5 ], [ %36, %32 ]
  %34 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %33
  %35 = addrspacecast i32 addrspace(3)* %34 to i32*
  store volatile i32 0, i32* %35, align 4, !tbaa !12
  %36 = add nuw nsw i32 %33, %11
  %37 = icmp ult i32 %36, 3072
  br i1 %37, label %32, label %17, !llvm.loop !14

38:                                               ; preds = %17
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br label %45

39:                                               ; preds = %39, %20
  %40 = load volatile i32, i32* %31, align 4, !tbaa !12
  %41 = and i32 %40, 134217727
  %42 = add nuw nsw i32 %41, 1
  %43 = or i32 %42, %18
  store volatile i32 %43, i32* %31, align 4, !tbaa !12
  %44 = load volatile i32, i32* %31, align 4, !tbaa !12
  br label %39, !llvm.loop !16

45:                                               ; preds = %38, %45
  %46 = phi i32 [ %15, %38 ], [ %66, %45 ]
  %47 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %46
  %48 = addrspacecast i32 addrspace(3)* %47 to i32*
  %49 = load volatile i32, i32* %48, align 4, !tbaa !12
  %50 = and i32 %49, 134217727
  %51 = add nuw nsw i32 %46, 1024
  %52 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %51
  %53 = addrspacecast i32 addrspace(3)* %52 to i32*
  %54 = load volatile i32, i32* %53, align 4, !tbaa !12
  %55 = and i32 %54, 134217727
  %56 = add nuw nsw i32 %55, %50
  %57 = add nuw nsw i32 %46, 2048
  %58 = getelementptr inbounds [3072 x i32], [3072 x i32] addrspace(3)* @_ZZ19histogram1024KernelPjPfffiE6s_Hist, i32 0, i32 %57
  %59 = addrspacecast i32 addrspace(3)* %58 to i32*
  %60 = load volatile i32, i32* %59, align 4, !tbaa !12
  %61 = and i32 %60, 134217727
  %62 = add nuw nsw i32 %61, %56
  %63 = zext i32 %46 to i64
  %64 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %63
  %65 = atomicrmw add i32 addrspace(1)* %64, i32 %62 syncscope("agent-one-as") monotonic, align 4
  %66 = add nuw nsw i32 %46, %11
  %67 = icmp ult i32 %66, 1024
  br i1 %67, label %45, label %68, !llvm.loop !17

68:                                               ; preds = %45
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
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
!7 = !{i32 0, i32 1024}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
