; ModuleID = 'spmv.cpp'
source_filename = "spmv.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.texture = type { %struct.textureReference }
%struct.textureReference = type { i32, i32, i32, [3 x i32], %struct.hipChannelFormatDesc, i32, i32, i32, float, float, float, %struct.__hip_texture*, i32, i32 }
%struct.hipChannelFormatDesc = type { i32, i32, i32, i32, i32 }
%struct.__hip_texture = type opaque

@tex_x_float = protected local_unnamed_addr addrspace(1) externally_initialized global %struct.texture undef, align 8
@jds_ptr_int = protected addrspace(4) externally_initialized global [5000 x i32] zeroinitializer, align 16
@sh_zcnt_int = protected addrspace(4) externally_initialized global [5000 x i32] zeroinitializer, align 16
@llvm.compiler.used = appending addrspace(1) global [2 x i8*] [i8* addrspacecast (i8 addrspace(4)* bitcast ([5000 x i32] addrspace(4)* @jds_ptr_int to i8 addrspace(4)*) to i8*), i8* addrspacecast (i8 addrspace(4)* bitcast ([5000 x i32] addrspace(4)* @sh_zcnt_int to i8 addrspace(4)*) to i8*)], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z14spmv_jds_naivePfPKfPKiS3_S1_S3_i(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readonly %2, i32 addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture readnone %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.x() #2
  %9 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2
  %10 = getelementptr i8, i8 addrspace(4)* %9, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i32
  %14 = mul i32 %8, %13
  %15 = tail call i32 @llvm.amdgcn.workitem.id.x() #2, !range !6
  %16 = add i32 %14, %15
  %17 = icmp slt i32 %16, %6
  br i1 %17, label %18, label %50

18:                                               ; preds = %7
  %19 = sdiv i32 %16, 32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5000 x i32], [5000 x i32] addrspace(4)* @sh_zcnt_int, i64 0, i64 %20
  %22 = load i32, i32 addrspace(4)* %21, align 4, !tbaa !7
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %31, %18
  %25 = phi float [ 0.000000e+00, %18 ], [ %47, %31 ]
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds i32, i32 addrspace(1)* %3, i64 %26
  %28 = load i32, i32 addrspace(1)* %27, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float addrspace(1)* %0, i64 %29
  store float %25, float addrspace(1)* %30, align 4, !tbaa !11
  br label %50

31:                                               ; preds = %18, %31
  %32 = phi float [ %47, %31 ], [ 0.000000e+00, %18 ]
  %33 = phi i32 [ %48, %31 ], [ 0, %18 ]
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [5000 x i32], [5000 x i32] addrspace(4)* @jds_ptr_int, i64 0, i64 %34
  %36 = load i32, i32 addrspace(4)* %35, align 4, !tbaa !7
  %37 = add nsw i32 %36, %16
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %38
  %40 = load i32, i32 addrspace(1)* %39, align 4, !tbaa !7
  %41 = getelementptr inbounds float, float addrspace(1)* %1, i64 %38
  %42 = load float, float addrspace(1)* %41, align 4, !tbaa !11
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds float, float addrspace(1)* %4, i64 %43
  %45 = load float, float addrspace(1)* %44, align 4, !tbaa !11
  %46 = fmul contract float %42, %45
  %47 = fadd contract float %32, %46
  %48 = add nuw nsw i32 %33, 1
  %49 = icmp eq i32 %48, %22
  br i1 %49, label %24, label %31, !llvm.loop !13

50:                                               ; preds = %24, %7
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
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
