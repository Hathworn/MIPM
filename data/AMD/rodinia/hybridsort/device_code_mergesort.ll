; ModuleID = 'mergesort.hip.cu'
source_filename = "mergesort.hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x float> }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z14mergeSortFirstP15HIP_vector_typeIfLj4EES1_i(%struct.HIP_vector_type addrspace(1)* nocapture readonly %0, %struct.HIP_vector_type addrspace(1)* nocapture writeonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %5 = sext i32 %4 to i64
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %7 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %8 = bitcast i8 addrspace(4)* %7 to i16 addrspace(4)*
  %9 = load i16, i16 addrspace(4)* %8, align 4, !range !5, !invariant.load !6
  %10 = zext i16 %9 to i64
  %11 = mul nsw i64 %10, %5
  %12 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %13 = zext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = sdiv i32 %2, 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %3
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %20, i32 0, i32 0, i32 0
  %22 = load <4 x float>, <4 x float> addrspace(1)* %21, align 16, !amdgpu.noclobber !6
  %23 = extractelement <4 x float> %22, i64 0
  %24 = extractelement <4 x float> %22, i64 1
  %25 = fcmp contract ogt float %23, %24
  %26 = select contract i1 %25, float %24, float %23
  %27 = fcmp contract ogt float %24, %23
  %28 = select contract i1 %27, float %24, float %23
  %29 = extractelement <4 x float> %22, i64 2
  %30 = extractelement <4 x float> %22, i64 3
  %31 = fcmp contract ogt float %29, %30
  %32 = select contract i1 %31, float %30, float %29
  %33 = fcmp contract ogt float %30, %29
  %34 = select contract i1 %33, float %30, float %29
  %35 = fcmp contract ogt float %26, %32
  %36 = select contract i1 %35, float %32, float %26
  %37 = fcmp contract ogt float %28, %34
  %38 = select contract i1 %37, float %34, float %28
  %39 = fcmp contract ogt float %32, %26
  %40 = select contract i1 %39, float %32, float %26
  %41 = fcmp contract ogt float %34, %28
  %42 = select contract i1 %41, float %34, float %28
  %43 = insertelement <4 x float> poison, float %36, i64 0
  %44 = fcmp contract ogt float %38, %40
  %45 = select contract i1 %44, float %40, float %38
  %46 = insertelement <4 x float> %43, float %45, i64 1
  %47 = fcmp contract ogt float %40, %38
  %48 = select contract i1 %47, float %40, float %38
  %49 = insertelement <4 x float> %46, float %48, i64 2
  %50 = insertelement <4 x float> %49, float %42, i64 3
  %51 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %14, i32 0, i32 0, i32 0
  store <4 x float> %50, <4 x float> addrspace(1)* %51, align 16, !tbaa !8
  br label %52

52:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z13mergeSortPassP15HIP_vector_typeIfLj4EES1_iiPi(%struct.HIP_vector_type addrspace(1)* nocapture readonly %0, %struct.HIP_vector_type addrspace(1)* nocapture writeonly %1, i32 %2, i32 %3, i32 addrspace(1)* nocapture readonly %4) local_unnamed_addr #1 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !5, !invariant.load !6
  %11 = zext i16 %10 to i32
  %12 = mul i32 %6, %11
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %14 = add i32 %12, %13
  %15 = sdiv i32 %14, %3
  %16 = icmp sgt i32 %15, 1023
  br i1 %16, label %182, label %17

17:                                               ; preds = %5
  %18 = mul nsw i32 %15, %3
  %19 = sub nsw i32 %14, %18
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %20
  %22 = load i32, i32 addrspace(1)* %21, align 4, !tbaa !11, !amdgpu.noclobber !6
  %23 = mul nsw i32 %19, %2
  %24 = add nsw i32 %22, %23
  %25 = sdiv i32 %2, 2
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %27
  %29 = add nsw i32 %15, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %30
  %32 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !11, !amdgpu.noclobber !6
  %33 = icmp slt i32 %24, %32
  br i1 %33, label %34, label %182

34:                                               ; preds = %17
  %35 = icmp slt i32 %26, %32
  br i1 %35, label %49, label %36

36:                                               ; preds = %34, %36
  %37 = phi i32 [ %45, %36 ], [ 0, %34 ]
  %38 = add nsw i32 %37, %24
  %39 = sext i32 %38 to i64
  %40 = zext i32 %37 to i64
  %41 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %28, i64 %40
  %42 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %39, i32 0, i32 0, i32 0
  %43 = load <4 x float>, <4 x float> addrspace(1)* %42, align 16, !tbaa !8
  %44 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %41, i64 0, i32 0, i32 0, i32 0
  store <4 x float> %43, <4 x float> addrspace(1)* %44, align 16, !tbaa !8
  %45 = add nuw nsw i32 %37, 1
  %46 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !11
  %47 = sub nsw i32 %46, %24
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %36, label %182, !llvm.loop !13

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %27, i32 0, i32 0, i32 0
  %51 = load <4 x float>, <4 x float> addrspace(1)* %50, align 16, !tbaa !8, !amdgpu.noclobber !6
  %52 = sext i32 %26 to i64
  %53 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %52, i32 0, i32 0, i32 0
  %54 = load <4 x float>, <4 x float> addrspace(1)* %53, align 16, !tbaa !8, !amdgpu.noclobber !6
  br label %55

55:                                               ; preds = %169, %49
  %56 = phi <4 x float> [ %54, %49 ], [ %142, %169 ]
  %57 = phi <4 x float> [ %51, %49 ], [ %170, %169 ]
  %58 = phi i32 [ 0, %49 ], [ %143, %169 ]
  %59 = phi i32 [ 0, %49 ], [ %171, %169 ]
  %60 = phi i32 [ 0, %49 ], [ %172, %169 ]
  %61 = add i32 %60, 1
  %62 = add i32 %61, %24
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %63, i32 0, i32 0, i32 0
  %65 = load <4 x float>, <4 x float> addrspace(1)* %64, align 16
  %66 = add i32 %59, 1
  %67 = add i32 %66, %26
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %68, i32 0, i32 0, i32 0
  %70 = load <4 x float>, <4 x float> addrspace(1)* %69, align 16
  %71 = extractelement <4 x float> %57, i64 0
  %72 = extractelement <4 x float> %56, i64 3
  %73 = fcmp contract olt float %71, %72
  %74 = select contract i1 %73, float %71, float %72
  %75 = extractelement <4 x float> %57, i64 1
  %76 = extractelement <4 x float> %56, i64 2
  %77 = fcmp contract olt float %75, %76
  %78 = select contract i1 %77, float %75, float %76
  %79 = extractelement <4 x float> %57, i64 2
  %80 = extractelement <4 x float> %56, i64 1
  %81 = fcmp contract olt float %79, %80
  %82 = select contract i1 %81, float %79, float %80
  %83 = extractelement <4 x float> %57, i64 3
  %84 = extractelement <4 x float> %56, i64 0
  %85 = fcmp contract olt float %83, %84
  %86 = select contract i1 %85, float %83, float %84
  %87 = fcmp contract oge float %83, %84
  %88 = select contract i1 %87, float %83, float %84
  %89 = fcmp contract oge float %79, %80
  %90 = select contract i1 %89, float %79, float %80
  %91 = fcmp contract oge float %75, %76
  %92 = select contract i1 %91, float %75, float %76
  %93 = fcmp contract oge float %71, %72
  %94 = select contract i1 %93, float %71, float %72
  %95 = fcmp contract ogt float %74, %78
  %96 = select contract i1 %95, float %78, float %74
  %97 = fcmp contract ogt float %78, %74
  %98 = select contract i1 %97, float %78, float %74
  %99 = fcmp contract ogt float %82, %86
  %100 = select contract i1 %99, float %86, float %82
  %101 = fcmp contract ogt float %86, %82
  %102 = select contract i1 %101, float %86, float %82
  %103 = fcmp contract ogt float %96, %100
  %104 = select contract i1 %103, float %100, float %96
  %105 = fcmp contract ogt float %98, %102
  %106 = select contract i1 %105, float %102, float %98
  %107 = fcmp contract ogt float %100, %96
  %108 = select contract i1 %107, float %100, float %96
  %109 = fcmp contract ogt float %102, %98
  %110 = select contract i1 %109, float %102, float %98
  %111 = insertelement <4 x float> poison, float %104, i64 0
  %112 = fcmp contract ogt float %106, %108
  %113 = select contract i1 %112, float %108, float %106
  %114 = insertelement <4 x float> %111, float %113, i64 1
  %115 = fcmp contract ogt float %108, %106
  %116 = select contract i1 %115, float %108, float %106
  %117 = insertelement <4 x float> %114, float %116, i64 2
  %118 = insertelement <4 x float> %117, float %110, i64 3
  %119 = fcmp contract ogt float %88, %90
  %120 = select contract i1 %119, float %90, float %88
  %121 = fcmp contract ogt float %90, %88
  %122 = select contract i1 %121, float %90, float %88
  %123 = fcmp contract ogt float %92, %94
  %124 = select contract i1 %123, float %94, float %92
  %125 = fcmp contract ogt float %94, %92
  %126 = select contract i1 %125, float %94, float %92
  %127 = fcmp contract ogt float %120, %124
  %128 = select contract i1 %127, float %124, float %120
  %129 = fcmp contract ogt float %122, %126
  %130 = select contract i1 %129, float %126, float %122
  %131 = fcmp contract ogt float %124, %120
  %132 = select contract i1 %131, float %124, float %120
  %133 = fcmp contract ogt float %126, %122
  %134 = select contract i1 %133, float %126, float %122
  %135 = insertelement <4 x float> poison, float %128, i64 0
  %136 = fcmp contract ogt float %130, %132
  %137 = select contract i1 %136, float %132, float %130
  %138 = insertelement <4 x float> %135, float %137, i64 1
  %139 = fcmp contract ogt float %132, %130
  %140 = select contract i1 %139, float %132, float %130
  %141 = insertelement <4 x float> %138, float %140, i64 2
  %142 = insertelement <4 x float> %141, float %134, i64 3
  %143 = add nuw nsw i32 %58, 1
  %144 = zext i32 %58 to i64
  %145 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %28, i64 %144
  %146 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %145, i64 0, i32 0, i32 0, i32 0
  store <4 x float> %118, <4 x float> addrspace(1)* %146, align 16, !tbaa !8
  %147 = icmp slt i32 %61, %25
  br i1 %147, label %148, label %151

148:                                              ; preds = %55
  %149 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !11
  %150 = icmp slt i32 %62, %149
  br label %151

151:                                              ; preds = %148, %55
  %152 = phi i1 [ false, %55 ], [ %150, %148 ]
  %153 = icmp slt i32 %66, %25
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !11
  %156 = icmp slt i32 %67, %155
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i1 [ false, %151 ], [ %156, %154 ]
  br i1 %152, label %159, label %167

159:                                              ; preds = %157
  br i1 %158, label %160, label %169

160:                                              ; preds = %159
  %161 = extractelement <4 x float> %65, i64 0
  %162 = extractelement <4 x float> %70, i64 0
  %163 = fcmp contract olt float %161, %162
  %164 = select i1 %163, <4 x float> %65, <4 x float> %70
  %165 = select i1 %163, i32 %59, i32 %66
  %166 = select i1 %163, i32 %61, i32 %60
  br label %169

167:                                              ; preds = %157
  br i1 %158, label %168, label %169

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %159, %160, %168, %167
  %170 = phi <4 x float> [ %70, %168 ], [ %118, %167 ], [ %164, %160 ], [ %65, %159 ]
  %171 = phi i32 [ %66, %168 ], [ %59, %167 ], [ %165, %160 ], [ %59, %159 ]
  %172 = phi i32 [ %60, %168 ], [ %60, %167 ], [ %166, %160 ], [ %61, %159 ]
  %173 = phi i1 [ true, %168 ], [ false, %167 ], [ true, %160 ], [ true, %159 ]
  br i1 %173, label %55, label %174

174:                                              ; preds = %169
  %175 = insertelement <4 x float> poison, float %128, i64 0
  %176 = insertelement <4 x float> %175, float %137, i64 1
  %177 = insertelement <4 x float> %176, float %140, i64 2
  %178 = insertelement <4 x float> %177, float %134, i64 3
  %179 = zext i32 %143 to i64
  %180 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %28, i64 %179
  %181 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %180, i64 0, i32 0, i32 0, i32 0
  store <4 x float> %178, <4 x float> addrspace(1)* %181, align 16, !tbaa !8
  br label %182

182:                                              ; preds = %36, %174, %17, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn
define protected amdgpu_kernel void @_Z9mergepackPfS_PiPjS0_(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture writeonly %1, i32 addrspace(1)* nocapture readonly %2, i32 addrspace(1)* nocapture readonly %3, i32 addrspace(1)* nocapture readonly %4) local_unnamed_addr #2 {
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %7 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %8 = getelementptr i8, i8 addrspace(4)* %7, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !5, !invariant.load !6
  %11 = zext i16 %10 to i32
  %12 = mul i32 %6, %11
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %14 = add i32 %12, %13
  %15 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 %16, 32
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i32, i32 addrspace(1)* %3, i64 %18
  %20 = load i32, i32 addrspace(1)* %19, align 4, !tbaa !11, !amdgpu.noclobber !6
  %21 = add i32 %14, %20
  %22 = add i64 %17, 4294967296
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i32, i32 addrspace(1)* %3, i64 %23
  %25 = load i32, i32 addrspace(1)* %24, align 4, !tbaa !11, !amdgpu.noclobber !6
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %18
  %29 = load i32, i32 addrspace(1)* %28, align 4, !tbaa !11, !amdgpu.noclobber !6
  %30 = shl nsw i32 %29, 2
  %31 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %18
  %32 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !11, !amdgpu.noclobber !6
  %33 = add i32 %32, %14
  %34 = add i32 %33, %30
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float addrspace(1)* %0, i64 %35
  %37 = load float, float addrspace(1)* %36, align 4, !tbaa !15, !amdgpu.noclobber !6
  %38 = zext i32 %21 to i64
  %39 = getelementptr inbounds float, float addrspace(1)* %1, i64 %38
  store float %37, float addrspace(1)* %39, align 4, !tbaa !15
  br label %40

40:                                               ; preds = %5, %27
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !9, i64 0}
