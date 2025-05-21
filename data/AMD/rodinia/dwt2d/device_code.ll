; ModuleID = 'components.cu'
source_filename = "components.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

$_Z21c_CopySrcToComponentsIfEvPT_S1_S1_Phi = comdat any

$_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi = comdat any

$_Z20c_CopySrcToComponentIfEvPT_Phi = comdat any

$_Z20c_CopySrcToComponentIiEvPT_Phi = comdat any

$_ZZ21c_CopySrcToComponentsIfEvPT_S1_S1_PhiE5sData = comdat any

$_ZZ21c_CopySrcToComponentsIiEvPT_S1_S1_PhiE5sData = comdat any

$_ZZ20c_CopySrcToComponentIfEvPT_PhiE5sData = comdat any

$_ZZ20c_CopySrcToComponentIiEvPT_PhiE5sData = comdat any

@_ZZ21c_CopySrcToComponentsIfEvPT_S1_S1_PhiE5sData = linkonce_odr hidden local_unnamed_addr addrspace(3) global [768 x i8] undef, comdat, align 16
@_ZZ21c_CopySrcToComponentsIiEvPT_S1_S1_PhiE5sData = linkonce_odr hidden local_unnamed_addr addrspace(3) global [768 x i8] undef, comdat, align 16
@_ZZ20c_CopySrcToComponentIfEvPT_PhiE5sData = linkonce_odr hidden local_unnamed_addr addrspace(3) global [256 x i8] undef, comdat, align 16
@_ZZ20c_CopySrcToComponentIiEvPT_PhiE5sData = linkonce_odr hidden local_unnamed_addr addrspace(3) global [256 x i8] undef, comdat, align 16

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z21c_CopySrcToComponentsIfEvPT_S1_S1_Phi(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture writeonly %1, float addrspace(1)* nocapture writeonly %2, i8 addrspace(1)* nocapture readonly %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !6, !invariant.load !7
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %12 = zext i16 %10 to i32
  %13 = mul i32 %11, %12
  %14 = icmp ult i32 %6, 192
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = bitcast i8 addrspace(1)* %3 to float addrspace(1)*
  %17 = mul nsw i32 %13, 3
  %18 = ashr i32 %17, 2
  %19 = add nsw i32 %18, %6
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float addrspace(1)* %16, i64 %20
  %22 = load float, float addrspace(1)* %21, align 4, !tbaa !8, !amdgpu.noclobber !7
  %23 = getelementptr inbounds float, float addrspace(3)* bitcast ([768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIfEvPT_S1_S1_PhiE5sData to float addrspace(3)*), i32 %6
  store float %22, float addrspace(3)* %23, align 4, !tbaa !8
  br label %24

24:                                               ; preds = %15, %5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %25 = mul nuw nsw i32 %6, 3
  %26 = add nsw i32 %13, %6
  %27 = icmp slt i32 %26, %4
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = add nuw nsw i32 %25, 2
  %30 = getelementptr inbounds [768 x i8], [768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIfEvPT_S1_S1_PhiE5sData, i32 0, i32 %29
  %31 = load i8, i8 addrspace(3)* %30, align 1, !tbaa !12
  %32 = uitofp i8 %31 to float
  %33 = add nuw nsw i32 %25, 1
  %34 = getelementptr inbounds [768 x i8], [768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIfEvPT_S1_S1_PhiE5sData, i32 0, i32 %33
  %35 = load i8, i8 addrspace(3)* %34, align 1, !tbaa !12
  %36 = uitofp i8 %35 to float
  %37 = getelementptr inbounds [768 x i8], [768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIfEvPT_S1_S1_PhiE5sData, i32 0, i32 %25
  %38 = load i8, i8 addrspace(3)* %37, align 1, !tbaa !12
  %39 = uitofp i8 %38 to float
  %40 = fdiv contract float %39, 2.550000e+02
  %41 = fadd contract float %40, -5.000000e-01
  %42 = sext i32 %26 to i64
  %43 = getelementptr inbounds float, float addrspace(1)* %0, i64 %42
  store float %41, float addrspace(1)* %43, align 4, !tbaa !8
  %44 = fdiv contract float %36, 2.550000e+02
  %45 = fadd contract float %44, -5.000000e-01
  %46 = getelementptr inbounds float, float addrspace(1)* %1, i64 %42
  store float %45, float addrspace(1)* %46, align 4, !tbaa !8
  %47 = fdiv contract float %32, 2.550000e+02
  %48 = fadd contract float %47, -5.000000e-01
  %49 = getelementptr inbounds float, float addrspace(1)* %2, i64 %42
  store float %48, float addrspace(1)* %49, align 4, !tbaa !8
  br label %50

50:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z21c_CopySrcToComponentsIiEvPT_S1_S1_Phi(i32 addrspace(1)* nocapture writeonly %0, i32 addrspace(1)* nocapture writeonly %1, i32 addrspace(1)* nocapture writeonly %2, i8 addrspace(1)* nocapture readonly %3, i32 %4) local_unnamed_addr #0 comdat {
  %6 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !6, !invariant.load !7
  %11 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %12 = zext i16 %10 to i32
  %13 = mul i32 %11, %12
  %14 = icmp ult i32 %6, 192
  br i1 %14, label %15, label %24

15:                                               ; preds = %5
  %16 = bitcast i8 addrspace(1)* %3 to float addrspace(1)*
  %17 = mul nsw i32 %13, 3
  %18 = ashr i32 %17, 2
  %19 = add nsw i32 %18, %6
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float addrspace(1)* %16, i64 %20
  %22 = load float, float addrspace(1)* %21, align 4, !tbaa !8, !amdgpu.noclobber !7
  %23 = getelementptr inbounds float, float addrspace(3)* bitcast ([768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIiEvPT_S1_S1_PhiE5sData to float addrspace(3)*), i32 %6
  store float %22, float addrspace(3)* %23, align 4, !tbaa !8
  br label %24

24:                                               ; preds = %15, %5
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %25 = mul nuw nsw i32 %6, 3
  %26 = add nsw i32 %13, %6
  %27 = icmp slt i32 %26, %4
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = add nuw nsw i32 %25, 2
  %30 = getelementptr inbounds [768 x i8], [768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIiEvPT_S1_S1_PhiE5sData, i32 0, i32 %29
  %31 = load i8, i8 addrspace(3)* %30, align 1, !tbaa !12
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %25, 1
  %34 = getelementptr inbounds [768 x i8], [768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIiEvPT_S1_S1_PhiE5sData, i32 0, i32 %33
  %35 = load i8, i8 addrspace(3)* %34, align 1, !tbaa !12
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds [768 x i8], [768 x i8] addrspace(3)* @_ZZ21c_CopySrcToComponentsIiEvPT_S1_S1_PhiE5sData, i32 0, i32 %25
  %38 = load i8, i8 addrspace(3)* %37, align 1, !tbaa !12
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, -128
  %41 = sext i32 %26 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %41
  store i32 %40, i32 addrspace(1)* %42, align 4, !tbaa !13
  %43 = add nsw i32 %36, -128
  %44 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %41
  store i32 %43, i32 addrspace(1)* %44, align 4, !tbaa !13
  %45 = add nsw i32 %32, -128
  %46 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %41
  store i32 %45, i32 addrspace(1)* %46, align 4, !tbaa !13
  br label %47

47:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z20c_CopySrcToComponentIfEvPT_Phi(float addrspace(1)* nocapture writeonly %0, i8 addrspace(1)* nocapture readonly %1, i32 %2) local_unnamed_addr #0 comdat {
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %5 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !6, !invariant.load !7
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = zext i16 %8 to i32
  %11 = mul i32 %9, %10
  %12 = icmp ult i32 %4, 64
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds float, float addrspace(3)* bitcast ([256 x i8] addrspace(3)* @_ZZ20c_CopySrcToComponentIfEvPT_PhiE5sData to float addrspace(3)*), i32 %4
  %15 = bitcast i8 addrspace(1)* %1 to float addrspace(1)*
  %16 = ashr i32 %11, 2
  %17 = add nsw i32 %16, %4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float addrspace(1)* %15, i64 %18
  %20 = load float, float addrspace(1)* %19, align 4, !tbaa !8, !amdgpu.noclobber !7
  store float %20, float addrspace(3)* %14, align 4, !tbaa !8
  br label %21

21:                                               ; preds = %13, %3
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %22 = add nsw i32 %11, %4
  %23 = icmp slt i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(3)* @_ZZ20c_CopySrcToComponentIfEvPT_PhiE5sData, i32 0, i32 %4
  %26 = load i8, i8 addrspace(3)* %25, align 1, !tbaa !12
  %27 = uitofp i8 %26 to float
  %28 = fdiv contract float %27, 2.550000e+02
  %29 = fadd contract float %28, -5.000000e-01
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds float, float addrspace(1)* %0, i64 %30
  store float %29, float addrspace(1)* %31, align 4, !tbaa !8
  br label %32

32:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z20c_CopySrcToComponentIiEvPT_Phi(i32 addrspace(1)* nocapture writeonly %0, i8 addrspace(1)* nocapture readonly %1, i32 %2) local_unnamed_addr #0 comdat {
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %5 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !6, !invariant.load !7
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %10 = zext i16 %8 to i32
  %11 = mul i32 %9, %10
  %12 = icmp ult i32 %4, 64
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = getelementptr inbounds float, float addrspace(3)* bitcast ([256 x i8] addrspace(3)* @_ZZ20c_CopySrcToComponentIiEvPT_PhiE5sData to float addrspace(3)*), i32 %4
  %15 = bitcast i8 addrspace(1)* %1 to float addrspace(1)*
  %16 = ashr i32 %11, 2
  %17 = add nsw i32 %16, %4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float addrspace(1)* %15, i64 %18
  %20 = load float, float addrspace(1)* %19, align 4, !tbaa !8, !amdgpu.noclobber !7
  store float %20, float addrspace(3)* %14, align 4, !tbaa !8
  br label %21

21:                                               ; preds = %13, %3
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %22 = add nsw i32 %11, %4
  %23 = icmp slt i32 %22, %2
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %25
  %27 = getelementptr inbounds [256 x i8], [256 x i8] addrspace(3)* @_ZZ20c_CopySrcToComponentIiEvPT_PhiE5sData, i32 0, i32 %4
  %28 = load i8, i8 addrspace(3)* %27, align 1, !tbaa !12
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, -128
  store i32 %30, i32 addrspace(1)* %26, align 4, !tbaa !13
  br label %31

31:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

attributes #0 = { convergent mustprogress norecurse nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
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
!5 = !{i32 0, i32 1024}
!6 = !{i16 1, i16 1025}
!7 = !{}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !10, i64 0}
