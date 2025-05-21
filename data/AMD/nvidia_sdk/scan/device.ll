; ModuleID = 'scan.cpp'
source_filename = "scan.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i32> }

@MAX_BATCH_ELEMENTS = protected local_unnamed_addr addrspace(4) externally_initialized constant i32 67108864, align 4
@MIN_SHORT_ARRAY_SIZE = protected local_unnamed_addr addrspace(4) externally_initialized constant i32 4, align 4
@MAX_SHORT_ARRAY_SIZE = protected local_unnamed_addr addrspace(4) externally_initialized constant i32 1024, align 4
@MIN_LARGE_ARRAY_SIZE = protected local_unnamed_addr addrspace(4) externally_initialized constant i32 2048, align 4
@MAX_LARGE_ARRAY_SIZE = protected local_unnamed_addr addrspace(4) externally_initialized constant i32 262144, align 4
@_ZZ19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_jE6s_Data = internal addrspace(3) global [512 x i32] undef, align 16
@_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data = internal addrspace(3) global [512 x i32] undef, align 16
@_ZZ13uniformUpdateP15HIP_vector_typeIjLj4EEPjE3buf = internal unnamed_addr addrspace(3) global i32 undef, align 4

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_j(%struct.HIP_vector_type addrspace(1)* nocapture writeonly %0, %struct.HIP_vector_type addrspace(1)* nocapture readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %6 = getelementptr i8, i8 addrspace(4)* %4, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !4, !invariant.load !5
  %9 = zext i16 %8 to i32
  %10 = mul i32 %5, %9
  %11 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !6
  %12 = add i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %13, i32 0, i32 0, i32 0
  %15 = load <4 x i32>, <4 x i32> addrspace(1)* %14, align 16
  %16 = extractelement <4 x i32> %15, i64 0
  %17 = extractelement <4 x i32> %15, i64 1
  %18 = add i32 %17, %16
  %19 = extractelement <4 x i32> %15, i64 2
  %20 = extractelement <4 x i32> %15, i64 3
  %21 = add i32 %20, %19
  %22 = add i32 %21, %18
  %23 = lshr i32 %2, 2
  %24 = shl nuw nsw i32 %11, 1
  %25 = add nuw nsw i32 %23, 1023
  %26 = and i32 %25, %11
  %27 = sub nsw i32 %24, %26
  %28 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @_ZZ19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_jE6s_Data, i32 0, i32 %27
  %29 = addrspacecast i32 addrspace(3)* %28 to i32*
  store volatile i32 0, i32* %29, align 4, !tbaa !7
  %30 = add nsw i32 %27, %23
  %31 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @_ZZ19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_jE6s_Data, i32 0, i32 %30
  %32 = addrspacecast i32 addrspace(3)* %31 to i32*
  store volatile i32 %22, i32* %32, align 4, !tbaa !7
  %33 = icmp ugt i32 %2, 7
  br i1 %33, label %34, label %44

34:                                               ; preds = %3, %34
  %35 = phi i32 [ %42, %34 ], [ 1, %3 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %36 = load volatile i32, i32* %32, align 4, !tbaa !7
  %37 = sub i32 %30, %35
  %38 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @_ZZ19scanExclusiveSharedP15HIP_vector_typeIjLj4EES1_jE6s_Data, i32 0, i32 %37
  %39 = addrspacecast i32 addrspace(3)* %38 to i32*
  %40 = load volatile i32, i32* %39, align 4, !tbaa !7
  %41 = add i32 %40, %36
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  store volatile i32 %41, i32* %32, align 4, !tbaa !7
  %42 = shl i32 %35, 1
  %43 = icmp ult i32 %42, %23
  br i1 %43, label %34, label %44, !llvm.loop !11

44:                                               ; preds = %34, %3
  %45 = load volatile i32, i32* %32, align 4, !tbaa !7
  %46 = sub i32 %45, %22
  %47 = insertelement <4 x i32> poison, i32 %46, i64 0
  %48 = add i32 %46, %16
  %49 = insertelement <4 x i32> %47, i32 %48, i64 1
  %50 = add i32 %46, %18
  %51 = insertelement <4 x i32> %49, i32 %50, i64 2
  %52 = sub i32 %45, %20
  %53 = insertelement <4 x i32> %51, i32 %52, i64 3
  %54 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %13, i32 0, i32 0, i32 0
  store <4 x i32> %53, <4 x i32> addrspace(1)* %54, align 16, !tbaa !13
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z20scanExclusiveShared2PjS_S_jj(i32 addrspace(1)* nocapture writeonly %0, i32 addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readonly %2, i32 %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %8 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !4, !invariant.load !5
  %11 = zext i16 %10 to i32
  %12 = mul i32 %7, %11
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !6
  %14 = add i32 %12, %13
  %15 = icmp ult i32 %14, %3
  %16 = shl i32 %14, 10
  %17 = or i32 %16, 1023
  %18 = zext i32 %17 to i64
  br i1 %15, label %19, label %25

19:                                               ; preds = %5
  %20 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %18
  %21 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %18
  %22 = load i32, i32 addrspace(1)* %21, align 4, !tbaa !7
  %23 = load i32, i32 addrspace(1)* %20, align 4, !tbaa !7
  %24 = add i32 %23, %22
  br label %25

25:                                               ; preds = %19, %5
  %26 = phi i32 [ %24, %19 ], [ 0, %5 ]
  %27 = shl nuw nsw i32 %13, 1
  %28 = add i32 %4, 1023
  %29 = and i32 %28, %13
  %30 = sub nsw i32 %27, %29
  %31 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, i32 0, i32 %30
  %32 = addrspacecast i32 addrspace(3)* %31 to i32*
  store volatile i32 0, i32* %32, align 4, !tbaa !7
  %33 = add i32 %30, %4
  %34 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, i32 0, i32 %33
  %35 = addrspacecast i32 addrspace(3)* %34 to i32*
  store volatile i32 %26, i32* %35, align 4, !tbaa !7
  %36 = icmp ugt i32 %4, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %25, %37
  %38 = phi i32 [ %45, %37 ], [ 1, %25 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %39 = load volatile i32, i32* %35, align 4, !tbaa !7
  %40 = sub i32 %33, %38
  %41 = getelementptr inbounds [512 x i32], [512 x i32] addrspace(3)* @_ZZ20scanExclusiveShared2PjS_S_jjE6s_Data, i32 0, i32 %40
  %42 = addrspacecast i32 addrspace(3)* %41 to i32*
  %43 = load volatile i32, i32* %42, align 4, !tbaa !7
  %44 = add i32 %43, %39
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  store volatile i32 %44, i32* %35, align 4, !tbaa !7
  %45 = shl i32 %38, 1
  %46 = icmp ult i32 %45, %4
  br i1 %46, label %37, label %47, !llvm.loop !11

47:                                               ; preds = %37, %25
  %48 = load volatile i32, i32* %35, align 4, !tbaa !7
  br i1 %15, label %49, label %53

49:                                               ; preds = %47
  %50 = zext i32 %14 to i64
  %51 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %50
  %52 = sub i32 %48, %26
  store i32 %52, i32 addrspace(1)* %51, align 4, !tbaa !7
  br label %53

53:                                               ; preds = %49, %47
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z13uniformUpdateP15HIP_vector_typeIjLj4EEPj(%struct.HIP_vector_type addrspace(1)* nocapture %0, i32 addrspace(1)* nocapture readonly %1) local_unnamed_addr #1 {
  %3 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %5 = getelementptr i8, i8 addrspace(4)* %3, i64 4
  %6 = bitcast i8 addrspace(4)* %5 to i16 addrspace(4)*
  %7 = load i16, i16 addrspace(4)* %6, align 4, !range !4, !invariant.load !5
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %11
  %13 = load i32, i32 addrspace(1)* %12, align 4, !tbaa !7
  store i32 %13, i32 addrspace(3)* @_ZZ13uniformUpdateP15HIP_vector_typeIjLj4EEPjE3buf, align 4, !tbaa !7
  br label %14

14:                                               ; preds = %10, %2
  %15 = zext i16 %7 to i32
  %16 = mul i32 %4, %15
  %17 = add i32 %16, %8
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %18, i32 0, i32 0, i32 0
  %20 = load <4 x i32>, <4 x i32> addrspace(1)* %19, align 16
  %21 = load i32, i32 addrspace(3)* @_ZZ13uniformUpdateP15HIP_vector_typeIjLj4EEPjE3buf, align 4, !tbaa !7
  %22 = extractelement <4 x i32> %20, i64 0
  %23 = add i32 %22, %21
  %24 = insertelement <4 x i32> poison, i32 %23, i64 0
  %25 = extractelement <4 x i32> %20, i64 1
  %26 = add i32 %25, %21
  %27 = insertelement <4 x i32> %24, i32 %26, i64 1
  %28 = extractelement <4 x i32> %20, i64 2
  %29 = add i32 %28, %21
  %30 = insertelement <4 x i32> %27, i32 %29, i64 2
  %31 = extractelement <4 x i32> %20, i64 3
  %32 = add i32 %31, %21
  %33 = insertelement <4 x i32> %30, i32 %32, i64 3
  store <4 x i32> %33, <4 x i32> addrspace(1)* %19, align 16, !tbaa !13
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { convergent mustprogress nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!13 = !{!9, !9, i64 0}
