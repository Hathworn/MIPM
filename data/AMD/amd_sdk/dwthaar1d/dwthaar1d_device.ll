; ModuleID = 'dwthaar1d/dwthaar1d.cpp'
source_filename = "dwthaar1d/dwthaar1d.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ9dwtHaar1DPfS_S_jjjjE11sharedArray = internal unnamed_addr addrspace(3) global [32 x float] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z9dwtHaar1DPfS_S_jjjj(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture writeonly %1, float addrspace(1)* nocapture writeonly %2, i32 %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = zext i32 %9 to i64
  %11 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %12 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %13 = bitcast i8 addrspace(4)* %12 to i16 addrspace(4)*
  %14 = load i16, i16 addrspace(4)* %13, align 4, !range !5, !invariant.load !6
  %15 = zext i16 %14 to i32
  %16 = shl i32 %9, 1
  %17 = mul i32 %16, %15
  %18 = add i32 %17, %8
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds float, float addrspace(1)* %0, i64 %19
  %21 = load float, float addrspace(1)* %20, align 4, !tbaa !7
  %22 = add nuw nsw i32 %8, %15
  %23 = add i32 %22, %17
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds float, float addrspace(1)* %0, i64 %24
  %26 = load float, float addrspace(1)* %25, align 4, !tbaa !7
  %27 = icmp eq i32 %5, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %7
  %29 = uitofp i32 %4 to float
  %30 = icmp eq i32 %4, 0
  %31 = select i1 %30, float 0x4310000000000000, float 1.000000e+00
  %32 = select i1 %30, float 0x4630000000000000, float 1.000000e+00
  %33 = fmul float %32, %29
  %34 = tail call float @llvm.amdgcn.rsq.f32(float %33) #3
  %35 = fmul float %31, %34
  %36 = fmul contract float %35, %21
  %37 = fmul contract float %35, %26
  br label %38

38:                                               ; preds = %28, %7
  %39 = phi float [ %37, %28 ], [ %26, %7 ]
  %40 = phi float [ %36, %28 ], [ %21, %7 ]
  %41 = getelementptr inbounds [32 x float], [32 x float] addrspace(3)* @_ZZ9dwtHaar1DPfS_S_jjjjE11sharedArray, i32 0, i32 %8
  store float %40, float addrspace(3)* %41, align 4, !tbaa !7
  %42 = getelementptr inbounds [32 x float], [32 x float] addrspace(3)* @_ZZ9dwtHaar1DPfS_S_jjjjE11sharedArray, i32 0, i32 %22
  store float %39, float addrspace(3)* %42, align 4, !tbaa !7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %43 = icmp ugt i32 %3, %6
  %44 = select i1 %43, i32 %6, i32 %3
  %45 = tail call float @llvm.amdgcn.rsq.f32(float 2.000000e+00) #3
  %46 = shl nuw nsw i32 %8, 1
  %47 = or i32 %46, 1
  %48 = getelementptr inbounds [32 x float], [32 x float] addrspace(3)* @_ZZ9dwtHaar1DPfS_S_jjjjE11sharedArray, i32 0, i32 %47
  %49 = getelementptr inbounds [32 x float], [32 x float] addrspace(3)* @_ZZ9dwtHaar1DPfS_S_jjjjE11sharedArray, i32 0, i32 %46
  %50 = icmp eq i32 %44, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %38
  %52 = lshr i32 %4, 1
  %53 = shl nuw i32 1, %44
  %54 = sdiv i32 %53, 2
  br label %57

55:                                               ; preds = %81, %38
  %56 = icmp eq i32 %8, 0
  br i1 %56, label %86, label %89

57:                                               ; preds = %51, %81
  %58 = phi float [ %69, %81 ], [ undef, %51 ]
  %59 = phi float [ %68, %81 ], [ undef, %51 ]
  %60 = phi i32 [ %84, %81 ], [ 0, %51 ]
  %61 = phi i32 [ %82, %81 ], [ %52, %51 ]
  %62 = phi i32 [ %83, %81 ], [ %54, %51 ]
  %63 = icmp ugt i32 %62, %8
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load float, float addrspace(3)* %49, align 8, !tbaa !7
  %66 = load float, float addrspace(3)* %48, align 4, !tbaa !7
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi float [ %65, %64 ], [ %59, %57 ]
  %69 = phi float [ %66, %64 ], [ %58, %57 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %63, label %70, label %81

70:                                               ; preds = %67
  %71 = fadd contract float %68, %69
  %72 = fmul contract float %45, %71
  store float %72, float addrspace(3)* %41, align 4, !tbaa !7
  %73 = mul i32 %62, %9
  %74 = add i32 %73, %8
  %75 = add i32 %74, %61
  %76 = fsub contract float %68, %69
  %77 = fmul contract float %45, %76
  %78 = zext i32 %75 to i64
  %79 = getelementptr inbounds float, float addrspace(1)* %1, i64 %78
  store float %77, float addrspace(1)* %79, align 4, !tbaa !7
  %80 = lshr i32 %61, 1
  br label %81

81:                                               ; preds = %70, %67
  %82 = phi i32 [ %80, %70 ], [ %61, %67 ]
  %83 = lshr i32 %62, 1
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %84 = add nuw i32 %60, 1
  %85 = icmp eq i32 %84, %44
  br i1 %85, label %55, label %57, !llvm.loop !11

86:                                               ; preds = %55
  %87 = getelementptr inbounds float, float addrspace(1)* %2, i64 %10
  %88 = load float, float addrspace(3)* getelementptr inbounds ([32 x float], [32 x float] addrspace(3)* @_ZZ9dwtHaar1DPfS_S_jjjjE11sharedArray, i32 0, i32 0), align 16, !tbaa !7
  store float %88, float addrspace(1)* %87, align 4, !tbaa !7
  br label %89

89:                                               ; preds = %86, %55
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.amdgcn.rsq.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i32 0, i32 1024}
!5 = !{i16 1, i16 1025}
!6 = !{}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
