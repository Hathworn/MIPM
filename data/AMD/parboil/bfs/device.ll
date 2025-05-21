; ModuleID = 'bfs.cpp'
source_filename = "bfs.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.texture = type { %struct.textureReference }
%struct.textureReference = type { i32, i32, i32, [3 x i32], %struct.hipChannelFormatDesc, i32, i32, i32, float, float, float, %struct.__hip_texture*, i32, i32 }
%struct.hipChannelFormatDesc = type { i32, i32, i32, i32, i32 }
%struct.__hip_texture = type opaque
%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <2 x i32> }

@g_graph_node_ref = protected addrspace(1) externally_initialized global %struct.texture undef, align 8
@g_graph_edge_ref = protected addrspace(1) externally_initialized global %struct.texture undef, align 8
@count = protected local_unnamed_addr addrspace(1) externally_initialized global i32 0, align 4
@no_of_nodes_vol = protected local_unnamed_addr addrspace(1) externally_initialized global i32 0, align 4
@stay_vol = protected local_unnamed_addr addrspace(1) externally_initialized global i32 0, align 4
@_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE12local_q_tail = internal addrspace(3) global i32 undef, align 4
@_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE7local_q = internal unnamed_addr addrspace(3) global [3200 x i32] undef, align 16
@_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE5shift = internal unnamed_addr addrspace(3) global i32 undef, align 4
@llvm.compiler.used = appending addrspace(1) global [2 x i8*] [i8* addrspacecast (i8 addrspace(1)* bitcast (%struct.texture addrspace(1)* @g_graph_edge_ref to i8 addrspace(1)*) to i8*), i8* addrspacecast (i8 addrspace(1)* bitcast (%struct.texture addrspace(1)* @g_graph_node_ref to i8 addrspace(1)*) to i8*)], section "llvm.metadata"

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_ii(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture writeonly %1, %struct.HIP_vector_type addrspace(1)* nocapture readnone %2, %struct.HIP_vector_type addrspace(1)* nocapture readnone %3, i32 addrspace(1)* nocapture %4, i32 addrspace(1)* nocapture %5, i32 %6, i32 addrspace(1)* nocapture %7, i32 %8, i32 %9) local_unnamed_addr #0 {
  %11 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32 addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE12local_q_tail, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %13, %10
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %15 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %16 = shl i32 %15, 9
  %17 = add i32 %16, %11
  %18 = icmp slt i32 %17, %6
  br i1 %18, label %19, label %65

19:                                               ; preds = %14
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %20
  %22 = load i32, i32 addrspace(1)* %21, align 4, !tbaa !5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %23
  store i32 16677221, i32 addrspace(1)* %24, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %23
  %26 = load i32, i32 addrspace(1)* %25, align 4, !tbaa !5
  %27 = load <4 x i32>*, <4 x i32>* addrspace(1)* bitcast (%struct.__hip_texture* addrspace(1)* getelementptr inbounds (%struct.texture, %struct.texture addrspace(1)* @g_graph_node_ref, i64 0, i32 0, i32 11) to <4 x i32>* addrspace(1)*), align 8
  %28 = addrspacecast <4 x i32>* %27 to <4 x i32> addrspace(4)*
  %29 = load <4 x i32>, <4 x i32> addrspace(4)* %28, align 16, !tbaa !9
  %30 = tail call <2 x float> @llvm.amdgcn.struct.buffer.load.format.v2f32(<4 x i32> %29, i32 %22, i32 0, i32 0, i32 0) #4
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %32 = bitcast <4 x float> %31 to <4 x i32>
  %33 = extractelement <4 x i32> %32, i64 0
  %34 = extractelement <4 x i32> %32, i64 1
  %35 = add nsw i32 %34, %33
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %19, %62
  %38 = phi i32 [ %63, %62 ], [ %33, %19 ]
  %39 = load <4 x i32>*, <4 x i32>* addrspace(1)* bitcast (%struct.__hip_texture* addrspace(1)* getelementptr inbounds (%struct.texture, %struct.texture addrspace(1)* @g_graph_edge_ref, i64 0, i32 0, i32 11) to <4 x i32>* addrspace(1)*), align 8
  %40 = addrspacecast <4 x i32>* %39 to <4 x i32> addrspace(4)*
  %41 = load <4 x i32>, <4 x i32> addrspace(4)* %40, align 16, !tbaa !9
  %42 = tail call <2 x float> @llvm.amdgcn.struct.buffer.load.format.v2f32(<4 x i32> %41, i32 %38, i32 0, i32 0, i32 0) #4
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %44 = bitcast <4 x float> %43 to <4 x i32>
  %45 = extractelement <4 x i32> %44, i64 0
  %46 = extractelement <4 x i32> %44, i64 1
  %47 = add nsw i32 %46, %26
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %48
  %50 = atomicrmw min i32 addrspace(1)* %49, i32 %47 syncscope("agent-one-as") monotonic, align 4
  %51 = icmp sgt i32 %50, %47
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %48
  %54 = load i32, i32 addrspace(1)* %53, align 4, !tbaa !5
  %55 = icmp sgt i32 %54, 16677216
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = atomicrmw xchg i32 addrspace(1)* %53, i32 %8 syncscope("agent-one-as") monotonic, align 4
  %58 = icmp eq i32 %57, %8
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = atomicrmw add i32 addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE12local_q_tail, i32 1 syncscope("agent-one-as") monotonic, align 4
  %61 = getelementptr inbounds [3200 x i32], [3200 x i32] addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE7local_q, i32 0, i32 %60
  store i32 %45, i32 addrspace(3)* %61, align 4, !tbaa !5
  br label %62

62:                                               ; preds = %56, %59, %52, %37
  %63 = add nsw i32 %38, 1
  %64 = icmp slt i32 %63, %35
  br i1 %64, label %37, label %65, !llvm.loop !12

65:                                               ; preds = %62, %19, %14
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %12, label %66, label %69

66:                                               ; preds = %65
  %67 = load i32, i32 addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE12local_q_tail, align 4, !tbaa !5
  %68 = atomicrmw add i32 addrspace(1)* %7, i32 %67 syncscope("agent-one-as") monotonic, align 4
  store i32 %68, i32 addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE5shift, align 4, !tbaa !5
  br label %69

69:                                               ; preds = %66, %65
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %70 = load i32, i32 addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE12local_q_tail, align 4, !tbaa !5
  %71 = load i32, i32 addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE5shift, align 4
  %72 = icmp slt i32 %11, %70
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = tail call align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %75 = getelementptr i8, i8 addrspace(4)* %74, i64 4
  %76 = bitcast i8 addrspace(4)* %75 to i16 addrspace(4)*
  %77 = load i16, i16 addrspace(4)* %76, align 4, !range !14, !invariant.load !15
  %78 = zext i16 %77 to i32
  br label %79

79:                                               ; preds = %73, %79
  %80 = phi i32 [ %11, %73 ], [ %86, %79 ]
  %81 = getelementptr inbounds [3200 x i32], [3200 x i32] addrspace(3)* @_ZZ10BFS_kernelPiS_P15HIP_vector_typeIiLj2EES2_S_S_iS_iiE7local_q, i32 0, i32 %80
  %82 = load i32, i32 addrspace(3)* %81, align 4, !tbaa !5
  %83 = add nsw i32 %71, %80
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %84
  store i32 %82, i32 addrspace(1)* %85, align 4, !tbaa !5
  %86 = add i32 %80, %78
  %87 = icmp slt i32 %86, %70
  br i1 %87, label %79, label %88, !llvm.loop !16

88:                                               ; preds = %79, %69
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: nounwind readonly willreturn
declare <2 x float> @llvm.amdgcn.struct.buffer.load.format.v2f32(<4 x i32>, i32, i32, i32, i32 immarg) #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 14.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git bdeeab053a8bf72a56bdf54d056a43ecb9dc2748)"}
!4 = !{i32 0, i32 1024}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i16 1, i16 1025}
!15 = !{}
!16 = distinct !{!16, !13}
