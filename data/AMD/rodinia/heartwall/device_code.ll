; ModuleID = 'main.cu'
source_filename = "main.cu"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%struct.params_common = type { i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, float*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.params_common_change = type { float*, i32 }
%struct.params_unique = type { i32*, i32*, i32*, i32*, float*, i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float* }

@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum = internal unnamed_addr addrspace(3) global [51 x float] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum = internal unnamed_addr addrspace(3) global [51 x float] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum = internal unnamed_addr addrspace(3) global float undef, align 4
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum = internal unnamed_addr addrspace(3) global float undef, align 4
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT = internal unnamed_addr addrspace(3) global float undef, align 4
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val = internal unnamed_addr addrspace(3) global [131 x float] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo = internal unnamed_addr addrspace(3) global [131 x i32] undef, align 16
@_ZZ6kernel13params_common20params_common_changeP13params_uniqueE13d_in_mod_temp = internal unnamed_addr addrspace(3) global [2601 x float] undef, align 16

; Function Attrs: convergent mustprogress norecurse nounwind
define protected amdgpu_kernel void @_Z6kernel13params_common20params_common_changeP13params_unique(%struct.params_common addrspace(4)* readonly byref(%struct.params_common) align 8 %0, %struct.params_common_change addrspace(4)* nocapture readonly byref(%struct.params_common_change) align 8 %1, %struct.params_unique addrspace(1)* readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 0
  %5 = load i32, i32 addrspace(4)* %4, align 8, !amdgpu.noclobber !5
  %6 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 1
  %7 = load i32, i32 addrspace(4)* %6, align 4, !amdgpu.noclobber !5
  %8 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 3
  %9 = load float, float addrspace(4)* %8, align 4, !amdgpu.noclobber !5
  %10 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 4
  %11 = load i32, i32 addrspace(4)* %10, align 8, !amdgpu.noclobber !5
  %12 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 5
  %13 = load i32, i32 addrspace(4)* %12, align 4, !amdgpu.noclobber !5
  %14 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 32
  %15 = load i32, i32 addrspace(4)* %14, align 4, !amdgpu.noclobber !5
  %16 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 33
  %17 = load i32, i32 addrspace(4)* %16, align 8, !amdgpu.noclobber !5
  %18 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 34
  %19 = load i32, i32 addrspace(4)* %18, align 4, !amdgpu.noclobber !5
  %20 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 36
  %21 = load i32, i32 addrspace(4)* %20, align 4, !amdgpu.noclobber !5
  %22 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 37
  %23 = load i32, i32 addrspace(4)* %22, align 8, !amdgpu.noclobber !5
  %24 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 38
  %25 = load i32, i32 addrspace(4)* %24, align 4, !amdgpu.noclobber !5
  %26 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 40
  %27 = load i32, i32 addrspace(4)* %26, align 4, !amdgpu.noclobber !5
  %28 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 42
  %29 = load i32, i32 addrspace(4)* %28, align 4, !amdgpu.noclobber !5
  %30 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 44
  %31 = load i32, i32 addrspace(4)* %30, align 4, !amdgpu.noclobber !5
  %32 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 45
  %33 = load i32, i32 addrspace(4)* %32, align 8, !amdgpu.noclobber !5
  %34 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 46
  %35 = load i32, i32 addrspace(4)* %34, align 4, !amdgpu.noclobber !5
  %36 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 47
  %37 = load i32, i32 addrspace(4)* %36, align 8, !amdgpu.noclobber !5
  %38 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 48
  %39 = load i32, i32 addrspace(4)* %38, align 4, !amdgpu.noclobber !5
  %40 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 49
  %41 = load i32, i32 addrspace(4)* %40, align 8, !amdgpu.noclobber !5
  %42 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 50
  %43 = load i32, i32 addrspace(4)* %42, align 4, !amdgpu.noclobber !5
  %44 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 52
  %45 = load i32, i32 addrspace(4)* %44, align 4, !amdgpu.noclobber !5
  %46 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 54
  %47 = load i32, i32 addrspace(4)* %46, align 4, !amdgpu.noclobber !5
  %48 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 56
  %49 = load i32, i32 addrspace(4)* %48, align 4, !amdgpu.noclobber !5
  %50 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 58
  %51 = load i32, i32 addrspace(4)* %50, align 4, !amdgpu.noclobber !5
  %52 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 60
  %53 = load i32, i32 addrspace(4)* %52, align 4, !amdgpu.noclobber !5
  %54 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 62
  %55 = load i32, i32 addrspace(4)* %54, align 4, !amdgpu.noclobber !5
  %56 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 64
  %57 = load i32, i32 addrspace(4)* %56, align 4, !amdgpu.noclobber !5
  %58 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 66
  %59 = load i32, i32 addrspace(4)* %58, align 4, !amdgpu.noclobber !5
  %60 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 68
  %61 = load i32, i32 addrspace(4)* %60, align 4, !amdgpu.noclobber !5
  %62 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 70
  %63 = load i32, i32 addrspace(4)* %62, align 4, !amdgpu.noclobber !5
  %64 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 72
  %65 = load i32, i32 addrspace(4)* %64, align 4, !amdgpu.noclobber !5
  %66 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 74
  %67 = load i32, i32 addrspace(4)* %66, align 4, !amdgpu.noclobber !5
  %68 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 76
  %69 = load i32, i32 addrspace(4)* %68, align 4, !amdgpu.noclobber !5
  %70 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 78
  %71 = load i32, i32 addrspace(4)* %70, align 4, !amdgpu.noclobber !5
  %72 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 80
  %73 = load i32, i32 addrspace(4)* %72, align 4, !amdgpu.noclobber !5
  %74 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 82
  %75 = load i32, i32 addrspace(4)* %74, align 4, !amdgpu.noclobber !5
  %76 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 84
  %77 = load i32, i32 addrspace(4)* %76, align 4, !amdgpu.noclobber !5
  %78 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 85
  %79 = load i32, i32 addrspace(4)* %78, align 8, !amdgpu.noclobber !5
  %80 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 86
  %81 = load i32, i32 addrspace(4)* %80, align 4, !amdgpu.noclobber !5
  %82 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 92
  %83 = load i32, i32 addrspace(4)* %82, align 4, !amdgpu.noclobber !5
  %84 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 93
  %85 = load i32, i32 addrspace(4)* %84, align 8, !amdgpu.noclobber !5
  %86 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 94
  %87 = load i32, i32 addrspace(4)* %86, align 4, !amdgpu.noclobber !5
  %88 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 96
  %89 = load i32, i32 addrspace(4)* %88, align 4, !amdgpu.noclobber !5
  %90 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 97
  %91 = load i32, i32 addrspace(4)* %90, align 8, !amdgpu.noclobber !5
  %92 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 98
  %93 = load i32, i32 addrspace(4)* %92, align 4, !amdgpu.noclobber !5
  %94 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 100
  %95 = load i32, i32 addrspace(4)* %94, align 4, !amdgpu.noclobber !5
  %96 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 101
  %97 = load i32, i32 addrspace(4)* %96, align 8, !amdgpu.noclobber !5
  %98 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 104
  %99 = load i32, i32 addrspace(4)* %98, align 4, !amdgpu.noclobber !5
  %100 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 105
  %101 = load i32, i32 addrspace(4)* %100, align 8, !amdgpu.noclobber !5
  %102 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 106
  %103 = load i32, i32 addrspace(4)* %102, align 4, !amdgpu.noclobber !5
  %104 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 108
  %105 = load i32, i32 addrspace(4)* %104, align 4, !amdgpu.noclobber !5
  %106 = getelementptr inbounds %struct.params_common, %struct.params_common addrspace(4)* %0, i64 0, i32 109
  %107 = load i32, i32 addrspace(4)* %106, align 8, !amdgpu.noclobber !5
  %108 = getelementptr inbounds %struct.params_common_change, %struct.params_common_change addrspace(4)* %1, i64 0, i32 0
  %109 = load float*, float* addrspace(4)* %108, align 8, !amdgpu.noclobber !5
  %110 = getelementptr inbounds %struct.params_common_change, %struct.params_common_change addrspace(4)* %1, i64 0, i32 1
  %111 = load i32, i32 addrspace(4)* %110, align 8, !amdgpu.noclobber !5
  %112 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  %113 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !6
  %114 = icmp eq i32 %111, 0
  br i1 %114, label %115, label %197

115:                                              ; preds = %3
  %116 = sext i32 %112 to i64
  %117 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116
  %118 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 4
  %119 = load float*, float* addrspace(1)* %118, align 8, !tbaa !7, !amdgpu.noclobber !5
  %120 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 6
  %121 = load i32, i32 addrspace(1)* %120, align 4, !tbaa !13, !amdgpu.noclobber !5
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %119, i64 %122
  %124 = icmp eq i32 %113, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 5
  %127 = load i32, i32 addrspace(1)* %126, align 8, !tbaa !14, !amdgpu.noclobber !5
  %128 = mul nsw i32 %127, %11
  %129 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %117, i64 0, i32 0
  %130 = load i32*, i32* addrspace(1)* %129, align 8, !tbaa !15, !amdgpu.noclobber !5
  %131 = sext i32 %127 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = addrspacecast i32* %132 to i32 addrspace(1)*
  %134 = load i32, i32 addrspace(1)* %133, align 4, !tbaa !16, !amdgpu.noclobber !5
  %135 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 2
  %136 = load i32*, i32* addrspace(1)* %135, align 8, !tbaa !17, !amdgpu.noclobber !5
  %137 = sext i32 %128 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = addrspacecast i32* %138 to i32 addrspace(1)*
  store i32 %134, i32 addrspace(1)* %139, align 4, !tbaa !16
  %140 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 1
  %141 = load i32*, i32* addrspace(1)* %140, align 8, !tbaa !18, !amdgpu.noclobber !5
  %142 = load i32, i32 addrspace(1)* %126, align 8, !tbaa !14
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = addrspacecast i32* %144 to i32 addrspace(1)*
  %146 = load i32, i32 addrspace(1)* %145, align 4, !tbaa !16
  %147 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 3
  %148 = load i32*, i32* addrspace(1)* %147, align 8, !tbaa !19, !amdgpu.noclobber !5
  %149 = getelementptr inbounds i32, i32* %148, i64 %137
  %150 = addrspacecast i32* %149 to i32 addrspace(1)*
  store i32 %146, i32 addrspace(1)* %150, align 4, !tbaa !16
  br label %151

151:                                              ; preds = %125, %115
  %152 = icmp slt i32 %113, %19
  br i1 %152, label %153, label %197

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %117, i64 0, i32 0
  %155 = load i32*, i32* addrspace(1)* %154, align 8, !tbaa !15, !amdgpu.noclobber !5
  %156 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 5
  %157 = load i32, i32 addrspace(1)* %156, align 8, !tbaa !14
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = addrspacecast i32* %159 to i32 addrspace(1)*
  %161 = load i32, i32 addrspace(1)* %160, align 4, !tbaa !16
  %162 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %116, i32 1
  %163 = load i32*, i32* addrspace(1)* %162, align 8, !tbaa !18, !amdgpu.noclobber !5
  %164 = getelementptr inbounds i32, i32* %163, i64 %158
  %165 = addrspacecast i32* %164 to i32 addrspace(1)*
  %166 = load i32, i32 addrspace(1)* %165, align 4, !tbaa !16
  br label %167

167:                                              ; preds = %153, %167
  %168 = phi i32 [ %113, %153 ], [ %195, %167 ]
  %169 = add nuw nsw i32 %168, 1
  %170 = freeze i32 %169
  %171 = freeze i32 %15
  %172 = sdiv i32 %170, %171
  %173 = mul i32 %172, %171
  %174 = sub i32 %170, %173
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 %15, i32 %174
  %177 = sext i1 %175 to i32
  %178 = add nsw i32 %172, %177
  %179 = add nsw i32 %176, -1
  %180 = add nsw i32 %178, -26
  %181 = add i32 %180, %166
  %182 = mul nsw i32 %181, %13
  %183 = add nsw i32 %176, -27
  %184 = add i32 %183, %161
  %185 = add i32 %184, %182
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %109, i64 %186
  %188 = addrspacecast float* %187 to float addrspace(1)*
  %189 = load float, float addrspace(1)* %188, align 4, !tbaa !20
  %190 = mul nsw i32 %178, %15
  %191 = add nsw i32 %190, %179
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %123, i64 %192
  %194 = addrspacecast float* %193 to float addrspace(1)*
  store float %189, float addrspace(1)* %194, align 4, !tbaa !20
  %195 = add nuw nsw i32 %168, 256
  %196 = icmp slt i32 %195, %19
  br i1 %196, label %167, label %197, !llvm.loop !22

197:                                              ; preds = %167, %151, %3
  %198 = phi float* [ undef, %3 ], [ %123, %151 ], [ %123, %167 ]
  br i1 %114, label %1547, label %199

199:                                              ; preds = %197
  %200 = sext i32 %112 to i64
  %201 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 0
  %202 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 5
  %203 = load i32, i32 addrspace(1)* %202, align 8, !tbaa !14
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 1
  %206 = icmp slt i32 %113, %25
  br i1 %206, label %207, label %247

207:                                              ; preds = %199
  %208 = load i32*, i32* addrspace(1)* %205, align 8, !tbaa !18, !amdgpu.noclobber !5
  %209 = getelementptr inbounds i32, i32* %208, i64 %204
  %210 = addrspacecast i32* %209 to i32 addrspace(1)*
  %211 = load i32, i32 addrspace(1)* %210, align 4, !tbaa !16
  %212 = load i32*, i32* addrspace(1)* %201, align 8, !tbaa !15, !amdgpu.noclobber !5
  %213 = getelementptr inbounds i32, i32* %212, i64 %204
  %214 = addrspacecast i32* %213 to i32 addrspace(1)*
  %215 = load i32, i32 addrspace(1)* %214, align 4, !tbaa !16
  %216 = xor i32 %5, -1
  %217 = add i32 %211, %216
  %218 = sub i32 -2, %5
  %219 = add i32 %218, %215
  %220 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 7
  %221 = load float*, float* addrspace(1)* %220, align 8, !tbaa !24, !amdgpu.noclobber !5
  br label %222

222:                                              ; preds = %207, %222
  %223 = phi i32 [ %113, %207 ], [ %245, %222 ]
  %224 = add nuw nsw i32 %223, 1
  %225 = freeze i32 %224
  %226 = freeze i32 %21
  %227 = sdiv i32 %225, %226
  %228 = mul i32 %227, %226
  %229 = sub i32 %225, %228
  %230 = icmp eq i32 %229, 0
  %231 = select i1 %230, i32 %21, i32 %229
  %232 = sext i1 %230 to i32
  %233 = add i32 %217, %227
  %234 = add i32 %233, %232
  %235 = mul nsw i32 %234, %13
  %236 = add i32 %219, %231
  %237 = add i32 %236, %235
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %109, i64 %238
  %240 = addrspacecast float* %239 to float addrspace(1)*
  %241 = load float, float addrspace(1)* %240, align 4, !tbaa !20
  %242 = zext i32 %223 to i64
  %243 = getelementptr inbounds float, float* %221, i64 %242
  %244 = addrspacecast float* %243 to float addrspace(1)*
  store float %241, float addrspace(1)* %244, align 4, !tbaa !20
  %245 = add nuw nsw i32 %223, 256
  %246 = icmp slt i32 %245, %25
  br i1 %246, label %222, label %247, !llvm.loop !25

247:                                              ; preds = %222, %199
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %248 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 4
  %249 = load float*, float* addrspace(1)* %248, align 8, !tbaa !7, !amdgpu.noclobber !5
  %250 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 6
  %251 = load i32, i32 addrspace(1)* %250, align 4, !tbaa !13
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %249, i64 %252
  %254 = icmp slt i32 %113, %19
  br i1 %254, label %255, label %279

255:                                              ; preds = %247, %255
  %256 = phi i32 [ %277, %255 ], [ %113, %247 ]
  %257 = add nuw nsw i32 %256, 1
  %258 = freeze i32 %257
  %259 = freeze i32 %15
  %260 = sdiv i32 %258, %259
  %261 = mul i32 %260, %259
  %262 = sub i32 %258, %261
  %263 = icmp eq i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = xor i32 %260, -1
  %266 = add i32 %15, %265
  %267 = add i32 %266, %264
  %268 = mul nsw i32 %267, %15
  %269 = sub i32 %15, %262
  %270 = select i1 %263, i32 0, i32 %269
  %271 = add i32 %270, %268
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %253, i64 %272
  %274 = addrspacecast float* %273 to float addrspace(1)*
  %275 = load float, float addrspace(1)* %274, align 4, !tbaa !20
  %276 = getelementptr inbounds [2601 x float], [2601 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE13d_in_mod_temp, i32 0, i32 %256
  store float %275, float addrspace(3)* %276, align 4, !tbaa !20
  %277 = add nuw nsw i32 %256, 256
  %278 = icmp slt i32 %277, %19
  br i1 %278, label %255, label %279, !llvm.loop !26

279:                                              ; preds = %255, %247
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %280 = icmp slt i32 %113, %29
  br i1 %280, label %281, label %350

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 7
  %283 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 8
  %284 = load float*, float* addrspace(1)* %283, align 8, !tbaa !27, !amdgpu.noclobber !5
  br label %285

285:                                              ; preds = %281, %343
  %286 = phi i32 [ %113, %281 ], [ %348, %343 ]
  %287 = add nuw nsw i32 %286, 1
  %288 = freeze i32 %287
  %289 = freeze i32 %27
  %290 = sdiv i32 %288, %289
  %291 = mul i32 %290, %289
  %292 = sub i32 %288, %291
  %293 = icmp eq i32 %292, 0
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = select i1 %293, i32 %27, i32 %292
  %297 = add i32 %290, %33
  %298 = add i32 %297, %295
  %299 = icmp slt i32 %298, %23
  %300 = sub nsw i32 %298, %23
  %301 = add nsw i32 %300, 1
  %302 = select i1 %299, i32 1, i32 %301
  %303 = tail call i32 @llvm.smin.i32(i32 %17, i32 %298)
  %304 = add nsw i32 %296, %31
  %305 = icmp slt i32 %304, %21
  %306 = sub nsw i32 %304, %21
  %307 = add nsw i32 %306, 1
  %308 = select i1 %305, i32 1, i32 %307
  %309 = tail call i32 @llvm.smin.i32(i32 %15, i32 %304)
  %310 = icmp sgt i32 %302, %303
  br i1 %310, label %343, label %311

311:                                              ; preds = %285
  %312 = icmp sgt i32 %308, %309
  br label %313

313:                                              ; preds = %311, %339
  %314 = phi i32 [ %302, %311 ], [ %341, %339 ]
  %315 = phi float [ 0.000000e+00, %311 ], [ %340, %339 ]
  br i1 %312, label %339, label %316

316:                                              ; preds = %313
  %317 = add nsw i32 %314, -1
  %318 = mul nsw i32 %317, %15
  %319 = add nsw i32 %318, -1
  %320 = load float*, float* addrspace(1)* %282, align 8, !tbaa !24, !amdgpu.noclobber !5
  %321 = sub i32 %298, %314
  %322 = mul nsw i32 %321, %21
  %323 = add i32 %304, %322
  br label %324

324:                                              ; preds = %316, %324
  %325 = phi float [ %315, %316 ], [ %336, %324 ]
  %326 = phi i32 [ %308, %316 ], [ %337, %324 ]
  %327 = add i32 %319, %326
  %328 = getelementptr inbounds [2601 x float], [2601 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE13d_in_mod_temp, i32 0, i32 %327
  %329 = load float, float addrspace(3)* %328, align 4, !tbaa !20
  %330 = sub i32 %323, %326
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %320, i64 %331
  %333 = addrspacecast float* %332 to float addrspace(1)*
  %334 = load float, float addrspace(1)* %333, align 4, !tbaa !20
  %335 = fmul contract float %329, %334
  %336 = fadd contract float %325, %335
  %337 = add nsw i32 %326, 1
  %338 = icmp slt i32 %326, %309
  br i1 %338, label %324, label %339, !llvm.loop !28

339:                                              ; preds = %324, %313
  %340 = phi float [ %315, %313 ], [ %336, %324 ]
  %341 = add nsw i32 %314, 1
  %342 = icmp slt i32 %314, %303
  br i1 %342, label %313, label %343, !llvm.loop !29

343:                                              ; preds = %339, %285
  %344 = phi float [ 0.000000e+00, %285 ], [ %340, %339 ]
  %345 = zext i32 %286 to i64
  %346 = getelementptr inbounds float, float* %284, i64 %345
  %347 = addrspacecast float* %346 to float addrspace(1)*
  store float %344, float addrspace(1)* %347, align 4, !tbaa !20
  %348 = add nuw nsw i32 %286, 256
  %349 = icmp slt i32 %348, %29
  br i1 %349, label %285, label %350, !llvm.loop !30

350:                                              ; preds = %343, %279
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %351 = icmp slt i32 %113, %43
  br i1 %351, label %352, label %395

352:                                              ; preds = %350
  %353 = add nsw i32 %35, %21
  %354 = add nsw i32 %37, %23
  %355 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %356 = xor i32 %35, -1
  %357 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 7
  %358 = load float*, float* addrspace(1)* %355, align 8, !tbaa !31
  br label %359

359:                                              ; preds = %352, %388
  %360 = phi i32 [ %113, %352 ], [ %393, %388 ]
  %361 = add nuw nsw i32 %360, 1
  %362 = freeze i32 %361
  %363 = freeze i32 %39
  %364 = sdiv i32 %362, %363
  %365 = mul i32 %364, %363
  %366 = sub i32 %362, %365
  %367 = icmp eq i32 %366, 0
  %368 = select i1 %367, i32 %39, i32 %366
  %369 = sext i1 %367 to i32
  %370 = add nsw i32 %364, %369
  %371 = icmp sgt i32 %368, %35
  %372 = icmp sle i32 %368, %353
  %373 = select i1 %371, i1 %372, i1 false
  %374 = icmp sge i32 %370, %37
  %375 = select i1 %373, i1 %374, i1 false
  %376 = icmp slt i32 %370, %354
  %377 = select i1 %375, i1 %376, i1 false
  br i1 %377, label %378, label %388

378:                                              ; preds = %359
  %379 = add i32 %368, %356
  %380 = sub nsw i32 %370, %37
  %381 = load float*, float* addrspace(1)* %357, align 8, !tbaa !24, !amdgpu.noclobber !5
  %382 = mul nsw i32 %380, %21
  %383 = add nsw i32 %379, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float, float* %381, i64 %384
  %386 = addrspacecast float* %385 to float addrspace(1)*
  %387 = load float, float addrspace(1)* %386, align 4, !tbaa !20
  br label %388

388:                                              ; preds = %359, %378
  %389 = phi float [ %387, %378 ], [ 0.000000e+00, %359 ]
  %390 = zext i32 %360 to i64
  %391 = getelementptr inbounds float, float* %358, i64 %390
  %392 = addrspacecast float* %391 to float addrspace(1)*
  store float %389, float addrspace(1)* %392, align 4, !tbaa !20
  %393 = add nuw nsw i32 %360, 256
  %394 = icmp slt i32 %393, %43
  br i1 %394, label %359, label %395, !llvm.loop !32

395:                                              ; preds = %388, %350
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %396 = icmp slt i32 %113, %41
  br i1 %396, label %397, label %419

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %399 = icmp sgt i32 %39, 0
  br label %400

400:                                              ; preds = %397, %416
  %401 = phi i32 [ %113, %397 ], [ %417, %416 ]
  %402 = mul nsw i32 %401, %39
  %403 = add nsw i32 %402, %39
  br i1 %399, label %404, label %416

404:                                              ; preds = %400
  %405 = load float*, float* addrspace(1)* %398, align 8, !tbaa !31, !amdgpu.noclobber !5
  br label %406

406:                                              ; preds = %404, %406
  %407 = phi float [ 0.000000e+00, %404 ], [ %413, %406 ]
  %408 = phi i32 [ %402, %404 ], [ %414, %406 ]
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %405, i64 %409
  %411 = addrspacecast float* %410 to float addrspace(1)*
  %412 = load float, float addrspace(1)* %411, align 4, !tbaa !20
  %413 = fadd contract float %407, %412
  store float %413, float addrspace(1)* %411, align 4, !tbaa !20
  %414 = add nsw i32 %408, 1
  %415 = icmp slt i32 %414, %403
  br i1 %415, label %406, label %416, !llvm.loop !33

416:                                              ; preds = %406, %400
  %417 = add nuw nsw i32 %401, 256
  %418 = icmp slt i32 %417, %41
  br i1 %418, label %400, label %419, !llvm.loop !34

419:                                              ; preds = %416, %395
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %420 = icmp slt i32 %113, %47
  br i1 %420, label %421, label %453

421:                                              ; preds = %419
  %422 = add nsw i32 %51, -1
  %423 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %424 = load float*, float* addrspace(1)* %423, align 8, !tbaa !31, !amdgpu.noclobber !5
  %425 = add nsw i32 %49, -2
  %426 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 11
  %427 = load float*, float* addrspace(1)* %426, align 8, !tbaa !35, !amdgpu.noclobber !5
  br label %428

428:                                              ; preds = %421, %428
  %429 = phi i32 [ %113, %421 ], [ %451, %428 ]
  %430 = add nuw nsw i32 %429, 1
  %431 = freeze i32 %430
  %432 = freeze i32 %45
  %433 = sdiv i32 %431, %432
  %434 = mul i32 %433, %432
  %435 = sub i32 %431, %434
  %436 = icmp eq i32 %435, 0
  %437 = select i1 %436, i32 %45, i32 %435
  %438 = sext i1 %436 to i32
  %439 = add i32 %422, %433
  %440 = add i32 %439, %438
  %441 = mul nsw i32 %440, %39
  %442 = add i32 %425, %437
  %443 = add i32 %442, %441
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %424, i64 %444
  %446 = addrspacecast float* %445 to float addrspace(1)*
  %447 = load float, float addrspace(1)* %446, align 4, !tbaa !20
  %448 = zext i32 %429 to i64
  %449 = getelementptr inbounds float, float* %427, i64 %448
  %450 = addrspacecast float* %449 to float addrspace(1)*
  store float %447, float addrspace(1)* %450, align 4, !tbaa !20
  %451 = add nuw nsw i32 %429, 256
  %452 = icmp slt i32 %451, %47
  br i1 %452, label %428, label %453, !llvm.loop !36

453:                                              ; preds = %428, %419
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %454 = icmp slt i32 %113, %59
  br i1 %454, label %455, label %487

455:                                              ; preds = %453
  %456 = add nsw i32 %55, -1
  %457 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %458 = load float*, float* addrspace(1)* %457, align 8, !tbaa !31, !amdgpu.noclobber !5
  %459 = add nsw i32 %53, -2
  %460 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %461 = load float*, float* addrspace(1)* %460, align 8, !tbaa !37, !amdgpu.noclobber !5
  br label %462

462:                                              ; preds = %455, %462
  %463 = phi i32 [ %113, %455 ], [ %485, %462 ]
  %464 = add nuw nsw i32 %463, 1
  %465 = freeze i32 %464
  %466 = freeze i32 %57
  %467 = sdiv i32 %465, %466
  %468 = mul i32 %467, %466
  %469 = sub i32 %465, %468
  %470 = icmp eq i32 %469, 0
  %471 = select i1 %470, i32 %57, i32 %469
  %472 = sext i1 %470 to i32
  %473 = add i32 %456, %467
  %474 = add i32 %473, %472
  %475 = mul nsw i32 %474, %39
  %476 = add i32 %459, %471
  %477 = add i32 %476, %475
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds float, float* %458, i64 %478
  %480 = addrspacecast float* %479 to float addrspace(1)*
  %481 = load float, float addrspace(1)* %480, align 4, !tbaa !20
  %482 = zext i32 %463 to i64
  %483 = getelementptr inbounds float, float* %461, i64 %482
  %484 = addrspacecast float* %483 to float addrspace(1)*
  store float %481, float addrspace(1)* %484, align 4, !tbaa !20
  %485 = add nuw nsw i32 %463, 256
  %486 = icmp slt i32 %485, %59
  br i1 %486, label %462, label %487, !llvm.loop !38

487:                                              ; preds = %462, %453
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %454, label %488, label %505

488:                                              ; preds = %487
  %489 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 11
  %490 = load float*, float* addrspace(1)* %489, align 8, !tbaa !35, !amdgpu.noclobber !5
  %491 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %492 = load float*, float* addrspace(1)* %491, align 8, !tbaa !37, !amdgpu.noclobber !5
  br label %493

493:                                              ; preds = %488, %493
  %494 = phi i32 [ %113, %488 ], [ %503, %493 ]
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds float, float* %490, i64 %495
  %497 = addrspacecast float* %496 to float addrspace(1)*
  %498 = load float, float addrspace(1)* %497, align 4, !tbaa !20
  %499 = getelementptr inbounds float, float* %492, i64 %495
  %500 = addrspacecast float* %499 to float addrspace(1)*
  %501 = load float, float addrspace(1)* %500, align 4, !tbaa !20
  %502 = fsub contract float %498, %501
  store float %502, float addrspace(1)* %500, align 4, !tbaa !20
  %503 = add nuw nsw i32 %494, 256
  %504 = icmp slt i32 %503, %59
  br i1 %504, label %493, label %505, !llvm.loop !39

505:                                              ; preds = %493, %487
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %506 = icmp slt i32 %113, %57
  br i1 %506, label %507, label %528

507:                                              ; preds = %505
  %508 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %509 = icmp sgt i32 %59, 0
  br label %510

510:                                              ; preds = %507, %525
  %511 = phi i32 [ %113, %507 ], [ %526, %525 ]
  %512 = add nsw i32 %511, %59
  br i1 %509, label %513, label %525

513:                                              ; preds = %510
  %514 = load float*, float* addrspace(1)* %508, align 8, !tbaa !37, !amdgpu.noclobber !5
  br label %515

515:                                              ; preds = %513, %515
  %516 = phi float [ 0.000000e+00, %513 ], [ %522, %515 ]
  %517 = phi i32 [ %511, %513 ], [ %523, %515 ]
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds float, float* %514, i64 %518
  %520 = addrspacecast float* %519 to float addrspace(1)*
  %521 = load float, float addrspace(1)* %520, align 4, !tbaa !20
  %522 = fadd contract float %516, %521
  store float %522, float addrspace(1)* %520, align 4, !tbaa !20
  %523 = add nsw i32 %517, %57
  %524 = icmp slt i32 %523, %512
  br i1 %524, label %515, label %525, !llvm.loop !40

525:                                              ; preds = %515, %510
  %526 = add nuw nsw i32 %511, 256
  %527 = icmp slt i32 %526, %57
  br i1 %527, label %510, label %528, !llvm.loop !41

528:                                              ; preds = %525, %505
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %529 = icmp slt i32 %113, %63
  br i1 %529, label %530, label %562

530:                                              ; preds = %528
  %531 = add nsw i32 %67, -1
  %532 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %533 = load float*, float* addrspace(1)* %532, align 8, !tbaa !37, !amdgpu.noclobber !5
  %534 = add nsw i32 %65, -2
  %535 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 13
  %536 = load float*, float* addrspace(1)* %535, align 8, !tbaa !42, !amdgpu.noclobber !5
  br label %537

537:                                              ; preds = %530, %537
  %538 = phi i32 [ %113, %530 ], [ %560, %537 ]
  %539 = add nuw nsw i32 %538, 1
  %540 = freeze i32 %539
  %541 = freeze i32 %61
  %542 = sdiv i32 %540, %541
  %543 = mul i32 %542, %541
  %544 = sub i32 %540, %543
  %545 = icmp eq i32 %544, 0
  %546 = select i1 %545, i32 %61, i32 %544
  %547 = sext i1 %545 to i32
  %548 = add i32 %531, %542
  %549 = add i32 %548, %547
  %550 = mul nsw i32 %549, %57
  %551 = add i32 %534, %546
  %552 = add i32 %551, %550
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds float, float* %533, i64 %553
  %555 = addrspacecast float* %554 to float addrspace(1)*
  %556 = load float, float addrspace(1)* %555, align 4, !tbaa !20
  %557 = zext i32 %538 to i64
  %558 = getelementptr inbounds float, float* %536, i64 %557
  %559 = addrspacecast float* %558 to float addrspace(1)*
  store float %556, float addrspace(1)* %559, align 4, !tbaa !20
  %560 = add nuw nsw i32 %538, 256
  %561 = icmp slt i32 %560, %63
  br i1 %561, label %537, label %562, !llvm.loop !43

562:                                              ; preds = %537, %528
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %563 = icmp slt i32 %113, %75
  br i1 %563, label %564, label %596

564:                                              ; preds = %562
  %565 = add nsw i32 %71, -1
  %566 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %567 = load float*, float* addrspace(1)* %566, align 8, !tbaa !37, !amdgpu.noclobber !5
  %568 = add nsw i32 %69, -2
  %569 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 14
  %570 = load float*, float* addrspace(1)* %569, align 8, !tbaa !44, !amdgpu.noclobber !5
  br label %571

571:                                              ; preds = %564, %571
  %572 = phi i32 [ %113, %564 ], [ %594, %571 ]
  %573 = add nuw nsw i32 %572, 1
  %574 = freeze i32 %573
  %575 = freeze i32 %73
  %576 = sdiv i32 %574, %575
  %577 = mul i32 %576, %575
  %578 = sub i32 %574, %577
  %579 = icmp eq i32 %578, 0
  %580 = select i1 %579, i32 %73, i32 %578
  %581 = sext i1 %579 to i32
  %582 = add i32 %565, %576
  %583 = add i32 %582, %581
  %584 = mul nsw i32 %583, %57
  %585 = add i32 %568, %580
  %586 = add i32 %585, %584
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds float, float* %567, i64 %587
  %589 = addrspacecast float* %588 to float addrspace(1)*
  %590 = load float, float addrspace(1)* %589, align 4, !tbaa !20
  %591 = zext i32 %572 to i64
  %592 = getelementptr inbounds float, float* %570, i64 %591
  %593 = addrspacecast float* %592 to float addrspace(1)*
  store float %590, float addrspace(1)* %593, align 4, !tbaa !20
  %594 = add nuw nsw i32 %572, 256
  %595 = icmp slt i32 %594, %75
  br i1 %595, label %571, label %596, !llvm.loop !45

596:                                              ; preds = %571, %562
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %563, label %597, label %614

597:                                              ; preds = %596
  %598 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 13
  %599 = load float*, float* addrspace(1)* %598, align 8, !tbaa !42, !amdgpu.noclobber !5
  %600 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 14
  %601 = load float*, float* addrspace(1)* %600, align 8, !tbaa !44, !amdgpu.noclobber !5
  br label %602

602:                                              ; preds = %597, %602
  %603 = phi i32 [ %113, %597 ], [ %612, %602 ]
  %604 = zext i32 %603 to i64
  %605 = getelementptr inbounds float, float* %599, i64 %604
  %606 = addrspacecast float* %605 to float addrspace(1)*
  %607 = load float, float addrspace(1)* %606, align 4, !tbaa !20
  %608 = getelementptr inbounds float, float* %601, i64 %604
  %609 = addrspacecast float* %608 to float addrspace(1)*
  %610 = load float, float addrspace(1)* %609, align 4, !tbaa !20
  %611 = fsub contract float %607, %610
  store float %611, float addrspace(1)* %609, align 4, !tbaa !20
  %612 = add nuw nsw i32 %603, 256
  %613 = icmp slt i32 %612, %75
  br i1 %613, label %602, label %614, !llvm.loop !46

614:                                              ; preds = %602, %596
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %615 = icmp slt i32 %113, %81
  br i1 %615, label %616, label %632

616:                                              ; preds = %614
  %617 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 7
  %618 = load float*, float* addrspace(1)* %617, align 8, !tbaa !24, !amdgpu.noclobber !5
  %619 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 15
  %620 = load float*, float* addrspace(1)* %619, align 8, !tbaa !47, !amdgpu.noclobber !5
  br label %621

621:                                              ; preds = %616, %621
  %622 = phi i32 [ %113, %616 ], [ %630, %621 ]
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds float, float* %618, i64 %623
  %625 = addrspacecast float* %624 to float addrspace(1)*
  %626 = load float, float addrspace(1)* %625, align 4, !tbaa !20
  %627 = fmul contract float %626, %626
  %628 = getelementptr inbounds float, float* %620, i64 %623
  %629 = addrspacecast float* %628 to float addrspace(1)*
  store float %627, float addrspace(1)* %629, align 4, !tbaa !20
  %630 = add nuw nsw i32 %622, 256
  %631 = icmp slt i32 %630, %81
  br i1 %631, label %621, label %632, !llvm.loop !48

632:                                              ; preds = %621, %614
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %351, label %633, label %676

633:                                              ; preds = %632
  %634 = add nsw i32 %77, %35
  %635 = add nsw i32 %79, %37
  %636 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %637 = xor i32 %35, -1
  %638 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 15
  %639 = load float*, float* addrspace(1)* %636, align 8, !tbaa !31
  br label %640

640:                                              ; preds = %633, %669
  %641 = phi i32 [ %113, %633 ], [ %674, %669 ]
  %642 = add nuw nsw i32 %641, 1
  %643 = freeze i32 %642
  %644 = freeze i32 %39
  %645 = sdiv i32 %643, %644
  %646 = mul i32 %645, %644
  %647 = sub i32 %643, %646
  %648 = icmp eq i32 %647, 0
  %649 = select i1 %648, i32 %39, i32 %647
  %650 = sext i1 %648 to i32
  %651 = add nsw i32 %645, %650
  %652 = icmp sgt i32 %649, %35
  %653 = icmp sle i32 %649, %634
  %654 = select i1 %652, i1 %653, i1 false
  %655 = icmp sge i32 %651, %37
  %656 = select i1 %654, i1 %655, i1 false
  %657 = icmp slt i32 %651, %635
  %658 = select i1 %656, i1 %657, i1 false
  br i1 %658, label %659, label %669

659:                                              ; preds = %640
  %660 = add i32 %649, %637
  %661 = sub nsw i32 %651, %37
  %662 = load float*, float* addrspace(1)* %638, align 8, !tbaa !47, !amdgpu.noclobber !5
  %663 = mul nsw i32 %661, %77
  %664 = add nsw i32 %660, %663
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds float, float* %662, i64 %665
  %667 = addrspacecast float* %666 to float addrspace(1)*
  %668 = load float, float addrspace(1)* %667, align 4, !tbaa !20
  br label %669

669:                                              ; preds = %640, %659
  %670 = phi float [ %668, %659 ], [ 0.000000e+00, %640 ]
  %671 = zext i32 %641 to i64
  %672 = getelementptr inbounds float, float* %639, i64 %671
  %673 = addrspacecast float* %672 to float addrspace(1)*
  store float %670, float addrspace(1)* %673, align 4, !tbaa !20
  %674 = add nuw nsw i32 %641, 256
  %675 = icmp slt i32 %674, %43
  br i1 %675, label %640, label %676, !llvm.loop !49

676:                                              ; preds = %669, %632
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %396, label %677, label %699

677:                                              ; preds = %676
  %678 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %679 = icmp sgt i32 %39, 0
  br label %680

680:                                              ; preds = %677, %696
  %681 = phi i32 [ %113, %677 ], [ %697, %696 ]
  %682 = mul nsw i32 %681, %39
  %683 = add nsw i32 %682, %39
  br i1 %679, label %684, label %696

684:                                              ; preds = %680
  %685 = load float*, float* addrspace(1)* %678, align 8, !tbaa !31, !amdgpu.noclobber !5
  br label %686

686:                                              ; preds = %684, %686
  %687 = phi float [ 0.000000e+00, %684 ], [ %693, %686 ]
  %688 = phi i32 [ %682, %684 ], [ %694, %686 ]
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds float, float* %685, i64 %689
  %691 = addrspacecast float* %690 to float addrspace(1)*
  %692 = load float, float addrspace(1)* %691, align 4, !tbaa !20
  %693 = fadd contract float %687, %692
  store float %693, float addrspace(1)* %691, align 4, !tbaa !20
  %694 = add nsw i32 %688, 1
  %695 = icmp slt i32 %694, %683
  br i1 %695, label %686, label %696, !llvm.loop !50

696:                                              ; preds = %686, %680
  %697 = add nuw nsw i32 %681, 256
  %698 = icmp slt i32 %697, %41
  br i1 %698, label %680, label %699, !llvm.loop !51

699:                                              ; preds = %696, %676
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %420, label %700, label %732

700:                                              ; preds = %699
  %701 = add nsw i32 %51, -1
  %702 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %703 = load float*, float* addrspace(1)* %702, align 8, !tbaa !31, !amdgpu.noclobber !5
  %704 = add nsw i32 %49, -2
  %705 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 11
  %706 = load float*, float* addrspace(1)* %705, align 8, !tbaa !35, !amdgpu.noclobber !5
  br label %707

707:                                              ; preds = %700, %707
  %708 = phi i32 [ %113, %700 ], [ %730, %707 ]
  %709 = add nuw nsw i32 %708, 1
  %710 = freeze i32 %709
  %711 = freeze i32 %45
  %712 = sdiv i32 %710, %711
  %713 = mul i32 %712, %711
  %714 = sub i32 %710, %713
  %715 = icmp eq i32 %714, 0
  %716 = select i1 %715, i32 %45, i32 %714
  %717 = sext i1 %715 to i32
  %718 = add i32 %701, %712
  %719 = add i32 %718, %717
  %720 = mul nsw i32 %719, %39
  %721 = add i32 %704, %716
  %722 = add i32 %721, %720
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds float, float* %703, i64 %723
  %725 = addrspacecast float* %724 to float addrspace(1)*
  %726 = load float, float addrspace(1)* %725, align 4, !tbaa !20
  %727 = zext i32 %708 to i64
  %728 = getelementptr inbounds float, float* %706, i64 %727
  %729 = addrspacecast float* %728 to float addrspace(1)*
  store float %726, float addrspace(1)* %729, align 4, !tbaa !20
  %730 = add nuw nsw i32 %708, 256
  %731 = icmp slt i32 %730, %47
  br i1 %731, label %707, label %732, !llvm.loop !52

732:                                              ; preds = %707, %699
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %454, label %733, label %765

733:                                              ; preds = %732
  %734 = add nsw i32 %55, -1
  %735 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 10
  %736 = load float*, float* addrspace(1)* %735, align 8, !tbaa !31, !amdgpu.noclobber !5
  %737 = add nsw i32 %53, -2
  %738 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %739 = load float*, float* addrspace(1)* %738, align 8, !tbaa !37, !amdgpu.noclobber !5
  br label %740

740:                                              ; preds = %733, %740
  %741 = phi i32 [ %113, %733 ], [ %763, %740 ]
  %742 = add nuw nsw i32 %741, 1
  %743 = freeze i32 %742
  %744 = freeze i32 %57
  %745 = sdiv i32 %743, %744
  %746 = mul i32 %745, %744
  %747 = sub i32 %743, %746
  %748 = icmp eq i32 %747, 0
  %749 = select i1 %748, i32 %57, i32 %747
  %750 = sext i1 %748 to i32
  %751 = add i32 %734, %745
  %752 = add i32 %751, %750
  %753 = mul nsw i32 %752, %39
  %754 = add i32 %737, %749
  %755 = add i32 %754, %753
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds float, float* %736, i64 %756
  %758 = addrspacecast float* %757 to float addrspace(1)*
  %759 = load float, float addrspace(1)* %758, align 4, !tbaa !20
  %760 = zext i32 %741 to i64
  %761 = getelementptr inbounds float, float* %739, i64 %760
  %762 = addrspacecast float* %761 to float addrspace(1)*
  store float %759, float addrspace(1)* %762, align 4, !tbaa !20
  %763 = add nuw nsw i32 %741, 256
  %764 = icmp slt i32 %763, %59
  br i1 %764, label %740, label %765, !llvm.loop !53

765:                                              ; preds = %740, %732
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %454, label %766, label %771

766:                                              ; preds = %765
  %767 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 11
  %768 = load float*, float* addrspace(1)* %767, align 8, !tbaa !35, !amdgpu.noclobber !5
  %769 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %770 = load float*, float* addrspace(1)* %769, align 8, !tbaa !37, !amdgpu.noclobber !5
  br label %775

771:                                              ; preds = %775, %765
  br i1 %506, label %772, label %805

772:                                              ; preds = %771
  %773 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %774 = icmp sgt i32 %59, 0
  br label %787

775:                                              ; preds = %766, %775
  %776 = phi i32 [ %113, %766 ], [ %785, %775 ]
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds float, float* %768, i64 %777
  %779 = addrspacecast float* %778 to float addrspace(1)*
  %780 = load float, float addrspace(1)* %779, align 4, !tbaa !20
  %781 = getelementptr inbounds float, float* %770, i64 %777
  %782 = addrspacecast float* %781 to float addrspace(1)*
  %783 = load float, float addrspace(1)* %782, align 4, !tbaa !20
  %784 = fsub contract float %780, %783
  store float %784, float addrspace(1)* %782, align 4, !tbaa !20
  %785 = add nuw nsw i32 %776, 256
  %786 = icmp slt i32 %785, %59
  br i1 %786, label %775, label %771, !llvm.loop !54

787:                                              ; preds = %772, %802
  %788 = phi i32 [ %113, %772 ], [ %803, %802 ]
  %789 = add nsw i32 %788, %59
  br i1 %774, label %790, label %802

790:                                              ; preds = %787
  %791 = load float*, float* addrspace(1)* %773, align 8, !tbaa !37, !amdgpu.noclobber !5
  br label %792

792:                                              ; preds = %790, %792
  %793 = phi float [ 0.000000e+00, %790 ], [ %799, %792 ]
  %794 = phi i32 [ %788, %790 ], [ %800, %792 ]
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds float, float* %791, i64 %795
  %797 = addrspacecast float* %796 to float addrspace(1)*
  %798 = load float, float addrspace(1)* %797, align 4, !tbaa !20
  %799 = fadd contract float %793, %798
  store float %799, float addrspace(1)* %797, align 4, !tbaa !20
  %800 = add nsw i32 %794, %57
  %801 = icmp slt i32 %800, %789
  br i1 %801, label %792, label %802, !llvm.loop !55

802:                                              ; preds = %792, %787
  %803 = add nuw nsw i32 %788, 256
  %804 = icmp slt i32 %803, %57
  br i1 %804, label %787, label %805, !llvm.loop !56

805:                                              ; preds = %802, %771
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %529, label %806, label %838

806:                                              ; preds = %805
  %807 = add nsw i32 %67, -1
  %808 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %809 = load float*, float* addrspace(1)* %808, align 8, !tbaa !37, !amdgpu.noclobber !5
  %810 = add nsw i32 %65, -2
  %811 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 13
  %812 = load float*, float* addrspace(1)* %811, align 8, !tbaa !42, !amdgpu.noclobber !5
  br label %813

813:                                              ; preds = %806, %813
  %814 = phi i32 [ %113, %806 ], [ %836, %813 ]
  %815 = add nuw nsw i32 %814, 1
  %816 = freeze i32 %815
  %817 = freeze i32 %61
  %818 = sdiv i32 %816, %817
  %819 = mul i32 %818, %817
  %820 = sub i32 %816, %819
  %821 = icmp eq i32 %820, 0
  %822 = select i1 %821, i32 %61, i32 %820
  %823 = sext i1 %821 to i32
  %824 = add i32 %807, %818
  %825 = add i32 %824, %823
  %826 = mul nsw i32 %825, %57
  %827 = add i32 %810, %822
  %828 = add i32 %827, %826
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds float, float* %809, i64 %829
  %831 = addrspacecast float* %830 to float addrspace(1)*
  %832 = load float, float addrspace(1)* %831, align 4, !tbaa !20
  %833 = zext i32 %814 to i64
  %834 = getelementptr inbounds float, float* %812, i64 %833
  %835 = addrspacecast float* %834 to float addrspace(1)*
  store float %832, float addrspace(1)* %835, align 4, !tbaa !20
  %836 = add nuw nsw i32 %814, 256
  %837 = icmp slt i32 %836, %63
  br i1 %837, label %813, label %838, !llvm.loop !57

838:                                              ; preds = %813, %805
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %563, label %839, label %871

839:                                              ; preds = %838
  %840 = add nsw i32 %71, -1
  %841 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 12
  %842 = load float*, float* addrspace(1)* %841, align 8, !tbaa !37, !amdgpu.noclobber !5
  %843 = add nsw i32 %69, -2
  %844 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 16
  %845 = load float*, float* addrspace(1)* %844, align 8, !tbaa !58, !amdgpu.noclobber !5
  br label %846

846:                                              ; preds = %839, %846
  %847 = phi i32 [ %113, %839 ], [ %869, %846 ]
  %848 = add nuw nsw i32 %847, 1
  %849 = freeze i32 %848
  %850 = freeze i32 %73
  %851 = sdiv i32 %849, %850
  %852 = mul i32 %851, %850
  %853 = sub i32 %849, %852
  %854 = icmp eq i32 %853, 0
  %855 = select i1 %854, i32 %73, i32 %853
  %856 = sext i1 %854 to i32
  %857 = add i32 %840, %851
  %858 = add i32 %857, %856
  %859 = mul nsw i32 %858, %57
  %860 = add i32 %843, %855
  %861 = add i32 %860, %859
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds float, float* %842, i64 %862
  %864 = addrspacecast float* %863 to float addrspace(1)*
  %865 = load float, float addrspace(1)* %864, align 4, !tbaa !20
  %866 = zext i32 %847 to i64
  %867 = getelementptr inbounds float, float* %845, i64 %866
  %868 = addrspacecast float* %867 to float addrspace(1)*
  store float %865, float addrspace(1)* %868, align 4, !tbaa !20
  %869 = add nuw nsw i32 %847, 256
  %870 = icmp slt i32 %869, %75
  br i1 %870, label %846, label %871, !llvm.loop !59

871:                                              ; preds = %846, %838
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %563, label %872, label %889

872:                                              ; preds = %871
  %873 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 13
  %874 = load float*, float* addrspace(1)* %873, align 8, !tbaa !42, !amdgpu.noclobber !5
  %875 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 16
  %876 = load float*, float* addrspace(1)* %875, align 8, !tbaa !58, !amdgpu.noclobber !5
  br label %877

877:                                              ; preds = %872, %877
  %878 = phi i32 [ %113, %872 ], [ %887, %877 ]
  %879 = zext i32 %878 to i64
  %880 = getelementptr inbounds float, float* %874, i64 %879
  %881 = addrspacecast float* %880 to float addrspace(1)*
  %882 = load float, float addrspace(1)* %881, align 4, !tbaa !20
  %883 = getelementptr inbounds float, float* %876, i64 %879
  %884 = addrspacecast float* %883 to float addrspace(1)*
  %885 = load float, float addrspace(1)* %884, align 4, !tbaa !20
  %886 = fsub contract float %882, %885
  store float %886, float addrspace(1)* %884, align 4, !tbaa !20
  %887 = add nuw nsw i32 %878, 256
  %888 = icmp slt i32 %887, %75
  br i1 %888, label %877, label %889, !llvm.loop !60

889:                                              ; preds = %877, %871
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %563, label %890, label %933

890:                                              ; preds = %889
  %891 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 14
  %892 = load float*, float* addrspace(1)* %891, align 8, !tbaa !44, !amdgpu.noclobber !5
  %893 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 16
  %894 = load float*, float* addrspace(1)* %893, align 8, !tbaa !58, !amdgpu.noclobber !5
  %895 = sitofp i32 %19 to float
  br label %896

896:                                              ; preds = %890, %896
  %897 = phi i32 [ %113, %890 ], [ %931, %896 ]
  %898 = zext i32 %897 to i64
  %899 = getelementptr inbounds float, float* %892, i64 %898
  %900 = addrspacecast float* %899 to float addrspace(1)*
  %901 = load float, float addrspace(1)* %900, align 4, !tbaa !20
  %902 = getelementptr inbounds float, float* %894, i64 %898
  %903 = addrspacecast float* %902 to float addrspace(1)*
  %904 = load float, float addrspace(1)* %903, align 4, !tbaa !20
  %905 = fmul contract float %901, %901
  %906 = fdiv contract float %905, %895
  %907 = fsub contract float %904, %906
  %908 = fcmp contract olt float %907, 0.000000e+00
  %909 = select i1 %908, float 0.000000e+00, float %907
  %910 = fcmp olt float %909, 0x39F0000000000000
  %911 = select i1 %910, float 0x41F0000000000000, float 1.000000e+00
  %912 = fmul float %909, %911
  %913 = tail call float @llvm.sqrt.f32(float %912)
  %914 = bitcast float %913 to i32
  %915 = add nsw i32 %914, -1
  %916 = bitcast i32 %915 to float
  %917 = add nsw i32 %914, 1
  %918 = bitcast i32 %917 to float
  %919 = tail call i1 @llvm.amdgcn.class.f32(float %912, i32 608)
  %920 = select i1 %910, float 0x3EF0000000000000, float 1.000000e+00
  %921 = fneg float %918
  %922 = tail call float @llvm.fma.f32(float %921, float %913, float %912)
  %923 = fcmp ogt float %922, 0.000000e+00
  %924 = fneg float %916
  %925 = tail call float @llvm.fma.f32(float %924, float %913, float %912)
  %926 = fcmp ole float %925, 0.000000e+00
  %927 = select i1 %926, float %916, float %913
  %928 = select i1 %923, float %918, float %927
  %929 = fmul float %920, %928
  %930 = select i1 %919, float %912, float %929
  store float %930, float addrspace(1)* %903, align 4, !tbaa !20
  %931 = add nuw nsw i32 %897, 256
  %932 = icmp slt i32 %931, %75
  br i1 %932, label %896, label %933, !llvm.loop !61

933:                                              ; preds = %896, %889
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %934 = icmp slt i32 %113, %87
  br i1 %934, label %935, label %949

935:                                              ; preds = %933
  %936 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 17
  %937 = load float*, float* addrspace(1)* %936, align 8, !tbaa !62, !amdgpu.noclobber !5
  br label %938

938:                                              ; preds = %935, %938
  %939 = phi i32 [ %113, %935 ], [ %947, %938 ]
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds float, float* %253, i64 %940
  %942 = addrspacecast float* %941 to float addrspace(1)*
  %943 = load float, float addrspace(1)* %942, align 4, !tbaa !20
  %944 = fmul contract float %943, %943
  %945 = getelementptr inbounds float, float* %937, i64 %940
  %946 = addrspacecast float* %945 to float addrspace(1)*
  store float %944, float addrspace(1)* %946, align 4, !tbaa !20
  %947 = add nuw nsw i32 %939, 256
  %948 = icmp slt i32 %947, %87
  br i1 %948, label %938, label %949, !llvm.loop !63

949:                                              ; preds = %938, %933
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %950 = icmp slt i32 %113, %17
  br i1 %950, label %951, label %973

951:                                              ; preds = %949
  %952 = icmp sgt i32 %15, 0
  br label %953

953:                                              ; preds = %951, %968
  %954 = phi i32 [ %113, %951 ], [ %971, %968 ]
  br i1 %952, label %955, label %968

955:                                              ; preds = %953
  %956 = mul nsw i32 %954, %15
  br label %957

957:                                              ; preds = %955, %957
  %958 = phi float [ 0.000000e+00, %955 ], [ %965, %957 ]
  %959 = phi i32 [ 0, %955 ], [ %966, %957 ]
  %960 = add nsw i32 %959, %956
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds float, float* %253, i64 %961
  %963 = addrspacecast float* %962 to float addrspace(1)*
  %964 = load float, float addrspace(1)* %963, align 4, !tbaa !20
  %965 = fadd contract float %958, %964
  %966 = add nuw nsw i32 %959, 1
  %967 = icmp eq i32 %966, %15
  br i1 %967, label %968, label %957, !llvm.loop !64

968:                                              ; preds = %957, %953
  %969 = phi float [ 0.000000e+00, %953 ], [ %965, %957 ]
  %970 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %954
  store float %969, float addrspace(3)* %970, align 4, !tbaa !20
  %971 = add nuw nsw i32 %954, 256
  %972 = icmp slt i32 %971, %17
  br i1 %972, label %953, label %973, !llvm.loop !65

973:                                              ; preds = %968, %949
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %974 = icmp slt i32 %113, %83
  br i1 %974, label %975, label %999

975:                                              ; preds = %973
  %976 = icmp sgt i32 %85, 0
  %977 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 17
  br label %978

978:                                              ; preds = %975, %994
  %979 = phi i32 [ %113, %975 ], [ %997, %994 ]
  br i1 %976, label %980, label %994

980:                                              ; preds = %978
  %981 = load float*, float* addrspace(1)* %977, align 8, !tbaa !62, !amdgpu.noclobber !5
  br label %982

982:                                              ; preds = %980, %982
  %983 = phi float [ 0.000000e+00, %980 ], [ %991, %982 ]
  %984 = phi i32 [ 0, %980 ], [ %992, %982 ]
  %985 = mul nsw i32 %984, %83
  %986 = add nsw i32 %985, %979
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds float, float* %981, i64 %987
  %989 = addrspacecast float* %988 to float addrspace(1)*
  %990 = load float, float addrspace(1)* %989, align 4, !tbaa !20
  %991 = fadd contract float %983, %990
  %992 = add nuw nsw i32 %984, 1
  %993 = icmp eq i32 %992, %85
  br i1 %993, label %994, label %982, !llvm.loop !66

994:                                              ; preds = %982, %978
  %995 = phi float [ 0.000000e+00, %978 ], [ %991, %982 ]
  %996 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %979
  store float %995, float addrspace(3)* %996, align 4, !tbaa !20
  %997 = add nuw nsw i32 %979, 256
  %998 = icmp slt i32 %997, %83
  br i1 %998, label %978, label %999, !llvm.loop !67

999:                                              ; preds = %994, %973
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1000 = icmp eq i32 %113, 0
  br i1 %1000, label %1001, label %1047

1001:                                             ; preds = %999
  store float 0.000000e+00, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !20
  %1002 = icmp sgt i32 %17, 0
  br i1 %1002, label %1003, label %1129

1003:                                             ; preds = %1001
  %1004 = add i32 %17, -1
  %1005 = and i32 %17, 7
  %1006 = icmp ult i32 %1004, 7
  br i1 %1006, label %1095, label %1007

1007:                                             ; preds = %1003
  %1008 = and i32 %17, -8
  br label %1009

1009:                                             ; preds = %1009, %1007
  %1010 = phi i32 [ 0, %1007 ], [ %1044, %1009 ]
  %1011 = phi float [ 0.000000e+00, %1007 ], [ %1043, %1009 ]
  %1012 = phi i32 [ 0, %1007 ], [ %1045, %1009 ]
  %1013 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1010
  %1014 = load float, float addrspace(3)* %1013, align 16, !tbaa !20
  %1015 = fadd contract float %1011, %1014
  %1016 = or i32 %1010, 1
  %1017 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1016
  %1018 = load float, float addrspace(3)* %1017, align 4, !tbaa !20
  %1019 = fadd contract float %1015, %1018
  %1020 = or i32 %1010, 2
  %1021 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1020
  %1022 = load float, float addrspace(3)* %1021, align 8, !tbaa !20
  %1023 = fadd contract float %1019, %1022
  %1024 = or i32 %1010, 3
  %1025 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1024
  %1026 = load float, float addrspace(3)* %1025, align 4, !tbaa !20
  %1027 = fadd contract float %1023, %1026
  %1028 = or i32 %1010, 4
  %1029 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1028
  %1030 = load float, float addrspace(3)* %1029, align 16, !tbaa !20
  %1031 = fadd contract float %1027, %1030
  %1032 = or i32 %1010, 5
  %1033 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1032
  %1034 = load float, float addrspace(3)* %1033, align 4, !tbaa !20
  %1035 = fadd contract float %1031, %1034
  %1036 = or i32 %1010, 6
  %1037 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1036
  %1038 = load float, float addrspace(3)* %1037, align 8, !tbaa !20
  %1039 = fadd contract float %1035, %1038
  %1040 = or i32 %1010, 7
  %1041 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1040
  %1042 = load float, float addrspace(3)* %1041, align 4, !tbaa !20
  %1043 = fadd contract float %1039, %1042
  %1044 = add nuw nsw i32 %1010, 8
  %1045 = add i32 %1012, 8
  %1046 = icmp eq i32 %1045, %1008
  br i1 %1046, label %1095, label %1009, !llvm.loop !68

1047:                                             ; preds = %999
  %1048 = icmp eq i32 %113, 1
  br i1 %1048, label %1049, label %1129

1049:                                             ; preds = %1047
  store float 0.000000e+00, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum, align 4, !tbaa !20
  %1050 = icmp sgt i32 %85, 0
  br i1 %1050, label %1051, label %1129

1051:                                             ; preds = %1049
  %1052 = add i32 %85, -1
  %1053 = and i32 %85, 7
  %1054 = icmp ult i32 %1052, 7
  br i1 %1054, label %1112, label %1055

1055:                                             ; preds = %1051
  %1056 = and i32 %85, -8
  br label %1057

1057:                                             ; preds = %1057, %1055
  %1058 = phi i32 [ 0, %1055 ], [ %1092, %1057 ]
  %1059 = phi float [ 0.000000e+00, %1055 ], [ %1091, %1057 ]
  %1060 = phi i32 [ 0, %1055 ], [ %1093, %1057 ]
  %1061 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1058
  %1062 = load float, float addrspace(3)* %1061, align 16, !tbaa !20
  %1063 = fadd contract float %1059, %1062
  %1064 = or i32 %1058, 1
  %1065 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1064
  %1066 = load float, float addrspace(3)* %1065, align 4, !tbaa !20
  %1067 = fadd contract float %1063, %1066
  %1068 = or i32 %1058, 2
  %1069 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1068
  %1070 = load float, float addrspace(3)* %1069, align 8, !tbaa !20
  %1071 = fadd contract float %1067, %1070
  %1072 = or i32 %1058, 3
  %1073 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1072
  %1074 = load float, float addrspace(3)* %1073, align 4, !tbaa !20
  %1075 = fadd contract float %1071, %1074
  %1076 = or i32 %1058, 4
  %1077 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1076
  %1078 = load float, float addrspace(3)* %1077, align 16, !tbaa !20
  %1079 = fadd contract float %1075, %1078
  %1080 = or i32 %1058, 5
  %1081 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1080
  %1082 = load float, float addrspace(3)* %1081, align 4, !tbaa !20
  %1083 = fadd contract float %1079, %1082
  %1084 = or i32 %1058, 6
  %1085 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1084
  %1086 = load float, float addrspace(3)* %1085, align 8, !tbaa !20
  %1087 = fadd contract float %1083, %1086
  %1088 = or i32 %1058, 7
  %1089 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1088
  %1090 = load float, float addrspace(3)* %1089, align 4, !tbaa !20
  %1091 = fadd contract float %1087, %1090
  %1092 = add nuw nsw i32 %1058, 8
  %1093 = add i32 %1060, 8
  %1094 = icmp eq i32 %1093, %1056
  br i1 %1094, label %1112, label %1057, !llvm.loop !69

1095:                                             ; preds = %1009, %1003
  %1096 = phi float [ undef, %1003 ], [ %1043, %1009 ]
  %1097 = phi i32 [ 0, %1003 ], [ %1044, %1009 ]
  %1098 = phi float [ 0.000000e+00, %1003 ], [ %1043, %1009 ]
  %1099 = icmp eq i32 %1005, 0
  br i1 %1099, label %1110, label %1100

1100:                                             ; preds = %1095, %1100
  %1101 = phi i32 [ %1107, %1100 ], [ %1097, %1095 ]
  %1102 = phi float [ %1106, %1100 ], [ %1098, %1095 ]
  %1103 = phi i32 [ %1108, %1100 ], [ 0, %1095 ]
  %1104 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE14in_partial_sum, i32 0, i32 %1101
  %1105 = load float, float addrspace(3)* %1104, align 4, !tbaa !20
  %1106 = fadd contract float %1102, %1105
  %1107 = add nuw nsw i32 %1101, 1
  %1108 = add i32 %1103, 1
  %1109 = icmp eq i32 %1108, %1005
  br i1 %1109, label %1110, label %1100, !llvm.loop !70

1110:                                             ; preds = %1100, %1095
  %1111 = phi float [ %1096, %1095 ], [ %1106, %1100 ]
  store float %1111, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !20
  br label %1129

1112:                                             ; preds = %1057, %1051
  %1113 = phi float [ undef, %1051 ], [ %1091, %1057 ]
  %1114 = phi i32 [ 0, %1051 ], [ %1092, %1057 ]
  %1115 = phi float [ 0.000000e+00, %1051 ], [ %1091, %1057 ]
  %1116 = icmp eq i32 %1053, 0
  br i1 %1116, label %1127, label %1117

1117:                                             ; preds = %1112, %1117
  %1118 = phi i32 [ %1124, %1117 ], [ %1114, %1112 ]
  %1119 = phi float [ %1123, %1117 ], [ %1115, %1112 ]
  %1120 = phi i32 [ %1125, %1117 ], [ 0, %1112 ]
  %1121 = getelementptr inbounds [51 x float], [51 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE18in_sqr_partial_sum, i32 0, i32 %1118
  %1122 = load float, float addrspace(3)* %1121, align 4, !tbaa !20
  %1123 = fadd contract float %1119, %1122
  %1124 = add nuw nsw i32 %1118, 1
  %1125 = add i32 %1120, 1
  %1126 = icmp eq i32 %1125, %1053
  br i1 %1126, label %1127, label %1117, !llvm.loop !72

1127:                                             ; preds = %1117, %1112
  %1128 = phi float [ %1113, %1112 ], [ %1123, %1117 ]
  store float %1128, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum, align 4, !tbaa !20
  br label %1129

1129:                                             ; preds = %1049, %1127, %1001, %1110, %1047
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %1000, label %1130, label %1183

1130:                                             ; preds = %1129
  %1131 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !20
  %1132 = sitofp i32 %19 to float
  %1133 = fdiv contract float %1131, %1132
  %1134 = fmul contract float %1133, %1133
  %1135 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE16in_sqr_final_sum, align 4, !tbaa !20
  %1136 = fdiv contract float %1135, %1132
  %1137 = fsub contract float %1136, %1134
  %1138 = fcmp olt float %1137, 0x39F0000000000000
  %1139 = select i1 %1138, float 0x41F0000000000000, float 1.000000e+00
  %1140 = fmul float %1137, %1139
  %1141 = tail call float @llvm.sqrt.f32(float %1140)
  %1142 = bitcast float %1141 to i32
  %1143 = add nsw i32 %1142, -1
  %1144 = bitcast i32 %1143 to float
  %1145 = add nsw i32 %1142, 1
  %1146 = bitcast i32 %1145 to float
  %1147 = tail call i1 @llvm.amdgcn.class.f32(float %1140, i32 608)
  %1148 = select i1 %1138, float 0x3EF0000000000000, float 1.000000e+00
  %1149 = fneg float %1146
  %1150 = tail call float @llvm.fma.f32(float %1149, float %1141, float %1140)
  %1151 = fcmp ogt float %1150, 0.000000e+00
  %1152 = fneg float %1144
  %1153 = tail call float @llvm.fma.f32(float %1152, float %1141, float %1140)
  %1154 = fcmp ole float %1153, 0.000000e+00
  %1155 = select i1 %1154, float %1144, float %1141
  %1156 = select i1 %1151, float %1146, float %1155
  %1157 = fmul float %1148, %1156
  %1158 = select i1 %1147, float %1140, float %1157
  %1159 = add nsw i32 %19, -1
  %1160 = sitofp i32 %1159 to float
  %1161 = icmp slt i32 %19, 2
  %1162 = select i1 %1161, float 0x41F0000000000000, float 1.000000e+00
  %1163 = fmul float %1162, %1160
  %1164 = tail call float @llvm.sqrt.f32(float %1163)
  %1165 = bitcast float %1164 to i32
  %1166 = add nsw i32 %1165, -1
  %1167 = bitcast i32 %1166 to float
  %1168 = add nsw i32 %1165, 1
  %1169 = bitcast i32 %1168 to float
  %1170 = tail call i1 @llvm.amdgcn.class.f32(float %1163, i32 608)
  %1171 = select i1 %1161, float 0x3EF0000000000000, float 1.000000e+00
  %1172 = fneg float %1169
  %1173 = tail call float @llvm.fma.f32(float %1172, float %1164, float %1163)
  %1174 = fcmp ogt float %1173, 0.000000e+00
  %1175 = fneg float %1167
  %1176 = tail call float @llvm.fma.f32(float %1175, float %1164, float %1163)
  %1177 = fcmp ole float %1176, 0.000000e+00
  %1178 = select i1 %1177, float %1167, float %1164
  %1179 = select i1 %1174, float %1169, float %1178
  %1180 = fmul float %1171, %1179
  %1181 = select i1 %1170, float %1163, float %1180
  %1182 = fmul contract float %1181, %1158
  store float %1182, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT, align 4, !tbaa !20
  br label %1183

1183:                                             ; preds = %1130, %1129
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %563, label %1184, label %1197

1184:                                             ; preds = %1183
  %1185 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 16
  %1186 = load float*, float* addrspace(1)* %1185, align 8, !tbaa !58, !amdgpu.noclobber !5
  %1187 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE6denomT, align 4, !tbaa !20
  br label %1188

1188:                                             ; preds = %1184, %1188
  %1189 = phi i32 [ %113, %1184 ], [ %1195, %1188 ]
  %1190 = zext i32 %1189 to i64
  %1191 = getelementptr inbounds float, float* %1186, i64 %1190
  %1192 = addrspacecast float* %1191 to float addrspace(1)*
  %1193 = load float, float addrspace(1)* %1192, align 4, !tbaa !20
  %1194 = fmul contract float %1193, %1187
  store float %1194, float addrspace(1)* %1192, align 4, !tbaa !20
  %1195 = add nuw nsw i32 %1189, 256
  %1196 = icmp slt i32 %1195, %75
  br i1 %1196, label %1188, label %1197, !llvm.loop !73

1197:                                             ; preds = %1188, %1183
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %280, label %1198, label %1219

1198:                                             ; preds = %1197
  %1199 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 8
  %1200 = load float*, float* addrspace(1)* %1199, align 8, !tbaa !27, !amdgpu.noclobber !5
  %1201 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 14
  %1202 = load float*, float* addrspace(1)* %1201, align 8, !tbaa !44, !amdgpu.noclobber !5
  %1203 = load float, float addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE12in_final_sum, align 4, !tbaa !20
  %1204 = sitofp i32 %19 to float
  br label %1205

1205:                                             ; preds = %1198, %1205
  %1206 = phi i32 [ %113, %1198 ], [ %1217, %1205 ]
  %1207 = zext i32 %1206 to i64
  %1208 = getelementptr inbounds float, float* %1200, i64 %1207
  %1209 = addrspacecast float* %1208 to float addrspace(1)*
  %1210 = load float, float addrspace(1)* %1209, align 4, !tbaa !20
  %1211 = getelementptr inbounds float, float* %1202, i64 %1207
  %1212 = addrspacecast float* %1211 to float addrspace(1)*
  %1213 = load float, float addrspace(1)* %1212, align 4, !tbaa !20
  %1214 = fmul contract float %1213, %1203
  %1215 = fdiv contract float %1214, %1204
  %1216 = fsub contract float %1210, %1215
  store float %1216, float addrspace(1)* %1209, align 4, !tbaa !20
  %1217 = add nuw nsw i32 %1206, 256
  %1218 = icmp slt i32 %1217, %29
  br i1 %1218, label %1205, label %1219, !llvm.loop !74

1219:                                             ; preds = %1205, %1197
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %563, label %1220, label %1237

1220:                                             ; preds = %1219
  %1221 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 8
  %1222 = load float*, float* addrspace(1)* %1221, align 8, !tbaa !27, !amdgpu.noclobber !5
  %1223 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 16
  %1224 = load float*, float* addrspace(1)* %1223, align 8, !tbaa !58, !amdgpu.noclobber !5
  br label %1225

1225:                                             ; preds = %1220, %1225
  %1226 = phi i32 [ %113, %1220 ], [ %1235, %1225 ]
  %1227 = zext i32 %1226 to i64
  %1228 = getelementptr inbounds float, float* %1222, i64 %1227
  %1229 = addrspacecast float* %1228 to float addrspace(1)*
  %1230 = load float, float addrspace(1)* %1229, align 4, !tbaa !20
  %1231 = getelementptr inbounds float, float* %1224, i64 %1227
  %1232 = addrspacecast float* %1231 to float addrspace(1)*
  %1233 = load float, float addrspace(1)* %1232, align 4, !tbaa !20
  %1234 = fdiv contract float %1230, %1233
  store float %1234, float addrspace(1)* %1232, align 4, !tbaa !20
  %1235 = add nuw nsw i32 %1226, 256
  %1236 = icmp slt i32 %1235, %75
  br i1 %1236, label %1225, label %1237, !llvm.loop !75

1237:                                             ; preds = %1225, %1219
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1238 = add nsw i32 %111, -1
  %1239 = load i32, i32 addrspace(1)* %202, align 8, !tbaa !14
  %1240 = mul nsw i32 %1239, %11
  %1241 = add nsw i32 %1238, %1240
  %1242 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 2
  %1243 = sext i32 %1241 to i64
  %1244 = sext i32 %1239 to i64
  %1245 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 3
  %1246 = icmp slt i32 %113, %93
  br i1 %1246, label %1247, label %1282

1247:                                             ; preds = %1237
  %1248 = add i32 %5, %7
  %1249 = load i32*, i32* addrspace(1)* %1245, align 8, !tbaa !19, !amdgpu.noclobber !5
  %1250 = getelementptr inbounds i32, i32* %1249, i64 %1243
  %1251 = addrspacecast i32* %1250 to i32 addrspace(1)*
  %1252 = load i32, i32 addrspace(1)* %1251, align 4, !tbaa !16
  %1253 = add i32 %1248, %1252
  %1254 = load i32*, i32* addrspace(1)* %205, align 8, !tbaa !18, !amdgpu.noclobber !5
  %1255 = getelementptr inbounds i32, i32* %1254, i64 %1244
  %1256 = addrspacecast i32* %1255 to i32 addrspace(1)*
  %1257 = load i32, i32 addrspace(1)* %1256, align 4, !tbaa !16
  %1258 = sub i32 %1253, %1257
  %1259 = load i32*, i32* addrspace(1)* %201, align 8, !tbaa !15, !amdgpu.noclobber !5
  %1260 = getelementptr inbounds i32, i32* %1259, i64 %1244
  %1261 = addrspacecast i32* %1260 to i32 addrspace(1)*
  %1262 = load i32, i32 addrspace(1)* %1261, align 4, !tbaa !16
  %1263 = load i32*, i32* addrspace(1)* %1242, align 8, !tbaa !17, !amdgpu.noclobber !5
  %1264 = getelementptr inbounds i32, i32* %1263, i64 %1243
  %1265 = addrspacecast i32* %1264 to i32 addrspace(1)*
  %1266 = load i32, i32 addrspace(1)* %1265, align 4, !tbaa !16
  %1267 = mul nsw i32 %1258, %89
  %1268 = add i32 %1248, %1266
  %1269 = sub i32 %1268, %1262
  %1270 = add i32 %1269, %1267
  %1271 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 18
  %1272 = load float*, float* addrspace(1)* %1271, align 8, !tbaa !76
  br label %1273

1273:                                             ; preds = %1247, %1273
  %1274 = phi i32 [ %113, %1247 ], [ %1280, %1273 ]
  %1275 = icmp eq i32 %1274, %1270
  %1276 = zext i32 %1274 to i64
  %1277 = select i1 %1275, float 1.000000e+00, float 0.000000e+00
  %1278 = getelementptr inbounds float, float* %1272, i64 %1276
  %1279 = addrspacecast float* %1278 to float addrspace(1)*
  store float %1277, float addrspace(1)* %1279, align 4, !tbaa !20
  %1280 = add nuw nsw i32 %1274, 256
  %1281 = icmp slt i32 %1280, %93
  br i1 %1281, label %1273, label %1282, !llvm.loop !77

1282:                                             ; preds = %1273, %1237
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1283 = icmp slt i32 %113, %103
  br i1 %1283, label %1284, label %1352

1284:                                             ; preds = %1282
  %1285 = sub i32 1, %97
  %1286 = sub i32 1, %95
  %1287 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 18
  %1288 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 16
  %1289 = load float*, float* addrspace(1)* %1288, align 8, !tbaa !58, !amdgpu.noclobber !5
  %1290 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 20
  %1291 = load float*, float* addrspace(1)* %1290, align 8, !tbaa !78, !amdgpu.noclobber !5
  br label %1292

1292:                                             ; preds = %1284, %1341
  %1293 = phi i32 [ %113, %1284 ], [ %1350, %1341 ]
  %1294 = add nuw nsw i32 %1293, 1
  %1295 = freeze i32 %1294
  %1296 = freeze i32 %99
  %1297 = sdiv i32 %1295, %1296
  %1298 = mul i32 %1297, %1296
  %1299 = sub i32 %1295, %1298
  %1300 = icmp eq i32 %1299, 0
  %1301 = xor i1 %1300, true
  %1302 = zext i1 %1301 to i32
  %1303 = select i1 %1300, i32 %99, i32 %1299
  %1304 = add i32 %1297, %107
  %1305 = add i32 %1304, %1302
  %1306 = icmp slt i32 %1305, %97
  %1307 = add i32 %1285, %1305
  %1308 = select i1 %1306, i32 1, i32 %1307
  %1309 = tail call i32 @llvm.smin.i32(i32 %91, i32 %1305)
  %1310 = add nsw i32 %1303, %105
  %1311 = icmp slt i32 %1310, %95
  %1312 = add i32 %1286, %1310
  %1313 = select i1 %1311, i32 1, i32 %1312
  %1314 = tail call i32 @llvm.smin.i32(i32 %89, i32 %1310)
  %1315 = icmp sgt i32 %1308, %1309
  br i1 %1315, label %1341, label %1316

1316:                                             ; preds = %1292
  %1317 = icmp sgt i32 %1313, %1314
  br label %1318

1318:                                             ; preds = %1316, %1337
  %1319 = phi i32 [ %1308, %1316 ], [ %1339, %1337 ]
  %1320 = phi float [ 0.000000e+00, %1316 ], [ %1338, %1337 ]
  br i1 %1317, label %1337, label %1321

1321:                                             ; preds = %1318
  %1322 = load float*, float* addrspace(1)* %1287, align 8, !tbaa !76, !amdgpu.noclobber !5
  %1323 = add nsw i32 %1319, -1
  %1324 = mul nsw i32 %1323, %89
  %1325 = add nsw i32 %1324, -1
  br label %1326

1326:                                             ; preds = %1321, %1326
  %1327 = phi float [ %1320, %1321 ], [ %1334, %1326 ]
  %1328 = phi i32 [ %1313, %1321 ], [ %1335, %1326 ]
  %1329 = add i32 %1325, %1328
  %1330 = sext i32 %1329 to i64
  %1331 = getelementptr inbounds float, float* %1322, i64 %1330
  %1332 = addrspacecast float* %1331 to float addrspace(1)*
  %1333 = load float, float addrspace(1)* %1332, align 4, !tbaa !20
  %1334 = fadd contract float %1327, %1333
  %1335 = add nsw i32 %1328, 1
  %1336 = icmp slt i32 %1328, %1314
  br i1 %1336, label %1326, label %1337, !llvm.loop !79

1337:                                             ; preds = %1326, %1318
  %1338 = phi float [ %1320, %1318 ], [ %1334, %1326 ]
  %1339 = add nsw i32 %1319, 1
  %1340 = icmp slt i32 %1319, %1309
  br i1 %1340, label %1318, label %1341, !llvm.loop !80

1341:                                             ; preds = %1337, %1292
  %1342 = phi float [ 0.000000e+00, %1292 ], [ %1338, %1337 ]
  %1343 = zext i32 %1293 to i64
  %1344 = getelementptr inbounds float, float* %1289, i64 %1343
  %1345 = addrspacecast float* %1344 to float addrspace(1)*
  %1346 = load float, float addrspace(1)* %1345, align 4, !tbaa !20
  %1347 = fmul contract float %1342, %1346
  %1348 = getelementptr inbounds float, float* %1291, i64 %1343
  %1349 = addrspacecast float* %1348 to float addrspace(1)*
  store float %1347, float addrspace(1)* %1349, align 4, !tbaa !20
  %1350 = add nuw nsw i32 %1293, 256
  %1351 = icmp slt i32 %1350, %103
  br i1 %1351, label %1292, label %1352, !llvm.loop !81

1352:                                             ; preds = %1341, %1282
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  %1353 = icmp slt i32 %113, %99
  br i1 %1353, label %1354, label %1386

1354:                                             ; preds = %1352
  %1355 = icmp sgt i32 %101, 0
  %1356 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %200, i32 20
  br label %1357

1357:                                             ; preds = %1354, %1379
  %1358 = phi i32 [ %113, %1354 ], [ %1384, %1379 ]
  %1359 = phi i32 [ 0, %1354 ], [ %1381, %1379 ]
  %1360 = phi float [ 0.000000e+00, %1354 ], [ %1380, %1379 ]
  br i1 %1355, label %1361, label %1379

1361:                                             ; preds = %1357
  %1362 = mul nsw i32 %1358, %99
  %1363 = load float*, float* addrspace(1)* %1356, align 8, !tbaa !78, !amdgpu.noclobber !5
  br label %1364

1364:                                             ; preds = %1361, %1364
  %1365 = phi i32 [ %1359, %1361 ], [ %1376, %1364 ]
  %1366 = phi float [ %1360, %1361 ], [ %1375, %1364 ]
  %1367 = phi i32 [ 0, %1361 ], [ %1377, %1364 ]
  %1368 = add nsw i32 %1367, %1362
  %1369 = sext i32 %1368 to i64
  %1370 = getelementptr inbounds float, float* %1363, i64 %1369
  %1371 = addrspacecast float* %1370 to float addrspace(1)*
  %1372 = load float, float addrspace(1)* %1371, align 4, !tbaa !20
  %1373 = tail call float @llvm.fabs.f32(float %1372)
  %1374 = fcmp contract ogt float %1373, %1366
  %1375 = select i1 %1374, float %1373, float %1366
  %1376 = select i1 %1374, i32 %1368, i32 %1365
  %1377 = add nuw nsw i32 %1367, 1
  %1378 = icmp eq i32 %1377, %101
  br i1 %1378, label %1379, label %1364, !llvm.loop !82

1379:                                             ; preds = %1364, %1357
  %1380 = phi float [ %1360, %1357 ], [ %1375, %1364 ]
  %1381 = phi i32 [ %1359, %1357 ], [ %1376, %1364 ]
  %1382 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1358
  store i32 %1381, i32 addrspace(3)* %1382, align 4, !tbaa !16
  %1383 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1358
  store float %1380, float addrspace(3)* %1383, align 4, !tbaa !20
  %1384 = add nuw nsw i32 %1358, 256
  %1385 = icmp slt i32 %1384, %99
  br i1 %1385, label %1357, label %1386, !llvm.loop !83

1386:                                             ; preds = %1379, %1352
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br i1 %1000, label %1387, label %1546

1387:                                             ; preds = %1386
  %1388 = icmp sgt i32 %99, 0
  br i1 %1388, label %1389, label %1505

1389:                                             ; preds = %1387
  %1390 = add i32 %99, -1
  %1391 = and i32 %99, 7
  %1392 = icmp ult i32 %1390, 7
  br i1 %1392, label %1482, label %1393

1393:                                             ; preds = %1389
  %1394 = and i32 %99, -8
  br label %1395

1395:                                             ; preds = %1476, %1393
  %1396 = phi i32 [ 0, %1393 ], [ %1478, %1476 ]
  %1397 = phi float [ 0.000000e+00, %1393 ], [ %1477, %1476 ]
  %1398 = phi i32 [ 0, %1393 ], [ %1479, %1476 ]
  %1399 = phi i32 [ 0, %1393 ], [ %1480, %1476 ]
  %1400 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1398
  %1401 = load float, float addrspace(3)* %1400, align 16, !tbaa !20
  %1402 = fcmp contract ogt float %1401, %1397
  br i1 %1402, label %1403, label %1406

1403:                                             ; preds = %1395
  %1404 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1398
  %1405 = load i32, i32 addrspace(3)* %1404, align 16, !tbaa !16
  br label %1406

1406:                                             ; preds = %1395, %1403
  %1407 = phi float [ %1401, %1403 ], [ %1397, %1395 ]
  %1408 = phi i32 [ %1405, %1403 ], [ %1396, %1395 ]
  %1409 = or i32 %1398, 1
  %1410 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1409
  %1411 = load float, float addrspace(3)* %1410, align 4, !tbaa !20
  %1412 = fcmp contract ogt float %1411, %1407
  br i1 %1412, label %1413, label %1416

1413:                                             ; preds = %1406
  %1414 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1409
  %1415 = load i32, i32 addrspace(3)* %1414, align 4, !tbaa !16
  br label %1416

1416:                                             ; preds = %1413, %1406
  %1417 = phi float [ %1411, %1413 ], [ %1407, %1406 ]
  %1418 = phi i32 [ %1415, %1413 ], [ %1408, %1406 ]
  %1419 = or i32 %1398, 2
  %1420 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1419
  %1421 = load float, float addrspace(3)* %1420, align 8, !tbaa !20
  %1422 = fcmp contract ogt float %1421, %1417
  br i1 %1422, label %1423, label %1426

1423:                                             ; preds = %1416
  %1424 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1419
  %1425 = load i32, i32 addrspace(3)* %1424, align 8, !tbaa !16
  br label %1426

1426:                                             ; preds = %1423, %1416
  %1427 = phi float [ %1421, %1423 ], [ %1417, %1416 ]
  %1428 = phi i32 [ %1425, %1423 ], [ %1418, %1416 ]
  %1429 = or i32 %1398, 3
  %1430 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1429
  %1431 = load float, float addrspace(3)* %1430, align 4, !tbaa !20
  %1432 = fcmp contract ogt float %1431, %1427
  br i1 %1432, label %1433, label %1436

1433:                                             ; preds = %1426
  %1434 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1429
  %1435 = load i32, i32 addrspace(3)* %1434, align 4, !tbaa !16
  br label %1436

1436:                                             ; preds = %1433, %1426
  %1437 = phi float [ %1431, %1433 ], [ %1427, %1426 ]
  %1438 = phi i32 [ %1435, %1433 ], [ %1428, %1426 ]
  %1439 = or i32 %1398, 4
  %1440 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1439
  %1441 = load float, float addrspace(3)* %1440, align 16, !tbaa !20
  %1442 = fcmp contract ogt float %1441, %1437
  br i1 %1442, label %1443, label %1446

1443:                                             ; preds = %1436
  %1444 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1439
  %1445 = load i32, i32 addrspace(3)* %1444, align 16, !tbaa !16
  br label %1446

1446:                                             ; preds = %1443, %1436
  %1447 = phi float [ %1441, %1443 ], [ %1437, %1436 ]
  %1448 = phi i32 [ %1445, %1443 ], [ %1438, %1436 ]
  %1449 = or i32 %1398, 5
  %1450 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1449
  %1451 = load float, float addrspace(3)* %1450, align 4, !tbaa !20
  %1452 = fcmp contract ogt float %1451, %1447
  br i1 %1452, label %1453, label %1456

1453:                                             ; preds = %1446
  %1454 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1449
  %1455 = load i32, i32 addrspace(3)* %1454, align 4, !tbaa !16
  br label %1456

1456:                                             ; preds = %1453, %1446
  %1457 = phi float [ %1451, %1453 ], [ %1447, %1446 ]
  %1458 = phi i32 [ %1455, %1453 ], [ %1448, %1446 ]
  %1459 = or i32 %1398, 6
  %1460 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1459
  %1461 = load float, float addrspace(3)* %1460, align 8, !tbaa !20
  %1462 = fcmp contract ogt float %1461, %1457
  br i1 %1462, label %1463, label %1466

1463:                                             ; preds = %1456
  %1464 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1459
  %1465 = load i32, i32 addrspace(3)* %1464, align 8, !tbaa !16
  br label %1466

1466:                                             ; preds = %1463, %1456
  %1467 = phi float [ %1461, %1463 ], [ %1457, %1456 ]
  %1468 = phi i32 [ %1465, %1463 ], [ %1458, %1456 ]
  %1469 = or i32 %1398, 7
  %1470 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1469
  %1471 = load float, float addrspace(3)* %1470, align 4, !tbaa !20
  %1472 = fcmp contract ogt float %1471, %1467
  br i1 %1472, label %1473, label %1476

1473:                                             ; preds = %1466
  %1474 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1469
  %1475 = load i32, i32 addrspace(3)* %1474, align 4, !tbaa !16
  br label %1476

1476:                                             ; preds = %1473, %1466
  %1477 = phi float [ %1471, %1473 ], [ %1467, %1466 ]
  %1478 = phi i32 [ %1475, %1473 ], [ %1468, %1466 ]
  %1479 = add nuw nsw i32 %1398, 8
  %1480 = add i32 %1399, 8
  %1481 = icmp eq i32 %1480, %1394
  br i1 %1481, label %1482, label %1395, !llvm.loop !84

1482:                                             ; preds = %1476, %1389
  %1483 = phi i32 [ undef, %1389 ], [ %1478, %1476 ]
  %1484 = phi i32 [ 0, %1389 ], [ %1478, %1476 ]
  %1485 = phi float [ 0.000000e+00, %1389 ], [ %1477, %1476 ]
  %1486 = phi i32 [ 0, %1389 ], [ %1479, %1476 ]
  %1487 = icmp eq i32 %1391, 0
  br i1 %1487, label %1505, label %1488

1488:                                             ; preds = %1482, %1499
  %1489 = phi i32 [ %1501, %1499 ], [ %1484, %1482 ]
  %1490 = phi float [ %1500, %1499 ], [ %1485, %1482 ]
  %1491 = phi i32 [ %1502, %1499 ], [ %1486, %1482 ]
  %1492 = phi i32 [ %1503, %1499 ], [ 0, %1482 ]
  %1493 = getelementptr inbounds [131 x float], [131 x float] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_val, i32 0, i32 %1491
  %1494 = load float, float addrspace(3)* %1493, align 4, !tbaa !20
  %1495 = fcmp contract ogt float %1494, %1490
  br i1 %1495, label %1496, label %1499

1496:                                             ; preds = %1488
  %1497 = getelementptr inbounds [131 x i32], [131 x i32] addrspace(3)* @_ZZ6kernel13params_common20params_common_changeP13params_uniqueE11par_max_coo, i32 0, i32 %1491
  %1498 = load i32, i32 addrspace(3)* %1497, align 4, !tbaa !16
  br label %1499

1499:                                             ; preds = %1496, %1488
  %1500 = phi float [ %1494, %1496 ], [ %1490, %1488 ]
  %1501 = phi i32 [ %1498, %1496 ], [ %1489, %1488 ]
  %1502 = add nuw nsw i32 %1491, 1
  %1503 = add i32 %1492, 1
  %1504 = icmp eq i32 %1503, %1391
  br i1 %1504, label %1505, label %1488, !llvm.loop !85

1505:                                             ; preds = %1482, %1499, %1387
  %1506 = phi i32 [ 0, %1387 ], [ %1483, %1482 ], [ %1501, %1499 ]
  %1507 = add nsw i32 %1506, 1
  %1508 = freeze i32 %1507
  %1509 = freeze i32 %99
  %1510 = sdiv i32 %1508, %1509
  %1511 = mul i32 %1510, %1509
  %1512 = sub i32 %1508, %1511
  %1513 = icmp eq i32 %1512, 0
  %1514 = select i1 %1513, i32 %99, i32 %1512
  %1515 = sext i1 %1513 to i32
  %1516 = sub i32 %7, %5
  %1517 = sub i32 %1516, %15
  %1518 = add i32 %1517, %1514
  %1519 = load i32, i32 addrspace(1)* %202, align 8, !tbaa !14
  %1520 = mul nsw i32 %1519, %11
  %1521 = add nsw i32 %1520, %111
  %1522 = load i32*, i32* addrspace(1)* %201, align 8, !tbaa !15, !amdgpu.noclobber !5
  %1523 = sext i32 %1519 to i64
  %1524 = getelementptr inbounds i32, i32* %1522, i64 %1523
  %1525 = addrspacecast i32* %1524 to i32 addrspace(1)*
  %1526 = load i32, i32 addrspace(1)* %1525, align 4, !tbaa !16
  %1527 = add nsw i32 %1518, %1526
  %1528 = load i32*, i32* addrspace(1)* %1242, align 8, !tbaa !17, !amdgpu.noclobber !5
  %1529 = sext i32 %1521 to i64
  %1530 = getelementptr inbounds i32, i32* %1528, i64 %1529
  %1531 = addrspacecast i32* %1530 to i32 addrspace(1)*
  store i32 %1527, i32 addrspace(1)* %1531, align 4, !tbaa !16
  %1532 = load i32*, i32* addrspace(1)* %205, align 8, !tbaa !18, !amdgpu.noclobber !5
  %1533 = load i32, i32 addrspace(1)* %202, align 8, !tbaa !14
  %1534 = sext i32 %1533 to i64
  %1535 = getelementptr inbounds i32, i32* %1532, i64 %1534
  %1536 = addrspacecast i32* %1535 to i32 addrspace(1)*
  %1537 = load i32, i32 addrspace(1)* %1536, align 4, !tbaa !16
  %1538 = sub i32 %1516, %17
  %1539 = add i32 %1538, 1
  %1540 = add i32 %1539, %1510
  %1541 = add i32 %1540, %1515
  %1542 = add i32 %1541, %1537
  %1543 = load i32*, i32* addrspace(1)* %1245, align 8, !tbaa !19, !amdgpu.noclobber !5
  %1544 = getelementptr inbounds i32, i32* %1543, i64 %1529
  %1545 = addrspacecast i32* %1544 to i32 addrspace(1)*
  store i32 %1542, i32 addrspace(1)* %1545, align 4, !tbaa !16
  br label %1546

1546:                                             ; preds = %1505, %1386
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  br label %1547

1547:                                             ; preds = %1546, %197
  %1548 = phi float* [ %253, %1546 ], [ %198, %197 ]
  %1549 = srem i32 %111, 10
  %1550 = icmp ne i32 %1549, 0
  %1551 = or i1 %114, %1550
  br i1 %1551, label %1619, label %1552

1552:                                             ; preds = %1547
  %1553 = sext i32 %112 to i64
  %1554 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1553, i32 5
  %1555 = load i32, i32 addrspace(1)* %1554, align 8, !tbaa !14
  %1556 = mul nsw i32 %1555, %11
  %1557 = add nsw i32 %1556, %111
  %1558 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1553, i32 2
  %1559 = load i32*, i32* addrspace(1)* %1558, align 8, !tbaa !17
  %1560 = sext i32 %1557 to i64
  %1561 = getelementptr inbounds i32, i32* %1559, i64 %1560
  %1562 = load i32, i32* %1561, align 4, !tbaa !16
  %1563 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1553, i32 0
  %1564 = load i32*, i32* addrspace(1)* %1563, align 8, !tbaa !15
  %1565 = sext i32 %1555 to i64
  %1566 = getelementptr inbounds i32, i32* %1564, i64 %1565
  store i32 %1562, i32* %1566, align 4, !tbaa !16
  %1567 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1553, i32 3
  %1568 = load i32*, i32* addrspace(1)* %1567, align 8, !tbaa !19
  %1569 = getelementptr inbounds i32, i32* %1568, i64 %1560
  %1570 = load i32, i32* %1569, align 4, !tbaa !16
  %1571 = getelementptr inbounds %struct.params_unique, %struct.params_unique addrspace(1)* %2, i64 %1553, i32 1
  %1572 = load i32*, i32* addrspace(1)* %1571, align 8, !tbaa !18
  %1573 = load i32, i32 addrspace(1)* %1554, align 8, !tbaa !14
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds i32, i32* %1572, i64 %1574
  store i32 %1570, i32* %1575, align 4, !tbaa !16
  %1576 = icmp slt i32 %113, %19
  br i1 %1576, label %1577, label %1619

1577:                                             ; preds = %1552
  %1578 = load i32, i32 addrspace(1)* %1554, align 8, !tbaa !14
  %1579 = sext i32 %1578 to i64
  %1580 = getelementptr inbounds i32, i32* %1564, i64 %1579
  %1581 = load i32, i32* %1580, align 4, !tbaa !16
  %1582 = getelementptr inbounds i32, i32* %1572, i64 %1579
  %1583 = load i32, i32* %1582, align 4, !tbaa !16
  %1584 = fpext float %9 to double
  %1585 = fsub contract double 1.000000e+00, %1584
  br label %1586

1586:                                             ; preds = %1577, %1586
  %1587 = phi i32 [ %113, %1577 ], [ %1617, %1586 ]
  %1588 = add nuw nsw i32 %1587, 1
  %1589 = freeze i32 %1588
  %1590 = freeze i32 %15
  %1591 = sdiv i32 %1589, %1590
  %1592 = mul i32 %1591, %1590
  %1593 = sub i32 %1589, %1592
  %1594 = icmp eq i32 %1593, 0
  %1595 = select i1 %1594, i32 %15, i32 %1593
  %1596 = sext i1 %1594 to i32
  %1597 = add nsw i32 %1591, -26
  %1598 = add i32 %1597, %1596
  %1599 = add i32 %1598, %1583
  %1600 = mul nsw i32 %1599, %13
  %1601 = add nsw i32 %1595, -27
  %1602 = add i32 %1601, %1581
  %1603 = add i32 %1602, %1600
  %1604 = zext i32 %1587 to i64
  %1605 = getelementptr inbounds float, float* %1548, i64 %1604
  %1606 = load float, float* %1605, align 4, !tbaa !20
  %1607 = fmul contract float %9, %1606
  %1608 = fpext float %1607 to double
  %1609 = sext i32 %1603 to i64
  %1610 = getelementptr inbounds float, float* %109, i64 %1609
  %1611 = addrspacecast float* %1610 to float addrspace(1)*
  %1612 = load float, float addrspace(1)* %1611, align 4, !tbaa !20
  %1613 = fpext float %1612 to double
  %1614 = fmul contract double %1585, %1613
  %1615 = fadd contract double %1614, %1608
  %1616 = fptrunc double %1615 to float
  store float %1616, float* %1605, align 4, !tbaa !20
  %1617 = add nuw nsw i32 %1587, 256
  %1618 = icmp slt i32 %1617, %19
  br i1 %1618, label %1586, label %1619, !llvm.loop !86

1619:                                             ; preds = %1586, %1552, %1547
  ret void
}

; Function Attrs: convergent mustprogress nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fma.f32(float, float, float) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i1 @llvm.amdgcn.class.f32(float, i32) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { convergent mustprogress norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dot7-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime,+s-memtime-inst,+sramecc" "uniform-work-group-size"="true" }
attributes #1 = { convergent mustprogress nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3, !4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 1be90618e508074abc746ab4963d7ad92710d6c5)"}
!4 = !{!"clang version 15.0.0 (http://10.15.3.7/dcutoolkit/driverruntime/llvm-project.git 7e3972366e8c0d41c9f743cba00ca7192508f008)"}
!5 = !{}
!6 = !{i32 0, i32 1024}
!7 = !{!8, !9, i64 32}
!8 = !{!"_ZTS13params_unique", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !12, i64 40, !12, i64 44, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!8, !12, i64 44}
!14 = !{!8, !12, i64 40}
!15 = !{!8, !9, i64 0}
!16 = !{!12, !12, i64 0}
!17 = !{!8, !9, i64 16}
!18 = !{!8, !9, i64 8}
!19 = !{!8, !9, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !10, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!8, !9, i64 48}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = !{!8, !9, i64 56}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = !{!8, !9, i64 72}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = !{!8, !9, i64 80}
!36 = distinct !{!36, !23}
!37 = !{!8, !9, i64 88}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = !{!8, !9, i64 96}
!43 = distinct !{!43, !23}
!44 = !{!8, !9, i64 104}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
!47 = !{!8, !9, i64 112}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23}
!50 = distinct !{!50, !23}
!51 = distinct !{!51, !23}
!52 = distinct !{!52, !23}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !23}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = !{!8, !9, i64 120}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !23}
!62 = !{!8, !9, i64 128}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = distinct !{!65, !23}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !23}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !23}
!70 = distinct !{!70, !71}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !23}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23}
!76 = !{!8, !9, i64 136}
!77 = distinct !{!77, !23}
!78 = !{!8, !9, i64 152}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !71}
!86 = distinct !{!86, !23}
