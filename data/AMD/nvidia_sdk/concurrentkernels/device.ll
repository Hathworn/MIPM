; ModuleID = 'concurrentkernels.cpp'
source_filename = "concurrentkernels.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ3sumPliE8s_clocks = internal unnamed_addr addrspace(3) global [32 x i64] undef, align 16

; Function Attrs: mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z11clock_blockPll(i64 addrspace(1)* nocapture writeonly %0, i64 %1) local_unnamed_addr #0 {
  %3 = tail call i64 @llvm.amdgcn.s.memtime() #5
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2, %5
  %6 = tail call i64 @llvm.amdgcn.s.memtime() #5
  %7 = sub i64 %6, %3
  %8 = and i64 %7, 4294967295
  %9 = icmp slt i64 %8, %1
  br i1 %9, label %5, label %10, !llvm.loop !4

10:                                               ; preds = %5, %2
  %11 = phi i64 [ 0, %2 ], [ %8, %5 ]
  store i64 %11, i64 addrspace(1)* %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z3sumPli(i64 addrspace(1)* nocapture %0, i32 %1) local_unnamed_addr #1 {
  %3 = tail call i32 @llvm.amdgcn.workitem.id.x() #5, !range !10
  %4 = icmp slt i32 %3, %1
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = tail call align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #5
  %7 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %8 = bitcast i8 addrspace(4)* %7 to i16 addrspace(4)*
  %9 = load i16, i16 addrspace(4)* %8, align 4, !range !11, !invariant.load !12
  %10 = zext i16 %9 to i32
  br label %15

11:                                               ; preds = %15, %2
  %12 = phi i64 [ 0, %2 ], [ %21, %15 ]
  %13 = getelementptr inbounds [32 x i64], [32 x i64] addrspace(3)* @_ZZ3sumPliE8s_clocks, i32 0, i32 %3
  store i64 %12, i64 addrspace(3)* %13, align 8, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #5
  fence syncscope("workgroup") acquire
  %14 = icmp ult i32 %3, 16
  br i1 %14, label %24, label %30

15:                                               ; preds = %5, %15
  %16 = phi i32 [ %3, %5 ], [ %22, %15 ]
  %17 = phi i64 [ 0, %5 ], [ %21, %15 ]
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i64, i64 addrspace(1)* %0, i64 %18
  %20 = load i64, i64 addrspace(1)* %19, align 8, !tbaa !6
  %21 = add nsw i64 %20, %17
  %22 = add i32 %16, %10
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %15, label %11, !llvm.loop !13

24:                                               ; preds = %11
  %25 = add nuw nsw i32 %3, 16
  %26 = getelementptr inbounds [32 x i64], [32 x i64] addrspace(3)* @_ZZ3sumPliE8s_clocks, i32 0, i32 %25
  %27 = load i64, i64 addrspace(3)* %26, align 8, !tbaa !6
  %28 = load i64, i64 addrspace(3)* %13, align 8, !tbaa !6
  %29 = add nsw i64 %28, %27
  store i64 %29, i64 addrspace(3)* %13, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %24, %11
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #5
  fence syncscope("workgroup") acquire
  %31 = icmp ult i32 %3, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = add nuw nsw i32 %3, 8
  %34 = getelementptr inbounds [32 x i64], [32 x i64] addrspace(3)* @_ZZ3sumPliE8s_clocks, i32 0, i32 %33
  %35 = load i64, i64 addrspace(3)* %34, align 8, !tbaa !6
  %36 = load i64, i64 addrspace(3)* %13, align 8, !tbaa !6
  %37 = add nsw i64 %36, %35
  store i64 %37, i64 addrspace(3)* %13, align 8, !tbaa !6
  br label %38

38:                                               ; preds = %32, %30
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #5
  fence syncscope("workgroup") acquire
  %39 = icmp ult i32 %3, 4
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = add nuw nsw i32 %3, 4
  %42 = getelementptr inbounds [32 x i64], [32 x i64] addrspace(3)* @_ZZ3sumPliE8s_clocks, i32 0, i32 %41
  %43 = load i64, i64 addrspace(3)* %42, align 8, !tbaa !6
  %44 = load i64, i64 addrspace(3)* %13, align 8, !tbaa !6
  %45 = add nsw i64 %44, %43
  store i64 %45, i64 addrspace(3)* %13, align 8, !tbaa !6
  br label %46

46:                                               ; preds = %40, %38
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #5
  fence syncscope("workgroup") acquire
  %47 = icmp ult i32 %3, 2
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = add nuw nsw i32 %3, 2
  %50 = getelementptr inbounds [32 x i64], [32 x i64] addrspace(3)* @_ZZ3sumPliE8s_clocks, i32 0, i32 %49
  %51 = load i64, i64 addrspace(3)* %50, align 8, !tbaa !6
  %52 = load i64, i64 addrspace(3)* %13, align 8, !tbaa !6
  %53 = add nsw i64 %52, %51
  store i64 %53, i64 addrspace(3)* %13, align 8, !tbaa !6
  br label %54

54:                                               ; preds = %48, %46
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #5
  fence syncscope("workgroup") acquire
  %55 = icmp eq i32 %3, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = add nuw nsw i32 %3, 1
  %58 = getelementptr inbounds [32 x i64], [32 x i64] addrspace(3)* @_ZZ3sumPliE8s_clocks, i32 0, i32 %57
  %59 = load i64, i64 addrspace(3)* %58, align 8, !tbaa !6
  %60 = load i64, i64 addrspace(3)* %13, align 8, !tbaa !6
  %61 = add nsw i64 %60, %59
  store i64 %61, i64 addrspace(3)* %13, align 8, !tbaa !6
  br label %62

62:                                               ; preds = %56, %54
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #5
  fence syncscope("workgroup") acquire
  %63 = icmp eq i32 %3, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = load i64, i64 addrspace(3)* getelementptr inbounds ([32 x i64], [32 x i64] addrspace(3)* @_ZZ3sumPliE8s_clocks, i32 0, i32 0), align 16, !tbaa !6
  store i64 %65, i64 addrspace(1)* %0, align 8, !tbaa !6
  br label %66

66:                                               ; preds = %64, %62
  ret void
}

; Function Attrs: mustprogress nounwind willreturn
declare i64 @llvm.amdgcn.s.memtime() #2

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #4

attributes #0 = { mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { mustprogress nounwind willreturn }
attributes #3 = { convergent mustprogress nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{i32 0, i32 1024}
!11 = !{i16 1, i16 1025}
!12 = !{}
!13 = distinct !{!13, !5}
