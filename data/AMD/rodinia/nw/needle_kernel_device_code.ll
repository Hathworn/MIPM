; ModuleID = 'hip/nw/needle_kernel.cu'
source_filename = "hip/nw/needle_kernel.cu"
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
  %9 = xor i32 %7, -1
  %10 = add i32 %9, %4
  %11 = shl nsw i32 %2, 4
  %12 = mul nsw i32 %11, %10
  %13 = shl nsw i32 %7, 4
  %14 = add nsw i32 %12, %13
  %15 = add nsw i32 %14, %8
  %16 = add i32 %15, 1
  %17 = add i32 %16, %2
  %18 = icmp eq i32 %8, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %20
  %22 = load i32, i32 addrspace(1)* %21, align 4, !tbaa !6, !amdgpu.noclobber !10
  store i32 %22, i32 addrspace(3)* getelementptr inbounds ([17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 0), align 16, !tbaa !6
  br label %23

23:                                               ; preds = %19, %6
  %24 = sext i32 %17 to i64
  %25 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %24
  %26 = load i32, i32 addrspace(1)* %25, align 4, !tbaa !6, !amdgpu.noclobber !10
  %27 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 0, i32 %8
  store i32 %26, i32 addrspace(3)* %27, align 4, !tbaa !6
  %28 = add nsw i32 %17, %2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %29
  %31 = load i32, i32 addrspace(1)* %30, align 4, !tbaa !6, !amdgpu.noclobber !10
  %32 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 1, i32 %8
  store i32 %31, i32 addrspace(3)* %32, align 4, !tbaa !6
  %33 = shl nsw i32 %2, 1
  %34 = add nsw i32 %33, %17
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %35
  %37 = load i32, i32 addrspace(1)* %36, align 4, !tbaa !6, !amdgpu.noclobber !10
  %38 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 2, i32 %8
  store i32 %37, i32 addrspace(3)* %38, align 4, !tbaa !6
  %39 = mul nsw i32 %2, 3
  %40 = add nsw i32 %39, %17
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %41
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !6, !amdgpu.noclobber !10
  %44 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 3, i32 %8
  store i32 %43, i32 addrspace(3)* %44, align 4, !tbaa !6
  %45 = shl nsw i32 %2, 2
  %46 = add nsw i32 %45, %17
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %47
  %49 = load i32, i32 addrspace(1)* %48, align 4, !tbaa !6, !amdgpu.noclobber !10
  %50 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 4, i32 %8
  store i32 %49, i32 addrspace(3)* %50, align 4, !tbaa !6
  %51 = mul nsw i32 %2, 5
  %52 = add nsw i32 %51, %17
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %53
  %55 = load i32, i32 addrspace(1)* %54, align 4, !tbaa !6, !amdgpu.noclobber !10
  %56 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 5, i32 %8
  store i32 %55, i32 addrspace(3)* %56, align 4, !tbaa !6
  %57 = mul nsw i32 %2, 6
  %58 = add nsw i32 %57, %17
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %59
  %61 = load i32, i32 addrspace(1)* %60, align 4, !tbaa !6, !amdgpu.noclobber !10
  %62 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 6, i32 %8
  store i32 %61, i32 addrspace(3)* %62, align 4, !tbaa !6
  %63 = mul nsw i32 %2, 7
  %64 = add nsw i32 %63, %17
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %65
  %67 = load i32, i32 addrspace(1)* %66, align 4, !tbaa !6, !amdgpu.noclobber !10
  %68 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 7, i32 %8
  store i32 %67, i32 addrspace(3)* %68, align 4, !tbaa !6
  %69 = shl nsw i32 %2, 3
  %70 = add nsw i32 %69, %17
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %71
  %73 = load i32, i32 addrspace(1)* %72, align 4, !tbaa !6, !amdgpu.noclobber !10
  %74 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 8, i32 %8
  store i32 %73, i32 addrspace(3)* %74, align 4, !tbaa !6
  %75 = mul nsw i32 %2, 9
  %76 = add nsw i32 %75, %17
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %77
  %79 = load i32, i32 addrspace(1)* %78, align 4, !tbaa !6, !amdgpu.noclobber !10
  %80 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 9, i32 %8
  store i32 %79, i32 addrspace(3)* %80, align 4, !tbaa !6
  %81 = mul nsw i32 %2, 10
  %82 = add nsw i32 %81, %17
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %83
  %85 = load i32, i32 addrspace(1)* %84, align 4, !tbaa !6, !amdgpu.noclobber !10
  %86 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 10, i32 %8
  store i32 %85, i32 addrspace(3)* %86, align 4, !tbaa !6
  %87 = mul nsw i32 %2, 11
  %88 = add nsw i32 %87, %17
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %89
  %91 = load i32, i32 addrspace(1)* %90, align 4, !tbaa !6, !amdgpu.noclobber !10
  %92 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 11, i32 %8
  store i32 %91, i32 addrspace(3)* %92, align 4, !tbaa !6
  %93 = mul nsw i32 %2, 12
  %94 = add nsw i32 %93, %17
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %95
  %97 = load i32, i32 addrspace(1)* %96, align 4, !tbaa !6, !amdgpu.noclobber !10
  %98 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 12, i32 %8
  store i32 %97, i32 addrspace(3)* %98, align 4, !tbaa !6
  %99 = mul nsw i32 %2, 13
  %100 = add nsw i32 %99, %17
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %101
  %103 = load i32, i32 addrspace(1)* %102, align 4, !tbaa !6, !amdgpu.noclobber !10
  %104 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 13, i32 %8
  store i32 %103, i32 addrspace(3)* %104, align 4, !tbaa !6
  %105 = mul nsw i32 %2, 14
  %106 = add nsw i32 %105, %17
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %107
  %109 = load i32, i32 addrspace(1)* %108, align 4, !tbaa !6, !amdgpu.noclobber !10
  %110 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 14, i32 %8
  store i32 %109, i32 addrspace(3)* %110, align 4, !tbaa !6
  %111 = mul nsw i32 %2, 15
  %112 = add nsw i32 %111, %17
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %113
  %115 = load i32, i32 addrspace(1)* %114, align 4, !tbaa !6, !amdgpu.noclobber !10
  %116 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 15, i32 %8
  store i32 %115, i32 addrspace(3)* %116, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %117 = mul nsw i32 %8, %2
  %118 = add i32 %117, %2
  %119 = add i32 %118, %14
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %120
  %122 = load i32, i32 addrspace(1)* %121, align 4, !tbaa !6, !amdgpu.noclobber !10
  %123 = add nuw nsw i32 %8, 1
  %124 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %123, i32 0
  store i32 %122, i32 addrspace(3)* %124, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %125 = sext i32 %16 to i64
  %126 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %125
  %127 = load i32, i32 addrspace(1)* %126, align 4, !tbaa !6, !amdgpu.noclobber !10
  %128 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 %123
  store i32 %127, i32 addrspace(3)* %128, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %129 = icmp eq i32 %8, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %23
  %131 = sub nuw nsw i32 1, %8
  %132 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 %8
  %133 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !6
  %134 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 0, i32 %8
  %135 = load i32, i32 addrspace(3)* %134, align 4, !tbaa !6
  %136 = add nsw i32 %135, %133
  %137 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %131, i32 %8
  %138 = load i32, i32 addrspace(3)* %137, align 4, !tbaa !6
  %139 = sub nsw i32 %138, %3
  %140 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 0, i32 %123
  %141 = load i32, i32 addrspace(3)* %140, align 4, !tbaa !6
  %142 = sub nsw i32 %141, %3
  %143 = tail call i32 @llvm.smax.i32(i32 %136, i32 %139)
  %144 = tail call i32 @llvm.smax.i32(i32 %143, i32 %142)
  %145 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %131, i32 %123
  store i32 %144, i32 addrspace(3)* %145, align 4, !tbaa !6
  br label %146

146:                                              ; preds = %130, %23
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %147 = icmp ugt i32 %8, 1
  br i1 %147, label %165, label %148

148:                                              ; preds = %146
  %149 = sub nuw nsw i32 1, %8
  %150 = sub nuw nsw i32 2, %8
  %151 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %149, i32 %8
  %152 = load i32, i32 addrspace(3)* %151, align 4, !tbaa !6
  %153 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %149, i32 %8
  %154 = load i32, i32 addrspace(3)* %153, align 4, !tbaa !6
  %155 = add nsw i32 %154, %152
  %156 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %150, i32 %8
  %157 = load i32, i32 addrspace(3)* %156, align 4, !tbaa !6
  %158 = sub nsw i32 %157, %3
  %159 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %149, i32 %123
  %160 = load i32, i32 addrspace(3)* %159, align 4, !tbaa !6
  %161 = sub nsw i32 %160, %3
  %162 = tail call i32 @llvm.smax.i32(i32 %155, i32 %158)
  %163 = tail call i32 @llvm.smax.i32(i32 %162, i32 %161)
  %164 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %150, i32 %123
  store i32 %163, i32 addrspace(3)* %164, align 4, !tbaa !6
  br label %165

165:                                              ; preds = %148, %146
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %166 = icmp ugt i32 %8, 2
  br i1 %166, label %184, label %167

167:                                              ; preds = %165
  %168 = sub nuw nsw i32 2, %8
  %169 = sub nuw nsw i32 3, %8
  %170 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %168, i32 %8
  %171 = load i32, i32 addrspace(3)* %170, align 4, !tbaa !6
  %172 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %168, i32 %8
  %173 = load i32, i32 addrspace(3)* %172, align 4, !tbaa !6
  %174 = add nsw i32 %173, %171
  %175 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %169, i32 %8
  %176 = load i32, i32 addrspace(3)* %175, align 4, !tbaa !6
  %177 = sub nsw i32 %176, %3
  %178 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %168, i32 %123
  %179 = load i32, i32 addrspace(3)* %178, align 4, !tbaa !6
  %180 = sub nsw i32 %179, %3
  %181 = tail call i32 @llvm.smax.i32(i32 %174, i32 %177)
  %182 = tail call i32 @llvm.smax.i32(i32 %181, i32 %180)
  %183 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %169, i32 %123
  store i32 %182, i32 addrspace(3)* %183, align 4, !tbaa !6
  br label %184

184:                                              ; preds = %167, %165
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %185 = icmp ugt i32 %8, 3
  br i1 %185, label %203, label %186

186:                                              ; preds = %184
  %187 = sub nuw nsw i32 3, %8
  %188 = sub nuw nsw i32 4, %8
  %189 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %187, i32 %8
  %190 = load i32, i32 addrspace(3)* %189, align 4, !tbaa !6
  %191 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %187, i32 %8
  %192 = load i32, i32 addrspace(3)* %191, align 4, !tbaa !6
  %193 = add nsw i32 %192, %190
  %194 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %188, i32 %8
  %195 = load i32, i32 addrspace(3)* %194, align 4, !tbaa !6
  %196 = sub nsw i32 %195, %3
  %197 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %187, i32 %123
  %198 = load i32, i32 addrspace(3)* %197, align 4, !tbaa !6
  %199 = sub nsw i32 %198, %3
  %200 = tail call i32 @llvm.smax.i32(i32 %193, i32 %196)
  %201 = tail call i32 @llvm.smax.i32(i32 %200, i32 %199)
  %202 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %188, i32 %123
  store i32 %201, i32 addrspace(3)* %202, align 4, !tbaa !6
  br label %203

203:                                              ; preds = %186, %184
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %204 = icmp ugt i32 %8, 4
  br i1 %204, label %222, label %205

205:                                              ; preds = %203
  %206 = sub nuw nsw i32 4, %8
  %207 = sub nuw nsw i32 5, %8
  %208 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %206, i32 %8
  %209 = load i32, i32 addrspace(3)* %208, align 4, !tbaa !6
  %210 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %206, i32 %8
  %211 = load i32, i32 addrspace(3)* %210, align 4, !tbaa !6
  %212 = add nsw i32 %211, %209
  %213 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %207, i32 %8
  %214 = load i32, i32 addrspace(3)* %213, align 4, !tbaa !6
  %215 = sub nsw i32 %214, %3
  %216 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %206, i32 %123
  %217 = load i32, i32 addrspace(3)* %216, align 4, !tbaa !6
  %218 = sub nsw i32 %217, %3
  %219 = tail call i32 @llvm.smax.i32(i32 %212, i32 %215)
  %220 = tail call i32 @llvm.smax.i32(i32 %219, i32 %218)
  %221 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %207, i32 %123
  store i32 %220, i32 addrspace(3)* %221, align 4, !tbaa !6
  br label %222

222:                                              ; preds = %205, %203
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %223 = icmp ugt i32 %8, 5
  br i1 %223, label %241, label %224

224:                                              ; preds = %222
  %225 = sub nuw nsw i32 5, %8
  %226 = sub nuw nsw i32 6, %8
  %227 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %225, i32 %8
  %228 = load i32, i32 addrspace(3)* %227, align 4, !tbaa !6
  %229 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %225, i32 %8
  %230 = load i32, i32 addrspace(3)* %229, align 4, !tbaa !6
  %231 = add nsw i32 %230, %228
  %232 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %226, i32 %8
  %233 = load i32, i32 addrspace(3)* %232, align 4, !tbaa !6
  %234 = sub nsw i32 %233, %3
  %235 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %225, i32 %123
  %236 = load i32, i32 addrspace(3)* %235, align 4, !tbaa !6
  %237 = sub nsw i32 %236, %3
  %238 = tail call i32 @llvm.smax.i32(i32 %231, i32 %234)
  %239 = tail call i32 @llvm.smax.i32(i32 %238, i32 %237)
  %240 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %226, i32 %123
  store i32 %239, i32 addrspace(3)* %240, align 4, !tbaa !6
  br label %241

241:                                              ; preds = %224, %222
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %242 = icmp ugt i32 %8, 6
  br i1 %242, label %260, label %243

243:                                              ; preds = %241
  %244 = sub nuw nsw i32 6, %8
  %245 = sub nuw nsw i32 7, %8
  %246 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %244, i32 %8
  %247 = load i32, i32 addrspace(3)* %246, align 4, !tbaa !6
  %248 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %244, i32 %8
  %249 = load i32, i32 addrspace(3)* %248, align 4, !tbaa !6
  %250 = add nsw i32 %249, %247
  %251 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %245, i32 %8
  %252 = load i32, i32 addrspace(3)* %251, align 4, !tbaa !6
  %253 = sub nsw i32 %252, %3
  %254 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %244, i32 %123
  %255 = load i32, i32 addrspace(3)* %254, align 4, !tbaa !6
  %256 = sub nsw i32 %255, %3
  %257 = tail call i32 @llvm.smax.i32(i32 %250, i32 %253)
  %258 = tail call i32 @llvm.smax.i32(i32 %257, i32 %256)
  %259 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %245, i32 %123
  store i32 %258, i32 addrspace(3)* %259, align 4, !tbaa !6
  br label %260

260:                                              ; preds = %243, %241
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %261 = icmp ugt i32 %8, 7
  br i1 %261, label %279, label %262

262:                                              ; preds = %260
  %263 = sub nuw nsw i32 7, %8
  %264 = sub nuw nsw i32 8, %8
  %265 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %263, i32 %8
  %266 = load i32, i32 addrspace(3)* %265, align 4, !tbaa !6
  %267 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %263, i32 %8
  %268 = load i32, i32 addrspace(3)* %267, align 4, !tbaa !6
  %269 = add nsw i32 %268, %266
  %270 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %264, i32 %8
  %271 = load i32, i32 addrspace(3)* %270, align 4, !tbaa !6
  %272 = sub nsw i32 %271, %3
  %273 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %263, i32 %123
  %274 = load i32, i32 addrspace(3)* %273, align 4, !tbaa !6
  %275 = sub nsw i32 %274, %3
  %276 = tail call i32 @llvm.smax.i32(i32 %269, i32 %272)
  %277 = tail call i32 @llvm.smax.i32(i32 %276, i32 %275)
  %278 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %264, i32 %123
  store i32 %277, i32 addrspace(3)* %278, align 4, !tbaa !6
  br label %279

279:                                              ; preds = %262, %260
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %280 = icmp ugt i32 %8, 8
  br i1 %280, label %298, label %281

281:                                              ; preds = %279
  %282 = sub nuw nsw i32 8, %8
  %283 = sub nuw nsw i32 9, %8
  %284 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %282, i32 %8
  %285 = load i32, i32 addrspace(3)* %284, align 4, !tbaa !6
  %286 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %282, i32 %8
  %287 = load i32, i32 addrspace(3)* %286, align 4, !tbaa !6
  %288 = add nsw i32 %287, %285
  %289 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %283, i32 %8
  %290 = load i32, i32 addrspace(3)* %289, align 4, !tbaa !6
  %291 = sub nsw i32 %290, %3
  %292 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %282, i32 %123
  %293 = load i32, i32 addrspace(3)* %292, align 4, !tbaa !6
  %294 = sub nsw i32 %293, %3
  %295 = tail call i32 @llvm.smax.i32(i32 %288, i32 %291)
  %296 = tail call i32 @llvm.smax.i32(i32 %295, i32 %294)
  %297 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %283, i32 %123
  store i32 %296, i32 addrspace(3)* %297, align 4, !tbaa !6
  br label %298

298:                                              ; preds = %281, %279
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %299 = icmp ugt i32 %8, 9
  br i1 %299, label %317, label %300

300:                                              ; preds = %298
  %301 = sub nuw nsw i32 9, %8
  %302 = sub nuw nsw i32 10, %8
  %303 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %301, i32 %8
  %304 = load i32, i32 addrspace(3)* %303, align 4, !tbaa !6
  %305 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %301, i32 %8
  %306 = load i32, i32 addrspace(3)* %305, align 4, !tbaa !6
  %307 = add nsw i32 %306, %304
  %308 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %302, i32 %8
  %309 = load i32, i32 addrspace(3)* %308, align 4, !tbaa !6
  %310 = sub nsw i32 %309, %3
  %311 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %301, i32 %123
  %312 = load i32, i32 addrspace(3)* %311, align 4, !tbaa !6
  %313 = sub nsw i32 %312, %3
  %314 = tail call i32 @llvm.smax.i32(i32 %307, i32 %310)
  %315 = tail call i32 @llvm.smax.i32(i32 %314, i32 %313)
  %316 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %302, i32 %123
  store i32 %315, i32 addrspace(3)* %316, align 4, !tbaa !6
  br label %317

317:                                              ; preds = %300, %298
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %318 = icmp ugt i32 %8, 10
  br i1 %318, label %336, label %319

319:                                              ; preds = %317
  %320 = sub nuw nsw i32 10, %8
  %321 = sub nuw nsw i32 11, %8
  %322 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %320, i32 %8
  %323 = load i32, i32 addrspace(3)* %322, align 4, !tbaa !6
  %324 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %320, i32 %8
  %325 = load i32, i32 addrspace(3)* %324, align 4, !tbaa !6
  %326 = add nsw i32 %325, %323
  %327 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %321, i32 %8
  %328 = load i32, i32 addrspace(3)* %327, align 4, !tbaa !6
  %329 = sub nsw i32 %328, %3
  %330 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %320, i32 %123
  %331 = load i32, i32 addrspace(3)* %330, align 4, !tbaa !6
  %332 = sub nsw i32 %331, %3
  %333 = tail call i32 @llvm.smax.i32(i32 %326, i32 %329)
  %334 = tail call i32 @llvm.smax.i32(i32 %333, i32 %332)
  %335 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %321, i32 %123
  store i32 %334, i32 addrspace(3)* %335, align 4, !tbaa !6
  br label %336

336:                                              ; preds = %319, %317
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %337 = icmp ugt i32 %8, 11
  br i1 %337, label %355, label %338

338:                                              ; preds = %336
  %339 = sub nuw nsw i32 11, %8
  %340 = sub nuw nsw i32 12, %8
  %341 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %339, i32 %8
  %342 = load i32, i32 addrspace(3)* %341, align 4, !tbaa !6
  %343 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %339, i32 %8
  %344 = load i32, i32 addrspace(3)* %343, align 4, !tbaa !6
  %345 = add nsw i32 %344, %342
  %346 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %340, i32 %8
  %347 = load i32, i32 addrspace(3)* %346, align 4, !tbaa !6
  %348 = sub nsw i32 %347, %3
  %349 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %339, i32 %123
  %350 = load i32, i32 addrspace(3)* %349, align 4, !tbaa !6
  %351 = sub nsw i32 %350, %3
  %352 = tail call i32 @llvm.smax.i32(i32 %345, i32 %348)
  %353 = tail call i32 @llvm.smax.i32(i32 %352, i32 %351)
  %354 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %340, i32 %123
  store i32 %353, i32 addrspace(3)* %354, align 4, !tbaa !6
  br label %355

355:                                              ; preds = %338, %336
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %356 = icmp ugt i32 %8, 12
  br i1 %356, label %374, label %357

357:                                              ; preds = %355
  %358 = sub nuw nsw i32 12, %8
  %359 = sub nuw nsw i32 13, %8
  %360 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %358, i32 %8
  %361 = load i32, i32 addrspace(3)* %360, align 4, !tbaa !6
  %362 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %358, i32 %8
  %363 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %364 = add nsw i32 %363, %361
  %365 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %359, i32 %8
  %366 = load i32, i32 addrspace(3)* %365, align 4, !tbaa !6
  %367 = sub nsw i32 %366, %3
  %368 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %358, i32 %123
  %369 = load i32, i32 addrspace(3)* %368, align 4, !tbaa !6
  %370 = sub nsw i32 %369, %3
  %371 = tail call i32 @llvm.smax.i32(i32 %364, i32 %367)
  %372 = tail call i32 @llvm.smax.i32(i32 %371, i32 %370)
  %373 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %359, i32 %123
  store i32 %372, i32 addrspace(3)* %373, align 4, !tbaa !6
  br label %374

374:                                              ; preds = %357, %355
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %375 = icmp ugt i32 %8, 13
  br i1 %375, label %393, label %376

376:                                              ; preds = %374
  %377 = sub nuw nsw i32 13, %8
  %378 = sub nuw nsw i32 14, %8
  %379 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %377, i32 %8
  %380 = load i32, i32 addrspace(3)* %379, align 4, !tbaa !6
  %381 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %377, i32 %8
  %382 = load i32, i32 addrspace(3)* %381, align 4, !tbaa !6
  %383 = add nsw i32 %382, %380
  %384 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %378, i32 %8
  %385 = load i32, i32 addrspace(3)* %384, align 4, !tbaa !6
  %386 = sub nsw i32 %385, %3
  %387 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %377, i32 %123
  %388 = load i32, i32 addrspace(3)* %387, align 4, !tbaa !6
  %389 = sub nsw i32 %388, %3
  %390 = tail call i32 @llvm.smax.i32(i32 %383, i32 %386)
  %391 = tail call i32 @llvm.smax.i32(i32 %390, i32 %389)
  %392 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %378, i32 %123
  store i32 %391, i32 addrspace(3)* %392, align 4, !tbaa !6
  br label %393

393:                                              ; preds = %376, %374
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %394 = icmp ugt i32 %8, 14
  br i1 %394, label %412, label %395

395:                                              ; preds = %393
  %396 = sub nuw nsw i32 14, %8
  %397 = sub nuw nsw i32 15, %8
  %398 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %396, i32 %8
  %399 = load i32, i32 addrspace(3)* %398, align 4, !tbaa !6
  %400 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %396, i32 %8
  %401 = load i32, i32 addrspace(3)* %400, align 4, !tbaa !6
  %402 = add nsw i32 %401, %399
  %403 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %397, i32 %8
  %404 = load i32, i32 addrspace(3)* %403, align 4, !tbaa !6
  %405 = sub nsw i32 %404, %3
  %406 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %396, i32 %123
  %407 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !6
  %408 = sub nsw i32 %407, %3
  %409 = tail call i32 @llvm.smax.i32(i32 %402, i32 %405)
  %410 = tail call i32 @llvm.smax.i32(i32 %409, i32 %408)
  %411 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %397, i32 %123
  store i32 %410, i32 addrspace(3)* %411, align 4, !tbaa !6
  br label %412

412:                                              ; preds = %395, %393
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %413 = icmp ugt i32 %8, 15
  %414 = sub nsw i32 15, %8
  br i1 %413, label %431, label %415

415:                                              ; preds = %412
  %416 = sub nuw nsw i32 16, %8
  %417 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %8
  %418 = load i32, i32 addrspace(3)* %417, align 4, !tbaa !6
  %419 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %8
  %420 = load i32, i32 addrspace(3)* %419, align 4, !tbaa !6
  %421 = add nsw i32 %420, %418
  %422 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %416, i32 %8
  %423 = load i32, i32 addrspace(3)* %422, align 4, !tbaa !6
  %424 = sub nsw i32 %423, %3
  %425 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %123
  %426 = load i32, i32 addrspace(3)* %425, align 4, !tbaa !6
  %427 = sub nsw i32 %426, %3
  %428 = tail call i32 @llvm.smax.i32(i32 %421, i32 %424)
  %429 = tail call i32 @llvm.smax.i32(i32 %428, i32 %427)
  %430 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %416, i32 %123
  store i32 %429, i32 addrspace(3)* %430, align 4, !tbaa !6
  br label %431

431:                                              ; preds = %412, %415
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %432 = add nuw nsw i32 %8, 16
  %433 = sub nsw i32 16, %8
  br i1 %394, label %451, label %434

434:                                              ; preds = %431
  %435 = add nuw nsw i32 %8, 2
  %436 = add nuw nsw i32 %8, 1
  %437 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %436
  %438 = load i32, i32 addrspace(3)* %437, align 4, !tbaa !6
  %439 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %436
  %440 = load i32, i32 addrspace(3)* %439, align 4, !tbaa !6
  %441 = add nsw i32 %440, %438
  %442 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %436
  %443 = load i32, i32 addrspace(3)* %442, align 4, !tbaa !6
  %444 = sub nsw i32 %443, %3
  %445 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %435
  %446 = load i32, i32 addrspace(3)* %445, align 4, !tbaa !6
  %447 = sub nsw i32 %446, %3
  %448 = tail call i32 @llvm.smax.i32(i32 %441, i32 %444)
  %449 = tail call i32 @llvm.smax.i32(i32 %448, i32 %447)
  %450 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %435
  store i32 %449, i32 addrspace(3)* %450, align 4, !tbaa !6
  br label %451

451:                                              ; preds = %434, %431
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %375, label %469, label %452

452:                                              ; preds = %451
  %453 = add nuw nsw i32 %8, 3
  %454 = add nuw nsw i32 %8, 2
  %455 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %454
  %456 = load i32, i32 addrspace(3)* %455, align 4, !tbaa !6
  %457 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %454
  %458 = load i32, i32 addrspace(3)* %457, align 4, !tbaa !6
  %459 = add nsw i32 %458, %456
  %460 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %454
  %461 = load i32, i32 addrspace(3)* %460, align 4, !tbaa !6
  %462 = sub nsw i32 %461, %3
  %463 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %453
  %464 = load i32, i32 addrspace(3)* %463, align 4, !tbaa !6
  %465 = sub nsw i32 %464, %3
  %466 = tail call i32 @llvm.smax.i32(i32 %459, i32 %462)
  %467 = tail call i32 @llvm.smax.i32(i32 %466, i32 %465)
  %468 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %453
  store i32 %467, i32 addrspace(3)* %468, align 4, !tbaa !6
  br label %469

469:                                              ; preds = %452, %451
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %356, label %487, label %470

470:                                              ; preds = %469
  %471 = add nuw nsw i32 %8, 4
  %472 = add nuw nsw i32 %8, 3
  %473 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %472
  %474 = load i32, i32 addrspace(3)* %473, align 4, !tbaa !6
  %475 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %472
  %476 = load i32, i32 addrspace(3)* %475, align 4, !tbaa !6
  %477 = add nsw i32 %476, %474
  %478 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %472
  %479 = load i32, i32 addrspace(3)* %478, align 4, !tbaa !6
  %480 = sub nsw i32 %479, %3
  %481 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %471
  %482 = load i32, i32 addrspace(3)* %481, align 4, !tbaa !6
  %483 = sub nsw i32 %482, %3
  %484 = tail call i32 @llvm.smax.i32(i32 %477, i32 %480)
  %485 = tail call i32 @llvm.smax.i32(i32 %484, i32 %483)
  %486 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %471
  store i32 %485, i32 addrspace(3)* %486, align 4, !tbaa !6
  br label %487

487:                                              ; preds = %470, %469
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %337, label %505, label %488

488:                                              ; preds = %487
  %489 = add nuw nsw i32 %8, 5
  %490 = add nuw nsw i32 %8, 4
  %491 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %490
  %492 = load i32, i32 addrspace(3)* %491, align 4, !tbaa !6
  %493 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %490
  %494 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !6
  %495 = add nsw i32 %494, %492
  %496 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %490
  %497 = load i32, i32 addrspace(3)* %496, align 4, !tbaa !6
  %498 = sub nsw i32 %497, %3
  %499 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %489
  %500 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !6
  %501 = sub nsw i32 %500, %3
  %502 = tail call i32 @llvm.smax.i32(i32 %495, i32 %498)
  %503 = tail call i32 @llvm.smax.i32(i32 %502, i32 %501)
  %504 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %489
  store i32 %503, i32 addrspace(3)* %504, align 4, !tbaa !6
  br label %505

505:                                              ; preds = %488, %487
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %318, label %523, label %506

506:                                              ; preds = %505
  %507 = add nuw nsw i32 %8, 6
  %508 = add nuw nsw i32 %8, 5
  %509 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %508
  %510 = load i32, i32 addrspace(3)* %509, align 4, !tbaa !6
  %511 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %508
  %512 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %513 = add nsw i32 %512, %510
  %514 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %508
  %515 = load i32, i32 addrspace(3)* %514, align 4, !tbaa !6
  %516 = sub nsw i32 %515, %3
  %517 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %507
  %518 = load i32, i32 addrspace(3)* %517, align 4, !tbaa !6
  %519 = sub nsw i32 %518, %3
  %520 = tail call i32 @llvm.smax.i32(i32 %513, i32 %516)
  %521 = tail call i32 @llvm.smax.i32(i32 %520, i32 %519)
  %522 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %507
  store i32 %521, i32 addrspace(3)* %522, align 4, !tbaa !6
  br label %523

523:                                              ; preds = %506, %505
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %299, label %541, label %524

524:                                              ; preds = %523
  %525 = add nuw nsw i32 %8, 7
  %526 = add nuw nsw i32 %8, 6
  %527 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %526
  %528 = load i32, i32 addrspace(3)* %527, align 4, !tbaa !6
  %529 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %526
  %530 = load i32, i32 addrspace(3)* %529, align 4, !tbaa !6
  %531 = add nsw i32 %530, %528
  %532 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %526
  %533 = load i32, i32 addrspace(3)* %532, align 4, !tbaa !6
  %534 = sub nsw i32 %533, %3
  %535 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %525
  %536 = load i32, i32 addrspace(3)* %535, align 4, !tbaa !6
  %537 = sub nsw i32 %536, %3
  %538 = tail call i32 @llvm.smax.i32(i32 %531, i32 %534)
  %539 = tail call i32 @llvm.smax.i32(i32 %538, i32 %537)
  %540 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %525
  store i32 %539, i32 addrspace(3)* %540, align 4, !tbaa !6
  br label %541

541:                                              ; preds = %524, %523
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %280, label %559, label %542

542:                                              ; preds = %541
  %543 = add nuw nsw i32 %8, 8
  %544 = add nuw nsw i32 %8, 7
  %545 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %544
  %546 = load i32, i32 addrspace(3)* %545, align 4, !tbaa !6
  %547 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %544
  %548 = load i32, i32 addrspace(3)* %547, align 4, !tbaa !6
  %549 = add nsw i32 %548, %546
  %550 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %544
  %551 = load i32, i32 addrspace(3)* %550, align 4, !tbaa !6
  %552 = sub nsw i32 %551, %3
  %553 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %543
  %554 = load i32, i32 addrspace(3)* %553, align 4, !tbaa !6
  %555 = sub nsw i32 %554, %3
  %556 = tail call i32 @llvm.smax.i32(i32 %549, i32 %552)
  %557 = tail call i32 @llvm.smax.i32(i32 %556, i32 %555)
  %558 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %543
  store i32 %557, i32 addrspace(3)* %558, align 4, !tbaa !6
  br label %559

559:                                              ; preds = %542, %541
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %261, label %577, label %560

560:                                              ; preds = %559
  %561 = add nuw nsw i32 %8, 9
  %562 = add nuw nsw i32 %8, 8
  %563 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %562
  %564 = load i32, i32 addrspace(3)* %563, align 4, !tbaa !6
  %565 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %562
  %566 = load i32, i32 addrspace(3)* %565, align 4, !tbaa !6
  %567 = add nsw i32 %566, %564
  %568 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %562
  %569 = load i32, i32 addrspace(3)* %568, align 4, !tbaa !6
  %570 = sub nsw i32 %569, %3
  %571 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %561
  %572 = load i32, i32 addrspace(3)* %571, align 4, !tbaa !6
  %573 = sub nsw i32 %572, %3
  %574 = tail call i32 @llvm.smax.i32(i32 %567, i32 %570)
  %575 = tail call i32 @llvm.smax.i32(i32 %574, i32 %573)
  %576 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %561
  store i32 %575, i32 addrspace(3)* %576, align 4, !tbaa !6
  br label %577

577:                                              ; preds = %560, %559
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %242, label %595, label %578

578:                                              ; preds = %577
  %579 = add nuw nsw i32 %8, 10
  %580 = add nuw nsw i32 %8, 9
  %581 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %580
  %582 = load i32, i32 addrspace(3)* %581, align 4, !tbaa !6
  %583 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %580
  %584 = load i32, i32 addrspace(3)* %583, align 4, !tbaa !6
  %585 = add nsw i32 %584, %582
  %586 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %580
  %587 = load i32, i32 addrspace(3)* %586, align 4, !tbaa !6
  %588 = sub nsw i32 %587, %3
  %589 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %579
  %590 = load i32, i32 addrspace(3)* %589, align 4, !tbaa !6
  %591 = sub nsw i32 %590, %3
  %592 = tail call i32 @llvm.smax.i32(i32 %585, i32 %588)
  %593 = tail call i32 @llvm.smax.i32(i32 %592, i32 %591)
  %594 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %579
  store i32 %593, i32 addrspace(3)* %594, align 4, !tbaa !6
  br label %595

595:                                              ; preds = %578, %577
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %223, label %613, label %596

596:                                              ; preds = %595
  %597 = add nuw nsw i32 %8, 11
  %598 = add nuw nsw i32 %8, 10
  %599 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %598
  %600 = load i32, i32 addrspace(3)* %599, align 4, !tbaa !6
  %601 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %598
  %602 = load i32, i32 addrspace(3)* %601, align 4, !tbaa !6
  %603 = add nsw i32 %602, %600
  %604 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %598
  %605 = load i32, i32 addrspace(3)* %604, align 4, !tbaa !6
  %606 = sub nsw i32 %605, %3
  %607 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %597
  %608 = load i32, i32 addrspace(3)* %607, align 4, !tbaa !6
  %609 = sub nsw i32 %608, %3
  %610 = tail call i32 @llvm.smax.i32(i32 %603, i32 %606)
  %611 = tail call i32 @llvm.smax.i32(i32 %610, i32 %609)
  %612 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %597
  store i32 %611, i32 addrspace(3)* %612, align 4, !tbaa !6
  br label %613

613:                                              ; preds = %596, %595
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %204, label %631, label %614

614:                                              ; preds = %613
  %615 = add nuw nsw i32 %8, 12
  %616 = add nuw nsw i32 %8, 11
  %617 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %616
  %618 = load i32, i32 addrspace(3)* %617, align 4, !tbaa !6
  %619 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %616
  %620 = load i32, i32 addrspace(3)* %619, align 4, !tbaa !6
  %621 = add nsw i32 %620, %618
  %622 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %616
  %623 = load i32, i32 addrspace(3)* %622, align 4, !tbaa !6
  %624 = sub nsw i32 %623, %3
  %625 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %615
  %626 = load i32, i32 addrspace(3)* %625, align 4, !tbaa !6
  %627 = sub nsw i32 %626, %3
  %628 = tail call i32 @llvm.smax.i32(i32 %621, i32 %624)
  %629 = tail call i32 @llvm.smax.i32(i32 %628, i32 %627)
  %630 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %615
  store i32 %629, i32 addrspace(3)* %630, align 4, !tbaa !6
  br label %631

631:                                              ; preds = %614, %613
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %185, label %649, label %632

632:                                              ; preds = %631
  %633 = add nuw nsw i32 %8, 13
  %634 = add nuw nsw i32 %8, 12
  %635 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %634
  %636 = load i32, i32 addrspace(3)* %635, align 4, !tbaa !6
  %637 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %634
  %638 = load i32, i32 addrspace(3)* %637, align 4, !tbaa !6
  %639 = add nsw i32 %638, %636
  %640 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %634
  %641 = load i32, i32 addrspace(3)* %640, align 4, !tbaa !6
  %642 = sub nsw i32 %641, %3
  %643 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %633
  %644 = load i32, i32 addrspace(3)* %643, align 4, !tbaa !6
  %645 = sub nsw i32 %644, %3
  %646 = tail call i32 @llvm.smax.i32(i32 %639, i32 %642)
  %647 = tail call i32 @llvm.smax.i32(i32 %646, i32 %645)
  %648 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %633
  store i32 %647, i32 addrspace(3)* %648, align 4, !tbaa !6
  br label %649

649:                                              ; preds = %632, %631
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %166, label %667, label %650

650:                                              ; preds = %649
  %651 = add nuw nsw i32 %8, 14
  %652 = add nuw nsw i32 %8, 13
  %653 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %652
  %654 = load i32, i32 addrspace(3)* %653, align 4, !tbaa !6
  %655 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %652
  %656 = load i32, i32 addrspace(3)* %655, align 4, !tbaa !6
  %657 = add nsw i32 %656, %654
  %658 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %652
  %659 = load i32, i32 addrspace(3)* %658, align 4, !tbaa !6
  %660 = sub nsw i32 %659, %3
  %661 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %651
  %662 = load i32, i32 addrspace(3)* %661, align 4, !tbaa !6
  %663 = sub nsw i32 %662, %3
  %664 = tail call i32 @llvm.smax.i32(i32 %657, i32 %660)
  %665 = tail call i32 @llvm.smax.i32(i32 %664, i32 %663)
  %666 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %651
  store i32 %665, i32 addrspace(3)* %666, align 4, !tbaa !6
  br label %667

667:                                              ; preds = %650, %649
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %147, label %685, label %668

668:                                              ; preds = %667
  %669 = add nuw nsw i32 %8, 15
  %670 = add nuw nsw i32 %8, 14
  %671 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %670
  %672 = load i32, i32 addrspace(3)* %671, align 4, !tbaa !6
  %673 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %670
  %674 = load i32, i32 addrspace(3)* %673, align 4, !tbaa !6
  %675 = add nsw i32 %674, %672
  %676 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %670
  %677 = load i32, i32 addrspace(3)* %676, align 4, !tbaa !6
  %678 = sub nsw i32 %677, %3
  %679 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %669
  %680 = load i32, i32 addrspace(3)* %679, align 4, !tbaa !6
  %681 = sub nsw i32 %680, %3
  %682 = tail call i32 @llvm.smax.i32(i32 %675, i32 %678)
  %683 = tail call i32 @llvm.smax.i32(i32 %682, i32 %681)
  %684 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %669
  store i32 %683, i32 addrspace(3)* %684, align 4, !tbaa !6
  br label %685

685:                                              ; preds = %668, %667
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %129, label %686, label %702

686:                                              ; preds = %685
  %687 = add nuw nsw i32 %8, 15
  %688 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %687
  %689 = load i32, i32 addrspace(3)* %688, align 4, !tbaa !6
  %690 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE3ref, i32 0, i32 %414, i32 %687
  %691 = load i32, i32 addrspace(3)* %690, align 4, !tbaa !6
  %692 = add nsw i32 %691, %689
  %693 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %687
  %694 = load i32, i32 addrspace(3)* %693, align 4, !tbaa !6
  %695 = sub nsw i32 %694, %3
  %696 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %414, i32 %432
  %697 = load i32, i32 addrspace(3)* %696, align 4, !tbaa !6
  %698 = sub nsw i32 %697, %3
  %699 = tail call i32 @llvm.smax.i32(i32 %692, i32 %695)
  %700 = tail call i32 @llvm.smax.i32(i32 %699, i32 %698)
  %701 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 %433, i32 %432
  store i32 %700, i32 addrspace(3)* %701, align 4, !tbaa !6
  br label %702

702:                                              ; preds = %686, %685
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %703 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 1, i32 %123
  %704 = load i32, i32 addrspace(3)* %703, align 4, !tbaa !6
  %705 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %24
  store i32 %704, i32 addrspace(1)* %705, align 4, !tbaa !6
  %706 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 2, i32 %123
  %707 = load i32, i32 addrspace(3)* %706, align 4, !tbaa !6
  %708 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %29
  store i32 %707, i32 addrspace(1)* %708, align 4, !tbaa !6
  %709 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 3, i32 %123
  %710 = load i32, i32 addrspace(3)* %709, align 4, !tbaa !6
  %711 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %35
  store i32 %710, i32 addrspace(1)* %711, align 4, !tbaa !6
  %712 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 4, i32 %123
  %713 = load i32, i32 addrspace(3)* %712, align 4, !tbaa !6
  %714 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %41
  store i32 %713, i32 addrspace(1)* %714, align 4, !tbaa !6
  %715 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 5, i32 %123
  %716 = load i32, i32 addrspace(3)* %715, align 4, !tbaa !6
  %717 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %47
  store i32 %716, i32 addrspace(1)* %717, align 4, !tbaa !6
  %718 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 6, i32 %123
  %719 = load i32, i32 addrspace(3)* %718, align 4, !tbaa !6
  %720 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %53
  store i32 %719, i32 addrspace(1)* %720, align 4, !tbaa !6
  %721 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 7, i32 %123
  %722 = load i32, i32 addrspace(3)* %721, align 4, !tbaa !6
  %723 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %59
  store i32 %722, i32 addrspace(1)* %723, align 4, !tbaa !6
  %724 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 8, i32 %123
  %725 = load i32, i32 addrspace(3)* %724, align 4, !tbaa !6
  %726 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %65
  store i32 %725, i32 addrspace(1)* %726, align 4, !tbaa !6
  %727 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 9, i32 %123
  %728 = load i32, i32 addrspace(3)* %727, align 4, !tbaa !6
  %729 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %71
  store i32 %728, i32 addrspace(1)* %729, align 4, !tbaa !6
  %730 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 10, i32 %123
  %731 = load i32, i32 addrspace(3)* %730, align 4, !tbaa !6
  %732 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %77
  store i32 %731, i32 addrspace(1)* %732, align 4, !tbaa !6
  %733 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 11, i32 %123
  %734 = load i32, i32 addrspace(3)* %733, align 4, !tbaa !6
  %735 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %83
  store i32 %734, i32 addrspace(1)* %735, align 4, !tbaa !6
  %736 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 12, i32 %123
  %737 = load i32, i32 addrspace(3)* %736, align 4, !tbaa !6
  %738 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %89
  store i32 %737, i32 addrspace(1)* %738, align 4, !tbaa !6
  %739 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 13, i32 %123
  %740 = load i32, i32 addrspace(3)* %739, align 4, !tbaa !6
  %741 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %95
  store i32 %740, i32 addrspace(1)* %741, align 4, !tbaa !6
  %742 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 14, i32 %123
  %743 = load i32, i32 addrspace(3)* %742, align 4, !tbaa !6
  %744 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %101
  store i32 %743, i32 addrspace(1)* %744, align 4, !tbaa !6
  %745 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 15, i32 %123
  %746 = load i32, i32 addrspace(3)* %745, align 4, !tbaa !6
  %747 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %107
  store i32 %746, i32 addrspace(1)* %747, align 4, !tbaa !6
  %748 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_1PiS_iiiiE4temp, i32 0, i32 16, i32 %123
  %749 = load i32, i32 addrspace(3)* %748, align 4, !tbaa !6
  %750 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %113
  store i32 %749, i32 addrspace(1)* %750, align 4, !tbaa !6
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
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %113 = icmp eq i32 %8, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %6
  %115 = sext i32 %16 to i64
  %116 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %115
  %117 = load i32, i32 addrspace(1)* %116, align 4, !tbaa !6, !amdgpu.noclobber !10
  store i32 %117, i32 addrspace(3)* getelementptr inbounds ([17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 0), align 16, !tbaa !6
  br label %118

118:                                              ; preds = %114, %6
  %119 = mul nsw i32 %8, %2
  %120 = add i32 %119, %2
  %121 = add i32 %120, %16
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %122
  %124 = load i32, i32 addrspace(1)* %123, align 4, !tbaa !6, !amdgpu.noclobber !10
  %125 = add nuw nsw i32 %8, 1
  %126 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %125, i32 0
  store i32 %124, i32 addrspace(3)* %126, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %127 = sext i32 %18 to i64
  %128 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %127
  %129 = load i32, i32 addrspace(1)* %128, align 4, !tbaa !6, !amdgpu.noclobber !10
  %130 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 %125
  store i32 %129, i32 addrspace(3)* %130, align 4, !tbaa !6
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %131 = icmp eq i32 %8, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %118
  %133 = sub nuw nsw i32 1, %8
  %134 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 %8
  %135 = load i32, i32 addrspace(3)* %134, align 4, !tbaa !6
  %136 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 0, i32 %8
  %137 = load i32, i32 addrspace(3)* %136, align 4, !tbaa !6
  %138 = add nsw i32 %137, %135
  %139 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %133, i32 %8
  %140 = load i32, i32 addrspace(3)* %139, align 4, !tbaa !6
  %141 = sub nsw i32 %140, %3
  %142 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 0, i32 %125
  %143 = load i32, i32 addrspace(3)* %142, align 4, !tbaa !6
  %144 = sub nsw i32 %143, %3
  %145 = tail call i32 @llvm.smax.i32(i32 %138, i32 %141)
  %146 = tail call i32 @llvm.smax.i32(i32 %145, i32 %144)
  %147 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %133, i32 %125
  store i32 %146, i32 addrspace(3)* %147, align 4, !tbaa !6
  br label %148

148:                                              ; preds = %132, %118
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %149 = icmp ugt i32 %8, 1
  br i1 %149, label %167, label %150

150:                                              ; preds = %148
  %151 = sub nuw nsw i32 1, %8
  %152 = sub nuw nsw i32 2, %8
  %153 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %151, i32 %8
  %154 = load i32, i32 addrspace(3)* %153, align 4, !tbaa !6
  %155 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %151, i32 %8
  %156 = load i32, i32 addrspace(3)* %155, align 4, !tbaa !6
  %157 = add nsw i32 %156, %154
  %158 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %152, i32 %8
  %159 = load i32, i32 addrspace(3)* %158, align 4, !tbaa !6
  %160 = sub nsw i32 %159, %3
  %161 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %151, i32 %125
  %162 = load i32, i32 addrspace(3)* %161, align 4, !tbaa !6
  %163 = sub nsw i32 %162, %3
  %164 = tail call i32 @llvm.smax.i32(i32 %157, i32 %160)
  %165 = tail call i32 @llvm.smax.i32(i32 %164, i32 %163)
  %166 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %152, i32 %125
  store i32 %165, i32 addrspace(3)* %166, align 4, !tbaa !6
  br label %167

167:                                              ; preds = %150, %148
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %168 = icmp ugt i32 %8, 2
  br i1 %168, label %186, label %169

169:                                              ; preds = %167
  %170 = sub nuw nsw i32 2, %8
  %171 = sub nuw nsw i32 3, %8
  %172 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %170, i32 %8
  %173 = load i32, i32 addrspace(3)* %172, align 4, !tbaa !6
  %174 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %170, i32 %8
  %175 = load i32, i32 addrspace(3)* %174, align 4, !tbaa !6
  %176 = add nsw i32 %175, %173
  %177 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %171, i32 %8
  %178 = load i32, i32 addrspace(3)* %177, align 4, !tbaa !6
  %179 = sub nsw i32 %178, %3
  %180 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %170, i32 %125
  %181 = load i32, i32 addrspace(3)* %180, align 4, !tbaa !6
  %182 = sub nsw i32 %181, %3
  %183 = tail call i32 @llvm.smax.i32(i32 %176, i32 %179)
  %184 = tail call i32 @llvm.smax.i32(i32 %183, i32 %182)
  %185 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %171, i32 %125
  store i32 %184, i32 addrspace(3)* %185, align 4, !tbaa !6
  br label %186

186:                                              ; preds = %169, %167
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %187 = icmp ugt i32 %8, 3
  br i1 %187, label %205, label %188

188:                                              ; preds = %186
  %189 = sub nuw nsw i32 3, %8
  %190 = sub nuw nsw i32 4, %8
  %191 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %189, i32 %8
  %192 = load i32, i32 addrspace(3)* %191, align 4, !tbaa !6
  %193 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %189, i32 %8
  %194 = load i32, i32 addrspace(3)* %193, align 4, !tbaa !6
  %195 = add nsw i32 %194, %192
  %196 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %190, i32 %8
  %197 = load i32, i32 addrspace(3)* %196, align 4, !tbaa !6
  %198 = sub nsw i32 %197, %3
  %199 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %189, i32 %125
  %200 = load i32, i32 addrspace(3)* %199, align 4, !tbaa !6
  %201 = sub nsw i32 %200, %3
  %202 = tail call i32 @llvm.smax.i32(i32 %195, i32 %198)
  %203 = tail call i32 @llvm.smax.i32(i32 %202, i32 %201)
  %204 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %190, i32 %125
  store i32 %203, i32 addrspace(3)* %204, align 4, !tbaa !6
  br label %205

205:                                              ; preds = %188, %186
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %206 = icmp ugt i32 %8, 4
  br i1 %206, label %224, label %207

207:                                              ; preds = %205
  %208 = sub nuw nsw i32 4, %8
  %209 = sub nuw nsw i32 5, %8
  %210 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %208, i32 %8
  %211 = load i32, i32 addrspace(3)* %210, align 4, !tbaa !6
  %212 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %208, i32 %8
  %213 = load i32, i32 addrspace(3)* %212, align 4, !tbaa !6
  %214 = add nsw i32 %213, %211
  %215 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %209, i32 %8
  %216 = load i32, i32 addrspace(3)* %215, align 4, !tbaa !6
  %217 = sub nsw i32 %216, %3
  %218 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %208, i32 %125
  %219 = load i32, i32 addrspace(3)* %218, align 4, !tbaa !6
  %220 = sub nsw i32 %219, %3
  %221 = tail call i32 @llvm.smax.i32(i32 %214, i32 %217)
  %222 = tail call i32 @llvm.smax.i32(i32 %221, i32 %220)
  %223 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %209, i32 %125
  store i32 %222, i32 addrspace(3)* %223, align 4, !tbaa !6
  br label %224

224:                                              ; preds = %207, %205
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %225 = icmp ugt i32 %8, 5
  br i1 %225, label %243, label %226

226:                                              ; preds = %224
  %227 = sub nuw nsw i32 5, %8
  %228 = sub nuw nsw i32 6, %8
  %229 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %227, i32 %8
  %230 = load i32, i32 addrspace(3)* %229, align 4, !tbaa !6
  %231 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %227, i32 %8
  %232 = load i32, i32 addrspace(3)* %231, align 4, !tbaa !6
  %233 = add nsw i32 %232, %230
  %234 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %228, i32 %8
  %235 = load i32, i32 addrspace(3)* %234, align 4, !tbaa !6
  %236 = sub nsw i32 %235, %3
  %237 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %227, i32 %125
  %238 = load i32, i32 addrspace(3)* %237, align 4, !tbaa !6
  %239 = sub nsw i32 %238, %3
  %240 = tail call i32 @llvm.smax.i32(i32 %233, i32 %236)
  %241 = tail call i32 @llvm.smax.i32(i32 %240, i32 %239)
  %242 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %228, i32 %125
  store i32 %241, i32 addrspace(3)* %242, align 4, !tbaa !6
  br label %243

243:                                              ; preds = %226, %224
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %244 = icmp ugt i32 %8, 6
  br i1 %244, label %262, label %245

245:                                              ; preds = %243
  %246 = sub nuw nsw i32 6, %8
  %247 = sub nuw nsw i32 7, %8
  %248 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %246, i32 %8
  %249 = load i32, i32 addrspace(3)* %248, align 4, !tbaa !6
  %250 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %246, i32 %8
  %251 = load i32, i32 addrspace(3)* %250, align 4, !tbaa !6
  %252 = add nsw i32 %251, %249
  %253 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %247, i32 %8
  %254 = load i32, i32 addrspace(3)* %253, align 4, !tbaa !6
  %255 = sub nsw i32 %254, %3
  %256 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %246, i32 %125
  %257 = load i32, i32 addrspace(3)* %256, align 4, !tbaa !6
  %258 = sub nsw i32 %257, %3
  %259 = tail call i32 @llvm.smax.i32(i32 %252, i32 %255)
  %260 = tail call i32 @llvm.smax.i32(i32 %259, i32 %258)
  %261 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %247, i32 %125
  store i32 %260, i32 addrspace(3)* %261, align 4, !tbaa !6
  br label %262

262:                                              ; preds = %245, %243
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %263 = icmp ugt i32 %8, 7
  br i1 %263, label %281, label %264

264:                                              ; preds = %262
  %265 = sub nuw nsw i32 7, %8
  %266 = sub nuw nsw i32 8, %8
  %267 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %265, i32 %8
  %268 = load i32, i32 addrspace(3)* %267, align 4, !tbaa !6
  %269 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %265, i32 %8
  %270 = load i32, i32 addrspace(3)* %269, align 4, !tbaa !6
  %271 = add nsw i32 %270, %268
  %272 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %266, i32 %8
  %273 = load i32, i32 addrspace(3)* %272, align 4, !tbaa !6
  %274 = sub nsw i32 %273, %3
  %275 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %265, i32 %125
  %276 = load i32, i32 addrspace(3)* %275, align 4, !tbaa !6
  %277 = sub nsw i32 %276, %3
  %278 = tail call i32 @llvm.smax.i32(i32 %271, i32 %274)
  %279 = tail call i32 @llvm.smax.i32(i32 %278, i32 %277)
  %280 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %266, i32 %125
  store i32 %279, i32 addrspace(3)* %280, align 4, !tbaa !6
  br label %281

281:                                              ; preds = %264, %262
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %282 = icmp ugt i32 %8, 8
  br i1 %282, label %300, label %283

283:                                              ; preds = %281
  %284 = sub nuw nsw i32 8, %8
  %285 = sub nuw nsw i32 9, %8
  %286 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %284, i32 %8
  %287 = load i32, i32 addrspace(3)* %286, align 4, !tbaa !6
  %288 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %284, i32 %8
  %289 = load i32, i32 addrspace(3)* %288, align 4, !tbaa !6
  %290 = add nsw i32 %289, %287
  %291 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %285, i32 %8
  %292 = load i32, i32 addrspace(3)* %291, align 4, !tbaa !6
  %293 = sub nsw i32 %292, %3
  %294 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %284, i32 %125
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !6
  %296 = sub nsw i32 %295, %3
  %297 = tail call i32 @llvm.smax.i32(i32 %290, i32 %293)
  %298 = tail call i32 @llvm.smax.i32(i32 %297, i32 %296)
  %299 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %285, i32 %125
  store i32 %298, i32 addrspace(3)* %299, align 4, !tbaa !6
  br label %300

300:                                              ; preds = %283, %281
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %301 = icmp ugt i32 %8, 9
  br i1 %301, label %319, label %302

302:                                              ; preds = %300
  %303 = sub nuw nsw i32 9, %8
  %304 = sub nuw nsw i32 10, %8
  %305 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %303, i32 %8
  %306 = load i32, i32 addrspace(3)* %305, align 4, !tbaa !6
  %307 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %303, i32 %8
  %308 = load i32, i32 addrspace(3)* %307, align 4, !tbaa !6
  %309 = add nsw i32 %308, %306
  %310 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %304, i32 %8
  %311 = load i32, i32 addrspace(3)* %310, align 4, !tbaa !6
  %312 = sub nsw i32 %311, %3
  %313 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %303, i32 %125
  %314 = load i32, i32 addrspace(3)* %313, align 4, !tbaa !6
  %315 = sub nsw i32 %314, %3
  %316 = tail call i32 @llvm.smax.i32(i32 %309, i32 %312)
  %317 = tail call i32 @llvm.smax.i32(i32 %316, i32 %315)
  %318 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %304, i32 %125
  store i32 %317, i32 addrspace(3)* %318, align 4, !tbaa !6
  br label %319

319:                                              ; preds = %302, %300
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %320 = icmp ugt i32 %8, 10
  br i1 %320, label %338, label %321

321:                                              ; preds = %319
  %322 = sub nuw nsw i32 10, %8
  %323 = sub nuw nsw i32 11, %8
  %324 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %322, i32 %8
  %325 = load i32, i32 addrspace(3)* %324, align 4, !tbaa !6
  %326 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %322, i32 %8
  %327 = load i32, i32 addrspace(3)* %326, align 4, !tbaa !6
  %328 = add nsw i32 %327, %325
  %329 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %323, i32 %8
  %330 = load i32, i32 addrspace(3)* %329, align 4, !tbaa !6
  %331 = sub nsw i32 %330, %3
  %332 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %322, i32 %125
  %333 = load i32, i32 addrspace(3)* %332, align 4, !tbaa !6
  %334 = sub nsw i32 %333, %3
  %335 = tail call i32 @llvm.smax.i32(i32 %328, i32 %331)
  %336 = tail call i32 @llvm.smax.i32(i32 %335, i32 %334)
  %337 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %323, i32 %125
  store i32 %336, i32 addrspace(3)* %337, align 4, !tbaa !6
  br label %338

338:                                              ; preds = %321, %319
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %339 = icmp ugt i32 %8, 11
  br i1 %339, label %357, label %340

340:                                              ; preds = %338
  %341 = sub nuw nsw i32 11, %8
  %342 = sub nuw nsw i32 12, %8
  %343 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %341, i32 %8
  %344 = load i32, i32 addrspace(3)* %343, align 4, !tbaa !6
  %345 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %341, i32 %8
  %346 = load i32, i32 addrspace(3)* %345, align 4, !tbaa !6
  %347 = add nsw i32 %346, %344
  %348 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %342, i32 %8
  %349 = load i32, i32 addrspace(3)* %348, align 4, !tbaa !6
  %350 = sub nsw i32 %349, %3
  %351 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %341, i32 %125
  %352 = load i32, i32 addrspace(3)* %351, align 4, !tbaa !6
  %353 = sub nsw i32 %352, %3
  %354 = tail call i32 @llvm.smax.i32(i32 %347, i32 %350)
  %355 = tail call i32 @llvm.smax.i32(i32 %354, i32 %353)
  %356 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %342, i32 %125
  store i32 %355, i32 addrspace(3)* %356, align 4, !tbaa !6
  br label %357

357:                                              ; preds = %340, %338
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %358 = icmp ugt i32 %8, 12
  br i1 %358, label %376, label %359

359:                                              ; preds = %357
  %360 = sub nuw nsw i32 12, %8
  %361 = sub nuw nsw i32 13, %8
  %362 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %360, i32 %8
  %363 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !6
  %364 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %360, i32 %8
  %365 = load i32, i32 addrspace(3)* %364, align 4, !tbaa !6
  %366 = add nsw i32 %365, %363
  %367 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %361, i32 %8
  %368 = load i32, i32 addrspace(3)* %367, align 4, !tbaa !6
  %369 = sub nsw i32 %368, %3
  %370 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %360, i32 %125
  %371 = load i32, i32 addrspace(3)* %370, align 4, !tbaa !6
  %372 = sub nsw i32 %371, %3
  %373 = tail call i32 @llvm.smax.i32(i32 %366, i32 %369)
  %374 = tail call i32 @llvm.smax.i32(i32 %373, i32 %372)
  %375 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %361, i32 %125
  store i32 %374, i32 addrspace(3)* %375, align 4, !tbaa !6
  br label %376

376:                                              ; preds = %359, %357
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %377 = icmp ugt i32 %8, 13
  br i1 %377, label %395, label %378

378:                                              ; preds = %376
  %379 = sub nuw nsw i32 13, %8
  %380 = sub nuw nsw i32 14, %8
  %381 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %379, i32 %8
  %382 = load i32, i32 addrspace(3)* %381, align 4, !tbaa !6
  %383 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %379, i32 %8
  %384 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !6
  %385 = add nsw i32 %384, %382
  %386 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %380, i32 %8
  %387 = load i32, i32 addrspace(3)* %386, align 4, !tbaa !6
  %388 = sub nsw i32 %387, %3
  %389 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %379, i32 %125
  %390 = load i32, i32 addrspace(3)* %389, align 4, !tbaa !6
  %391 = sub nsw i32 %390, %3
  %392 = tail call i32 @llvm.smax.i32(i32 %385, i32 %388)
  %393 = tail call i32 @llvm.smax.i32(i32 %392, i32 %391)
  %394 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %380, i32 %125
  store i32 %393, i32 addrspace(3)* %394, align 4, !tbaa !6
  br label %395

395:                                              ; preds = %378, %376
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %396 = icmp ugt i32 %8, 14
  br i1 %396, label %414, label %397

397:                                              ; preds = %395
  %398 = sub nuw nsw i32 14, %8
  %399 = sub nuw nsw i32 15, %8
  %400 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %398, i32 %8
  %401 = load i32, i32 addrspace(3)* %400, align 4, !tbaa !6
  %402 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %398, i32 %8
  %403 = load i32, i32 addrspace(3)* %402, align 4, !tbaa !6
  %404 = add nsw i32 %403, %401
  %405 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %399, i32 %8
  %406 = load i32, i32 addrspace(3)* %405, align 4, !tbaa !6
  %407 = sub nsw i32 %406, %3
  %408 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %398, i32 %125
  %409 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !6
  %410 = sub nsw i32 %409, %3
  %411 = tail call i32 @llvm.smax.i32(i32 %404, i32 %407)
  %412 = tail call i32 @llvm.smax.i32(i32 %411, i32 %410)
  %413 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %399, i32 %125
  store i32 %412, i32 addrspace(3)* %413, align 4, !tbaa !6
  br label %414

414:                                              ; preds = %397, %395
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %415 = icmp ugt i32 %8, 15
  %416 = sub nsw i32 15, %8
  br i1 %415, label %433, label %417

417:                                              ; preds = %414
  %418 = sub nuw nsw i32 16, %8
  %419 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %8
  %420 = load i32, i32 addrspace(3)* %419, align 4, !tbaa !6
  %421 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %8
  %422 = load i32, i32 addrspace(3)* %421, align 4, !tbaa !6
  %423 = add nsw i32 %422, %420
  %424 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %418, i32 %8
  %425 = load i32, i32 addrspace(3)* %424, align 4, !tbaa !6
  %426 = sub nsw i32 %425, %3
  %427 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %125
  %428 = load i32, i32 addrspace(3)* %427, align 4, !tbaa !6
  %429 = sub nsw i32 %428, %3
  %430 = tail call i32 @llvm.smax.i32(i32 %423, i32 %426)
  %431 = tail call i32 @llvm.smax.i32(i32 %430, i32 %429)
  %432 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %418, i32 %125
  store i32 %431, i32 addrspace(3)* %432, align 4, !tbaa !6
  br label %433

433:                                              ; preds = %414, %417
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %434 = add nuw nsw i32 %8, 16
  %435 = sub nsw i32 16, %8
  br i1 %396, label %453, label %436

436:                                              ; preds = %433
  %437 = add nuw nsw i32 %8, 2
  %438 = add nuw nsw i32 %8, 1
  %439 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %438
  %440 = load i32, i32 addrspace(3)* %439, align 4, !tbaa !6
  %441 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %438
  %442 = load i32, i32 addrspace(3)* %441, align 4, !tbaa !6
  %443 = add nsw i32 %442, %440
  %444 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %438
  %445 = load i32, i32 addrspace(3)* %444, align 4, !tbaa !6
  %446 = sub nsw i32 %445, %3
  %447 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %437
  %448 = load i32, i32 addrspace(3)* %447, align 4, !tbaa !6
  %449 = sub nsw i32 %448, %3
  %450 = tail call i32 @llvm.smax.i32(i32 %443, i32 %446)
  %451 = tail call i32 @llvm.smax.i32(i32 %450, i32 %449)
  %452 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %437
  store i32 %451, i32 addrspace(3)* %452, align 4, !tbaa !6
  br label %453

453:                                              ; preds = %436, %433
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %377, label %471, label %454

454:                                              ; preds = %453
  %455 = add nuw nsw i32 %8, 3
  %456 = add nuw nsw i32 %8, 2
  %457 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %456
  %458 = load i32, i32 addrspace(3)* %457, align 4, !tbaa !6
  %459 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %456
  %460 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !6
  %461 = add nsw i32 %460, %458
  %462 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %456
  %463 = load i32, i32 addrspace(3)* %462, align 4, !tbaa !6
  %464 = sub nsw i32 %463, %3
  %465 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %455
  %466 = load i32, i32 addrspace(3)* %465, align 4, !tbaa !6
  %467 = sub nsw i32 %466, %3
  %468 = tail call i32 @llvm.smax.i32(i32 %461, i32 %464)
  %469 = tail call i32 @llvm.smax.i32(i32 %468, i32 %467)
  %470 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %455
  store i32 %469, i32 addrspace(3)* %470, align 4, !tbaa !6
  br label %471

471:                                              ; preds = %454, %453
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %358, label %489, label %472

472:                                              ; preds = %471
  %473 = add nuw nsw i32 %8, 4
  %474 = add nuw nsw i32 %8, 3
  %475 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %474
  %476 = load i32, i32 addrspace(3)* %475, align 4, !tbaa !6
  %477 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %474
  %478 = load i32, i32 addrspace(3)* %477, align 4, !tbaa !6
  %479 = add nsw i32 %478, %476
  %480 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %474
  %481 = load i32, i32 addrspace(3)* %480, align 4, !tbaa !6
  %482 = sub nsw i32 %481, %3
  %483 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %473
  %484 = load i32, i32 addrspace(3)* %483, align 4, !tbaa !6
  %485 = sub nsw i32 %484, %3
  %486 = tail call i32 @llvm.smax.i32(i32 %479, i32 %482)
  %487 = tail call i32 @llvm.smax.i32(i32 %486, i32 %485)
  %488 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %473
  store i32 %487, i32 addrspace(3)* %488, align 4, !tbaa !6
  br label %489

489:                                              ; preds = %472, %471
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %339, label %507, label %490

490:                                              ; preds = %489
  %491 = add nuw nsw i32 %8, 5
  %492 = add nuw nsw i32 %8, 4
  %493 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %492
  %494 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !6
  %495 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %492
  %496 = load i32, i32 addrspace(3)* %495, align 4, !tbaa !6
  %497 = add nsw i32 %496, %494
  %498 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %492
  %499 = load i32, i32 addrspace(3)* %498, align 4, !tbaa !6
  %500 = sub nsw i32 %499, %3
  %501 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %491
  %502 = load i32, i32 addrspace(3)* %501, align 4, !tbaa !6
  %503 = sub nsw i32 %502, %3
  %504 = tail call i32 @llvm.smax.i32(i32 %497, i32 %500)
  %505 = tail call i32 @llvm.smax.i32(i32 %504, i32 %503)
  %506 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %491
  store i32 %505, i32 addrspace(3)* %506, align 4, !tbaa !6
  br label %507

507:                                              ; preds = %490, %489
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %320, label %525, label %508

508:                                              ; preds = %507
  %509 = add nuw nsw i32 %8, 6
  %510 = add nuw nsw i32 %8, 5
  %511 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %510
  %512 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !6
  %513 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %510
  %514 = load i32, i32 addrspace(3)* %513, align 4, !tbaa !6
  %515 = add nsw i32 %514, %512
  %516 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %510
  %517 = load i32, i32 addrspace(3)* %516, align 4, !tbaa !6
  %518 = sub nsw i32 %517, %3
  %519 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %509
  %520 = load i32, i32 addrspace(3)* %519, align 4, !tbaa !6
  %521 = sub nsw i32 %520, %3
  %522 = tail call i32 @llvm.smax.i32(i32 %515, i32 %518)
  %523 = tail call i32 @llvm.smax.i32(i32 %522, i32 %521)
  %524 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %509
  store i32 %523, i32 addrspace(3)* %524, align 4, !tbaa !6
  br label %525

525:                                              ; preds = %508, %507
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %301, label %543, label %526

526:                                              ; preds = %525
  %527 = add nuw nsw i32 %8, 7
  %528 = add nuw nsw i32 %8, 6
  %529 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %528
  %530 = load i32, i32 addrspace(3)* %529, align 4, !tbaa !6
  %531 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %528
  %532 = load i32, i32 addrspace(3)* %531, align 4, !tbaa !6
  %533 = add nsw i32 %532, %530
  %534 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %528
  %535 = load i32, i32 addrspace(3)* %534, align 4, !tbaa !6
  %536 = sub nsw i32 %535, %3
  %537 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %527
  %538 = load i32, i32 addrspace(3)* %537, align 4, !tbaa !6
  %539 = sub nsw i32 %538, %3
  %540 = tail call i32 @llvm.smax.i32(i32 %533, i32 %536)
  %541 = tail call i32 @llvm.smax.i32(i32 %540, i32 %539)
  %542 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %527
  store i32 %541, i32 addrspace(3)* %542, align 4, !tbaa !6
  br label %543

543:                                              ; preds = %526, %525
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %282, label %561, label %544

544:                                              ; preds = %543
  %545 = add nuw nsw i32 %8, 8
  %546 = add nuw nsw i32 %8, 7
  %547 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %546
  %548 = load i32, i32 addrspace(3)* %547, align 4, !tbaa !6
  %549 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %546
  %550 = load i32, i32 addrspace(3)* %549, align 4, !tbaa !6
  %551 = add nsw i32 %550, %548
  %552 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %546
  %553 = load i32, i32 addrspace(3)* %552, align 4, !tbaa !6
  %554 = sub nsw i32 %553, %3
  %555 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %545
  %556 = load i32, i32 addrspace(3)* %555, align 4, !tbaa !6
  %557 = sub nsw i32 %556, %3
  %558 = tail call i32 @llvm.smax.i32(i32 %551, i32 %554)
  %559 = tail call i32 @llvm.smax.i32(i32 %558, i32 %557)
  %560 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %545
  store i32 %559, i32 addrspace(3)* %560, align 4, !tbaa !6
  br label %561

561:                                              ; preds = %544, %543
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %263, label %579, label %562

562:                                              ; preds = %561
  %563 = add nuw nsw i32 %8, 9
  %564 = add nuw nsw i32 %8, 8
  %565 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %564
  %566 = load i32, i32 addrspace(3)* %565, align 4, !tbaa !6
  %567 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %564
  %568 = load i32, i32 addrspace(3)* %567, align 4, !tbaa !6
  %569 = add nsw i32 %568, %566
  %570 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %564
  %571 = load i32, i32 addrspace(3)* %570, align 4, !tbaa !6
  %572 = sub nsw i32 %571, %3
  %573 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %563
  %574 = load i32, i32 addrspace(3)* %573, align 4, !tbaa !6
  %575 = sub nsw i32 %574, %3
  %576 = tail call i32 @llvm.smax.i32(i32 %569, i32 %572)
  %577 = tail call i32 @llvm.smax.i32(i32 %576, i32 %575)
  %578 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %563
  store i32 %577, i32 addrspace(3)* %578, align 4, !tbaa !6
  br label %579

579:                                              ; preds = %562, %561
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %244, label %597, label %580

580:                                              ; preds = %579
  %581 = add nuw nsw i32 %8, 10
  %582 = add nuw nsw i32 %8, 9
  %583 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %582
  %584 = load i32, i32 addrspace(3)* %583, align 4, !tbaa !6
  %585 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %582
  %586 = load i32, i32 addrspace(3)* %585, align 4, !tbaa !6
  %587 = add nsw i32 %586, %584
  %588 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %582
  %589 = load i32, i32 addrspace(3)* %588, align 4, !tbaa !6
  %590 = sub nsw i32 %589, %3
  %591 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %581
  %592 = load i32, i32 addrspace(3)* %591, align 4, !tbaa !6
  %593 = sub nsw i32 %592, %3
  %594 = tail call i32 @llvm.smax.i32(i32 %587, i32 %590)
  %595 = tail call i32 @llvm.smax.i32(i32 %594, i32 %593)
  %596 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %581
  store i32 %595, i32 addrspace(3)* %596, align 4, !tbaa !6
  br label %597

597:                                              ; preds = %580, %579
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %225, label %615, label %598

598:                                              ; preds = %597
  %599 = add nuw nsw i32 %8, 11
  %600 = add nuw nsw i32 %8, 10
  %601 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %600
  %602 = load i32, i32 addrspace(3)* %601, align 4, !tbaa !6
  %603 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %600
  %604 = load i32, i32 addrspace(3)* %603, align 4, !tbaa !6
  %605 = add nsw i32 %604, %602
  %606 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %600
  %607 = load i32, i32 addrspace(3)* %606, align 4, !tbaa !6
  %608 = sub nsw i32 %607, %3
  %609 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %599
  %610 = load i32, i32 addrspace(3)* %609, align 4, !tbaa !6
  %611 = sub nsw i32 %610, %3
  %612 = tail call i32 @llvm.smax.i32(i32 %605, i32 %608)
  %613 = tail call i32 @llvm.smax.i32(i32 %612, i32 %611)
  %614 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %599
  store i32 %613, i32 addrspace(3)* %614, align 4, !tbaa !6
  br label %615

615:                                              ; preds = %598, %597
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %206, label %633, label %616

616:                                              ; preds = %615
  %617 = add nuw nsw i32 %8, 12
  %618 = add nuw nsw i32 %8, 11
  %619 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %618
  %620 = load i32, i32 addrspace(3)* %619, align 4, !tbaa !6
  %621 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %618
  %622 = load i32, i32 addrspace(3)* %621, align 4, !tbaa !6
  %623 = add nsw i32 %622, %620
  %624 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %618
  %625 = load i32, i32 addrspace(3)* %624, align 4, !tbaa !6
  %626 = sub nsw i32 %625, %3
  %627 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %617
  %628 = load i32, i32 addrspace(3)* %627, align 4, !tbaa !6
  %629 = sub nsw i32 %628, %3
  %630 = tail call i32 @llvm.smax.i32(i32 %623, i32 %626)
  %631 = tail call i32 @llvm.smax.i32(i32 %630, i32 %629)
  %632 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %617
  store i32 %631, i32 addrspace(3)* %632, align 4, !tbaa !6
  br label %633

633:                                              ; preds = %616, %615
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %187, label %651, label %634

634:                                              ; preds = %633
  %635 = add nuw nsw i32 %8, 13
  %636 = add nuw nsw i32 %8, 12
  %637 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %636
  %638 = load i32, i32 addrspace(3)* %637, align 4, !tbaa !6
  %639 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %636
  %640 = load i32, i32 addrspace(3)* %639, align 4, !tbaa !6
  %641 = add nsw i32 %640, %638
  %642 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %636
  %643 = load i32, i32 addrspace(3)* %642, align 4, !tbaa !6
  %644 = sub nsw i32 %643, %3
  %645 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %635
  %646 = load i32, i32 addrspace(3)* %645, align 4, !tbaa !6
  %647 = sub nsw i32 %646, %3
  %648 = tail call i32 @llvm.smax.i32(i32 %641, i32 %644)
  %649 = tail call i32 @llvm.smax.i32(i32 %648, i32 %647)
  %650 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %635
  store i32 %649, i32 addrspace(3)* %650, align 4, !tbaa !6
  br label %651

651:                                              ; preds = %634, %633
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %168, label %669, label %652

652:                                              ; preds = %651
  %653 = add nuw nsw i32 %8, 14
  %654 = add nuw nsw i32 %8, 13
  %655 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %654
  %656 = load i32, i32 addrspace(3)* %655, align 4, !tbaa !6
  %657 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %654
  %658 = load i32, i32 addrspace(3)* %657, align 4, !tbaa !6
  %659 = add nsw i32 %658, %656
  %660 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %654
  %661 = load i32, i32 addrspace(3)* %660, align 4, !tbaa !6
  %662 = sub nsw i32 %661, %3
  %663 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %653
  %664 = load i32, i32 addrspace(3)* %663, align 4, !tbaa !6
  %665 = sub nsw i32 %664, %3
  %666 = tail call i32 @llvm.smax.i32(i32 %659, i32 %662)
  %667 = tail call i32 @llvm.smax.i32(i32 %666, i32 %665)
  %668 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %653
  store i32 %667, i32 addrspace(3)* %668, align 4, !tbaa !6
  br label %669

669:                                              ; preds = %652, %651
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %149, label %687, label %670

670:                                              ; preds = %669
  %671 = add nuw nsw i32 %8, 15
  %672 = add nuw nsw i32 %8, 14
  %673 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %672
  %674 = load i32, i32 addrspace(3)* %673, align 4, !tbaa !6
  %675 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %672
  %676 = load i32, i32 addrspace(3)* %675, align 4, !tbaa !6
  %677 = add nsw i32 %676, %674
  %678 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %672
  %679 = load i32, i32 addrspace(3)* %678, align 4, !tbaa !6
  %680 = sub nsw i32 %679, %3
  %681 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %671
  %682 = load i32, i32 addrspace(3)* %681, align 4, !tbaa !6
  %683 = sub nsw i32 %682, %3
  %684 = tail call i32 @llvm.smax.i32(i32 %677, i32 %680)
  %685 = tail call i32 @llvm.smax.i32(i32 %684, i32 %683)
  %686 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %671
  store i32 %685, i32 addrspace(3)* %686, align 4, !tbaa !6
  br label %687

687:                                              ; preds = %670, %669
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %131, label %688, label %704

688:                                              ; preds = %687
  %689 = add nuw nsw i32 %8, 15
  %690 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %689
  %691 = load i32, i32 addrspace(3)* %690, align 4, !tbaa !6
  %692 = getelementptr inbounds [16 x [16 x i32]], [16 x [16 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE3ref, i32 0, i32 %416, i32 %689
  %693 = load i32, i32 addrspace(3)* %692, align 4, !tbaa !6
  %694 = add nsw i32 %693, %691
  %695 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %689
  %696 = load i32, i32 addrspace(3)* %695, align 4, !tbaa !6
  %697 = sub nsw i32 %696, %3
  %698 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %416, i32 %434
  %699 = load i32, i32 addrspace(3)* %698, align 4, !tbaa !6
  %700 = sub nsw i32 %699, %3
  %701 = tail call i32 @llvm.smax.i32(i32 %694, i32 %697)
  %702 = tail call i32 @llvm.smax.i32(i32 %701, i32 %700)
  %703 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 %435, i32 %434
  store i32 %702, i32 addrspace(3)* %703, align 4, !tbaa !6
  br label %704

704:                                              ; preds = %688, %687
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %705 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 1, i32 %125
  %706 = load i32, i32 addrspace(3)* %705, align 4, !tbaa !6
  %707 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %20
  store i32 %706, i32 addrspace(1)* %707, align 4, !tbaa !6
  %708 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 2, i32 %125
  %709 = load i32, i32 addrspace(3)* %708, align 4, !tbaa !6
  %710 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %25
  store i32 %709, i32 addrspace(1)* %710, align 4, !tbaa !6
  %711 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 3, i32 %125
  %712 = load i32, i32 addrspace(3)* %711, align 4, !tbaa !6
  %713 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %31
  store i32 %712, i32 addrspace(1)* %713, align 4, !tbaa !6
  %714 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 4, i32 %125
  %715 = load i32, i32 addrspace(3)* %714, align 4, !tbaa !6
  %716 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %37
  store i32 %715, i32 addrspace(1)* %716, align 4, !tbaa !6
  %717 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 5, i32 %125
  %718 = load i32, i32 addrspace(3)* %717, align 4, !tbaa !6
  %719 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %43
  store i32 %718, i32 addrspace(1)* %719, align 4, !tbaa !6
  %720 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 6, i32 %125
  %721 = load i32, i32 addrspace(3)* %720, align 4, !tbaa !6
  %722 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %49
  store i32 %721, i32 addrspace(1)* %722, align 4, !tbaa !6
  %723 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 7, i32 %125
  %724 = load i32, i32 addrspace(3)* %723, align 4, !tbaa !6
  %725 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %55
  store i32 %724, i32 addrspace(1)* %725, align 4, !tbaa !6
  %726 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 8, i32 %125
  %727 = load i32, i32 addrspace(3)* %726, align 4, !tbaa !6
  %728 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %61
  store i32 %727, i32 addrspace(1)* %728, align 4, !tbaa !6
  %729 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 9, i32 %125
  %730 = load i32, i32 addrspace(3)* %729, align 4, !tbaa !6
  %731 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %67
  store i32 %730, i32 addrspace(1)* %731, align 4, !tbaa !6
  %732 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 10, i32 %125
  %733 = load i32, i32 addrspace(3)* %732, align 4, !tbaa !6
  %734 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %73
  store i32 %733, i32 addrspace(1)* %734, align 4, !tbaa !6
  %735 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 11, i32 %125
  %736 = load i32, i32 addrspace(3)* %735, align 4, !tbaa !6
  %737 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %79
  store i32 %736, i32 addrspace(1)* %737, align 4, !tbaa !6
  %738 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 12, i32 %125
  %739 = load i32, i32 addrspace(3)* %738, align 4, !tbaa !6
  %740 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %85
  store i32 %739, i32 addrspace(1)* %740, align 4, !tbaa !6
  %741 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 13, i32 %125
  %742 = load i32, i32 addrspace(3)* %741, align 4, !tbaa !6
  %743 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %91
  store i32 %742, i32 addrspace(1)* %743, align 4, !tbaa !6
  %744 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 14, i32 %125
  %745 = load i32, i32 addrspace(3)* %744, align 4, !tbaa !6
  %746 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %97
  store i32 %745, i32 addrspace(1)* %746, align 4, !tbaa !6
  %747 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 15, i32 %125
  %748 = load i32, i32 addrspace(3)* %747, align 4, !tbaa !6
  %749 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %103
  store i32 %748, i32 addrspace(1)* %749, align 4, !tbaa !6
  %750 = getelementptr inbounds [17 x [17 x i32]], [17 x [17 x i32]] addrspace(3)* @_ZZ20needle_cuda_shared_2PiS_iiiiE4temp, i32 0, i32 16, i32 %125
  %751 = load i32, i32 addrspace(3)* %750, align 4, !tbaa !6
  %752 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %109
  store i32 %751, i32 addrspace(1)* %752, align 4, !tbaa !6
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
