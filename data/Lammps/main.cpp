#include <iostream>
#include <cmath>
#include <hip/hip_runtime.h>
#include "kernel1.hpp"

// 初始化数据
void initializeData(numtyp4 *x, numtyp *fp, int2 *type2rhor_z2r_in,
                    numtyp4 *rhor_spline1, numtyp4 *z2r_spline1, numtyp4 *z2r_spline2,
                    numtyp *cutsq, int *dev_nbor, int *dev_packed, acctyp3 *ans, acctyp *engv,
                    const int num_atoms, const int num_neighbors)
{

    // 随机数种子
    // std::srand(std::time(nullptr));
    std::srand(0);

    // 初始化原子位置 (x, y, z)
    for (int i = 0; i < num_atoms; ++i)
    {
        x[i].x = static_cast<float>(rand()) / RAND_MAX; // 随机生成 x 坐标
        x[i].y = static_cast<float>(rand()) / RAND_MAX; // 随机生成 y 坐标
        x[i].z = static_cast<float>(rand()) / RAND_MAX; // 随机生成 z 坐标
        x[i].w = 0.0f;                                  // 额外的值，可以用来存储其他数据（如原子类型或其他属性）
    }

    // 初始化势函数参数 fp
    for (int i = 0; i < num_atoms; ++i)
    {
        fp[i] = static_cast<numtyp>(rand()) / RAND_MAX * 10.0f; // 势函数参数，假设在[0, 10]范围内
    }

    // 初始化类型到电子密度映射
    for (int i = 0; i < num_atoms; ++i)
    {
        type2rhor_z2r_in[i].x = rand() % 10; // 随机生成类型值
        type2rhor_z2r_in[i].y = rand() % 10; // 随机生成与密度或其他属性相关的值
    }

    // 初始化电子密度的样条插值表 rhor_spline1
    for (int i = 0; i < num_atoms; ++i)
    {
        rhor_spline1[i].x = static_cast<float>(rand()) / RAND_MAX;
        rhor_spline1[i].y = static_cast<float>(rand()) / RAND_MAX;
        rhor_spline1[i].z = static_cast<float>(rand()) / RAND_MAX;
        rhor_spline1[i].w = static_cast<float>(rand()) / RAND_MAX;
    }

    // 初始化距离样条插值表 z2r_spline1 和 z2r_spline2
    for (int i = 0; i < num_atoms; ++i)
    {
        z2r_spline1[i].x = static_cast<float>(rand()) / RAND_MAX;
        z2r_spline1[i].y = static_cast<float>(rand()) / RAND_MAX;
        z2r_spline1[i].z = static_cast<float>(rand()) / RAND_MAX;
        z2r_spline1[i].w = static_cast<float>(rand()) / RAND_MAX;

        z2r_spline2[i].x = static_cast<float>(rand()) / RAND_MAX;
        z2r_spline2[i].y = static_cast<float>(rand()) / RAND_MAX;
        z2r_spline2[i].z = static_cast<float>(rand()) / RAND_MAX;
        z2r_spline2[i].w = static_cast<float>(rand()) / RAND_MAX;
    }

    // 初始化临界距离的平方 cutsq
    for (int i = 0; i < num_atoms; ++i)
    {
        cutsq[i] = static_cast<numtyp>(rand()) / RAND_MAX * 1.0f; // 临界距离，假设在[0, 1]范围内
    }

    // 初始化邻居列表
    for (int i = 0; i < num_neighbors; ++i)
    {
        dev_nbor[i] = rand() % num_atoms; // 随机选择一个邻居
    }

    // 初始化打包数据 dev_packed
    for (int i = 0; i < num_neighbors; ++i)
    {
        dev_packed[i] = rand() % 2; // 随机生成0或1的打包信息
    }

    // 初始化力的输出数据 ans
    for (int i = 0; i < num_atoms; ++i)
    {
        ans[i].x = 0.0f;
        ans[i].y = 0.0f;
        ans[i].z = 0.0f;
    }

    // 初始化能量的输出数据 engv
    for (int i = 0; i < num_atoms * 7; ++i)
    {
        engv[i] = static_cast<acctyp>(rand()) / RAND_MAX * 100.0f; // 随机生成原子的能量，假设在[0, 100]范围内
    }
}

// 主函数
int main()
{
    const int num_atoms = 700000;            // 原子数量
    const int num_neighbors = 2 * num_atoms; // 邻居数量

    // 1. 在主机上分配输入和输出数据
    numtyp4 *h_x = new numtyp4[num_atoms];            // 原子位置
    numtyp *h_fp = new numtyp[num_atoms];             // 势函数参数
    int2 *h_type2rhor_z2r_in = new int2[num_atoms];   // 类型到密度的映射
    numtyp4 *h_rhor_spline1 = new numtyp4[num_atoms]; // 密度样条插值
    numtyp4 *h_z2r_spline1 = new numtyp4[num_atoms];  // 距离样条插值
    numtyp4 *h_z2r_spline2 = new numtyp4[num_atoms];  // 另一个距离样条插值
    numtyp *h_cutsq = new numtyp[num_atoms];          // 临界距离的平方
    int *h_dev_nbor = new int[num_neighbors];         // 邻居列表
    int *h_dev_packed = new int[num_neighbors];       // 打包数据
    acctyp3 *h_ans = new acctyp3[num_atoms];          // 存储力的输出
    acctyp *h_engv = new acctyp[num_atoms * 7];       // 存储能量输出

    // 初始化数据
    initializeData(h_x, h_fp, h_type2rhor_z2r_in, h_rhor_spline1, h_z2r_spline1,
                   h_z2r_spline2, h_cutsq, h_dev_nbor, h_dev_packed, h_ans, h_engv,
                   num_atoms, num_neighbors);

    // 2. 在设备端分配内存
    numtyp4 *d_x, *d_rhor_spline1, *d_z2r_spline1, *d_z2r_spline2;
    numtyp *d_fp, *d_cutsq;
    int2 *d_type2rhor_z2r_in;
    int *d_dev_nbor, *d_dev_packed;
    acctyp3 *d_ans;
    acctyp *d_engv;

    hipMalloc((void **)&d_x, num_atoms * sizeof(numtyp4));
    hipMalloc((void **)&d_fp, num_atoms * sizeof(numtyp));
    hipMalloc((void **)&d_type2rhor_z2r_in, num_atoms * sizeof(int2));
    hipMalloc((void **)&d_rhor_spline1, num_atoms * sizeof(numtyp4));
    hipMalloc((void **)&d_z2r_spline1, num_atoms * sizeof(numtyp4));
    hipMalloc((void **)&d_z2r_spline2, num_atoms * sizeof(numtyp4));
    hipMalloc((void **)&d_cutsq, num_atoms * sizeof(numtyp));
    hipMalloc((void **)&d_dev_nbor, num_neighbors * sizeof(int));
    hipMalloc((void **)&d_dev_packed, num_neighbors * sizeof(int));
    hipMalloc((void **)&d_ans, num_atoms * sizeof(acctyp3));
    hipMalloc((void **)&d_engv, 7 * num_atoms * sizeof(acctyp));

    // 3. 将数据从主机复制到设备
    hipMemcpy(d_x, h_x, num_atoms * sizeof(numtyp4), hipMemcpyHostToDevice);
    hipMemcpy(d_fp, h_fp, num_atoms * sizeof(numtyp), hipMemcpyHostToDevice);
    hipMemcpy(d_type2rhor_z2r_in, h_type2rhor_z2r_in, num_atoms * sizeof(int2), hipMemcpyHostToDevice);
    hipMemcpy(d_rhor_spline1, h_rhor_spline1, num_atoms * sizeof(numtyp4), hipMemcpyHostToDevice);
    hipMemcpy(d_z2r_spline1, h_z2r_spline1, num_atoms * sizeof(numtyp4), hipMemcpyHostToDevice);
    hipMemcpy(d_z2r_spline2, h_z2r_spline2, num_atoms * sizeof(numtyp4), hipMemcpyHostToDevice);
    hipMemcpy(d_cutsq, h_cutsq, num_atoms * sizeof(numtyp), hipMemcpyHostToDevice);
    hipMemcpy(d_dev_nbor, h_dev_nbor, num_neighbors * sizeof(int), hipMemcpyHostToDevice);
    hipMemcpy(d_dev_packed, h_dev_packed, num_neighbors * sizeof(int), hipMemcpyHostToDevice);
    hipMemcpy(d_ans, h_ans, num_atoms * sizeof(acctyp3), hipMemcpyHostToDevice);
    hipMemcpy(d_engv, h_engv, 7 * num_atoms * sizeof(acctyp), hipMemcpyHostToDevice);

    // 4. 设置核函数的参数
    int eflag = 1;                              // 计算能量
    int vflag = 1;                              // 计算速度
    int inum = num_atoms;                       // 原子数量
    int nbor_pitch = num_neighbors / num_atoms; // 邻居步长
    // int nbor_pitch = 1;
    numtyp cutforcesq = 1.0; // 力的临界距离平方
    numtyp rdr = 1.0;        // 距离缩放因子
    int nr = 100;            // 样条的分段数
    int t_per_atom = 1;      // 每个原子使用的线程数

    // 5. 启动核函数
    int blockSize = 256;                                // 每个块的线程数
    int numBlocks = (inum + blockSize - 1) / blockSize; // 块的数量


    hipEvent_t start, stop;
    hipEventCreate(&start);
    hipEventCreate(&stop);
    hipEventRecord(start, 0);

    k_eam_fast<<<numBlocks, blockSize>>>(d_x, d_fp, d_type2rhor_z2r_in, d_rhor_spline1,
                                         d_z2r_spline1, d_z2r_spline2, d_cutsq,
                                         d_dev_nbor, d_dev_packed, d_ans, d_engv,
                                         eflag, vflag, inum, nbor_pitch, cutforcesq,
                                         rdr, nr, t_per_atom);
    hipError_t err = hipGetLastError();
    if (err != hipSuccess)
    {
        printf("CUDA Error: %s\n", hipGetErrorString(err));
        // Possibly: exit(-1) if program cannot continue....
    }

    hipEventRecord(stop, 0);
    hipEventSynchronize(stop);
    float elapsedTime;
    hipEventElapsedTime(&elapsedTime, start, stop);
    std::cout << "核函数执行时间: " << elapsedTime << " 毫秒" << std::endl;

    // 6. 等待核函数完成
    hipDeviceSynchronize();

    // 7. 将结果从设备复制回主机
    hipMemcpy(h_ans, d_ans, num_atoms * sizeof(acctyp3), hipMemcpyDeviceToHost);
    hipMemcpy(h_engv, d_engv, 7 * num_atoms * sizeof(acctyp), hipMemcpyDeviceToHost);

    // 8. 打印一些输出结果（可选）
    std::cout << "Force and energy for first 5 atoms:" << std::endl;
    for (int i = 0; i < 5; ++i)
    {
        std::cout << "Atom " << i << ": Force (" << h_ans[i].x << ", " << h_ans[i].y << ", " << h_ans[i].z
                  << ")" << std::endl;
    }

    // 9. 释放设备内存
    hipFree(d_x);
    hipFree(d_fp);
    hipFree(d_type2rhor_z2r_in);
    hipFree(d_rhor_spline1);
    hipFree(d_z2r_spline1);
    hipFree(d_z2r_spline2);
    hipFree(d_cutsq);
    hipFree(d_dev_nbor);
    hipFree(d_dev_packed);
    hipFree(d_ans);
    hipFree(d_engv);

    // 10. 释放主机内存
    delete[] h_x;
    delete[] h_fp;
    delete[] h_type2rhor_z2r_in;
    delete[] h_rhor_spline1;
    delete[] h_z2r_spline1;
    delete[] h_z2r_spline2;
    delete[] h_cutsq;
    delete[] h_dev_nbor;
    delete[] h_dev_packed;
    delete[] h_ans;
    delete[] h_engv;

    return 0;
}

// 无 ONETYPE
// Atom 0: Force (758220, 105103, 139209)
// Atom 1: Force (337595, -865407, -711891)
// Atom 2: Force (2.47944e+06, 480474, 1.39072e+06)
// Atom 3: Force (642882, 216515, -58045.4)
// Atom 4: Force (100165, -827690, 1.45995e+06)

// ONETYPE = 1
// Atom 0: Force (692683, 110568, 110771)
// Atom 1: Force (326937, -825756, -708644)
// Atom 2: Force (2.04906e+06, 421478, 1.12219e+06)
// Atom 3: Force (538739, 181412, -48625.4)
// Atom 4: Force (100758, -366386, 1.52901e+06)

// ONETYPE = 2
// Atom 0: Force (693737, 102082, 120707)
// Atom 1: Force (290084, -732346, -627748)
// Atom 2: Force (2.23693e+06, 429774, 1.25895e+06)
// Atom 3: Force (574380, 193383, -51829.1)
// Atom 4: Force (82671, -915558, 1.17322e+06)

// ONETYPE = 3
// Atom 0: Force (358475, 58972.8, 55501.6)
// Atom 1: Force (127191, -304357, -302982)
// Atom 2: Force (1.16966e+06, 206728, 676864)
// Atom 3: Force (276778, 93218.5, -24986.4)
// Atom 4: Force (42782.2, -446988, 611259)