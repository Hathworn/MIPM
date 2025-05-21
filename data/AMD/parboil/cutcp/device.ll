; ModuleID = 'cutcp.cpp'
source_filename = "cutcp.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { %"struct.HIP_vector_base<int, 3>::Native_vec_" }
%"struct.HIP_vector_base<int, 3>::Native_vec_" = type { [3 x i32] }
%struct.HIP_vector_type.0 = type { %struct.HIP_vector_base.1 }
%struct.HIP_vector_base.1 = type { %union.anon.2 }
%union.anon.2 = type { <4 x float> }

$_ZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi = comdat any

@NbrListLen = protected addrspace(4) externally_initialized global i32 0, align 4
@NbrList = protected addrspace(4) externally_initialized global [1331 x %struct.HIP_vector_type] zeroinitializer, align 16
@_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE12AtomBinCache = internal unnamed_addr addrspace(3) global [1024 x float] undef, align 16
@_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE15mySubRegionAddr = internal unnamed_addr addrspace(3) global float* undef, align 8
@_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.0 = internal unnamed_addr addrspace(3) global i32 undef, align 4
@_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.1 = internal unnamed_addr addrspace(3) global i32 undef, align 4
@_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.2 = internal unnamed_addr addrspace(3) global i32 undef, align 4
@llvm.compiler.used = appending addrspace(1) global [2 x i8*] [i8* addrspacecast (i8 addrspace(4)* bitcast ([1331 x %struct.HIP_vector_type] addrspace(4)* @NbrList to i8 addrspace(4)*) to i8*), i8* addrspacecast (i8 addrspace(4)* bitcast (i32 addrspace(4)* @NbrListLen to i8 addrspace(4)*) to i8*)], section "llvm.metadata"

; Function Attrs: convergent mustprogress norecurse nounwind
define amdgpu_kernel void @_ZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfi(i32 %0, i32 %1, %struct.HIP_vector_type.0 addrspace(1)* nocapture readonly %2, float %3, float %4, float %5, float addrspace(1)* %6, i32 %7) local_unnamed_addr #0 comdat {
  %9 = tail call i32 @llvm.amdgcn.workitem.id.z() #3, !range !4
  %10 = shl nuw nsw i32 %9, 3
  %11 = tail call i32 @llvm.amdgcn.workitem.id.y() #3, !range !4
  %12 = add nuw nsw i32 %10, %11
  %13 = shl nuw nsw i32 %12, 3
  %14 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %15 = add nuw nsw i32 %13, %14
  %16 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %17 = getelementptr inbounds i8, i8 addrspace(4)* %16, i64 16
  %18 = bitcast i8 addrspace(4)* %17 to i32 addrspace(4)*
  %19 = load i32, i32 addrspace(4)* %18, align 8, !tbaa !5
  %20 = getelementptr i8, i8 addrspace(4)* %16, i64 6
  %21 = bitcast i8 addrspace(4)* %20 to i16 addrspace(4)*
  %22 = load i16, i16 addrspace(4)* %21, align 2, !range !14, !invariant.load !15
  %23 = zext i16 %22 to i32
  %24 = udiv i32 %19, %23
  %25 = mul i32 %24, %23
  %26 = icmp ugt i32 %19, %25
  %27 = zext i1 %26 to i32
  %28 = add i32 %24, %27
  %29 = mul i32 %28, %7
  %30 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %31 = add i32 %29, %30
  %32 = getelementptr inbounds i8, i8 addrspace(4)* %16, i64 12
  %33 = bitcast i8 addrspace(4)* %32 to i32 addrspace(4)*
  %34 = load i32, i32 addrspace(4)* %33, align 4, !tbaa !16
  %35 = getelementptr i8, i8 addrspace(4)* %16, i64 4
  %36 = bitcast i8 addrspace(4)* %35 to i16 addrspace(4)*
  %37 = load i16, i16 addrspace(4)* %36, align 4, !range !14, !invariant.load !15
  %38 = zext i16 %37 to i32
  %39 = udiv i32 %34, %38
  %40 = mul i32 %39, %38
  %41 = icmp ugt i32 %34, %40
  %42 = zext i1 %41 to i32
  %43 = add i32 %39, %42
  %44 = lshr i32 %43, 2
  %45 = mul i32 %44, %31
  %46 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %47 = lshr i32 %46, 2
  %48 = add i32 %45, %47
  %49 = shl i32 %48, 9
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds float, float addrspace(1)* %6, i64 %50
  %52 = shl i32 %46, 7
  %53 = and i32 %52, 384
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds float, float addrspace(1)* %51, i64 %54
  %56 = addrspacecast float addrspace(1)* %55 to float*
  store float* %56, float* addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE15mySubRegionAddr, align 8, !tbaa !17
  %57 = shl i32 %46, 1
  %58 = and i32 %57, -8
  %59 = add i32 %58, %14
  %60 = uitofp i32 %59 to float
  %61 = fmul contract float %60, %3
  %62 = shl i32 %30, 3
  %63 = add i32 %62, %11
  %64 = uitofp i32 %63 to float
  %65 = fmul contract float %64, %3
  %66 = shl nsw i32 %7, 3
  %67 = and i32 %57, 6
  %68 = add nuw nsw i32 %67, %9
  %69 = add i32 %68, %66
  %70 = uitofp i32 %69 to float
  %71 = fmul contract float %70, %3
  %72 = or i32 %58, 4
  %73 = uitofp i32 %72 to float
  %74 = fmul contract float %73, %3
  %75 = fmul contract float %74, 2.500000e-01
  %76 = tail call float @llvm.floor.f32(float %75) #3
  %77 = fptosi float %76 to i32
  store i32 %77, i32 addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.0, align 4, !tbaa !21
  %78 = or i32 %62, 4
  %79 = uitofp i32 %78 to float
  %80 = fmul contract float %79, %3
  %81 = fmul contract float %80, 2.500000e-01
  %82 = tail call float @llvm.floor.f32(float %81) #3
  %83 = fptosi float %82 to i32
  store i32 %83, i32 addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.1, align 4, !tbaa !21
  %84 = or i32 %66, 4
  %85 = sitofp i32 %84 to float
  %86 = fmul contract float %85, %3
  %87 = fmul contract float %86, 2.500000e-01
  %88 = tail call float @llvm.floor.f32(float %87) #3
  %89 = fptosi float %88 to i32
  store i32 %89, i32 addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.2, align 4, !tbaa !21
  %90 = lshr i32 %15, 4
  %91 = load i32, i32 addrspace(4)* @NbrListLen, align 4, !tbaa !22
  %92 = shl nuw nsw i32 %90, 5
  %93 = and i32 %15, 15
  %94 = zext i32 %93 to i64
  %95 = or i32 %93, 16
  %96 = zext i32 %95 to i64
  %97 = icmp sgt i32 %91, 0
  br i1 %97, label %98, label %212

98:                                               ; preds = %8, %206
  %99 = phi i32 [ %209, %206 ], [ %89, %8 ]
  %100 = phi i32 [ %208, %206 ], [ %83, %8 ]
  %101 = phi i32 [ %207, %206 ], [ %77, %8 ]
  %102 = phi i32 [ %143, %206 ], [ %90, %8 ]
  %103 = phi i32 [ %204, %206 ], [ 0, %8 ]
  %104 = phi i32 [ %147, %206 ], [ 32, %8 ]
  %105 = phi float [ %203, %206 ], [ 0.000000e+00, %8 ]
  %106 = icmp slt i32 %102, %91
  br i1 %106, label %107, label %142

107:                                              ; preds = %98, %107
  %108 = phi i32 [ %138, %107 ], [ %102, %98 ]
  %109 = phi i32 [ %137, %107 ], [ 0, %98 ]
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type] addrspace(4)* @NbrList, i64 0, i64 %110, i32 0, i32 0, i32 0, i32 0, i64 0
  %112 = load i32, i32 addrspace(4)* %111, align 4, !tbaa !21
  %113 = add nsw i32 %112, %101
  %114 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type] addrspace(4)* @NbrList, i64 0, i64 %110, i32 0, i32 0, i32 0, i32 0, i64 1
  %115 = load i32, i32 addrspace(4)* %114, align 4, !tbaa !21
  %116 = add nsw i32 %115, %100
  %117 = getelementptr inbounds [1331 x %struct.HIP_vector_type], [1331 x %struct.HIP_vector_type] addrspace(4)* @NbrList, i64 0, i64 %110, i32 0, i32 0, i32 0, i32 0, i64 2
  %118 = load i32, i32 addrspace(4)* %117, align 4, !tbaa !21
  %119 = add nsw i32 %118, %99
  %120 = mul nsw i32 %119, %1
  %121 = add nsw i32 %116, %120
  %122 = mul nsw i32 %121, %0
  %123 = add nsw i32 %113, %122
  %124 = shl nsw i32 %123, 5
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.HIP_vector_type.0, %struct.HIP_vector_type.0 addrspace(1)* %2, i64 0, i32 0, i32 0, i32 0, i64 %125
  %127 = shl nuw nsw i32 %109, 8
  %128 = add nuw nsw i32 %127, %92
  %129 = getelementptr inbounds float, float addrspace(1)* %126, i64 %94
  %130 = load float, float addrspace(1)* %129, align 4, !tbaa !24
  %131 = or i32 %128, %93
  %132 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE12AtomBinCache, i32 0, i32 %131
  store float %130, float addrspace(3)* %132, align 4, !tbaa !24
  %133 = getelementptr inbounds float, float addrspace(1)* %126, i64 %96
  %134 = load float, float addrspace(1)* %133, align 4, !tbaa !24
  %135 = or i32 %131, 16
  %136 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE12AtomBinCache, i32 0, i32 %135
  store float %134, float addrspace(3)* %136, align 4, !tbaa !24
  %137 = add nuw nsw i32 %109, 1
  %138 = add nsw i32 %108, 8
  %139 = icmp ult i32 %109, 3
  %140 = icmp slt i32 %138, %91
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %107, label %142, !llvm.loop !26

142:                                              ; preds = %107, %98
  %143 = phi i32 [ %102, %98 ], [ %138, %107 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %144 = add nsw i32 %103, 32
  %145 = icmp sgt i32 %144, %91
  %146 = sub nsw i32 %91, %103
  %147 = select i1 %145, i32 %146, i32 %104
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %202

149:                                              ; preds = %142, %199
  %150 = phi float [ %194, %199 ], [ %105, %142 ]
  %151 = phi i32 [ %200, %199 ], [ 0, %142 ]
  %152 = shl nsw i32 %151, 5
  br label %153

153:                                              ; preds = %193, %149
  %154 = phi float [ %150, %149 ], [ %194, %193 ]
  %155 = phi i32 [ 0, %149 ], [ %195, %193 ]
  %156 = shl nuw nsw i32 %155, 2
  %157 = add nuw nsw i32 %156, %152
  %158 = or i32 %157, 3
  %159 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE12AtomBinCache, i32 0, i32 %158
  %160 = load float, float addrspace(3)* %159, align 4, !tbaa !24
  %161 = fcmp contract oeq float %160, 0.000000e+00
  br i1 %161, label %193, label %162

162:                                              ; preds = %153
  %163 = or i32 %157, 2
  %164 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE12AtomBinCache, i32 0, i32 %163
  %165 = load float, float addrspace(3)* %164, align 8, !tbaa !24
  %166 = or i32 %157, 1
  %167 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE12AtomBinCache, i32 0, i32 %166
  %168 = load float, float addrspace(3)* %167, align 4, !tbaa !24
  %169 = getelementptr inbounds [1024 x float], [1024 x float] addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE12AtomBinCache, i32 0, i32 %157
  %170 = load float, float addrspace(3)* %169, align 16, !tbaa !24
  %171 = fsub contract float %170, %61
  %172 = fmul contract float %171, %171
  %173 = fsub contract float %168, %65
  %174 = fmul contract float %173, %173
  %175 = fadd contract float %174, %172
  %176 = fsub contract float %165, %71
  %177 = fmul contract float %176, %176
  %178 = fadd contract float %177, %175
  %179 = fcmp contract olt float %178, %4
  br i1 %179, label %180, label %193

180:                                              ; preds = %162
  %181 = fmul contract float %178, %5
  %182 = fsub contract float 1.000000e+00, %181
  %183 = fcmp olt float %178, 0x39B0000000000000
  %184 = select i1 %183, float 0x4310000000000000, float 1.000000e+00
  %185 = select i1 %183, float 0x4630000000000000, float 1.000000e+00
  %186 = fmul float %178, %185
  %187 = tail call float @llvm.amdgcn.rsq.f32(float %186) #3
  %188 = fmul float %184, %187
  %189 = fmul contract float %160, %188
  %190 = fmul contract float %182, %189
  %191 = fmul contract float %182, %190
  %192 = fadd contract float %154, %191
  br label %193

193:                                              ; preds = %162, %180, %153
  %194 = phi float [ %154, %153 ], [ %192, %180 ], [ %154, %162 ]
  %195 = add nuw nsw i32 %155, 1
  %196 = xor i1 %161, true
  %197 = icmp ult i32 %155, 7
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %153, label %199, !llvm.loop !28

199:                                              ; preds = %193
  %200 = add nuw nsw i32 %151, 1
  %201 = icmp eq i32 %200, %147
  br i1 %201, label %202, label %149, !llvm.loop !29

202:                                              ; preds = %199, %142
  %203 = phi float [ %105, %142 ], [ %194, %199 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %204 = add nsw i32 %147, %103
  %205 = icmp sgt i32 %91, %204
  br i1 %205, label %206, label %210, !llvm.loop !30

206:                                              ; preds = %202
  %207 = load i32, i32 addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.0, align 4
  %208 = load i32, i32 addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.1, align 4
  %209 = load i32, i32 addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE10myBinIndex.2, align 4
  br label %98

210:                                              ; preds = %202
  %211 = load float*, float* addrspace(3)* @_ZZL29cuda_cutoff_potential_latticeiiP15HIP_vector_typeIfLj4EEfffPfiE15mySubRegionAddr, align 8, !tbaa !17
  br label %212

212:                                              ; preds = %210, %8
  %213 = phi float* [ %56, %8 ], [ %211, %210 ]
  %214 = phi float [ 0.000000e+00, %8 ], [ %203, %210 ]
  %215 = zext i32 %15 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  store float %214, float* %216, align 4, !tbaa !24
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.amdgcn.rsq.f32(float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.z() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

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
!5 = !{!6, !10, i64 16}
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
!16 = !{!6, !10, i64 12}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!19, !19, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !19, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !19, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = distinct !{!30, !27}
