#include <hip/hip_runtime.h>
#include <chrono>
#include <iostream>
#include <cmath> // for fabs

struct _cuAtomElement {
    int type;
    double rho;
    double df;
};

struct _domain {
    int box_size_x;
    int box_size_y;
    int box_size_z;
};

__device__ double hipDEmbedEnergy(int type, double rho) {
    return type * rho * 0.5; // 假设嵌入能量计算
}

// 原始核函数
__global__ void calDf(_cuAtomElement* d_atoms, long start_id, long end_id, _domain d_domain) {
    const unsigned int thread_id = hipBlockIdx_x * hipBlockDim_x + hipThreadIdx_x;
    const long atoms_num = (end_id - start_id) * d_domain.box_size_x * d_domain.box_size_y;
    const unsigned int threads_size = hipGridDim_x * hipBlockDim_x;

    for (int atom_id = thread_id; atom_id < atoms_num; atom_id += threads_size) {
        const int z = atom_id / (d_domain.box_size_x * d_domain.box_size_y);
        const int y = (atom_id % (d_domain.box_size_x * d_domain.box_size_y)) / d_domain.box_size_x;
        const int x = (atom_id % (d_domain.box_size_x * d_domain.box_size_y)) % d_domain.box_size_x;
        const long index = x + y * d_domain.box_size_x + z * d_domain.box_size_x * d_domain.box_size_y;

        const int type0 = d_atoms[index].type;
        const double rho = d_atoms[index].rho;

        if (type0 < 0) {
            continue;
        }
        d_atoms[index].df = hipDEmbedEnergy(type0, rho);
    }
}

// 优化后的核函数
__global__ void calDf_optimized(_cuAtomElement* d_atoms, long start_id, long end_id, _domain d_domain) {
    extern __shared__ _cuAtomElement shared_atoms[]; // 共享内存存储原子信息

    const unsigned int thread_id = hipBlockIdx_x * hipBlockDim_x + hipThreadIdx_x;
    const long atoms_num = (end_id - start_id) * d_domain.box_size_x * d_domain.box_size_y;
    const unsigned int threads_size = hipGridDim_x * hipBlockDim_x;

    for (int atom_id = thread_id; atom_id < atoms_num; atom_id += threads_size) {
        const int z = atom_id / (d_domain.box_size_x * d_domain.box_size_y);
        const int y = (atom_id % (d_domain.box_size_x * d_domain.box_size_y)) / d_domain.box_size_x;
        const int x = (atom_id % (d_domain.box_size_x * d_domain.box_size_y)) % d_domain.box_size_x;
        const long index = x + y * d_domain.box_size_x + z * d_domain.box_size_x * d_domain.box_size_y;

        // 加载到共享内存
        shared_atoms[threadIdx.x] = d_atoms[index];
        __syncthreads(); // 确保所有线程加载完成

        const int type0 = shared_atoms[threadIdx.x].type;
        const double rho = shared_atoms[threadIdx.x].rho;

        if (type0 >= 0) {
            d_atoms[index].df = hipDEmbedEnergy(type0, rho);
        }
        __syncthreads(); // 同步以避免写入和读取共享内存的冲突
    }
}

// 检查两个数组是否一致，允许微小误差
bool checkResultsConsistency(_cuAtomElement* h_atoms_original, _cuAtomElement* h_atoms_optimized, int total_atoms) {
    const double epsilon = 1e-6; // 允许的误差范围
    for (int i = 0; i < total_atoms; ++i) {
        if (std::fabs(h_atoms_original[i].df - h_atoms_optimized[i].df) > epsilon) {
            std::cout << "Mismatch at atom " << i << ": "
                      << "Original df = " << h_atoms_original[i].df
                      << ", Optimized df = " << h_atoms_optimized[i].df << std::endl;
            return false;
        }
    }
    return true;
}

void testKernelPerformance() {
    const int total_atoms = 256 * 256 * 256; // 总原子数
    const int threads_per_block = 512;
    const int blocks = (total_atoms + threads_per_block - 1) / threads_per_block;

    // 初始化域
    _domain h_domain = {512, 512, 512};

    // 分配主机和设备内存
    _cuAtomElement* h_atoms = new _cuAtomElement[total_atoms];
    _cuAtomElement* d_atoms_original;
    _cuAtomElement* d_atoms_optimized;

    for (int i = 0; i < total_atoms; ++i) {
        h_atoms[i].type = (i % 2 == 0) ? 1 : -1;
        h_atoms[i].rho = 1.0 * (i % 10);
        h_atoms[i].df = 0.0;
    }

    hipMalloc(&d_atoms_original, total_atoms * sizeof(_cuAtomElement));
    hipMalloc(&d_atoms_optimized, total_atoms * sizeof(_cuAtomElement));
    hipMemcpy(d_atoms_original, h_atoms, total_atoms * sizeof(_cuAtomElement), hipMemcpyHostToDevice);
    hipMemcpy(d_atoms_optimized, h_atoms, total_atoms * sizeof(_cuAtomElement), hipMemcpyHostToDevice);

    // 数据预热：先执行一次原始核函数，确保数据加载到设备
    calDf<<<blocks, threads_per_block>>>(d_atoms_original, 0, 1, h_domain);
    hipDeviceSynchronize();

    // 数据预热：执行一次优化核函数，确保数据加载到设备
    calDf_optimized<<<blocks, threads_per_block, threads_per_block * sizeof(_cuAtomElement)>>>(d_atoms_optimized, 0, 1, h_domain);
    hipDeviceSynchronize();

    // 原始核函数测试
    auto start = std::chrono::high_resolution_clock::now();
    calDf<<<blocks, threads_per_block>>>(d_atoms_original, 0, 1, h_domain);
    hipDeviceSynchronize();
    auto end = std::chrono::high_resolution_clock::now();
    double duration_original = std::chrono::duration<double, std::milli>(end - start).count();

    // 优化核函数测试
    start = std::chrono::high_resolution_clock::now();
    calDf_optimized<<<blocks, threads_per_block, threads_per_block * sizeof(_cuAtomElement)>>>(d_atoms_optimized, 0, 1, h_domain);
    hipDeviceSynchronize();
    end = std::chrono::high_resolution_clock::now();
    double duration_optimized = std::chrono::duration<double, std::milli>(end - start).count();

    // 拷回数据进行验证
    hipMemcpy(h_atoms, d_atoms_original, total_atoms * sizeof(_cuAtomElement), hipMemcpyDeviceToHost);
    _cuAtomElement* h_atoms_optimized = new _cuAtomElement[total_atoms];
    hipMemcpy(h_atoms_optimized, d_atoms_optimized, total_atoms * sizeof(_cuAtomElement), hipMemcpyDeviceToHost);

    // 输出执行时间
    std::cout << "Original kernel execution time: " << duration_original << " ms" << std::endl;
    std::cout << "Optimized kernel execution time: " << duration_optimized << " ms" << std::endl;

    // 验证结果一致性
    if (checkResultsConsistency(h_atoms, h_atoms_optimized, total_atoms)) {
        std::cout << "Results are consistent!" << std::endl;
    } else {
        std::cout << "Results are not consistent!" << std::endl;
    }

    // 清理内存
    hipFree(d_atoms_original);
    hipFree(d_atoms_optimized);
    delete[] h_atoms;
    delete[] h_atoms_optimized;
}

int main() {
    testKernelPerformance();
    return 0;
}
