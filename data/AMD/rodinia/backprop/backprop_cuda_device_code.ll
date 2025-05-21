; ModuleID = 'hip/backprop/backprop_cuda.cu'
source_filename = "hip/backprop/backprop_cuda.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE10input_node = internal unnamed_addr addrspace(3) global [16 x float] undef, align 16
@_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix = internal unnamed_addr addrspace(3) global [16 x [16 x float]] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z22bpnn_layerforward_CUDAPfS_S_S_ii(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readnone %1, float addrspace(1)* nocapture %2, float addrspace(1)* nocapture writeonly %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %9 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !5
  %10 = add nsw i32 %5, 1
  %11 = shl i32 %7, 4
  %12 = add i32 %11, %9
  %13 = mul i32 %12, %10
  %14 = add nuw nsw i32 %8, 1
  %15 = add i32 %14, %10
  %16 = add i32 %15, %13
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = getelementptr inbounds [16 x float], [16 x float] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE10input_node, i32 0, i32 %9
  %20 = add nuw nsw i32 %9, 1
  %21 = add i32 %20, %11
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float addrspace(1)* %0, i64 %22
  %24 = load float, float addrspace(1)* %23, align 4, !tbaa !6, !amdgpu.noclobber !10
  store float %24, float addrspace(3)* %19, align 4, !tbaa !6
  br label %25

25:                                               ; preds = %18, %6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds float, float addrspace(1)* %2, i64 %26
  %28 = load float, float addrspace(1)* %27, align 4, !tbaa !6, !amdgpu.noclobber !10
  %29 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix, i32 0, i32 %9, i32 %8
  store float %28, float addrspace(3)* %29, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %30 = load float, float addrspace(3)* %29, align 4, !tbaa !6
  %31 = getelementptr inbounds [16 x float], [16 x float] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE10input_node, i32 0, i32 %9
  %32 = load float, float addrspace(3)* %31, align 4, !tbaa !6
  %33 = fmul contract float %30, %32
  store float %33, float addrspace(3)* %29, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %34 = and i32 %9, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load float, float addrspace(3)* %29, align 4, !tbaa !6
  %38 = add nuw nsw i32 %9, 1
  %39 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix, i32 0, i32 %38, i32 %8
  %40 = load float, float addrspace(3)* %39, align 4, !tbaa !6
  %41 = fadd contract float %37, %40
  store float %41, float addrspace(3)* %29, align 4, !tbaa !6
  br label %42

42:                                               ; preds = %36, %25
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %43 = and i32 %9, 3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load float, float addrspace(3)* %29, align 4, !tbaa !6
  %47 = add nuw nsw i32 %9, 2
  %48 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix, i32 0, i32 %47, i32 %8
  %49 = load float, float addrspace(3)* %48, align 4, !tbaa !6
  %50 = fadd contract float %46, %49
  store float %50, float addrspace(3)* %29, align 4, !tbaa !6
  br label %51

51:                                               ; preds = %45, %42
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %52 = and i32 %9, 7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load float, float addrspace(3)* %29, align 4, !tbaa !6
  %56 = add nuw nsw i32 %9, 4
  %57 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix, i32 0, i32 %56, i32 %8
  %58 = load float, float addrspace(3)* %57, align 4, !tbaa !6
  %59 = fadd contract float %55, %58
  store float %59, float addrspace(3)* %29, align 4, !tbaa !6
  br label %60

60:                                               ; preds = %54, %51
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %61 = and i32 %9, 15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load float, float addrspace(3)* %29, align 4, !tbaa !6
  %65 = add nuw nsw i32 %9, 8
  %66 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix, i32 0, i32 %65, i32 %8
  %67 = load float, float addrspace(3)* %66, align 4, !tbaa !6
  %68 = fadd contract float %64, %67
  store float %68, float addrspace(3)* %29, align 4, !tbaa !6
  br label %69

69:                                               ; preds = %63, %60
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %70 = load float, float addrspace(3)* %29, align 4, !tbaa !6
  store float %70, float addrspace(1)* %27, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %17, label %71, label %78

71:                                               ; preds = %69
  %72 = getelementptr inbounds [16 x [16 x float]], [16 x [16 x float]] addrspace(3)* @_ZZ22bpnn_layerforward_CUDAPfS_S_S_iiE13weight_matrix, i32 0, i32 0, i32 %9
  %73 = load float, float addrspace(3)* %72, align 4, !tbaa !6
  %74 = mul nsw i32 %7, %5
  %75 = add nsw i32 %74, %9
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float addrspace(1)* %3, i64 %76
  store float %73, float addrspace(1)* %77, align 4, !tbaa !6
  br label %78

78:                                               ; preds = %71, %69
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z24bpnn_adjust_weights_cudaPfiS_iS_S_(float addrspace(1)* nocapture readonly %0, i32 %1, float addrspace(1)* nocapture readonly %2, i32 %3, float addrspace(1)* nocapture %4, float addrspace(1)* nocapture %5) local_unnamed_addr #1 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %9 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !5
  %10 = add nsw i32 %1, 1
  %11 = shl i32 %7, 4
  %12 = add i32 %11, %9
  %13 = mul i32 %12, %10
  %14 = add nuw nsw i32 %8, 1
  %15 = add i32 %14, %10
  %16 = add i32 %15, %13
  %17 = add nuw nsw i32 %9, 1
  %18 = add i32 %17, %11
  %19 = zext i32 %14 to i64
  %20 = getelementptr inbounds float, float addrspace(1)* %0, i64 %19
  %21 = load float, float addrspace(1)* %20, align 4, !tbaa !6, !amdgpu.noclobber !10
  %22 = fpext float %21 to double
  %23 = fmul contract double %22, 3.000000e-01
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds float, float addrspace(1)* %2, i64 %24
  %26 = load float, float addrspace(1)* %25, align 4, !tbaa !6, !amdgpu.noclobber !10
  %27 = fpext float %26 to double
  %28 = fmul contract double %23, %27
  %29 = sext i32 %16 to i64
  %30 = getelementptr inbounds float, float addrspace(1)* %5, i64 %29
  %31 = load float, float addrspace(1)* %30, align 4, !tbaa !6, !amdgpu.noclobber !10
  %32 = fpext float %31 to double
  %33 = fmul contract double %32, 3.000000e-01
  %34 = fadd contract double %28, %33
  %35 = getelementptr inbounds float, float addrspace(1)* %4, i64 %29
  %36 = load float, float addrspace(1)* %35, align 4, !tbaa !6, !amdgpu.noclobber !10
  %37 = fpext float %36 to double
  %38 = fadd contract double %34, %37
  %39 = fptrunc double %38 to float
  store float %39, float addrspace(1)* %35, align 4, !tbaa !6
  %40 = load float, float addrspace(1)* %20, align 4, !tbaa !6
  %41 = fpext float %40 to double
  %42 = fmul contract double %41, 3.000000e-01
  %43 = load float, float addrspace(1)* %25, align 4, !tbaa !6
  %44 = fpext float %43 to double
  %45 = fmul contract double %42, %44
  %46 = load float, float addrspace(1)* %30, align 4, !tbaa !6
  %47 = fpext float %46 to double
  %48 = fmul contract double %47, 3.000000e-01
  %49 = fadd contract double %45, %48
  %50 = fptrunc double %49 to float
  store float %50, float addrspace(1)* %30, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %51 = icmp eq i32 %9, 0
  %52 = icmp eq i32 %7, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %76

54:                                               ; preds = %6
  %55 = load float, float addrspace(1)* %20, align 4, !tbaa !6
  %56 = fpext float %55 to double
  %57 = fmul contract double %56, 3.000000e-01
  %58 = getelementptr inbounds float, float addrspace(1)* %5, i64 %19
  %59 = load float, float addrspace(1)* %58, align 4, !tbaa !6
  %60 = fpext float %59 to double
  %61 = fmul contract double %60, 3.000000e-01
  %62 = fadd contract double %57, %61
  %63 = getelementptr inbounds float, float addrspace(1)* %4, i64 %19
  %64 = load float, float addrspace(1)* %63, align 4, !tbaa !6
  %65 = fpext float %64 to double
  %66 = fadd contract double %62, %65
  %67 = fptrunc double %66 to float
  store float %67, float addrspace(1)* %63, align 4, !tbaa !6
  %68 = load float, float addrspace(1)* %20, align 4, !tbaa !6
  %69 = fpext float %68 to double
  %70 = fmul contract double %69, 3.000000e-01
  %71 = load float, float addrspace(1)* %58, align 4, !tbaa !6
  %72 = fpext float %71 to double
  %73 = fmul contract double %72, 3.000000e-01
  %74 = fadd contract double %70, %73
  %75 = fptrunc double %74 to float
  store float %75, float addrspace(1)* %58, align 4, !tbaa !6
  br label %76

76:                                               ; preds = %54, %6
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
