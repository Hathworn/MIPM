#include "3DConvolution.h"
#include "../../common/cache_strategy/cache_wrapper.h"
#include "../../common/polybench.h"
#include "hthread_device.h"
#include <compiler/m3000.h>

static inline int min(int a, int b) { return a > b ? b : a; }

// __global__ void convolution3D_kernel(int ni, int nj, int nk, int i, DATA_TYPE *A, DATA_TYPE *B)
// {
//     // 获取线程总数和当前线程ID
//     int total_threads = get_group_size();
//     int thread_id = get_thread_id();

//     // 计算每个线程需要处理的j和k的范围
//     int total_elements = (_PB_NJ - 1) * (_PB_NK - 1);
//     int elements_per_thread = total_elements / total_threads;
//     int extra_elements = total_elements % total_threads;

//     // 确定当前线程的起始和结束位置
//     int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
//     int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

//     // 常量系数定义
//     DATA_TYPE c11 = +2, c12 = -3, c13 = +4, c21 = +5, c22 = +6, c23 = +7, c31 = -8, c32 = -9, c33 = +10;

//     // 遍历当前线程负责的范围
//     for (int idx = start_idx; idx < end_idx; idx++) {
//         // 从一维索引计算j和k的位置
//         int j = idx / (_PB_NK - 1) + 1; // +1确保j > 0
//         int k = idx % (_PB_NK - 1) + 1; // +1确保k > 0

//         // 原有的边界检查
//         B[i * (NK * NJ) + j * NK + k] = c11 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
//                                         c21 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
//                                         c31 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
//                                         c11 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k + 1)] +
//                                         c21 * A[(i - 1) * (NK * NJ) + (j + 0) * NK + (k + 1)] +
//                                         c31 * A[(i - 1) * (NK * NJ) + (j + 1) * NK + (k + 1)] +
//                                         c12 * A[(i + 0) * (NK * NJ) + (j - 1) * NK + (k + 0)] +
//                                         c22 * A[(i + 0) * (NK * NJ) + (j + 0) * NK + (k + 0)] +
//                                         c32 * A[(i + 0) * (NK * NJ) + (j + 1) * NK + (k + 0)] +
//                                         c13 * A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
//                                         c23 * A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
//                                         c33 * A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
//                                         c13 * A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k + 1)] +
//                                         c23 * A[(i + 1) * (NK * NJ) + (j + 0) * NK + (k + 1)] +
//                                         c33 * A[(i + 1) * (NK * NJ) + (j + 1) * NK + (k + 1)];
//     }
// }

__global__ void convolution3D_kernel(int ni, int nj, int nk, int i, DATA_TYPE *A, DATA_TYPE *B)
{
    // 获取线程总数和当前线程ID
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算每个线程需要处理的j和k的范围
    int total_elements = (_PB_NJ - 1) * (_PB_NK - 1);
    int elements_per_thread = total_elements / total_threads;
    int extra_elements = total_elements % total_threads;

    // 确定当前线程的起始和结束位置
    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    // 常量系数定义
    DATA_TYPE c11 = +2, c12 = -3, c13 = +4, c21 = +5, c22 = +6, c23 = +7, c31 = -8, c32 = -9, c33 = +10;

    // 遍历当前线程负责的范围
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] = c11 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
                                        c21 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
                                        c31 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c11 * A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k + 1)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c21 * A[(i - 1) * (NK * NJ) + (j + 0) * NK + (k + 1)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c31 * A[(i - 1) * (NK * NJ) + (j + 1) * NK + (k + 1)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c12 * A[(i + 0) * (NK * NJ) + (j - 1) * NK + (k + 0)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c22 * A[(i + 0) * (NK * NJ) + (j + 0) * NK + (k + 0)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c32 * A[(i + 0) * (NK * NJ) + (j + 1) * NK + (k + 0)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c13 * A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
                                         c23 * A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)] +
                                         c33 * A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c23 * A[(i + 1) * (NK * NJ) + (j + 0) * NK + (k + 1)];
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        B[i * (NK * NJ) + j * NK + k] += c33 * A[(i + 1) * (NK * NJ) + (j + 1) * NK + (k + 1)];
    }
}



#ifdef MINI_DATASET
__global__ void convolution3D_kernel_cache(int ni, int nj, int nk, int i, DATA_TYPE *A, DATA_TYPE *B)
{
    // 加速器架构参数
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算当前线程处理的(j,k)范围
    int total_elements = (_PB_NJ - 1) * (_PB_NK - 1);
    int elements_per_thread = total_elements / total_threads;
    int extra_elements = total_elements % total_threads;
    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    // 关键边界计算
    int j_start = start_idx / (_PB_NK - 1) + 1;
    int k_start = start_idx % (_PB_NK - 1) + 1;
    int i_min = (i - 1 >= 0) ? (i - 1) : 0;
    int i_max = (i + 1 < ni) ? (i + 1) : (ni - 1);

    // 计算缓存区间
    int j_end = (end_idx - 1) / (_PB_NK - 1) + 1;
    int k_end = (end_idx - 1) % (_PB_NK - 1) + 1;
    int A_min_addr = i_min * (NJ * NK) + (j_start - 1) * NK + (k_start - 1);
    int A_max_addr = i_max * (NJ * NK) + (j_end + 1) * NK + (k_end + 1);
    int cache_size = (A_max_addr - A_min_addr + 1) * sizeof(DATA_TYPE);

    // 初始化缓存
    DATA_TYPE *A_p = A; // 保存原始指针
    CACHEb_INIT(A, DATA_TYPE, &A[A_min_addr], 0, cache_size);
    CACHEb_INIT(B, DATA_TYPE, &B[i * (NK * NJ) + j_start * NK + k_start], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));

    // 常量系数
    DATA_TYPE c11 = +2, c12 = -3, c13 = +4, c21 = +5, c22 = +6, c23 = +7, c31 = -8, c32 = -9, c33 = +10;

    // 预计算层偏移基址 - 这样在循环中就不用重复计算了
    int i_minus_1_offset = (i - 1 - i_min) * NJ * NK;
    int i_offset = (i - i_min) * NJ * NK;
    int i_plus_1_offset = (i + 1 - i_min) * NJ * NK;

    // j、k偏移基准 - 避免重复计算(j_start-1)和(k_start-1)
    int j_base = -(j_start - 1) * NK;
    int k_base = -(k_start - 1);

    DATA_TYPE a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, tmp_B;

    // 遍历当前线程负责的(j,k)位置
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // 计算j和k在缓存中的偏移
        int j_offset = j * NK + j_base;
        int k_offset = k + k_base;

        // i-1层访问 - 使用预计算的基址
        CACHEb_RD(A, &A[i_minus_1_offset + (j_offset - NK) + (k_offset - 1)], a1); // [i-1][j-1][k-1]
        CACHEb_RD(A, &A[i_minus_1_offset + (j_offset - NK) + (k_offset + 1)], a2); // [i-1][j-1][k+1]
        CACHEb_RD(A, &A[i_minus_1_offset + j_offset + (k_offset + 1)], a3);        // [i-1][j][k+1]
        CACHEb_RD(A, &A[i_minus_1_offset + (j_offset + NK) + (k_offset + 1)], a4); // [i-1][j+1][k+1]

        // i层访问
        CACHEb_RD(A, &A[i_offset + (j_offset - NK) + k_offset], a5); // [i][j-1][k]
        CACHEb_RD(A, &A[i_offset + j_offset + k_offset], a6);        // [i][j][k]
        CACHEb_RD(A, &A[i_offset + (j_offset + NK) + k_offset], a7); // [i][j+1][k]

        // i+1层访问
        CACHEb_RD(A, &A[i_plus_1_offset + (j_offset - NK) + (k_offset - 1)], a8);  // [i+1][j-1][k-1]
        CACHEb_RD(A, &A[i_plus_1_offset + (j_offset - NK) + (k_offset + 1)], a9);  // [i+1][j-1][k+1]
        CACHEb_RD(A, &A[i_plus_1_offset + j_offset + (k_offset + 1)], a10);        // [i+1][j][k+1]
        CACHEb_RD(A, &A[i_plus_1_offset + (j_offset + NK) + (k_offset + 1)], a11); // [i+1][j+1][k+1]

        // 计算B值 (保持不变)
        tmp_B = c11 * a1 + c21 * a1 + c31 * a1 + c11 * a2 + c21 * a3 + c31 * a4 + c12 * a5 + c22 * a6 + c32 * a7 +
                c13 * a8 + c23 * a8 + c33 * a8 + c13 * a9 + c23 * a10 + c33 * a11;

        // 写入B (使用简化的偏移计算)
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }

    CACHEb_FLUSH(B);
    CACHEb_INVALID(A);
}
#endif

#ifdef SMALL_DATASET
__global__ void convolution3D_kernel_cache(int ni, int nj, int nk, int i, DATA_TYPE *A, DATA_TYPE *B)
{
    // 加速器架构参数
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算当前线程处理的(j,k)范围
    int total_elements = (_PB_NJ - 1) * (_PB_NK - 1);
    int elements_per_thread = total_elements / total_threads;
    int extra_elements = total_elements % total_threads;
    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    // 关键边界计算
    int j_start = start_idx / (_PB_NK - 1) + 1;
    int k_start = start_idx % (_PB_NK - 1) + 1;

    // 初始化缓存
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    CACHEb_INIT(B, DATA_TYPE, &B[i * (NK * NJ) + j_start * NK + k_start], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));

    // 常量系数
    DATA_TYPE c11 = +2, c12 = -3, c13 = +4, c21 = +5, c22 = +6, c23 = +7, c31 = -8, c32 = -9, c33 = +10;

    DATA_TYPE a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, tmp_B;

    // 遍历当前线程负责的(j,k)位置
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i-1层访问 - 使用预计算的基址
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a1); // [i-1][j-1][k-1]
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a2); // [i-1][j-1][k+1]

        tmp_B = c11 * a1 + c21 * a1 + c31 * a1 + c11 * a2;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a3); // [i-1][j][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c21 * a3;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a4); // [i-1][j+1][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c31 * a4;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j - 1) * NK + (k + 0)], a5); // [i][j-1][k]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c12 * a5;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 0) * NK + (k + 0)], a6); // [i][j][k]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c22 * a6;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 1) * NK + (k + 0)], a7); // [i][j+1][k]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c32 * a7;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a8); // [i+1][j-1][k-1]
        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a9); // [i+1][j-1][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c13 * a8 + c23 * a8 + c33 * a8 + c13 * a9;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a10); // [i+1][j][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c23 * a10;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a11); // [i+1][j+1][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c33 * a11;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }

    CACHEb_FLUSH(B);
    CACHEs_INVALID(A);
}
#endif

#ifdef STANDARD_DATASET /* Default if unspecified. */
__global__ void convolution3D_kernel_cache(int ni, int nj, int nk, int i, DATA_TYPE *A, DATA_TYPE *B)
{
    // 加速器架构参数
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算当前线程处理的(j,k)范围
    int total_elements = (_PB_NJ - 1) * (_PB_NK - 1);
    int elements_per_thread = total_elements / total_threads;
    int extra_elements = total_elements % total_threads;
    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    // 关键边界计算
    int j_start = start_idx / (_PB_NK - 1) + 1;
    int k_start = start_idx % (_PB_NK - 1) + 1;

    // 初始化缓存
    CACHEs_INIT(A, DATA_TYPE, A, 0, 15);
    CACHEb_INIT(B, DATA_TYPE, &B[i * (NK * NJ) + j_start * NK + k_start], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));

    // 常量系数
    DATA_TYPE c11 = +2, c12 = -3, c13 = +4, c21 = +5, c22 = +6, c23 = +7, c31 = -8, c32 = -9, c33 = +10;

    DATA_TYPE a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, tmp_B;

    // 遍历当前线程负责的(j,k)位置
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i-1层访问 - 使用预计算的基址
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a1); // [i-1][j-1][k-1]
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a2); // [i-1][j-1][k+1]

        tmp_B = c11 * a1 + c21 * a1 + c31 * a1 + c11 * a2;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a3); // [i-1][j][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c21 * a3;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a4); // [i-1][j+1][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c31 * a4;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j - 1) * NK + (k + 0)], a5); // [i][j-1][k]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c12 * a5;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 0) * NK + (k + 0)], a6); // [i][j][k]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c22 * a6;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 1) * NK + (k + 0)], a7); // [i][j+1][k]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c32 * a7;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a8); // [i+1][j-1][k-1]
        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a9); // [i+1][j-1][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c13 * a8 + c23 * a8 + c33 * a8 + c13 * a9;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a10); // [i+1][j][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c23 * a10;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a11); // [i+1][j+1][k+1]

        CACHEb_RD(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
        tmp_B += c33 * a11;
        CACHEb_WT(B, &B[(j - j_start) * NK + (k - k_start)], tmp_B);
    }

    CACHEb_FLUSH(B);
    CACHEs_INVALID(A);
}
#endif

#ifdef LARGE_DATASET
__global__ void convolution3D_kernel_cache(int ni, int nj, int nk, int i, DATA_TYPE *A, DATA_TYPE *B)
{
    // 加速器架构参数
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算当前线程处理的(j,k)范围
    int total_elements = (_PB_NJ - 1) * (_PB_NK - 1);
    int elements_per_thread = total_elements / total_threads;
    int extra_elements = total_elements % total_threads;
    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    // 关键边界计算
    int j_start = start_idx / (_PB_NK - 1) + 1;
    int k_start = start_idx % (_PB_NK - 1) + 1;

    // 初始化缓存
    CACHEs_INIT(A, DATA_TYPE, A, 0, 13);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 15);
    // CACHEb_INIT(B, DATA_TYPE, &B[i * (NK * NJ) + j_start * NK + k_start], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));

    // 常量系数
    DATA_TYPE c11 = +2, c12 = -3, c13 = +4, c21 = +5, c22 = +6, c23 = +7, c31 = -8, c32 = -9, c33 = +10;

    DATA_TYPE a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, tmp_B;

    // 遍历当前线程负责的(j,k)位置
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i-1层访问 - 使用预计算的基址
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a1); // [i-1][j-1][k-1]
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a2); // [i-1][j-1][k+1]

        tmp_B = c11 * a1 + c21 * a1 + c31 * a1 + c11 * a2;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a3); // [i-1][j][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c21 * a3;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a4); // [i-1][j+1][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c31 * a4;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j - 1) * NK + (k + 0)], a5); // [i][j-1][k]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c12 * a5;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 0) * NK + (k + 0)], a6); // [i][j][k]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c22 * a6;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 1) * NK + (k + 0)], a7); // [i][j+1][k]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c32 * a7;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a8); // [i+1][j-1][k-1]
        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a9); // [i+1][j-1][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c13 * a8 + c23 * a8 + c33 * a8 + c13 * a9;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a10); // [i+1][j][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c23 * a10;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a11); // [i+1][j+1][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c33 * a11;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }

    CACHEs_FLUSH(B);
    CACHEs_INVALID(A);
}
#endif

#ifdef EXTRALARGE_DATASET
__global__ void convolution3D_kernel_cache(int ni, int nj, int nk, int i, DATA_TYPE *A, DATA_TYPE *B)
{
    // 加速器架构参数
    int total_threads = get_group_size();
    int thread_id = get_thread_id();

    // 计算当前线程处理的(j,k)范围
    int total_elements = (_PB_NJ - 1) * (_PB_NK - 1);
    int elements_per_thread = total_elements / total_threads;
    int extra_elements = total_elements % total_threads;
    int start_idx = thread_id * elements_per_thread + min(thread_id, extra_elements);
    int end_idx = start_idx + elements_per_thread + (thread_id < extra_elements ? 1 : 0);

    // 关键边界计算
    int j_start = start_idx / (_PB_NK - 1) + 1;
    int k_start = start_idx % (_PB_NK - 1) + 1;

    // 初始化缓存
    CACHEs_INIT(A, DATA_TYPE, A, 0, 13);
    CACHEs_INIT(B, DATA_TYPE, B, 0, 15);
    // CACHEb_INIT(B, DATA_TYPE, &B[i * (NK * NJ) + j_start * NK + k_start], 0, (end_idx - start_idx) * sizeof(DATA_TYPE));

    // 常量系数
    DATA_TYPE c11 = +2, c12 = -3, c13 = +4, c21 = +5, c22 = +6, c23 = +7, c31 = -8, c32 = -9, c33 = +10;

    DATA_TYPE a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, tmp_B;

    // 遍历当前线程负责的(j,k)位置
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i-1层访问 - 使用预计算的基址
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a1); // [i-1][j-1][k-1]
        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a2); // [i-1][j-1][k+1]

        tmp_B = c11 * a1 + c21 * a1 + c31 * a1 + c11 * a2;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a3); // [i-1][j][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c21 * a3;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i - 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a4); // [i-1][j+1][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c31 * a4;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j - 1) * NK + (k + 0)], a5); // [i][j-1][k]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c12 * a5;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        // i层访问
        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 0) * NK + (k + 0)], a6); // [i][j][k]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c22 * a6;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 0) * (NK * NJ) + (j + 1) * NK + (k + 0)], a7); // [i][j+1][k]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c32 * a7;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k - 1)], a8); // [i+1][j-1][k-1]
        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j - 1) * NK + (k + 1)], a9); // [i+1][j-1][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c13 * a8 + c23 * a8 + c33 * a8 + c13 * a9;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 0) * NK + (k + 1)], a10); // [i+1][j][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c23 * a10;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }
    for (int idx = start_idx; idx < end_idx; idx++) {
        int j = idx / (_PB_NK - 1) + 1;
        int k = idx % (_PB_NK - 1) + 1;

        CACHEs_RD(A, &A[(i + 1) * (NK * NJ) + (j + 1) * NK + (k + 1)], a11); // [i+1][j+1][k+1]

        CACHEb_RD(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
        tmp_B += c33 * a11;
        CACHEb_WT(B, &B[i * (NK * NJ) + j * NK + k], tmp_B);
    }

    CACHEs_FLUSH(B);
    CACHEs_INVALID(A);
}
#endif