; ModuleID = 'hip/nw/needle_kernel_hip.cu'
source_filename = "hip/nw/needle_kernel_hip.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

@_ZZ20needle_cuda_shared_1PiS_iiiiE4temp = internal unnamed_addr addrspace(3) global [17 x [17 x i32]] undef, align 16
@_ZZ20needle_cuda_shared_1PiS_iiiiE3ref = internal unnamed_addr addrspace(3) global [16 x [16 x i32]] undef, align 16
@_ZZ20needle_cuda_shared_2PiS_iiiiE4temp = internal unnamed_addr addrspace(3) global [17 x [17 x i32]] undef, align 16
@_ZZ20needle_cuda_shared_2PiS_iiiiE3ref = internal unnamed_addr addrspace(3) global [16 x [16 x i32]] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z20needle_cuda_shared_1PiS_iiii(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %9 = zext i32 %8 to i64
  %10 = xor i32 %7, -1
  %11 = add i32 %10, %4
  %12 = shl nsw i32 %2, 4
  %13 = mul nsw i32 %12, %11
  %14 = shl nsw i32 %7, 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, %8
  %17 = add i32 %16, 1
  %18 = add i32 %17, %2
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = sext i32 %15 to i64
  %22 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %21
  %23 = load i32, i32 addrspace(1)* %22, align 4, !tbaa !6, !amdgpu.noclobber !10
  store i32 %23, i32 addrspace(3)* getelementptr inbounds ([17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 0), align 16, !tbaa !6
  br label %24

24:                                               ; preds = %20, %6
  %25 = sext i32 %18 to i64
  %26 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %25
  %27 = load i32, i32 addrspace(1)* %26, align 4, !tbaa !6, !amdgpu.noclobber !10
  %28 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 0, i32 %8
  store i32 %27, i32 addrspace(3)* %28, align 4, !tbaa !6
  %29 = add nsw i32 %18, %2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %30
  %32 = load i32, i32 addrspace(1)* %31, align 4, !tbaa !6, !amdgpu.noclobber !10
  %33 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 1, i32 %8
  store i32 %32, i32 addrspace(3)* %33, align 4, !tbaa !6
  %34 = shl nsw i32 %2, 1
  %35 = add nsw i32 %34, %18
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %36
  %38 = load i32, i32 addrspace(1)* %37, align 4, !tbaa !6, !amdgpu.noclobber !10
  %39 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 2, i32 %8
  store i32 %38, i32 addrspace(3)* %39, align 4, !tbaa !6
  %40 = mul nsw i32 %2, 3
  %41 = add nsw i32 %40, %18
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %42
  %44 = load i32, i32 addrspace(1)* %43, align 4, !tbaa !6, !amdgpu.noclobber !10
  %45 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 3, i32 %8
  store i32 %44, i32 addrspace(3)* %45, align 4, !tbaa !6
  %46 = shl nsw i32 %2, 2
  %47 = add nsw i32 %46, %18
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %48
  %50 = load i32, i32 addrspace(1)* %49, align 4, !tbaa !6, !amdgpu.noclobber !10
  %51 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 4, i32 %8
  store i32 %50, i32 addrspace(3)* %51, align 4, !tbaa !6
  %52 = mul nsw i32 %2, 5
  %53 = add nsw i32 %52, %18
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %54
  %56 = load i32, i32 addrspace(1)* %55, align 4, !tbaa !6, !amdgpu.noclobber !10
  %57 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 5, i32 %8
  store i32 %56, i32 addrspace(3)* %57, align 4, !tbaa !6
  %58 = mul nsw i32 %2, 6
  %59 = add nsw i32 %58, %18
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %60
  %62 = load i32, i32 addrspace(1)* %61, align 4, !tbaa !6, !amdgpu.noclobber !10
  %63 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 6, i32 %8
  store i32 %62, i32 addrspace(3)* %63, align 4, !tbaa !6
  %64 = mul nsw i32 %2, 7
  %65 = add nsw i32 %64, %18
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %66
  %68 = load i32, i32 addrspace(1)* %67, align 4, !tbaa !6, !amdgpu.noclobber !10
  %69 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 7, i32 %8
  store i32 %68, i32 addrspace(3)* %69, align 4, !tbaa !6
  %70 = shl nsw i32 %2, 3
  %71 = add nsw i32 %70, %18
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %72
  %74 = load i32, i32 addrspace(1)* %73, align 4, !tbaa !6, !amdgpu.noclobber !10
  %75 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 8, i32 %8
  store i32 %74, i32 addrspace(3)* %75, align 4, !tbaa !6
  %76 = mul nsw i32 %2, 9
  %77 = add nsw i32 %76, %18
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %78
  %80 = load i32, i32 addrspace(1)* %79, align 4, !tbaa !6, !amdgpu.noclobber !10
  %81 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 9, i32 %8
  store i32 %80, i32 addrspace(3)* %81, align 4, !tbaa !6
  %82 = mul nsw i32 %2, 10
  %83 = add nsw i32 %82, %18
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %84
  %86 = load i32, i32 addrspace(1)* %85, align 4, !tbaa !6, !amdgpu.noclobber !10
  %87 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 10, i32 %8
  store i32 %86, i32 addrspace(3)* %87, align 4, !tbaa !6
  %88 = mul nsw i32 %2, 11
  %89 = add nsw i32 %88, %18
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %90
  %92 = load i32, i32 addrspace(1)* %91, align 4, !tbaa !6, !amdgpu.noclobber !10
  %93 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 11, i32 %8
  store i32 %92, i32 addrspace(3)* %93, align 4, !tbaa !6
  %94 = mul nsw i32 %2, 12
  %95 = add nsw i32 %94, %18
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %96
  %98 = load i32, i32 addrspace(1)* %97, align 4, !tbaa !6, !amdgpu.noclobber !10
  %99 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 12, i32 %8
  store i32 %98, i32 addrspace(3)* %99, align 4, !tbaa !6
  %100 = mul nsw i32 %2, 13
  %101 = add nsw i32 %100, %18
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %102
  %104 = load i32, i32 addrspace(1)* %103, align 4, !tbaa !6, !amdgpu.noclobber !10
  %105 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 13, i32 %8
  store i32 %104, i32 addrspace(3)* %105, align 4, !tbaa !6
  %106 = mul nsw i32 %2, 14
  %107 = add nsw i32 %106, %18
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %108
  %110 = load i32, i32 addrspace(1)* %109, align 4, !tbaa !6, !amdgpu.noclobber !10
  %111 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 14, i32 %8
  store i32 %110, i32 addrspace(3)* %111, align 4, !tbaa !6
  %112 = mul nsw i32 %2, 15
  %113 = add nsw i32 %112, %18
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %114
  %116 = load i32, i32 addrspace(1)* %115, align 4, !tbaa !6, !amdgpu.noclobber !10
  %117 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 15, i32 %8
  store i32 %116, i32 addrspace(3)* %117, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %118 = mul nsw i32 %8, %2
  %119 = add i32 %118, %2
  %120 = add i32 %119, %15
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %121
  %123 = load i32, i32 addrspace(1)* %122, align 4, !tbaa !6, !amdgpu.noclobber !10
  %124 = add nuw nsw i32 %8, 1
  %125 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %124, i32 0
  store i32 %123, i32 addrspace(3)* %125, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %126 = sext i32 %17 to i64
  %127 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %126
  %128 = load i32, i32 addrspace(1)* %127, align 4, !tbaa !6, !amdgpu.noclobber !10
  %129 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 %124
  store i32 %128, i32 addrspace(3)* %129, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %130 = icmp eq i32 %8, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %24
  %132 = sub nuw nsw i32 1, %8
  %133 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 %8
  %134 = load i32, i32 addrspace(3)* %133, align 4, !tbaa !6
  %135 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 0, i32 %8
  %136 = load i32, i32 addrspace(3)* %135, align 4, !tbaa !6
  %137 = add nsw i32 %136, %134
  %138 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %132, i32 %8
  %139 = load i32, i32 addrspace(3)* %138, align 4, !tbaa !6
  %140 = sub nsw i32 %139, %3
  %141 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 %124
  %142 = load i32, i32 addrspace(3)* %141, align 4, !tbaa !6
  %143 = sub nsw i32 %142, %3
  %144 = tail call i32 @llvm.smax.i32(i32 %137, i32 %140)
  %145 = tail call i32 @llvm.smax.i32(i32 %144, i32 %143)
  %146 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %132, i32 %124
  store i32 %145, i32 addrspace(3)* %146, align 4, !tbaa !6
  br label %147

147:                                              ; preds = %131, %24
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %148 = icmp ugt i32 %8, 1
  br i1 %148, label %166, label %149

149:                                              ; preds = %147
  %150 = sub nuw nsw i32 1, %8
  %151 = sub nuw nsw i32 2, %8
  %152 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %150, i32 %8
  %153 = load i32, i32 addrspace(3)* %152, align 4, !tbaa !6
  %154 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %150, i32 %8
  %155 = load i32, i32 addrspace(3)* %154, align 4, !tbaa !6
  %156 = add nsw i32 %155, %153
  %157 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %151, i32 %8
  %158 = load i32, i32 addrspace(3)* %157, align 4, !tbaa !6
  %159 = sub nsw i32 %158, %3
  %160 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %150, i32 %124
  %161 = load i32, i32 addrspace(3)* %160, align 4, !tbaa !6
  %162 = sub nsw i32 %161, %3
  %163 = tail call i32 @llvm.smax.i32(i32 %156, i32 %159)
  %164 = tail call i32 @llvm.smax.i32(i32 %163, i32 %162)
  %165 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %151, i32 %124
  store i32 %164, i32 addrspace(3)* %165, align 4, !tbaa !6
  br label %166

166:                                              ; preds = %149, %147
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %167 = icmp ugt i32 %8, 2
  br i1 %167, label %185, label %168

168:                                              ; preds = %166
  %169 = sub nuw nsw i32 2, %8
  %170 = sub nuw nsw i32 3, %8
  %171 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %169, i32 %8
  %172 = load i32, i32 addrspace(3)* %171, align 4, !tbaa !6
  %173 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %169, i32 %8
  %174 = load i32, i32 addrspace(3)* %173, align 4, !tbaa !6
  %175 = add nsw i32 %174, %172
  %176 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %170, i32 %8
  %177 = load i32, i32 addrspace(3)* %176, align 4, !tbaa !6
  %178 = sub nsw i32 %177, %3
  %179 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %169, i32 %124
  %180 = load i32, i32 addrspace(3)* %179, align 4, !tbaa !6
  %181 = sub nsw i32 %180, %3
  %182 = tail call i32 @llvm.smax.i32(i32 %175, i32 %178)
  %183 = tail call i32 @llvm.smax.i32(i32 %182, i32 %181)
  %184 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %170, i32 %124
  store i32 %183, i32 addrspace(3)* %184, align 4, !tbaa !6
  br label %185

185:                                              ; preds = %168, %166
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %186 = icmp ugt i32 %8, 3
  br i1 %186, label %204, label %187

187:                                              ; preds = %185
  %188 = sub nuw nsw i32 3, %8
  %189 = sub nuw nsw i32 4, %8
  %190 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %188, i32 %8
  %191 = load i32, i32 addrspace(3)* %190, align 4, !tbaa !6
  %192 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %188, i32 %8
  %193 = load i32, i32 addrspace(3)* %192, align 4, !tbaa !6
  %194 = add nsw i32 %193, %191
  %195 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %189, i32 %8
  %196 = load i32, i32 addrspace(3)* %195, align 4, !tbaa !6
  %197 = sub nsw i32 %196, %3
  %198 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %188, i32 %124
  %199 = load i32, i32 addrspace(3)* %198, align 4, !tbaa !6
  %200 = sub nsw i32 %199, %3
  %201 = tail call i32 @llvm.smax.i32(i32 %194, i32 %197)
  %202 = tail call i32 @llvm.smax.i32(i32 %201, i32 %200)
  %203 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %189, i32 %124
  store i32 %202, i32 addrspace(3)* %203, align 4, !tbaa !6
  br label %204

204:                                              ; preds = %187, %185
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %205 = icmp ugt i32 %8, 4
  br i1 %205, label %223, label %206

206:                                              ; preds = %204
  %207 = sub nuw nsw i32 4, %8
  %208 = sub nuw nsw i32 5, %8
  %209 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %207, i32 %8
  %210 = load i32, i32 addrspace(3)* %209, align 4, !tbaa !6
  %211 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %207, i32 %8
  %212 = load i32, i32 addrspace(3)* %211, align 4, !tbaa !6
  %213 = add nsw i32 %212, %210
  %214 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %208, i32 %8
  %215 = load i32, i32 addrspace(3)* %214, align 4, !tbaa !6
  %216 = sub nsw i32 %215, %3
  %217 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %207, i32 %124
  %218 = load i32, i32 addrspace(3)* %217, align 4, !tbaa !6
  %219 = sub nsw i32 %218, %3
  %220 = tail call i32 @llvm.smax.i32(i32 %213, i32 %216)
  %221 = tail call i32 @llvm.smax.i32(i32 %220, i32 %219)
  %222 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %208, i32 %124
  store i32 %221, i32 addrspace(3)* %222, align 4, !tbaa !6
  br label %223

223:                                              ; preds = %206, %204
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %224 = icmp ugt i32 %8, 5
  br i1 %224, label %242, label %225

225:                                              ; preds = %223
  %226 = sub nuw nsw i32 5, %8
  %227 = sub nuw nsw i32 6, %8
  %228 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %226, i32 %8
  %229 = load i32, i32 addrspace(3)* %228, align 4, !tbaa !6
  %230 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %226, i32 %8
  %231 = load i32, i32 addrspace(3)* %230, align 4, !tbaa !6
  %232 = add nsw i32 %231, %229
  %233 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %227, i32 %8
  %234 = load i32, i32 addrspace(3)* %233, align 4, !tbaa !6
  %235 = sub nsw i32 %234, %3
  %236 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %226, i32 %124
  %237 = load i32, i32 addrspace(3)* %236, align 4, !tbaa !6
  %238 = sub nsw i32 %237, %3
  %239 = tail call i32 @llvm.smax.i32(i32 %232, i32 %235)
  %240 = tail call i32 @llvm.smax.i32(i32 %239, i32 %238)
  %241 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %227, i32 %124
  store i32 %240, i32 addrspace(3)* %241, align 4, !tbaa !6
  br label %242

242:                                              ; preds = %225, %223
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %243 = icmp ugt i32 %8, 6
  br i1 %243, label %261, label %244

244:                                              ; preds = %242
  %245 = sub nuw nsw i32 6, %8
  %246 = sub nuw nsw i32 7, %8
  %247 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %245, i32 %8
  %248 = load i32, i32 addrspace(3)* %247, align 4, !tbaa !6
  %249 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %245, i32 %8
  %250 = load i32, i32 addrspace(3)* %249, align 4, !tbaa !6
  %251 = add nsw i32 %250, %248
  %252 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %246, i32 %8
  %253 = load i32, i32 addrspace(3)* %252, align 4, !tbaa !6
  %254 = sub nsw i32 %253, %3
  %255 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %245, i32 %124
  %256 = load i32, i32 addrspace(3)* %255, align 4, !tbaa !6
  %257 = sub nsw i32 %256, %3
  %258 = tail call i32 @llvm.smax.i32(i32 %251, i32 %254)
  %259 = tail call i32 @llvm.smax.i32(i32 %258, i32 %257)
  %260 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %246, i32 %124
  store i32 %259, i32 addrspace(3)* %260, align 4, !tbaa !6
  br label %261

261:                                              ; preds = %244, %242
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %262 = icmp ugt i32 %8, 7
  br i1 %262, label %280, label %263

263:                                              ; preds = %261
  %264 = sub nuw nsw i32 7, %8
  %265 = sub nuw nsw i32 8, %8
  %266 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %264, i32 %8
  %267 = load i32, i32 addrspace(3)* %266, align 4, !tbaa !6
  %268 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %264, i32 %8
  %269 = load i32, i32 addrspace(3)* %268, align 4, !tbaa !6
  %270 = add nsw i32 %269, %267
  %271 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %265, i32 %8
  %272 = load i32, i32 addrspace(3)* %271, align 4, !tbaa !6
  %273 = sub nsw i32 %272, %3
  %274 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %264, i32 %124
  %275 = load i32, i32 addrspace(3)* %274, align 4, !tbaa !6
  %276 = sub nsw i32 %275, %3
  %277 = tail call i32 @llvm.smax.i32(i32 %270, i32 %273)
  %278 = tail call i32 @llvm.smax.i32(i32 %277, i32 %276)
  %279 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %265, i32 %124
  store i32 %278, i32 addrspace(3)* %279, align 4, !tbaa !6
  br label %280

280:                                              ; preds = %263, %261
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %281 = icmp ugt i32 %8, 8
  br i1 %281, label %299, label %282

282:                                              ; preds = %280
  %283 = sub nuw nsw i32 8, %8
  %284 = sub nuw nsw i32 9, %8
  %285 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %283, i32 %8
  %286 = load i32, i32 addrspace(3)* %285, align 4, !tbaa !6
  %287 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %283, i32 %8
  %288 = load i32, i32 addrspace(3)* %287, align 4, !tbaa !6
  %289 = add nsw i32 %288, %286
  %290 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %284, i32 %8
  %291 = load i32, i32 addrspace(3)* %290, align 4, !tbaa !6
  %292 = sub nsw i32 %291, %3
  %293 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %283, i32 %124
  %294 = load i32, i32 addrspace(3)* %293, align 4, !tbaa !6
  %295 = sub nsw i32 %294, %3
  %296 = tail call i32 @llvm.smax.i32(i32 %289, i32 %292)
  %297 = tail call i32 @llvm.smax.i32(i32 %296, i32 %295)
  %298 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %284, i32 %124
  store i32 %297, i32 addrspace(3)* %298, align 4, !tbaa !6
  br label %299

299:                                              ; preds = %282, %280
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %300 = icmp ugt i32 %8, 9
  br i1 %300, label %318, label %301

301:                                              ; preds = %299
  %302 = sub nuw nsw i32 9, %8
  %303 = sub nuw nsw i32 10, %8
  %304 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %302, i32 %8
  %305 = load i32, i32 addrspace(3)* %304, align 4, !tbaa !6
  %306 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %302, i32 %8
  %307 = load i32, i32 addrspace(3)* %306, align 4, !tbaa !6
  %308 = add nsw i32 %307, %305
  %309 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %303, i32 %8
  %310 = load i32, i32 addrspace(3)* %309, align 4, !tbaa !6
  %311 = sub nsw i32 %310, %3
  %312 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %302, i32 %124
  %313 = load i32, i32 addrspace(3)* %312, align 4, !tbaa !6
  %314 = sub nsw i32 %313, %3
  %315 = tail call i32 @llvm.smax.i32(i32 %308, i32 %311)
  %316 = tail call i32 @llvm.smax.i32(i32 %315, i32 %314)
  %317 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %303, i32 %124
  store i32 %316, i32 addrspace(3)* %317, align 4, !tbaa !6
  br label %318

318:                                              ; preds = %301, %299
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %319 = icmp ugt i32 %8, 10
  br i1 %319, label %337, label %320

320:                                              ; preds = %318
  %321 = sub nuw nsw i32 10, %8
  %322 = sub nuw nsw i32 11, %8
  %323 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %321, i32 %8
  %324 = load i32, i32 addrspace(3)* %323, align 4, !tbaa !6
  %325 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %321, i32 %8
  %326 = load i32, i32 addrspace(3)* %325, align 4, !tbaa !6
  %327 = add nsw i32 %326, %324
  %328 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %322, i32 %8
  %329 = load i32, i32 addrspace(3)* %328, align 4, !tbaa !6
  %330 = sub nsw i32 %329, %3
  %331 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %321, i32 %124
  %332 = load i32, i32 addrspace(3)* %331, align 4, !tbaa !6
  %333 = sub nsw i32 %332, %3
  %334 = tail call i32 @llvm.smax.i32(i32 %327, i32 %330)
  %335 = tail call i32 @llvm.smax.i32(i32 %334, i32 %333)
  %336 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %322, i32 %124
  store i32 %335, i32 addrspace(3)* %336, align 4, !tbaa !6
  br label %337

337:                                              ; preds = %320, %318
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %338 = icmp ugt i32 %8, 11
  br i1 %338, label %356, label %339

339:                                              ; preds = %337
  %340 = sub nuw nsw i32 11, %8
  %341 = sub nuw nsw i32 12, %8
  %342 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %340, i32 %8
  %343 = load i32, i32 addrspace(3)* %342, align 4, !tbaa !6
  %344 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %340, i32 %8
  %345 = load i32, i32 addrspace(3)* %344, align 4, !tbaa !6
  %346 = add nsw i32 %345, %343
  %347 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %341, i32 %8
  %348 = load i32, i32 addrspace(3)* %347, align 4, !tbaa !6
  %349 = sub nsw i32 %348, %3
  %350 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %340, i32 %124
  %351 = load i32, i32 addrspace(3)* %350, align 4, !tbaa !6
  %352 = sub nsw i32 %351, %3
  %353 = tail call i32 @llvm.smax.i32(i32 %346, i32 %349)
  %354 = tail call i32 @llvm.smax.i32(i32 %353, i32 %352)
  %355 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %341, i32 %124
  store i32 %354, i32 addrspace(3)* %355, align 4, !tbaa !6
  br label %356

356:                                              ; preds = %339, %337
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %357 = icmp ugt i32 %8, 12
  br i1 %357, label %375, label %358

358:                                              ; preds = %356
  %359 = sub nuw nsw i32 12, %8
  %360 = sub nuw nsw i32 13, %8
  %361 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %359, i32 %8
  %362 = load i32, i32 addrspace(3)* %361, align 4, !tbaa !6
  %363 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %359, i32 %8
  %364 = load i32, i32 addrspace(3)* %363, align 4, !tbaa !6
  %365 = add nsw i32 %364, %362
  %366 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %360, i32 %8
  %367 = load i32, i32 addrspace(3)* %366, align 4, !tbaa !6
  %368 = sub nsw i32 %367, %3
  %369 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %359, i32 %124
  %370 = load i32, i32 addrspace(3)* %369, align 4, !tbaa !6
  %371 = sub nsw i32 %370, %3
  %372 = tail call i32 @llvm.smax.i32(i32 %365, i32 %368)
  %373 = tail call i32 @llvm.smax.i32(i32 %372, i32 %371)
  %374 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %360, i32 %124
  store i32 %373, i32 addrspace(3)* %374, align 4, !tbaa !6
  br label %375

375:                                              ; preds = %358, %356
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %376 = icmp ugt i32 %8, 13
  br i1 %376, label %394, label %377

377:                                              ; preds = %375
  %378 = sub nuw nsw i32 13, %8
  %379 = sub nuw nsw i32 14, %8
  %380 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %378, i32 %8
  %381 = load i32, i32 addrspace(3)* %380, align 4, !tbaa !6
  %382 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %378, i32 %8
  %383 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !6
  %384 = add nsw i32 %383, %381
  %385 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %379, i32 %8
  %386 = load i32, i32 addrspace(3)* %385, align 4, !tbaa !6
  %387 = sub nsw i32 %386, %3
  %388 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %378, i32 %124
  %389 = load i32, i32 addrspace(3)* %388, align 4, !tbaa !6
  %390 = sub nsw i32 %389, %3
  %391 = tail call i32 @llvm.smax.i32(i32 %384, i32 %387)
  %392 = tail call i32 @llvm.smax.i32(i32 %391, i32 %390)
  %393 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %379, i32 %124
  store i32 %392, i32 addrspace(3)* %393, align 4, !tbaa !6
  br label %394

394:                                              ; preds = %377, %375
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %395 = icmp ugt i32 %8, 14
  br i1 %395, label %413, label %396

396:                                              ; preds = %394
  %397 = sub nuw nsw i32 14, %8
  %398 = sub nuw nsw i32 15, %8
  %399 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %397, i32 %8
  %400 = load i32, i32 addrspace(3)* %399, align 4, !tbaa !6
  %401 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %397, i32 %8
  %402 = load i32, i32 addrspace(3)* %401, align 4, !tbaa !6
  %403 = add nsw i32 %402, %400
  %404 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %398, i32 %8
  %405 = load i32, i32 addrspace(3)* %404, align 4, !tbaa !6
  %406 = sub nsw i32 %405, %3
  %407 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %397, i32 %124
  %408 = load i32, i32 addrspace(3)* %407, align 4, !tbaa !6
  %409 = sub nsw i32 %408, %3
  %410 = tail call i32 @llvm.smax.i32(i32 %403, i32 %406)
  %411 = tail call i32 @llvm.smax.i32(i32 %410, i32 %409)
  %412 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %398, i32 %124
  store i32 %411, i32 addrspace(3)* %412, align 4, !tbaa !6
  br label %413

413:                                              ; preds = %396, %394
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %414 = icmp ugt i32 %8, 15
  br i1 %414, label %432, label %415

415:                                              ; preds = %413
  %416 = sub nuw nsw i32 15, %8
  %417 = sub nuw nsw i32 16, %8
  %418 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %416, i32 %8
  %419 = load i32, i32 addrspace(3)* %418, align 4, !tbaa !6
  %420 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %416, i32 %8
  %421 = load i32, i32 addrspace(3)* %420, align 4, !tbaa !6
  %422 = add nsw i32 %421, %419
  %423 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %417, i32 %8
  %424 = load i32, i32 addrspace(3)* %423, align 4, !tbaa !6
  %425 = sub nsw i32 %424, %3
  %426 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %416, i32 %124
  %427 = load i32, i32 addrspace(3)* %426, align 4, !tbaa !6
  %428 = sub nsw i32 %427, %3
  %429 = tail call i32 @llvm.smax.i32(i32 %422, i32 %425)
  %430 = tail call i32 @llvm.smax.i32(i32 %429, i32 %428)
  %431 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %417, i32 %124
  store i32 %430, i32 addrspace(3)* %431, align 4, !tbaa !6
  br label %432

432:                                              ; preds = %415, %413
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %433 = add nuw nsw i32 %8, 16
  %434 = mul nsw i64 %9, -4294967296
  %435 = add nsw i64 %434, 64424509440
  %436 = ashr exact i64 %435, 32
  %437 = trunc i64 %436 to i32
  %438 = add nsw i64 %434, 68719476736
  %439 = lshr exact i64 %438, 32
  %440 = trunc i64 %439 to i32
  br i1 %395, label %458, label %441

441:                                              ; preds = %432
  %442 = add nuw nsw i32 %8, 2
  %443 = add nuw nsw i32 %8, 1
  %444 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %443
  %445 = load i32, i32 addrspace(3)* %444, align 4, !tbaa !6
  %446 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %443
  %447 = load i32, i32 addrspace(3)* %446, align 4, !tbaa !6
  %448 = add nsw i32 %447, %445
  %449 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %443
  %450 = load i32, i32 addrspace(3)* %449, align 4, !tbaa !6
  %451 = sub nsw i32 %450, %3
  %452 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %442
  %453 = load i32, i32 addrspace(3)* %452, align 4, !tbaa !6
  %454 = sub nsw i32 %453, %3
  %455 = tail call i32 @llvm.smax.i32(i32 %448, i32 %451)
  %456 = tail call i32 @llvm.smax.i32(i32 %455, i32 %454)
  %457 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %442
  store i32 %456, i32 addrspace(3)* %457, align 4, !tbaa !6
  br label %458

458:                                              ; preds = %441, %432
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %376, label %476, label %459

459:                                              ; preds = %458
  %460 = add nuw nsw i32 %8, 3
  %461 = add nuw nsw i32 %8, 2
  %462 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %461
  %463 = load i32, i32 addrspace(3)* %462, align 4, !tbaa !6
  %464 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %461
  %465 = load i32, i32 addrspace(3)* %464, align 4, !tbaa !6
  %466 = add nsw i32 %465, %463
  %467 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %461
  %468 = load i32, i32 addrspace(3)* %467, align 4, !tbaa !6
  %469 = sub nsw i32 %468, %3
  %470 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %460
  %471 = load i32, i32 addrspace(3)* %470, align 4, !tbaa !6
  %472 = sub nsw i32 %471, %3
  %473 = tail call i32 @llvm.smax.i32(i32 %466, i32 %469)
  %474 = tail call i32 @llvm.smax.i32(i32 %473, i32 %472)
  %475 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %460
  store i32 %474, i32 addrspace(3)* %475, align 4, !tbaa !6
  br label %476

476:                                              ; preds = %459, %458
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %357, label %494, label %477

477:                                              ; preds = %476
  %478 = add nuw nsw i32 %8, 4
  %479 = add nuw nsw i32 %8, 3
  %480 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %479
  %481 = load i32, i32 addrspace(3)* %480, align 4, !tbaa !6
  %482 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %479
  %483 = load i32, i32 addrspace(3)* %482, align 4, !tbaa !6
  %484 = add nsw i32 %483, %481
  %485 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %479
  %486 = load i32, i32 addrspace(3)* %485, align 4, !tbaa !6
  %487 = sub nsw i32 %486, %3
  %488 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %478
  %489 = load i32, i32 addrspace(3)* %488, align 4, !tbaa !6
  %490 = sub nsw i32 %489, %3
  %491 = tail call i32 @llvm.smax.i32(i32 %484, i32 %487)
  %492 = tail call i32 @llvm.smax.i32(i32 %491, i32 %490)
  %493 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %478
  store i32 %492, i32 addrspace(3)* %493, align 4, !tbaa !6
  br label %494

494:                                              ; preds = %477, %476
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %338, label %512, label %495

495:                                              ; preds = %494
  %496 = add nuw nsw i32 %8, 5
  %497 = add nuw nsw i32 %8, 4
  %498 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %497
  %499 = load i32, i32 addrspace(3)* %498, align 4, !tbaa !6
  %500 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %497
  %501 = load i32, i32 addrspace(3)* %500, align 4, !tbaa !6
  %502 = add nsw i32 %501, %499
  %503 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %497
  %504 = load i32, i32 addrspace(3)* %503, align 4, !tbaa !6
  %505 = sub nsw i32 %504, %3
  %506 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %496
  %507 = load i32, i32 addrspace(3)* %506, align 4, !tbaa !6
  %508 = sub nsw i32 %507, %3
  %509 = tail call i32 @llvm.smax.i32(i32 %502, i32 %505)
  %510 = tail call i32 @llvm.smax.i32(i32 %509, i32 %508)
  %511 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %496
  store i32 %510, i32 addrspace(3)* %511, align 4, !tbaa !6
  br label %512

512:                                              ; preds = %495, %494
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %319, label %530, label %513

513:                                              ; preds = %512
  %514 = add nuw nsw i32 %8, 6
  %515 = add nuw nsw i32 %8, 5
  %516 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %515
  %517 = load i32, i32 addrspace(3)* %516, align 4, !tbaa !6
  %518 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %515
  %519 = load i32, i32 addrspace(3)* %518, align 4, !tbaa !6
  %520 = add nsw i32 %519, %517
  %521 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %515
  %522 = load i32, i32 addrspace(3)* %521, align 4, !tbaa !6
  %523 = sub nsw i32 %522, %3
  %524 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %514
  %525 = load i32, i32 addrspace(3)* %524, align 4, !tbaa !6
  %526 = sub nsw i32 %525, %3
  %527 = tail call i32 @llvm.smax.i32(i32 %520, i32 %523)
  %528 = tail call i32 @llvm.smax.i32(i32 %527, i32 %526)
  %529 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %514
  store i32 %528, i32 addrspace(3)* %529, align 4, !tbaa !6
  br label %530

530:                                              ; preds = %513, %512
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %300, label %548, label %531

531:                                              ; preds = %530
  %532 = add nuw nsw i32 %8, 7
  %533 = add nuw nsw i32 %8, 6
  %534 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %533
  %535 = load i32, i32 addrspace(3)* %534, align 4, !tbaa !6
  %536 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %533
  %537 = load i32, i32 addrspace(3)* %536, align 4, !tbaa !6
  %538 = add nsw i32 %537, %535
  %539 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %533
  %540 = load i32, i32 addrspace(3)* %539, align 4, !tbaa !6
  %541 = sub nsw i32 %540, %3
  %542 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %532
  %543 = load i32, i32 addrspace(3)* %542, align 4, !tbaa !6
  %544 = sub nsw i32 %543, %3
  %545 = tail call i32 @llvm.smax.i32(i32 %538, i32 %541)
  %546 = tail call i32 @llvm.smax.i32(i32 %545, i32 %544)
  %547 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %532
  store i32 %546, i32 addrspace(3)* %547, align 4, !tbaa !6
  br label %548

548:                                              ; preds = %531, %530
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %281, label %566, label %549

549:                                              ; preds = %548
  %550 = add nuw nsw i32 %8, 8
  %551 = add nuw nsw i32 %8, 7
  %552 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %551
  %553 = load i32, i32 addrspace(3)* %552, align 4, !tbaa !6
  %554 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %551
  %555 = load i32, i32 addrspace(3)* %554, align 4, !tbaa !6
  %556 = add nsw i32 %555, %553
  %557 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %551
  %558 = load i32, i32 addrspace(3)* %557, align 4, !tbaa !6
  %559 = sub nsw i32 %558, %3
  %560 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %550
  %561 = load i32, i32 addrspace(3)* %560, align 4, !tbaa !6
  %562 = sub nsw i32 %561, %3
  %563 = tail call i32 @llvm.smax.i32(i32 %556, i32 %559)
  %564 = tail call i32 @llvm.smax.i32(i32 %563, i32 %562)
  %565 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %550
  store i32 %564, i32 addrspace(3)* %565, align 4, !tbaa !6
  br label %566

566:                                              ; preds = %549, %548
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %262, label %584, label %567

567:                                              ; preds = %566
  %568 = add nuw nsw i32 %8, 9
  %569 = add nuw nsw i32 %8, 8
  %570 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %569
  %571 = load i32, i32 addrspace(3)* %570, align 4, !tbaa !6
  %572 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %569
  %573 = load i32, i32 addrspace(3)* %572, align 4, !tbaa !6
  %574 = add nsw i32 %573, %571
  %575 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %569
  %576 = load i32, i32 addrspace(3)* %575, align 4, !tbaa !6
  %577 = sub nsw i32 %576, %3
  %578 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %568
  %579 = load i32, i32 addrspace(3)* %578, align 4, !tbaa !6
  %580 = sub nsw i32 %579, %3
  %581 = tail call i32 @llvm.smax.i32(i32 %574, i32 %577)
  %582 = tail call i32 @llvm.smax.i32(i32 %581, i32 %580)
  %583 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %568
  store i32 %582, i32 addrspace(3)* %583, align 4, !tbaa !6
  br label %584

584:                                              ; preds = %567, %566
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %243, label %602, label %585

585:                                              ; preds = %584
  %586 = add nuw nsw i32 %8, 10
  %587 = add nuw nsw i32 %8, 9
  %588 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %587
  %589 = load i32, i32 addrspace(3)* %588, align 4, !tbaa !6
  %590 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %587
  %591 = load i32, i32 addrspace(3)* %590, align 4, !tbaa !6
  %592 = add nsw i32 %591, %589
  %593 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %587
  %594 = load i32, i32 addrspace(3)* %593, align 4, !tbaa !6
  %595 = sub nsw i32 %594, %3
  %596 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %586
  %597 = load i32, i32 addrspace(3)* %596, align 4, !tbaa !6
  %598 = sub nsw i32 %597, %3
  %599 = tail call i32 @llvm.smax.i32(i32 %592, i32 %595)
  %600 = tail call i32 @llvm.smax.i32(i32 %599, i32 %598)
  %601 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %586
  store i32 %600, i32 addrspace(3)* %601, align 4, !tbaa !6
  br label %602

602:                                              ; preds = %585, %584
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %224, label %620, label %603

603:                                              ; preds = %602
  %604 = add nuw nsw i32 %8, 11
  %605 = add nuw nsw i32 %8, 10
  %606 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %605
  %607 = load i32, i32 addrspace(3)* %606, align 4, !tbaa !6
  %608 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %605
  %609 = load i32, i32 addrspace(3)* %608, align 4, !tbaa !6
  %610 = add nsw i32 %609, %607
  %611 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %605
  %612 = load i32, i32 addrspace(3)* %611, align 4, !tbaa !6
  %613 = sub nsw i32 %612, %3
  %614 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %604
  %615 = load i32, i32 addrspace(3)* %614, align 4, !tbaa !6
  %616 = sub nsw i32 %615, %3
  %617 = tail call i32 @llvm.smax.i32(i32 %610, i32 %613)
  %618 = tail call i32 @llvm.smax.i32(i32 %617, i32 %616)
  %619 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %604
  store i32 %618, i32 addrspace(3)* %619, align 4, !tbaa !6
  br label %620

620:                                              ; preds = %603, %602
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %205, label %638, label %621

621:                                              ; preds = %620
  %622 = add nuw nsw i32 %8, 12
  %623 = add nuw nsw i32 %8, 11
  %624 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %623
  %625 = load i32, i32 addrspace(3)* %624, align 4, !tbaa !6
  %626 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %623
  %627 = load i32, i32 addrspace(3)* %626, align 4, !tbaa !6
  %628 = add nsw i32 %627, %625
  %629 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %623
  %630 = load i32, i32 addrspace(3)* %629, align 4, !tbaa !6
  %631 = sub nsw i32 %630, %3
  %632 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %622
  %633 = load i32, i32 addrspace(3)* %632, align 4, !tbaa !6
  %634 = sub nsw i32 %633, %3
  %635 = tail call i32 @llvm.smax.i32(i32 %628, i32 %631)
  %636 = tail call i32 @llvm.smax.i32(i32 %635, i32 %634)
  %637 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %622
  store i32 %636, i32 addrspace(3)* %637, align 4, !tbaa !6
  br label %638

638:                                              ; preds = %621, %620
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %186, label %656, label %639

639:                                              ; preds = %638
  %640 = add nuw nsw i32 %8, 13
  %641 = add nuw nsw i32 %8, 12
  %642 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %641
  %643 = load i32, i32 addrspace(3)* %642, align 4, !tbaa !6
  %644 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %641
  %645 = load i32, i32 addrspace(3)* %644, align 4, !tbaa !6
  %646 = add nsw i32 %645, %643
  %647 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %641
  %648 = load i32, i32 addrspace(3)* %647, align 4, !tbaa !6
  %649 = sub nsw i32 %648, %3
  %650 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %640
  %651 = load i32, i32 addrspace(3)* %650, align 4, !tbaa !6
  %652 = sub nsw i32 %651, %3
  %653 = tail call i32 @llvm.smax.i32(i32 %646, i32 %649)
  %654 = tail call i32 @llvm.smax.i32(i32 %653, i32 %652)
  %655 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %640
  store i32 %654, i32 addrspace(3)* %655, align 4, !tbaa !6
  br label %656

656:                                              ; preds = %639, %638
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %167, label %674, label %657

657:                                              ; preds = %656
  %658 = add nuw nsw i32 %8, 14
  %659 = add nuw nsw i32 %8, 13
  %660 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %659
  %661 = load i32, i32 addrspace(3)* %660, align 4, !tbaa !6
  %662 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %659
  %663 = load i32, i32 addrspace(3)* %662, align 4, !tbaa !6
  %664 = add nsw i32 %663, %661
  %665 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %659
  %666 = load i32, i32 addrspace(3)* %665, align 4, !tbaa !6
  %667 = sub nsw i32 %666, %3
  %668 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %658
  %669 = load i32, i32 addrspace(3)* %668, align 4, !tbaa !6
  %670 = sub nsw i32 %669, %3
  %671 = tail call i32 @llvm.smax.i32(i32 %664, i32 %667)
  %672 = tail call i32 @llvm.smax.i32(i32 %671, i32 %670)
  %673 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %658
  store i32 %672, i32 addrspace(3)* %673, align 4, !tbaa !6
  br label %674

674:                                              ; preds = %657, %656
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %148, label %692, label %675

675:                                              ; preds = %674
  %676 = add nuw nsw i32 %8, 15
  %677 = add nuw nsw i32 %8, 14
  %678 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %677
  %679 = load i32, i32 addrspace(3)* %678, align 4, !tbaa !6
  %680 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %677
  %681 = load i32, i32 addrspace(3)* %680, align 4, !tbaa !6
  %682 = add nsw i32 %681, %679
  %683 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %677
  %684 = load i32, i32 addrspace(3)* %683, align 4, !tbaa !6
  %685 = sub nsw i32 %684, %3
  %686 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %676
  %687 = load i32, i32 addrspace(3)* %686, align 4, !tbaa !6
  %688 = sub nsw i32 %687, %3
  %689 = tail call i32 @llvm.smax.i32(i32 %682, i32 %685)
  %690 = tail call i32 @llvm.smax.i32(i32 %689, i32 %688)
  %691 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %676
  store i32 %690, i32 addrspace(3)* %691, align 4, !tbaa !6
  br label %692

692:                                              ; preds = %675, %674
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %130, label %693, label %709

693:                                              ; preds = %692
  %694 = add nuw nsw i32 %8, 15
  %695 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %694
  %696 = load i32, i32 addrspace(3)* %695, align 4, !tbaa !6
  %697 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %437, i32 %694
  %698 = load i32, i32 addrspace(3)* %697, align 4, !tbaa !6
  %699 = add nsw i32 %698, %696
  %700 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %694
  %701 = load i32, i32 addrspace(3)* %700, align 4, !tbaa !6
  %702 = sub nsw i32 %701, %3
  %703 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %437, i32 %433
  %704 = load i32, i32 addrspace(3)* %703, align 4, !tbaa !6
  %705 = sub nsw i32 %704, %3
  %706 = tail call i32 @llvm.smax.i32(i32 %699, i32 %702)
  %707 = tail call i32 @llvm.smax.i32(i32 %706, i32 %705)
  %708 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %440, i32 %433
  store i32 %707, i32 addrspace(3)* %708, align 4, !tbaa !6
  br label %709

709:                                              ; preds = %693, %692
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %710 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 1, i32 %124
  %711 = load i32, i32 addrspace(3)* %710, align 4, !tbaa !6
  %712 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %25
  store i32 %711, i32 addrspace(1)* %712, align 4, !tbaa !6
  %713 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 2, i32 %124
  %714 = load i32, i32 addrspace(3)* %713, align 4, !tbaa !6
  %715 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %30
  store i32 %714, i32 addrspace(1)* %715, align 4, !tbaa !6
  %716 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 3, i32 %124
  %717 = load i32, i32 addrspace(3)* %716, align 4, !tbaa !6
  %718 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %36
  store i32 %717, i32 addrspace(1)* %718, align 4, !tbaa !6
  %719 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 4, i32 %124
  %720 = load i32, i32 addrspace(3)* %719, align 4, !tbaa !6
  %721 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %42
  store i32 %720, i32 addrspace(1)* %721, align 4, !tbaa !6
  %722 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 5, i32 %124
  %723 = load i32, i32 addrspace(3)* %722, align 4, !tbaa !6
  %724 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %48
  store i32 %723, i32 addrspace(1)* %724, align 4, !tbaa !6
  %725 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 6, i32 %124
  %726 = load i32, i32 addrspace(3)* %725, align 4, !tbaa !6
  %727 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %54
  store i32 %726, i32 addrspace(1)* %727, align 4, !tbaa !6
  %728 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 7, i32 %124
  %729 = load i32, i32 addrspace(3)* %728, align 4, !tbaa !6
  %730 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %60
  store i32 %729, i32 addrspace(1)* %730, align 4, !tbaa !6
  %731 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 8, i32 %124
  %732 = load i32, i32 addrspace(3)* %731, align 4, !tbaa !6
  %733 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %66
  store i32 %732, i32 addrspace(1)* %733, align 4, !tbaa !6
  %734 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 9, i32 %124
  %735 = load i32, i32 addrspace(3)* %734, align 4, !tbaa !6
  %736 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %72
  store i32 %735, i32 addrspace(1)* %736, align 4, !tbaa !6
  %737 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 10, i32 %124
  %738 = load i32, i32 addrspace(3)* %737, align 4, !tbaa !6
  %739 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %78
  store i32 %738, i32 addrspace(1)* %739, align 4, !tbaa !6
  %740 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 11, i32 %124
  %741 = load i32, i32 addrspace(3)* %740, align 4, !tbaa !6
  %742 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %84
  store i32 %741, i32 addrspace(1)* %742, align 4, !tbaa !6
  %743 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 12, i32 %124
  %744 = load i32, i32 addrspace(3)* %743, align 4, !tbaa !6
  %745 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %90
  store i32 %744, i32 addrspace(1)* %745, align 4, !tbaa !6
  %746 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 13, i32 %124
  %747 = load i32, i32 addrspace(3)* %746, align 4, !tbaa !6
  %748 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %96
  store i32 %747, i32 addrspace(1)* %748, align 4, !tbaa !6
  %749 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 14, i32 %124
  %750 = load i32, i32 addrspace(3)* %749, align 4, !tbaa !6
  %751 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %102
  store i32 %750, i32 addrspace(1)* %751, align 4, !tbaa !6
  %752 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 15, i32 %124
  %753 = load i32, i32 addrspace(3)* %752, align 4, !tbaa !6
  %754 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %108
  store i32 %753, i32 addrspace(1)* %754, align 4, !tbaa !6
  %755 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 16, i32 %124
  %756 = load i32, i32 addrspace(3)* %755, align 4, !tbaa !6
  %757 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %114
  store i32 %756, i32 addrspace(1)* %757, align 4, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z20needle_cuda_shared_2PiS_iiii(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #0 {
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !5
  %9 = sub i32 %7, %4
  %10 = add i32 %9, %5
  %11 = xor i32 %7, -1
  %12 = add i32 %11, %5
  %13 = shl nsw i32 %2, 4
  %14 = mul nsw i32 %13, %12
  %15 = shl nsw i32 %10, 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, %8
  %18 = add i32 %17, 1
  %19 = add i32 %18, %2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %20
  %22 = load i32, i32 addrspace(1)* %21, align 4, !tbaa !6, !amdgpu.noclobber !10
  %23 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 0, i32 %8
  store i32 %22, i32 addrspace(3)* %23, align 4, !tbaa !6
  %24 = add nsw i32 %19, %2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %25
  %27 = load i32, i32 addrspace(1)* %26, align 4, !tbaa !6, !amdgpu.noclobber !10
  %28 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 1, i32 %8
  store i32 %27, i32 addrspace(3)* %28, align 4, !tbaa !6
  %29 = shl nsw i32 %2, 1
  %30 = add nsw i32 %29, %19
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %31
  %33 = load i32, i32 addrspace(1)* %32, align 4, !tbaa !6, !amdgpu.noclobber !10
  %34 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 2, i32 %8
  store i32 %33, i32 addrspace(3)* %34, align 4, !tbaa !6
  %35 = mul nsw i32 %2, 3
  %36 = add nsw i32 %35, %19
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %37
  %39 = load i32, i32 addrspace(1)* %38, align 4, !tbaa !6, !amdgpu.noclobber !10
  %40 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 3, i32 %8
  store i32 %39, i32 addrspace(3)* %40, align 4, !tbaa !6
  %41 = shl nsw i32 %2, 2
  %42 = add nsw i32 %41, %19
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %43
  %45 = load i32, i32 addrspace(1)* %44, align 4, !tbaa !6, !amdgpu.noclobber !10
  %46 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 4, i32 %8
  store i32 %45, i32 addrspace(3)* %46, align 4, !tbaa !6
  %47 = mul nsw i32 %2, 5
  %48 = add nsw i32 %47, %19
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %49
  %51 = load i32, i32 addrspace(1)* %50, align 4, !tbaa !6, !amdgpu.noclobber !10
  %52 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 5, i32 %8
  store i32 %51, i32 addrspace(3)* %52, align 4, !tbaa !6
  %53 = mul nsw i32 %2, 6
  %54 = add nsw i32 %53, %19
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %55
  %57 = load i32, i32 addrspace(1)* %56, align 4, !tbaa !6, !amdgpu.noclobber !10
  %58 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 6, i32 %8
  store i32 %57, i32 addrspace(3)* %58, align 4, !tbaa !6
  %59 = mul nsw i32 %2, 7
  %60 = add nsw i32 %59, %19
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %61
  %63 = load i32, i32 addrspace(1)* %62, align 4, !tbaa !6, !amdgpu.noclobber !10
  %64 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 7, i32 %8
  store i32 %63, i32 addrspace(3)* %64, align 4, !tbaa !6
  %65 = shl nsw i32 %2, 3
  %66 = add nsw i32 %65, %19
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %67
  %69 = load i32, i32 addrspace(1)* %68, align 4, !tbaa !6, !amdgpu.noclobber !10
  %70 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 8, i32 %8
  store i32 %69, i32 addrspace(3)* %70, align 4, !tbaa !6
  %71 = mul nsw i32 %2, 9
  %72 = add nsw i32 %71, %19
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %73
  %75 = load i32, i32 addrspace(1)* %74, align 4, !tbaa !6, !amdgpu.noclobber !10
  %76 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 9, i32 %8
  store i32 %75, i32 addrspace(3)* %76, align 4, !tbaa !6
  %77 = mul nsw i32 %2, 10
  %78 = add nsw i32 %77, %19
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %79
  %81 = load i32, i32 addrspace(1)* %80, align 4, !tbaa !6, !amdgpu.noclobber !10
  %82 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 10, i32 %8
  store i32 %81, i32 addrspace(3)* %82, align 4, !tbaa !6
  %83 = mul nsw i32 %2, 11
  %84 = add nsw i32 %83, %19
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %85
  %87 = load i32, i32 addrspace(1)* %86, align 4, !tbaa !6, !amdgpu.noclobber !10
  %88 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 11, i32 %8
  store i32 %87, i32 addrspace(3)* %88, align 4, !tbaa !6
  %89 = mul nsw i32 %2, 12
  %90 = add nsw i32 %89, %19
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %91
  %93 = load i32, i32 addrspace(1)* %92, align 4, !tbaa !6, !amdgpu.noclobber !10
  %94 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 12, i32 %8
  store i32 %93, i32 addrspace(3)* %94, align 4, !tbaa !6
  %95 = mul nsw i32 %2, 13
  %96 = add nsw i32 %95, %19
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %97
  %99 = load i32, i32 addrspace(1)* %98, align 4, !tbaa !6, !amdgpu.noclobber !10
  %100 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 13, i32 %8
  store i32 %99, i32 addrspace(3)* %100, align 4, !tbaa !6
  %101 = mul nsw i32 %2, 14
  %102 = add nsw i32 %101, %19
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %103
  %105 = load i32, i32 addrspace(1)* %104, align 4, !tbaa !6, !amdgpu.noclobber !10
  %106 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 14, i32 %8
  store i32 %105, i32 addrspace(3)* %106, align 4, !tbaa !6
  %107 = mul nsw i32 %2, 15
  %108 = add nsw i32 %107, %19
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %109
  %111 = load i32, i32 addrspace(1)* %110, align 4, !tbaa !6, !amdgpu.noclobber !10
  %112 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 15, i32 %8
  store i32 %111, i32 addrspace(3)* %112, align 4, !tbaa !6
  %113 = zext i32 %8 to i64
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %114 = icmp eq i32 %8, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %6
  %116 = sext i32 %16 to i64
  %117 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %116
  %118 = load i32, i32 addrspace(1)* %117, align 4, !tbaa !6, !amdgpu.noclobber !10
  store i32 %118, i32 addrspace(3)* getelementptr inbounds ([17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 0), align 16, !tbaa !6
  br label %119

119:                                              ; preds = %115, %6
  %120 = mul nsw i32 %8, %2
  %121 = add i32 %120, %2
  %122 = add i32 %121, %16
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %123
  %125 = load i32, i32 addrspace(1)* %124, align 4, !tbaa !6, !amdgpu.noclobber !10
  %126 = add nuw nsw i32 %8, 1
  %127 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %126, i32 0
  store i32 %125, i32 addrspace(3)* %127, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %128 = sext i32 %18 to i64
  %129 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %128
  %130 = load i32, i32 addrspace(1)* %129, align 4, !tbaa !6, !amdgpu.noclobber !10
  %131 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 %126
  store i32 %130, i32 addrspace(3)* %131, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %132 = icmp eq i32 %8, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %119
  %134 = sub nuw nsw i32 1, %8
  %135 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 %8
  %136 = load i32, i32 addrspace(3)* %135, align 4, !tbaa !6
  %137 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 0, i32 %8
  %138 = load i32, i32 addrspace(3)* %137, align 4, !tbaa !6
  %139 = add nsw i32 %138, %136
  %140 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %134, i32 %8
  %141 = load i32, i32 addrspace(3)* %140, align 4, !tbaa !6
  %142 = sub nsw i32 %141, %3
  %143 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 %126
  %144 = load i32, i32 addrspace(3)* %143, align 4, !tbaa !6
  %145 = sub nsw i32 %144, %3
  %146 = tail call i32 @llvm.smax.i32(i32 %139, i32 %142)
  %147 = tail call i32 @llvm.smax.i32(i32 %146, i32 %145)
  %148 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %134, i32 %126
  store i32 %147, i32 addrspace(3)* %148, align 4, !tbaa !6
  br label %149

149:                                              ; preds = %133, %119
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %150 = icmp ugt i32 %8, 1
  br i1 %150, label %168, label %151

151:                                              ; preds = %149
  %152 = sub nuw nsw i32 1, %8
  %153 = sub nuw nsw i32 2, %8
  %154 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %152, i32 %8
  %155 = load i32, i32 addrspace(3)* %154, align 4, !tbaa !6
  %156 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %152, i32 %8
  %157 = load i32, i32 addrspace(3)* %156, align 4, !tbaa !6
  %158 = add nsw i32 %157, %155
  %159 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %153, i32 %8
  %160 = load i32, i32 addrspace(3)* %159, align 4, !tbaa !6
  %161 = sub nsw i32 %160, %3
  %162 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %152, i32 %126
  %163 = load i32, i32 addrspace(3)* %162, align 4, !tbaa !6
  %164 = sub nsw i32 %163, %3
  %165 = tail call i32 @llvm.smax.i32(i32 %158, i32 %161)
  %166 = tail call i32 @llvm.smax.i32(i32 %165, i32 %164)
  %167 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %153, i32 %126
  store i32 %166, i32 addrspace(3)* %167, align 4, !tbaa !6
  br label %168

168:                                              ; preds = %151, %149
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %169 = icmp ugt i32 %8, 2
  br i1 %169, label %187, label %170

170:                                              ; preds = %168
  %171 = sub nuw nsw i32 2, %8
  %172 = sub nuw nsw i32 3, %8
  %173 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %171, i32 %8
  %174 = load i32, i32 addrspace(3)* %173, align 4, !tbaa !6
  %175 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %171, i32 %8
  %176 = load i32, i32 addrspace(3)* %175, align 4, !tbaa !6
  %177 = add nsw i32 %176, %174
  %178 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %172, i32 %8
  %179 = load i32, i32 addrspace(3)* %178, align 4, !tbaa !6
  %180 = sub nsw i32 %179, %3
  %181 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %171, i32 %126
  %182 = load i32, i32 addrspace(3)* %181, align 4, !tbaa !6
  %183 = sub nsw i32 %182, %3
  %184 = tail call i32 @llvm.smax.i32(i32 %177, i32 %180)
  %185 = tail call i32 @llvm.smax.i32(i32 %184, i32 %183)
  %186 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %172, i32 %126
  store i32 %185, i32 addrspace(3)* %186, align 4, !tbaa !6
  br label %187

187:                                              ; preds = %170, %168
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %188 = icmp ugt i32 %8, 3
  br i1 %188, label %206, label %189

189:                                              ; preds = %187
  %190 = sub nuw nsw i32 3, %8
  %191 = sub nuw nsw i32 4, %8
  %192 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %190, i32 %8
  %193 = load i32, i32 addrspace(3)* %192, align 4, !tbaa !6
  %194 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %190, i32 %8
  %195 = load i32, i32 addrspace(3)* %194, align 4, !tbaa !6
  %196 = add nsw i32 %195, %193
  %197 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %191, i32 %8
  %198 = load i32, i32 addrspace(3)* %197, align 4, !tbaa !6
  %199 = sub nsw i32 %198, %3
  %200 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %190, i32 %126
  %201 = load i32, i32 addrspace(3)* %200, align 4, !tbaa !6
  %202 = sub nsw i32 %201, %3
  %203 = tail call i32 @llvm.smax.i32(i32 %196, i32 %199)
  %204 = tail call i32 @llvm.smax.i32(i32 %203, i32 %202)
  %205 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %191, i32 %126
  store i32 %204, i32 addrspace(3)* %205, align 4, !tbaa !6
  br label %206

206:                                              ; preds = %189, %187
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %207 = icmp ugt i32 %8, 4
  br i1 %207, label %225, label %208

208:                                              ; preds = %206
  %209 = sub nuw nsw i32 4, %8
  %210 = sub nuw nsw i32 5, %8
  %211 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %209, i32 %8
  %212 = load i32, i32 addrspace(3)* %211, align 4, !tbaa !6
  %213 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %209, i32 %8
  %214 = load i32, i32 addrspace(3)* %213, align 4, !tbaa !6
  %215 = add nsw i32 %214, %212
  %216 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %210, i32 %8
  %217 = load i32, i32 addrspace(3)* %216, align 4, !tbaa !6
  %218 = sub nsw i32 %217, %3
  %219 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %209, i32 %126
  %220 = load i32, i32 addrspace(3)* %219, align 4, !tbaa !6
  %221 = sub nsw i32 %220, %3
  %222 = tail call i32 @llvm.smax.i32(i32 %215, i32 %218)
  %223 = tail call i32 @llvm.smax.i32(i32 %222, i32 %221)
  %224 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %210, i32 %126
  store i32 %223, i32 addrspace(3)* %224, align 4, !tbaa !6
  br label %225

225:                                              ; preds = %208, %206
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %226 = icmp ugt i32 %8, 5
  br i1 %226, label %244, label %227

227:                                              ; preds = %225
  %228 = sub nuw nsw i32 5, %8
  %229 = sub nuw nsw i32 6, %8
  %230 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %228, i32 %8
  %231 = load i32, i32 addrspace(3)* %230, align 4, !tbaa !6
  %232 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %228, i32 %8
  %233 = load i32, i32 addrspace(3)* %232, align 4, !tbaa !6
  %234 = add nsw i32 %233, %231
  %235 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %229, i32 %8
  %236 = load i32, i32 addrspace(3)* %235, align 4, !tbaa !6
  %237 = sub nsw i32 %236, %3
  %238 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %228, i32 %126
  %239 = load i32, i32 addrspace(3)* %238, align 4, !tbaa !6
  %240 = sub nsw i32 %239, %3
  %241 = tail call i32 @llvm.smax.i32(i32 %234, i32 %237)
  %242 = tail call i32 @llvm.smax.i32(i32 %241, i32 %240)
  %243 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %229, i32 %126
  store i32 %242, i32 addrspace(3)* %243, align 4, !tbaa !6
  br label %244

244:                                              ; preds = %227, %225
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %245 = icmp ugt i32 %8, 6
  br i1 %245, label %263, label %246

246:                                              ; preds = %244
  %247 = sub nuw nsw i32 6, %8
  %248 = sub nuw nsw i32 7, %8
  %249 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %247, i32 %8
  %250 = load i32, i32 addrspace(3)* %249, align 4, !tbaa !6
  %251 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %247, i32 %8
  %252 = load i32, i32 addrspace(3)* %251, align 4, !tbaa !6
  %253 = add nsw i32 %252, %250
  %254 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %248, i32 %8
  %255 = load i32, i32 addrspace(3)* %254, align 4, !tbaa !6
  %256 = sub nsw i32 %255, %3
  %257 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %247, i32 %126
  %258 = load i32, i32 addrspace(3)* %257, align 4, !tbaa !6
  %259 = sub nsw i32 %258, %3
  %260 = tail call i32 @llvm.smax.i32(i32 %253, i32 %256)
  %261 = tail call i32 @llvm.smax.i32(i32 %260, i32 %259)
  %262 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %248, i32 %126
  store i32 %261, i32 addrspace(3)* %262, align 4, !tbaa !6
  br label %263

263:                                              ; preds = %246, %244
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %264 = icmp ugt i32 %8, 7
  br i1 %264, label %282, label %265

265:                                              ; preds = %263
  %266 = sub nuw nsw i32 7, %8
  %267 = sub nuw nsw i32 8, %8
  %268 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %266, i32 %8
  %269 = load i32, i32 addrspace(3)* %268, align 4, !tbaa !6
  %270 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %266, i32 %8
  %271 = load i32, i32 addrspace(3)* %270, align 4, !tbaa !6
  %272 = add nsw i32 %271, %269
  %273 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %267, i32 %8
  %274 = load i32, i32 addrspace(3)* %273, align 4, !tbaa !6
  %275 = sub nsw i32 %274, %3
  %276 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %266, i32 %126
  %277 = load i32, i32 addrspace(3)* %276, align 4, !tbaa !6
  %278 = sub nsw i32 %277, %3
  %279 = tail call i32 @llvm.smax.i32(i32 %272, i32 %275)
  %280 = tail call i32 @llvm.smax.i32(i32 %279, i32 %278)
  %281 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %267, i32 %126
  store i32 %280, i32 addrspace(3)* %281, align 4, !tbaa !6
  br label %282

282:                                              ; preds = %265, %263
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %283 = icmp ugt i32 %8, 8
  br i1 %283, label %301, label %284

284:                                              ; preds = %282
  %285 = sub nuw nsw i32 8, %8
  %286 = sub nuw nsw i32 9, %8
  %287 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %285, i32 %8
  %288 = load i32, i32 addrspace(3)* %287, align 4, !tbaa !6
  %289 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %285, i32 %8
  %290 = load i32, i32 addrspace(3)* %289, align 4, !tbaa !6
  %291 = add nsw i32 %290, %288
  %292 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %286, i32 %8
  %293 = load i32, i32 addrspace(3)* %292, align 4, !tbaa !6
  %294 = sub nsw i32 %293, %3
  %295 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %285, i32 %126
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !6
  %297 = sub nsw i32 %296, %3
  %298 = tail call i32 @llvm.smax.i32(i32 %291, i32 %294)
  %299 = tail call i32 @llvm.smax.i32(i32 %298, i32 %297)
  %300 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %286, i32 %126
  store i32 %299, i32 addrspace(3)* %300, align 4, !tbaa !6
  br label %301

301:                                              ; preds = %284, %282
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %302 = icmp ugt i32 %8, 9
  br i1 %302, label %320, label %303

303:                                              ; preds = %301
  %304 = sub nuw nsw i32 9, %8
  %305 = sub nuw nsw i32 10, %8
  %306 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %304, i32 %8
  %307 = load i32, i32 addrspace(3)* %306, align 4, !tbaa !6
  %308 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %304, i32 %8
  %309 = load i32, i32 addrspace(3)* %308, align 4, !tbaa !6
  %310 = add nsw i32 %309, %307
  %311 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %305, i32 %8
  %312 = load i32, i32 addrspace(3)* %311, align 4, !tbaa !6
  %313 = sub nsw i32 %312, %3
  %314 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %304, i32 %126
  %315 = load i32, i32 addrspace(3)* %314, align 4, !tbaa !6
  %316 = sub nsw i32 %315, %3
  %317 = tail call i32 @llvm.smax.i32(i32 %310, i32 %313)
  %318 = tail call i32 @llvm.smax.i32(i32 %317, i32 %316)
  %319 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %305, i32 %126
  store i32 %318, i32 addrspace(3)* %319, align 4, !tbaa !6
  br label %320

320:                                              ; preds = %303, %301
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %321 = icmp ugt i32 %8, 10
  br i1 %321, label %339, label %322

322:                                              ; preds = %320
  %323 = sub nuw nsw i32 10, %8
  %324 = sub nuw nsw i32 11, %8
  %325 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %323, i32 %8
  %326 = load i32, i32 addrspace(3)* %325, align 4, !tbaa !6
  %327 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %323, i32 %8
  %328 = load i32, i32 addrspace(3)* %327, align 4, !tbaa !6
  %329 = add nsw i32 %328, %326
  %330 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %324, i32 %8
  %331 = load i32, i32 addrspace(3)* %330, align 4, !tbaa !6
  %332 = sub nsw i32 %331, %3
  %333 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %323, i32 %126
  %334 = load i32, i32 addrspace(3)* %333, align 4, !tbaa !6
  %335 = sub nsw i32 %334, %3
  %336 = tail call i32 @llvm.smax.i32(i32 %329, i32 %332)
  %337 = tail call i32 @llvm.smax.i32(i32 %336, i32 %335)
  %338 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %324, i32 %126
  store i32 %337, i32 addrspace(3)* %338, align 4, !tbaa !6
  br label %339

339:                                              ; preds = %322, %320
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %340 = icmp ugt i32 %8, 11
  br i1 %340, label %358, label %341

341:                                              ; preds = %339
  %342 = sub nuw nsw i32 11, %8
  %343 = sub nuw nsw i32 12, %8
  %344 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %342, i32 %8
  %345 = load i32, i32 addrspace(3)* %344, align 4, !tbaa !6
  %346 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %342, i32 %8
  %347 = load i32, i32 addrspace(3)* %346, align 4, !tbaa !6
  %348 = add nsw i32 %347, %345
  %349 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %343, i32 %8
  %350 = load i32, i32 addrspace(3)* %349, align 4, !tbaa !6
  %351 = sub nsw i32 %350, %3
  %352 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %342, i32 %126
  %353 = load i32, i32 addrspace(3)* %352, align 4, !tbaa !6
  %354 = sub nsw i32 %353, %3
  %355 = tail call i32 @llvm.smax.i32(i32 %348, i32 %351)
  %356 = tail call i32 @llvm.smax.i32(i32 %355, i32 %354)
  %357 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %343, i32 %126
  store i32 %356, i32 addrspace(3)* %357, align 4, !tbaa !6
  br label %358

358:                                              ; preds = %341, %339
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %359 = icmp ugt i32 %8, 12
  br i1 %359, label %377, label %360

360:                                              ; preds = %358
  %361 = sub nuw nsw i32 12, %8
  %362 = sub nuw nsw i32 13, %8
  %363 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %361, i32 %8
  %364 = load i32, i32 addrspace(3)* %363, align 4, !tbaa !6
  %365 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %361, i32 %8
  %366 = load i32, i32 addrspace(3)* %365, align 4, !tbaa !6
  %367 = add nsw i32 %366, %364
  %368 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %362, i32 %8
  %369 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %370 = sub nsw i32 %369, %3
  %371 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %361, i32 %126
  %372 = load i32, i32 addrspace(3)* %371, align 4, !tbaa !6
  %373 = sub nsw i32 %372, %3
  %374 = tail call i32 @llvm.smax.i32(i32 %367, i32 %370)
  %375 = tail call i32 @llvm.smax.i32(i32 %374, i32 %373)
  %376 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %362, i32 %126
  store i32 %375, i32 addrspace(3)* %376, align 4, !tbaa !6
  br label %377

377:                                              ; preds = %360, %358
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %378 = icmp ugt i32 %8, 13
  br i1 %378, label %396, label %379

379:                                              ; preds = %377
  %380 = sub nuw nsw i32 13, %8
  %381 = sub nuw nsw i32 14, %8
  %382 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %380, i32 %8
  %383 = load i32, i32 addrspace(3)* %382, align 4, !tbaa !6
  %384 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %380, i32 %8
  %385 = load i32, i32 addrspace(3)* %384, align 4, !tbaa !6
  %386 = add nsw i32 %385, %383
  %387 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %381, i32 %8
  %388 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %389 = sub nsw i32 %388, %3
  %390 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %380, i32 %126
  %391 = load i32, i32 addrspace(3)* %390, align 4, !tbaa !6
  %392 = sub nsw i32 %391, %3
  %393 = tail call i32 @llvm.smax.i32(i32 %386, i32 %389)
  %394 = tail call i32 @llvm.smax.i32(i32 %393, i32 %392)
  %395 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %381, i32 %126
  store i32 %394, i32 addrspace(3)* %395, align 4, !tbaa !6
  br label %396

396:                                              ; preds = %379, %377
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %397 = icmp ugt i32 %8, 14
  br i1 %397, label %415, label %398

398:                                              ; preds = %396
  %399 = sub nuw nsw i32 14, %8
  %400 = sub nuw nsw i32 15, %8
  %401 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %399, i32 %8
  %402 = load i32, i32 addrspace(3)* %401, align 4, !tbaa !6
  %403 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %399, i32 %8
  %404 = load i32, i32 addrspace(3)* %403, align 4, !tbaa !6
  %405 = add nsw i32 %404, %402
  %406 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %400, i32 %8
  %407 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !6
  %408 = sub nsw i32 %407, %3
  %409 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %399, i32 %126
  %410 = load i32, i32 addrspace(3)* %409, align 4, !tbaa !6
  %411 = sub nsw i32 %410, %3
  %412 = tail call i32 @llvm.smax.i32(i32 %405, i32 %408)
  %413 = tail call i32 @llvm.smax.i32(i32 %412, i32 %411)
  %414 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %400, i32 %126
  store i32 %413, i32 addrspace(3)* %414, align 4, !tbaa !6
  br label %415

415:                                              ; preds = %398, %396
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %416 = icmp ugt i32 %8, 15
  br i1 %416, label %434, label %417

417:                                              ; preds = %415
  %418 = sub nuw nsw i32 15, %8
  %419 = sub nuw nsw i32 16, %8
  %420 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %418, i32 %8
  %421 = load i32, i32 addrspace(3)* %420, align 4, !tbaa !6
  %422 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %418, i32 %8
  %423 = load i32, i32 addrspace(3)* %422, align 4, !tbaa !6
  %424 = add nsw i32 %423, %421
  %425 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %419, i32 %8
  %426 = load i32, i32 addrspace(3)* %425, align 4, !tbaa !6
  %427 = sub nsw i32 %426, %3
  %428 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %418, i32 %126
  %429 = load i32, i32 addrspace(3)* %428, align 4, !tbaa !6
  %430 = sub nsw i32 %429, %3
  %431 = tail call i32 @llvm.smax.i32(i32 %424, i32 %427)
  %432 = tail call i32 @llvm.smax.i32(i32 %431, i32 %430)
  %433 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %419, i32 %126
  store i32 %432, i32 addrspace(3)* %433, align 4, !tbaa !6
  br label %434

434:                                              ; preds = %417, %415
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %435 = add nuw nsw i32 %8, 16
  %436 = mul nsw i64 %113, -4294967296
  %437 = add nsw i64 %436, 64424509440
  %438 = ashr exact i64 %437, 32
  %439 = trunc i64 %438 to i32
  %440 = add nsw i64 %436, 68719476736
  %441 = lshr exact i64 %440, 32
  %442 = trunc i64 %441 to i32
  br i1 %397, label %460, label %443

443:                                              ; preds = %434
  %444 = add nuw nsw i32 %8, 2
  %445 = add nuw nsw i32 %8, 1
  %446 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %445
  %447 = load i32, i32 addrspace(3)* %446, align 4, !tbaa !6
  %448 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %445
  %449 = load i32, i32 addrspace(3)* %448, align 4, !tbaa !6
  %450 = add nsw i32 %449, %447
  %451 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %445
  %452 = load i32, i32 addrspace(3)* %451, align 4, !tbaa !6
  %453 = sub nsw i32 %452, %3
  %454 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %444
  %455 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !6
  %456 = sub nsw i32 %455, %3
  %457 = tail call i32 @llvm.smax.i32(i32 %450, i32 %453)
  %458 = tail call i32 @llvm.smax.i32(i32 %457, i32 %456)
  %459 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %444
  store i32 %458, i32 addrspace(3)* %459, align 4, !tbaa !6
  br label %460

460:                                              ; preds = %443, %434
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %378, label %478, label %461

461:                                              ; preds = %460
  %462 = add nuw nsw i32 %8, 3
  %463 = add nuw nsw i32 %8, 2
  %464 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %463
  %465 = load i32, i32 addrspace(3)* %464, align 4, !tbaa !6
  %466 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %463
  %467 = load i32, i32 addrspace(3)* %466, align 4, !tbaa !6
  %468 = add nsw i32 %467, %465
  %469 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %463
  %470 = load i32, i32 addrspace(3)* %469, align 4, !tbaa !6
  %471 = sub nsw i32 %470, %3
  %472 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %462
  %473 = load i32, i32 addrspace(3)* %472, align 4, !tbaa !6
  %474 = sub nsw i32 %473, %3
  %475 = tail call i32 @llvm.smax.i32(i32 %468, i32 %471)
  %476 = tail call i32 @llvm.smax.i32(i32 %475, i32 %474)
  %477 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %462
  store i32 %476, i32 addrspace(3)* %477, align 4, !tbaa !6
  br label %478

478:                                              ; preds = %461, %460
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %359, label %496, label %479

479:                                              ; preds = %478
  %480 = add nuw nsw i32 %8, 4
  %481 = add nuw nsw i32 %8, 3
  %482 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %481
  %483 = load i32, i32 addrspace(3)* %482, align 4, !tbaa !6
  %484 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %481
  %485 = load i32, i32 addrspace(3)* %484, align 4, !tbaa !6
  %486 = add nsw i32 %485, %483
  %487 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %481
  %488 = load i32, i32 addrspace(3)* %487, align 4, !tbaa !6
  %489 = sub nsw i32 %488, %3
  %490 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %480
  %491 = load i32, i32 addrspace(3)* %490, align 4, !tbaa !6
  %492 = sub nsw i32 %491, %3
  %493 = tail call i32 @llvm.smax.i32(i32 %486, i32 %489)
  %494 = tail call i32 @llvm.smax.i32(i32 %493, i32 %492)
  %495 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %480
  store i32 %494, i32 addrspace(3)* %495, align 4, !tbaa !6
  br label %496

496:                                              ; preds = %479, %478
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %340, label %514, label %497

497:                                              ; preds = %496
  %498 = add nuw nsw i32 %8, 5
  %499 = add nuw nsw i32 %8, 4
  %500 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %499
  %501 = load i32, i32 addrspace(3)* %500, align 4, !tbaa !6
  %502 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %499
  %503 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !6
  %504 = add nsw i32 %503, %501
  %505 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %499
  %506 = load i32, i32 addrspace(3)* %505, align 4, !tbaa !6
  %507 = sub nsw i32 %506, %3
  %508 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %498
  %509 = load i32, i32 addrspace(3)* %508, align 4, !tbaa !6
  %510 = sub nsw i32 %509, %3
  %511 = tail call i32 @llvm.smax.i32(i32 %504, i32 %507)
  %512 = tail call i32 @llvm.smax.i32(i32 %511, i32 %510)
  %513 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %498
  store i32 %512, i32 addrspace(3)* %513, align 4, !tbaa !6
  br label %514

514:                                              ; preds = %497, %496
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %321, label %532, label %515

515:                                              ; preds = %514
  %516 = add nuw nsw i32 %8, 6
  %517 = add nuw nsw i32 %8, 5
  %518 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %517
  %519 = load i32, i32 addrspace(3)* %518, align 4, !tbaa !6
  %520 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %517
  %521 = load i32, i32 addrspace(3)* %520, align 4, !tbaa !6
  %522 = add nsw i32 %521, %519
  %523 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %517
  %524 = load i32, i32 addrspace(3)* %523, align 4, !tbaa !6
  %525 = sub nsw i32 %524, %3
  %526 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %516
  %527 = load i32, i32 addrspace(3)* %526, align 4, !tbaa !6
  %528 = sub nsw i32 %527, %3
  %529 = tail call i32 @llvm.smax.i32(i32 %522, i32 %525)
  %530 = tail call i32 @llvm.smax.i32(i32 %529, i32 %528)
  %531 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %516
  store i32 %530, i32 addrspace(3)* %531, align 4, !tbaa !6
  br label %532

532:                                              ; preds = %515, %514
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %302, label %550, label %533

533:                                              ; preds = %532
  %534 = add nuw nsw i32 %8, 7
  %535 = add nuw nsw i32 %8, 6
  %536 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %535
  %537 = load i32, i32 addrspace(3)* %536, align 4, !tbaa !6
  %538 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %535
  %539 = load i32, i32 addrspace(3)* %538, align 4, !tbaa !6
  %540 = add nsw i32 %539, %537
  %541 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %535
  %542 = load i32, i32 addrspace(3)* %541, align 4, !tbaa !6
  %543 = sub nsw i32 %542, %3
  %544 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %534
  %545 = load i32, i32 addrspace(3)* %544, align 4, !tbaa !6
  %546 = sub nsw i32 %545, %3
  %547 = tail call i32 @llvm.smax.i32(i32 %540, i32 %543)
  %548 = tail call i32 @llvm.smax.i32(i32 %547, i32 %546)
  %549 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %534
  store i32 %548, i32 addrspace(3)* %549, align 4, !tbaa !6
  br label %550

550:                                              ; preds = %533, %532
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %283, label %568, label %551

551:                                              ; preds = %550
  %552 = add nuw nsw i32 %8, 8
  %553 = add nuw nsw i32 %8, 7
  %554 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %553
  %555 = load i32, i32 addrspace(3)* %554, align 4, !tbaa !6
  %556 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %553
  %557 = load i32, i32 addrspace(3)* %556, align 4, !tbaa !6
  %558 = add nsw i32 %557, %555
  %559 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %553
  %560 = load i32, i32 addrspace(3)* %559, align 4, !tbaa !6
  %561 = sub nsw i32 %560, %3
  %562 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %552
  %563 = load i32, i32 addrspace(3)* %562, align 4, !tbaa !6
  %564 = sub nsw i32 %563, %3
  %565 = tail call i32 @llvm.smax.i32(i32 %558, i32 %561)
  %566 = tail call i32 @llvm.smax.i32(i32 %565, i32 %564)
  %567 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %552
  store i32 %566, i32 addrspace(3)* %567, align 4, !tbaa !6
  br label %568

568:                                              ; preds = %551, %550
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %264, label %586, label %569

569:                                              ; preds = %568
  %570 = add nuw nsw i32 %8, 9
  %571 = add nuw nsw i32 %8, 8
  %572 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %571
  %573 = load i32, i32 addrspace(3)* %572, align 4, !tbaa !6
  %574 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %571
  %575 = load i32, i32 addrspace(3)* %574, align 4, !tbaa !6
  %576 = add nsw i32 %575, %573
  %577 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %571
  %578 = load i32, i32 addrspace(3)* %577, align 4, !tbaa !6
  %579 = sub nsw i32 %578, %3
  %580 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %570
  %581 = load i32, i32 addrspace(3)* %580, align 4, !tbaa !6
  %582 = sub nsw i32 %581, %3
  %583 = tail call i32 @llvm.smax.i32(i32 %576, i32 %579)
  %584 = tail call i32 @llvm.smax.i32(i32 %583, i32 %582)
  %585 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %570
  store i32 %584, i32 addrspace(3)* %585, align 4, !tbaa !6
  br label %586

586:                                              ; preds = %569, %568
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %245, label %604, label %587

587:                                              ; preds = %586
  %588 = add nuw nsw i32 %8, 10
  %589 = add nuw nsw i32 %8, 9
  %590 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %589
  %591 = load i32, i32 addrspace(3)* %590, align 4, !tbaa !6
  %592 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %589
  %593 = load i32, i32 addrspace(3)* %592, align 4, !tbaa !6
  %594 = add nsw i32 %593, %591
  %595 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %589
  %596 = load i32, i32 addrspace(3)* %595, align 4, !tbaa !6
  %597 = sub nsw i32 %596, %3
  %598 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %588
  %599 = load i32, i32 addrspace(3)* %598, align 4, !tbaa !6
  %600 = sub nsw i32 %599, %3
  %601 = tail call i32 @llvm.smax.i32(i32 %594, i32 %597)
  %602 = tail call i32 @llvm.smax.i32(i32 %601, i32 %600)
  %603 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %588
  store i32 %602, i32 addrspace(3)* %603, align 4, !tbaa !6
  br label %604

604:                                              ; preds = %587, %586
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %226, label %622, label %605

605:                                              ; preds = %604
  %606 = add nuw nsw i32 %8, 11
  %607 = add nuw nsw i32 %8, 10
  %608 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %607
  %609 = load i32, i32 addrspace(3)* %608, align 4, !tbaa !6
  %610 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %607
  %611 = load i32, i32 addrspace(3)* %610, align 4, !tbaa !6
  %612 = add nsw i32 %611, %609
  %613 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %607
  %614 = load i32, i32 addrspace(3)* %613, align 4, !tbaa !6
  %615 = sub nsw i32 %614, %3
  %616 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %606
  %617 = load i32, i32 addrspace(3)* %616, align 4, !tbaa !6
  %618 = sub nsw i32 %617, %3
  %619 = tail call i32 @llvm.smax.i32(i32 %612, i32 %615)
  %620 = tail call i32 @llvm.smax.i32(i32 %619, i32 %618)
  %621 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %606
  store i32 %620, i32 addrspace(3)* %621, align 4, !tbaa !6
  br label %622

622:                                              ; preds = %605, %604
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %207, label %640, label %623

623:                                              ; preds = %622
  %624 = add nuw nsw i32 %8, 12
  %625 = add nuw nsw i32 %8, 11
  %626 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %625
  %627 = load i32, i32 addrspace(3)* %626, align 4, !tbaa !6
  %628 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %625
  %629 = load i32, i32 addrspace(3)* %628, align 4, !tbaa !6
  %630 = add nsw i32 %629, %627
  %631 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %625
  %632 = load i32, i32 addrspace(3)* %631, align 4, !tbaa !6
  %633 = sub nsw i32 %632, %3
  %634 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %624
  %635 = load i32, i32 addrspace(3)* %634, align 4, !tbaa !6
  %636 = sub nsw i32 %635, %3
  %637 = tail call i32 @llvm.smax.i32(i32 %630, i32 %633)
  %638 = tail call i32 @llvm.smax.i32(i32 %637, i32 %636)
  %639 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %624
  store i32 %638, i32 addrspace(3)* %639, align 4, !tbaa !6
  br label %640

640:                                              ; preds = %623, %622
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %188, label %658, label %641

641:                                              ; preds = %640
  %642 = add nuw nsw i32 %8, 13
  %643 = add nuw nsw i32 %8, 12
  %644 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %643
  %645 = load i32, i32 addrspace(3)* %644, align 4, !tbaa !6
  %646 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %643
  %647 = load i32, i32 addrspace(3)* %646, align 4, !tbaa !6
  %648 = add nsw i32 %647, %645
  %649 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %643
  %650 = load i32, i32 addrspace(3)* %649, align 4, !tbaa !6
  %651 = sub nsw i32 %650, %3
  %652 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %642
  %653 = load i32, i32 addrspace(3)* %652, align 4, !tbaa !6
  %654 = sub nsw i32 %653, %3
  %655 = tail call i32 @llvm.smax.i32(i32 %648, i32 %651)
  %656 = tail call i32 @llvm.smax.i32(i32 %655, i32 %654)
  %657 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %642
  store i32 %656, i32 addrspace(3)* %657, align 4, !tbaa !6
  br label %658

658:                                              ; preds = %641, %640
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %169, label %676, label %659

659:                                              ; preds = %658
  %660 = add nuw nsw i32 %8, 14
  %661 = add nuw nsw i32 %8, 13
  %662 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %661
  %663 = load i32, i32 addrspace(3)* %662, align 4, !tbaa !6
  %664 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %661
  %665 = load i32, i32 addrspace(3)* %664, align 4, !tbaa !6
  %666 = add nsw i32 %665, %663
  %667 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %661
  %668 = load i32, i32 addrspace(3)* %667, align 4, !tbaa !6
  %669 = sub nsw i32 %668, %3
  %670 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %660
  %671 = load i32, i32 addrspace(3)* %670, align 4, !tbaa !6
  %672 = sub nsw i32 %671, %3
  %673 = tail call i32 @llvm.smax.i32(i32 %666, i32 %669)
  %674 = tail call i32 @llvm.smax.i32(i32 %673, i32 %672)
  %675 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %660
  store i32 %674, i32 addrspace(3)* %675, align 4, !tbaa !6
  br label %676

676:                                              ; preds = %659, %658
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %150, label %694, label %677

677:                                              ; preds = %676
  %678 = add nuw nsw i32 %8, 15
  %679 = add nuw nsw i32 %8, 14
  %680 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %679
  %681 = load i32, i32 addrspace(3)* %680, align 4, !tbaa !6
  %682 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %679
  %683 = load i32, i32 addrspace(3)* %682, align 4, !tbaa !6
  %684 = add nsw i32 %683, %681
  %685 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %679
  %686 = load i32, i32 addrspace(3)* %685, align 4, !tbaa !6
  %687 = sub nsw i32 %686, %3
  %688 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %678
  %689 = load i32, i32 addrspace(3)* %688, align 4, !tbaa !6
  %690 = sub nsw i32 %689, %3
  %691 = tail call i32 @llvm.smax.i32(i32 %684, i32 %687)
  %692 = tail call i32 @llvm.smax.i32(i32 %691, i32 %690)
  %693 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %678
  store i32 %692, i32 addrspace(3)* %693, align 4, !tbaa !6
  br label %694

694:                                              ; preds = %677, %676
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %132, label %695, label %711

695:                                              ; preds = %694
  %696 = add nuw nsw i32 %8, 15
  %697 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %696
  %698 = load i32, i32 addrspace(3)* %697, align 4, !tbaa !6
  %699 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %439, i32 %696
  %700 = load i32, i32 addrspace(3)* %699, align 4, !tbaa !6
  %701 = add nsw i32 %700, %698
  %702 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %696
  %703 = load i32, i32 addrspace(3)* %702, align 4, !tbaa !6
  %704 = sub nsw i32 %703, %3
  %705 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %439, i32 %435
  %706 = load i32, i32 addrspace(3)* %705, align 4, !tbaa !6
  %707 = sub nsw i32 %706, %3
  %708 = tail call i32 @llvm.smax.i32(i32 %701, i32 %704)
  %709 = tail call i32 @llvm.smax.i32(i32 %708, i32 %707)
  %710 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %442, i32 %435
  store i32 %709, i32 addrspace(3)* %710, align 4, !tbaa !6
  br label %711

711:                                              ; preds = %695, %694
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %712 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 1, i32 %126
  %713 = load i32, i32 addrspace(3)* %712, align 4, !tbaa !6
  %714 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %20
  store i32 %713, i32 addrspace(1)* %714, align 4, !tbaa !6
  %715 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 2, i32 %126
  %716 = load i32, i32 addrspace(3)* %715, align 4, !tbaa !6
  %717 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %25
  store i32 %716, i32 addrspace(1)* %717, align 4, !tbaa !6
  %718 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 3, i32 %126
  %719 = load i32, i32 addrspace(3)* %718, align 4, !tbaa !6
  %720 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %31
  store i32 %719, i32 addrspace(1)* %720, align 4, !tbaa !6
  %721 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 4, i32 %126
  %722 = load i32, i32 addrspace(3)* %721, align 4, !tbaa !6
  %723 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %37
  store i32 %722, i32 addrspace(1)* %723, align 4, !tbaa !6
  %724 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 5, i32 %126
  %725 = load i32, i32 addrspace(3)* %724, align 4, !tbaa !6
  %726 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %43
  store i32 %725, i32 addrspace(1)* %726, align 4, !tbaa !6
  %727 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 6, i32 %126
  %728 = load i32, i32 addrspace(3)* %727, align 4, !tbaa !6
  %729 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %49
  store i32 %728, i32 addrspace(1)* %729, align 4, !tbaa !6
  %730 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 7, i32 %126
  %731 = load i32, i32 addrspace(3)* %730, align 4, !tbaa !6
  %732 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %55
  store i32 %731, i32 addrspace(1)* %732, align 4, !tbaa !6
  %733 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 8, i32 %126
  %734 = load i32, i32 addrspace(3)* %733, align 4, !tbaa !6
  %735 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %61
  store i32 %734, i32 addrspace(1)* %735, align 4, !tbaa !6
  %736 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 9, i32 %126
  %737 = load i32, i32 addrspace(3)* %736, align 4, !tbaa !6
  %738 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %67
  store i32 %737, i32 addrspace(1)* %738, align 4, !tbaa !6
  %739 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 10, i32 %126
  %740 = load i32, i32 addrspace(3)* %739, align 4, !tbaa !6
  %741 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %73
  store i32 %740, i32 addrspace(1)* %741, align 4, !tbaa !6
  %742 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 11, i32 %126
  %743 = load i32, i32 addrspace(3)* %742, align 4, !tbaa !6
  %744 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %79
  store i32 %743, i32 addrspace(1)* %744, align 4, !tbaa !6
  %745 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 12, i32 %126
  %746 = load i32, i32 addrspace(3)* %745, align 4, !tbaa !6
  %747 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %85
  store i32 %746, i32 addrspace(1)* %747, align 4, !tbaa !6
  %748 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 13, i32 %126
  %749 = load i32, i32 addrspace(3)* %748, align 4, !tbaa !6
  %750 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %91
  store i32 %749, i32 addrspace(1)* %750, align 4, !tbaa !6
  %751 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 14, i32 %126
  %752 = load i32, i32 addrspace(3)* %751, align 4, !tbaa !6
  %753 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %97
  store i32 %752, i32 addrspace(1)* %753, align 4, !tbaa !6
  %754 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 15, i32 %126
  %755 = load i32, i32 addrspace(3)* %754, align 4, !tbaa !6
  %756 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %103
  store i32 %755, i32 addrspace(1)* %756, align 4, !tbaa !6
  %757 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 16, i32 %126
  %758 = load i32, i32 addrspace(3)* %757, align 4, !tbaa !6
  %759 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %109
  store i32 %758, i32 addrspace(1)* %759, align 4, !tbaa !6
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{i32 0, i32 1024}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{}
