; ModuleID = '3D.cu'
source_filename = "3D.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind
define protected amdgpu_kernel void @_Z11hotspotOpt1PfS_S_fiiifffffff(float addrspace(1)* nocapture readonly %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture writeonly %2, float %3, i32 %4, i32 %5, i32 %6, float %7, float %8, float %9, float %10, float %11, float %12, float %13) local_unnamed_addr #0 {
  %15 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr()
  %16 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %17 = getelementptr i8, i8 addrspace(4)* %15, i64 4
  %18 = bitcast i8 addrspace(4)* %17 to i16 addrspace(4)*
  %19 = load i16, i16 addrspace(4)* %18, align 4, !range !5, !invariant.load !6
  %20 = zext i16 %19 to i32
  %21 = mul i32 %16, %20
  %22 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !7
  %23 = add i32 %21, %22
  %24 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  %25 = getelementptr i8, i8 addrspace(4)* %15, i64 6
  %26 = bitcast i8 addrspace(4)* %25 to i16 addrspace(4)*
  %27 = load i16, i16 addrspace(4)* %26, align 2, !range !5, !invariant.load !6
  %28 = zext i16 %27 to i32
  %29 = mul i32 %24, %28
  %30 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !7
  %31 = add i32 %29, %30
  %32 = mul nsw i32 %31, %4
  %33 = add nsw i32 %32, %23
  %34 = mul nsw i32 %5, %4
  %35 = icmp eq i32 %23, 0
  %36 = add nsw i32 %33, -1
  %37 = select i1 %35, i32 %32, i32 %36
  %38 = add nsw i32 %4, -1
  %39 = icmp ne i32 %23, %38
  %40 = zext i1 %39 to i32
  %41 = add nsw i32 %33, %40
  %42 = icmp eq i32 %31, 0
  %43 = select i1 %42, i32 0, i32 %4
  %44 = sub nsw i32 %33, %43
  %45 = add nsw i32 %5, -1
  %46 = icmp eq i32 %31, %45
  %47 = select i1 %46, i32 0, i32 %4
  %48 = add nsw i32 %33, %47
  %49 = sext i32 %33 to i64
  %50 = getelementptr inbounds float, float addrspace(1)* %1, i64 %49
  %51 = load float, float addrspace(1)* %50, align 4, !tbaa !8, !amdgpu.noclobber !6
  %52 = add nsw i32 %33, %34
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float addrspace(1)* %1, i64 %53
  %55 = load float, float addrspace(1)* %54, align 4, !tbaa !8, !amdgpu.noclobber !6
  %56 = fmul contract float %51, %13
  %57 = sext i32 %37 to i64
  %58 = getelementptr inbounds float, float addrspace(1)* %1, i64 %57
  %59 = load float, float addrspace(1)* %58, align 4, !tbaa !8, !amdgpu.noclobber !6
  %60 = fmul contract float %59, %8
  %61 = fadd contract float %56, %60
  %62 = sext i32 %41 to i64
  %63 = getelementptr inbounds float, float addrspace(1)* %1, i64 %62
  %64 = load float, float addrspace(1)* %63, align 4, !tbaa !8, !amdgpu.noclobber !6
  %65 = fmul contract float %64, %7
  %66 = fadd contract float %61, %65
  %67 = sext i32 %48 to i64
  %68 = getelementptr inbounds float, float addrspace(1)* %1, i64 %67
  %69 = load float, float addrspace(1)* %68, align 4, !tbaa !8, !amdgpu.noclobber !6
  %70 = fmul contract float %69, %10
  %71 = fadd contract float %66, %70
  %72 = sext i32 %44 to i64
  %73 = getelementptr inbounds float, float addrspace(1)* %1, i64 %72
  %74 = load float, float addrspace(1)* %73, align 4, !tbaa !8, !amdgpu.noclobber !6
  %75 = fmul contract float %74, %9
  %76 = fadd contract float %71, %75
  %77 = fmul contract float %51, %12
  %78 = fadd contract float %77, %76
  %79 = fmul contract float %55, %11
  %80 = fadd contract float %79, %78
  %81 = getelementptr inbounds float, float addrspace(1)* %0, i64 %49
  %82 = load float, float addrspace(1)* %81, align 4, !tbaa !8, !amdgpu.noclobber !6
  %83 = fmul contract float %82, %3
  %84 = fadd contract float %83, %80
  %85 = fmul contract float %11, 8.000000e+01
  %86 = fadd contract float %85, %84
  %87 = getelementptr inbounds float, float addrspace(1)* %2, i64 %49
  store float %86, float addrspace(1)* %87, align 4, !tbaa !8
  %88 = add nsw i32 %48, %34
  %89 = add nsw i32 %44, %34
  %90 = add nsw i32 %41, %34
  %91 = add nsw i32 %37, %34
  %92 = icmp sgt i32 %6, 2
  br i1 %92, label %93, label %97

93:                                               ; preds = %14
  %94 = add i32 %6, -2
  br label %135

95:                                               ; preds = %135
  %96 = fmul contract float %141, %12
  br label %97

97:                                               ; preds = %95, %14
  %98 = phi float [ %171, %95 ], [ %79, %14 ]
  %99 = phi float [ %96, %95 ], [ %77, %14 ]
  %100 = phi i64 [ %145, %95 ], [ %53, %14 ]
  %101 = phi float [ %147, %95 ], [ %55, %14 ]
  %102 = phi i32 [ %181, %95 ], [ %88, %14 ]
  %103 = phi i32 [ %182, %95 ], [ %89, %14 ]
  %104 = phi i32 [ %183, %95 ], [ %90, %14 ]
  %105 = phi i32 [ %184, %95 ], [ %91, %14 ]
  %106 = fmul contract float %101, %13
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds float, float addrspace(1)* %1, i64 %107
  %109 = load float, float addrspace(1)* %108, align 4, !tbaa !8
  %110 = fmul contract float %109, %8
  %111 = fadd contract float %106, %110
  %112 = sext i32 %104 to i64
  %113 = getelementptr inbounds float, float addrspace(1)* %1, i64 %112
  %114 = load float, float addrspace(1)* %113, align 4, !tbaa !8
  %115 = fmul contract float %114, %7
  %116 = fadd contract float %111, %115
  %117 = sext i32 %102 to i64
  %118 = getelementptr inbounds float, float addrspace(1)* %1, i64 %117
  %119 = load float, float addrspace(1)* %118, align 4, !tbaa !8
  %120 = fmul contract float %119, %10
  %121 = fadd contract float %116, %120
  %122 = sext i32 %103 to i64
  %123 = getelementptr inbounds float, float addrspace(1)* %1, i64 %122
  %124 = load float, float addrspace(1)* %123, align 4, !tbaa !8
  %125 = fmul contract float %124, %9
  %126 = fadd contract float %121, %125
  %127 = fadd contract float %99, %126
  %128 = fadd contract float %98, %127
  %129 = getelementptr inbounds float, float addrspace(1)* %0, i64 %100
  %130 = load float, float addrspace(1)* %129, align 4, !tbaa !8
  %131 = fmul contract float %130, %3
  %132 = fadd contract float %131, %128
  %133 = fadd contract float %85, %132
  %134 = getelementptr inbounds float, float addrspace(1)* %2, i64 %100
  store float %133, float addrspace(1)* %134, align 4, !tbaa !8
  ret void

135:                                              ; preds = %93, %135
  %136 = phi i32 [ %184, %135 ], [ %91, %93 ]
  %137 = phi i32 [ %183, %135 ], [ %90, %93 ]
  %138 = phi i32 [ %182, %135 ], [ %89, %93 ]
  %139 = phi i32 [ %181, %135 ], [ %88, %93 ]
  %140 = phi i32 [ %180, %135 ], [ 1, %93 ]
  %141 = phi float [ %147, %135 ], [ %55, %93 ]
  %142 = phi float [ %141, %135 ], [ %51, %93 ]
  %143 = phi i32 [ %144, %135 ], [ %52, %93 ]
  %144 = add nsw i32 %143, %34
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float addrspace(1)* %1, i64 %145
  %147 = load float, float addrspace(1)* %146, align 4, !tbaa !8
  %148 = fmul contract float %141, %13
  %149 = sext i32 %136 to i64
  %150 = getelementptr inbounds float, float addrspace(1)* %1, i64 %149
  %151 = load float, float addrspace(1)* %150, align 4, !tbaa !8
  %152 = fmul contract float %151, %8
  %153 = fadd contract float %148, %152
  %154 = sext i32 %137 to i64
  %155 = getelementptr inbounds float, float addrspace(1)* %1, i64 %154
  %156 = load float, float addrspace(1)* %155, align 4, !tbaa !8
  %157 = fmul contract float %156, %7
  %158 = fadd contract float %153, %157
  %159 = sext i32 %139 to i64
  %160 = getelementptr inbounds float, float addrspace(1)* %1, i64 %159
  %161 = load float, float addrspace(1)* %160, align 4, !tbaa !8
  %162 = fmul contract float %161, %10
  %163 = fadd contract float %158, %162
  %164 = sext i32 %138 to i64
  %165 = getelementptr inbounds float, float addrspace(1)* %1, i64 %164
  %166 = load float, float addrspace(1)* %165, align 4, !tbaa !8
  %167 = fmul contract float %166, %9
  %168 = fadd contract float %163, %167
  %169 = fmul contract float %142, %12
  %170 = fadd contract float %169, %168
  %171 = fmul contract float %147, %11
  %172 = fadd contract float %171, %170
  %173 = sext i32 %143 to i64
  %174 = getelementptr inbounds float, float addrspace(1)* %0, i64 %173
  %175 = load float, float addrspace(1)* %174, align 4, !tbaa !8
  %176 = fmul contract float %175, %3
  %177 = fadd contract float %176, %172
  %178 = fadd contract float %85, %177
  %179 = getelementptr inbounds float, float addrspace(1)* %2, i64 %173
  store float %178, float addrspace(1)* %179, align 4, !tbaa !8
  %180 = add nuw nsw i32 %140, 1
  %181 = add nsw i32 %139, %34
  %182 = add nsw i32 %138, %34
  %183 = add nsw i32 %137, %34
  %184 = add nsw i32 %136, %34
  %185 = icmp eq i32 %140, %94
  br i1 %185, label %95, label %135, !llvm.loop !12
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
