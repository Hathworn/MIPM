; ModuleID = 'recursivegaussian/recursivegaussian.cpp'
source_filename = "recursivegaussian/recursivegaussian.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.HIP_vector_type = type { %struct.HIP_vector_base }
%struct.HIP_vector_base = type { %union.anon }
%union.anon = type { <4 x i8> }

@_ZZ16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjjE5block = internal unnamed_addr addrspace(3) global [256 x %struct.HIP_vector_type] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind willreturn
define protected amdgpu_kernel void @_Z16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjj(%struct.HIP_vector_type addrspace(1)* nocapture writeonly %0, %struct.HIP_vector_type addrspace(1)* nocapture readonly %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 {
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %8 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !4, !invariant.load !5
  %11 = zext i16 %10 to i32
  %12 = mul i32 %7, %11
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !6
  %14 = add i32 %12, %13
  %15 = tail call i32 @llvm.amdgcn.workgroup.id.y() #4
  %16 = getelementptr i8, i8 addrspace(4)* %6, i64 6
  %17 = bitcast i8 addrspace(4)* %16 to i16 addrspace(4)*
  %18 = load i16, i16 addrspace(4)* %17, align 2, !range !4, !invariant.load !5
  %19 = zext i16 %18 to i32
  %20 = mul i32 %15, %19
  %21 = tail call i32 @llvm.amdgcn.workitem.id.y() #4, !range !6
  %22 = add i32 %20, %21
  %23 = mul i32 %22, %2
  %24 = add i32 %23, %14
  %25 = zext i32 %24 to i64
  %26 = mul i32 %21, %4
  %27 = add i32 %26, %13
  %28 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %25, i32 0, i32 0, i32 0
  %29 = load <4 x i8>, <4 x i8> addrspace(1)* %28, align 4, !tbaa !7
  %30 = getelementptr inbounds [256 x %struct.HIP_vector_type], [256 x %struct.HIP_vector_type] addrspace(3)* @_ZZ16transpose_kernelP15HIP_vector_typeIhLj4EES1_jjjE5block, i32 0, i32 %27, i32 0, i32 0, i32 0
  store <4 x i8> %29, <4 x i8> addrspace(3)* %30, align 4, !tbaa !7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  %31 = mul i32 %14, %3
  %32 = add i32 %31, %22
  %33 = zext i32 %32 to i64
  %34 = load <4 x i8>, <4 x i8> addrspace(3)* %30, align 4, !tbaa !7
  %35 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %33, i32 0, i32 0, i32 0
  store <4 x i8> %34, <4 x i8> addrspace(1)* %35, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z24RecursiveGaussian_kernelPK15HIP_vector_typeIhLj4EEPS0_iiffffffff(%struct.HIP_vector_type addrspace(1)* nocapture readonly %0, %struct.HIP_vector_type addrspace(1)* nocapture %1, i32 %2, i32 %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10, float %11) local_unnamed_addr #1 {
  %13 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #4
  %14 = tail call i32 @llvm.amdgcn.workgroup.id.x() #4
  %15 = getelementptr i8, i8 addrspace(4)* %13, i64 4
  %16 = bitcast i8 addrspace(4)* %15 to i16 addrspace(4)*
  %17 = load i16, i16 addrspace(4)* %16, align 4, !range !4, !invariant.load !5
  %18 = zext i16 %17 to i32
  %19 = mul i32 %14, %18
  %20 = tail call i32 @llvm.amdgcn.workitem.id.x() #4, !range !6
  %21 = add i32 %19, %20
  %22 = icmp ult i32 %21, %2
  br i1 %22, label %23, label %206

23:                                               ; preds = %12
  %24 = icmp sgt i32 %3, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %26, %23
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #4
  fence syncscope("workgroup") acquire
  br i1 %24, label %105, label %206

26:                                               ; preds = %23, %26
  %27 = phi i32 [ %103, %26 ], [ 0, %23 ]
  %28 = phi <4 x float> [ %49, %26 ], [ zeroinitializer, %23 ]
  %29 = phi <4 x float> [ %93, %26 ], [ zeroinitializer, %23 ]
  %30 = phi <4 x float> [ %29, %26 ], [ zeroinitializer, %23 ]
  %31 = mul nsw i32 %27, %2
  %32 = add i32 %31, %21
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %33, i32 0, i32 0, i32 0, i64 0
  %35 = load i8, i8 addrspace(1)* %34, align 4, !tbaa !7
  %36 = uitofp i8 %35 to float
  %37 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %33, i32 0, i32 0, i32 0, i64 1
  %38 = load i8, i8 addrspace(1)* %37, align 1, !tbaa !7
  %39 = uitofp i8 %38 to float
  %40 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %33, i32 0, i32 0, i32 0, i64 2
  %41 = load i8, i8 addrspace(1)* %40, align 2, !tbaa !7
  %42 = uitofp i8 %41 to float
  %43 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %33, i32 0, i32 0, i32 0, i64 3
  %44 = load i8, i8 addrspace(1)* %43, align 1, !tbaa !7
  %45 = uitofp i8 %44 to float
  %46 = insertelement <4 x float> undef, float %36, i64 0
  %47 = insertelement <4 x float> %46, float %39, i64 1
  %48 = insertelement <4 x float> %47, float %42, i64 2
  %49 = insertelement <4 x float> %48, float %45, i64 3
  %50 = fmul contract float %36, %4
  %51 = extractelement <4 x float> %28, i64 0
  %52 = fmul contract float %51, %5
  %53 = fadd contract float %52, %50
  %54 = extractelement <4 x float> %29, i64 0
  %55 = fmul contract float %54, %8
  %56 = fsub contract float %53, %55
  %57 = extractelement <4 x float> %30, i64 0
  %58 = fmul contract float %57, %9
  %59 = fsub contract float %56, %58
  %60 = insertelement <4 x float> poison, float %59, i64 0
  %61 = fmul contract float %39, %4
  %62 = extractelement <4 x float> %28, i64 1
  %63 = fmul contract float %62, %5
  %64 = fadd contract float %63, %61
  %65 = extractelement <4 x float> %29, i64 1
  %66 = fmul contract float %65, %8
  %67 = fsub contract float %64, %66
  %68 = extractelement <4 x float> %30, i64 1
  %69 = fmul contract float %68, %9
  %70 = fsub contract float %67, %69
  %71 = insertelement <4 x float> %60, float %70, i64 1
  %72 = fmul contract float %42, %4
  %73 = extractelement <4 x float> %28, i64 2
  %74 = fmul contract float %73, %5
  %75 = fadd contract float %74, %72
  %76 = extractelement <4 x float> %29, i64 2
  %77 = fmul contract float %76, %8
  %78 = fsub contract float %75, %77
  %79 = extractelement <4 x float> %30, i64 2
  %80 = fmul contract float %79, %9
  %81 = fsub contract float %78, %80
  %82 = insertelement <4 x float> %71, float %81, i64 2
  %83 = fmul contract float %45, %4
  %84 = extractelement <4 x float> %28, i64 3
  %85 = fmul contract float %84, %5
  %86 = fadd contract float %85, %83
  %87 = extractelement <4 x float> %29, i64 3
  %88 = fmul contract float %87, %8
  %89 = fsub contract float %86, %88
  %90 = extractelement <4 x float> %30, i64 3
  %91 = fmul contract float %90, %9
  %92 = fsub contract float %89, %91
  %93 = insertelement <4 x float> %82, float %92, i64 3
  %94 = fptoui float %59 to i8
  %95 = fptoui float %70 to i8
  %96 = fptoui float %81 to i8
  %97 = fptoui float %92 to i8
  %98 = insertelement <4 x i8> undef, i8 %94, i64 0
  %99 = insertelement <4 x i8> %98, i8 %95, i64 1
  %100 = insertelement <4 x i8> %99, i8 %96, i64 2
  %101 = insertelement <4 x i8> %100, i8 %97, i64 3
  %102 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %33, i32 0, i32 0, i32 0
  store <4 x i8> %101, <4 x i8> addrspace(1)* %102, align 4, !tbaa !7
  %103 = add nuw nsw i32 %27, 1
  %104 = icmp eq i32 %103, %3
  br i1 %104, label %25, label %26, !llvm.loop !10

105:                                              ; preds = %25, %105
  %106 = phi i32 [ %111, %105 ], [ %3, %25 ]
  %107 = phi <4 x float> [ %108, %105 ], [ zeroinitializer, %25 ]
  %108 = phi <4 x float> [ %178, %105 ], [ zeroinitializer, %25 ]
  %109 = phi <4 x float> [ %110, %105 ], [ zeroinitializer, %25 ]
  %110 = phi <4 x float> [ %130, %105 ], [ zeroinitializer, %25 ]
  %111 = add nsw i32 %106, -1
  %112 = mul nsw i32 %111, %2
  %113 = add i32 %112, %21
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %114, i32 0, i32 0, i32 0, i64 0
  %116 = load i8, i8 addrspace(1)* %115, align 4, !tbaa !7
  %117 = uitofp i8 %116 to float
  %118 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %114, i32 0, i32 0, i32 0, i64 1
  %119 = load i8, i8 addrspace(1)* %118, align 1, !tbaa !7
  %120 = uitofp i8 %119 to float
  %121 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %114, i32 0, i32 0, i32 0, i64 2
  %122 = load i8, i8 addrspace(1)* %121, align 2, !tbaa !7
  %123 = uitofp i8 %122 to float
  %124 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %0, i64 %114, i32 0, i32 0, i32 0, i64 3
  %125 = load i8, i8 addrspace(1)* %124, align 1, !tbaa !7
  %126 = uitofp i8 %125 to float
  %127 = insertelement <4 x float> undef, float %117, i64 0
  %128 = insertelement <4 x float> %127, float %120, i64 1
  %129 = insertelement <4 x float> %128, float %123, i64 2
  %130 = insertelement <4 x float> %129, float %126, i64 3
  %131 = extractelement <4 x float> %110, i64 0
  %132 = fmul contract float %131, %6
  %133 = extractelement <4 x float> %109, i64 0
  %134 = fmul contract float %133, %7
  %135 = fadd contract float %132, %134
  %136 = extractelement <4 x float> %108, i64 0
  %137 = fmul contract float %136, %8
  %138 = fsub contract float %135, %137
  %139 = extractelement <4 x float> %107, i64 0
  %140 = fmul contract float %139, %9
  %141 = fsub contract float %138, %140
  %142 = insertelement <4 x float> poison, float %141, i64 0
  %143 = extractelement <4 x float> %110, i64 1
  %144 = fmul contract float %143, %6
  %145 = extractelement <4 x float> %109, i64 1
  %146 = fmul contract float %145, %7
  %147 = fadd contract float %144, %146
  %148 = extractelement <4 x float> %108, i64 1
  %149 = fmul contract float %148, %8
  %150 = fsub contract float %147, %149
  %151 = extractelement <4 x float> %107, i64 1
  %152 = fmul contract float %151, %9
  %153 = fsub contract float %150, %152
  %154 = insertelement <4 x float> %142, float %153, i64 1
  %155 = extractelement <4 x float> %110, i64 2
  %156 = fmul contract float %155, %6
  %157 = extractelement <4 x float> %109, i64 2
  %158 = fmul contract float %157, %7
  %159 = fadd contract float %156, %158
  %160 = extractelement <4 x float> %108, i64 2
  %161 = fmul contract float %160, %8
  %162 = fsub contract float %159, %161
  %163 = extractelement <4 x float> %107, i64 2
  %164 = fmul contract float %163, %9
  %165 = fsub contract float %162, %164
  %166 = insertelement <4 x float> %154, float %165, i64 2
  %167 = extractelement <4 x float> %110, i64 3
  %168 = fmul contract float %167, %6
  %169 = extractelement <4 x float> %109, i64 3
  %170 = fmul contract float %169, %7
  %171 = fadd contract float %168, %170
  %172 = extractelement <4 x float> %108, i64 3
  %173 = fmul contract float %172, %8
  %174 = fsub contract float %171, %173
  %175 = extractelement <4 x float> %107, i64 3
  %176 = fmul contract float %175, %9
  %177 = fsub contract float %174, %176
  %178 = insertelement <4 x float> %166, float %177, i64 3
  %179 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %114
  %180 = getelementptr %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %179, i64 0, i32 0, i32 0, i32 0, i64 0
  %181 = load i8, i8 addrspace(1)* %180, align 4, !tbaa !7
  %182 = uitofp i8 %181 to float
  %183 = fadd contract float %141, %182
  %184 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %114, i32 0, i32 0, i32 0, i64 1
  %185 = load i8, i8 addrspace(1)* %184, align 1, !tbaa !7
  %186 = uitofp i8 %185 to float
  %187 = fadd contract float %153, %186
  %188 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %114, i32 0, i32 0, i32 0, i64 2
  %189 = load i8, i8 addrspace(1)* %188, align 2, !tbaa !7
  %190 = uitofp i8 %189 to float
  %191 = fadd contract float %165, %190
  %192 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %1, i64 %114, i32 0, i32 0, i32 0, i64 3
  %193 = load i8, i8 addrspace(1)* %192, align 1, !tbaa !7
  %194 = uitofp i8 %193 to float
  %195 = fadd contract float %177, %194
  %196 = fptoui float %183 to i8
  %197 = fptoui float %187 to i8
  %198 = fptoui float %191 to i8
  %199 = fptoui float %195 to i8
  %200 = insertelement <4 x i8> undef, i8 %196, i64 0
  %201 = insertelement <4 x i8> %200, i8 %197, i64 1
  %202 = insertelement <4 x i8> %201, i8 %198, i64 2
  %203 = insertelement <4 x i8> %202, i8 %199, i64 3
  %204 = getelementptr inbounds %struct.HIP_vector_type, %struct.HIP_vector_type addrspace(1)* %179, i64 0, i32 0, i32 0, i32 0
  store <4 x i8> %203, <4 x i8> addrspace(1)* %204, align 4, !tbaa !7
  %205 = icmp ugt i32 %106, 1
  br i1 %205, label %105, label %206, !llvm.loop !12

206:                                              ; preds = %105, %25, %12
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #3

attributes #0 = { convergent mustprogress norecurse nounwind willreturn "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
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
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
