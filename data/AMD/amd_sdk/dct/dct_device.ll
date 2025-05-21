; ModuleID = 'dct/dct.cpp'
source_filename = "dct/dct.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ9DCTKernelPfS_S_S_jjjE5inter = internal unnamed_addr addrspace(3) global [64 x float] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z9DCTKernelPfS_S_S_jjj(float addrspace(1)* nocapture writeonly %0, float addrspace(1)* nocapture readonly %1, float addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture readonly %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %9 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %10 = getelementptr i8, i8 addrspace(4)* %9, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %14 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %15 = getelementptr i8, i8 addrspace(4)* %9, i64 6
  %16 = bitcast i8 addrspace(4)* %15 to i16 addrspace(4)*
  %17 = load i16, i16 addrspace(4)* %16, align 2, !range !4, !invariant.load !5
  %18 = tail call i32 @llvm.amdgcn.workitem.id.y() #3, !range !6
  %19 = mul i32 %18, %5
  %20 = mul i32 %8, %5
  %21 = add i32 %20, %13
  %22 = mul i32 %14, %5
  %23 = icmp eq i32 %6, 0
  %24 = icmp eq i32 %5, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  %26 = select i1 %23, float addrspace(1)* %3, float addrspace(1)* %2
  br label %45

27:                                               ; preds = %45, %7
  %28 = phi float [ 0.000000e+00, %7 ], [ %59, %45 ]
  %29 = add i32 %19, %13
  %30 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %29
  store float %28, float addrspace(3)* %30, align 4, !tbaa !7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %24, label %86, label %31

31:                                               ; preds = %27
  %32 = add i32 %5, -1
  %33 = and i32 %5, 7
  %34 = icmp ult i32 %32, 7
  br i1 %34, label %62, label %35

35:                                               ; preds = %31
  %36 = and i32 %5, -8
  %37 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  %38 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  %39 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  %40 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  %41 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  %42 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  %43 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  %44 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  br label %98

45:                                               ; preds = %25, %45
  %46 = phi float [ %59, %45 ], [ 0.000000e+00, %25 ]
  %47 = phi i32 [ %60, %45 ], [ 0, %25 ]
  %48 = add i32 %47, %19
  %49 = add i32 %47, %22
  %50 = mul i32 %49, %4
  %51 = add i32 %21, %50
  %52 = zext i32 %48 to i64
  %53 = getelementptr inbounds float, float addrspace(1)* %26, i64 %52
  %54 = load float, float addrspace(1)* %53, align 4, !tbaa !7
  %55 = zext i32 %51 to i64
  %56 = getelementptr inbounds float, float addrspace(1)* %1, i64 %55
  %57 = load float, float addrspace(1)* %56, align 4, !tbaa !7
  %58 = fmul contract float %54, %57
  %59 = fadd contract float %46, %58
  %60 = add nuw i32 %47, 1
  %61 = icmp eq i32 %60, %5
  br i1 %61, label %27, label %45, !llvm.loop !11

62:                                               ; preds = %98, %31
  %63 = phi float [ undef, %31 ], [ %188, %98 ]
  %64 = phi float [ 0.000000e+00, %31 ], [ %188, %98 ]
  %65 = phi i32 [ 0, %31 ], [ %189, %98 ]
  %66 = icmp eq i32 %33, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %62
  %68 = select i1 %23, float addrspace(1)* %2, float addrspace(1)* %3
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi float [ %82, %69 ], [ %64, %67 ]
  %71 = phi i32 [ %83, %69 ], [ %65, %67 ]
  %72 = phi i32 [ %84, %69 ], [ 0, %67 ]
  %73 = add i32 %71, %19
  %74 = mul i32 %71, %5
  %75 = add i32 %74, %13
  %76 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %73
  %77 = load float, float addrspace(3)* %76, align 4, !tbaa !7
  %78 = zext i32 %75 to i64
  %79 = getelementptr inbounds float, float addrspace(1)* %68, i64 %78
  %80 = load float, float addrspace(1)* %79, align 4, !tbaa !7
  %81 = fmul contract float %77, %80
  %82 = fadd contract float %70, %81
  %83 = add nuw i32 %71, 1
  %84 = add i32 %72, 1
  %85 = icmp eq i32 %84, %33
  br i1 %85, label %86, label %69, !llvm.loop !13

86:                                               ; preds = %62, %69, %27
  %87 = phi float [ 0.000000e+00, %27 ], [ %63, %62 ], [ %82, %69 ]
  %88 = zext i16 %17 to i32
  %89 = zext i16 %12 to i32
  %90 = mul i32 %14, %88
  %91 = add i32 %90, %18
  %92 = mul i32 %91, %4
  %93 = mul i32 %8, %89
  %94 = add i32 %93, %13
  %95 = add i32 %94, %92
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds float, float addrspace(1)* %0, i64 %96
  store float %87, float addrspace(1)* %97, align 4, !tbaa !7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  ret void

98:                                               ; preds = %98, %35
  %99 = phi float [ 0.000000e+00, %35 ], [ %188, %98 ]
  %100 = phi i32 [ 0, %35 ], [ %189, %98 ]
  %101 = phi i32 [ 0, %35 ], [ %190, %98 ]
  %102 = add i32 %100, %19
  %103 = mul i32 %100, %5
  %104 = add i32 %103, %13
  %105 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %102
  %106 = load float, float addrspace(3)* %105, align 4, !tbaa !7
  %107 = zext i32 %104 to i64
  %108 = getelementptr inbounds float, float addrspace(1)* %37, i64 %107
  %109 = load float, float addrspace(1)* %108, align 4, !tbaa !7
  %110 = fmul contract float %106, %109
  %111 = fadd contract float %99, %110
  %112 = or i32 %100, 1
  %113 = add i32 %112, %19
  %114 = mul i32 %112, %5
  %115 = add i32 %114, %13
  %116 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %113
  %117 = load float, float addrspace(3)* %116, align 4, !tbaa !7
  %118 = zext i32 %115 to i64
  %119 = getelementptr inbounds float, float addrspace(1)* %38, i64 %118
  %120 = load float, float addrspace(1)* %119, align 4, !tbaa !7
  %121 = fmul contract float %117, %120
  %122 = fadd contract float %111, %121
  %123 = or i32 %100, 2
  %124 = add i32 %123, %19
  %125 = mul i32 %123, %5
  %126 = add i32 %125, %13
  %127 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %124
  %128 = load float, float addrspace(3)* %127, align 4, !tbaa !7
  %129 = zext i32 %126 to i64
  %130 = getelementptr inbounds float, float addrspace(1)* %39, i64 %129
  %131 = load float, float addrspace(1)* %130, align 4, !tbaa !7
  %132 = fmul contract float %128, %131
  %133 = fadd contract float %122, %132
  %134 = or i32 %100, 3
  %135 = add i32 %134, %19
  %136 = mul i32 %134, %5
  %137 = add i32 %136, %13
  %138 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %135
  %139 = load float, float addrspace(3)* %138, align 4, !tbaa !7
  %140 = zext i32 %137 to i64
  %141 = getelementptr inbounds float, float addrspace(1)* %40, i64 %140
  %142 = load float, float addrspace(1)* %141, align 4, !tbaa !7
  %143 = fmul contract float %139, %142
  %144 = fadd contract float %133, %143
  %145 = or i32 %100, 4
  %146 = add i32 %145, %19
  %147 = mul i32 %145, %5
  %148 = add i32 %147, %13
  %149 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %146
  %150 = load float, float addrspace(3)* %149, align 4, !tbaa !7
  %151 = zext i32 %148 to i64
  %152 = getelementptr inbounds float, float addrspace(1)* %41, i64 %151
  %153 = load float, float addrspace(1)* %152, align 4, !tbaa !7
  %154 = fmul contract float %150, %153
  %155 = fadd contract float %144, %154
  %156 = or i32 %100, 5
  %157 = add i32 %156, %19
  %158 = mul i32 %156, %5
  %159 = add i32 %158, %13
  %160 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %157
  %161 = load float, float addrspace(3)* %160, align 4, !tbaa !7
  %162 = zext i32 %159 to i64
  %163 = getelementptr inbounds float, float addrspace(1)* %42, i64 %162
  %164 = load float, float addrspace(1)* %163, align 4, !tbaa !7
  %165 = fmul contract float %161, %164
  %166 = fadd contract float %155, %165
  %167 = or i32 %100, 6
  %168 = add i32 %167, %19
  %169 = mul i32 %167, %5
  %170 = add i32 %169, %13
  %171 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %168
  %172 = load float, float addrspace(3)* %171, align 4, !tbaa !7
  %173 = zext i32 %170 to i64
  %174 = getelementptr inbounds float, float addrspace(1)* %43, i64 %173
  %175 = load float, float addrspace(1)* %174, align 4, !tbaa !7
  %176 = fmul contract float %172, %175
  %177 = fadd contract float %166, %176
  %178 = or i32 %100, 7
  %179 = add i32 %178, %19
  %180 = mul i32 %178, %5
  %181 = add i32 %180, %13
  %182 = getelementptr inbounds [64 x float], [64 x float] addrspace(3)* @_ZZ9DCTKernelPfS_S_S_jjjE5inter, i32 0, i32 %179
  %183 = load float, float addrspace(3)* %182, align 4, !tbaa !7
  %184 = zext i32 %181 to i64
  %185 = getelementptr inbounds float, float addrspace(1)* %44, i64 %184
  %186 = load float, float addrspace(1)* %185, align 4, !tbaa !7
  %187 = fmul contract float %183, %186
  %188 = fadd contract float %177, %187
  %189 = add nuw i32 %100, 8
  %190 = add i32 %101, 8
  %191 = icmp eq i32 %190, %36
  br i1 %191, label %62, label %98, !llvm.loop !15
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

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
!4 = !{i16 1, i16 1025}
!5 = !{}
!6 = !{i32 0, i32 1024}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !12}
