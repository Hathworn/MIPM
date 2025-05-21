#!/bin/bash

# 设置输出目录
OUTPUT_DIR="hipprof_results"
mkdir -p $OUTPUT_DIR

# NI 和 DIM_THREAD_BLOCK_X, DIM_THREAD_BLOCK_Y 的配置
NI_values=(256 512 1024 2048 4096 8192)
BLOCKS_X_values=(1 2 4 8 16 32 64 128 256)
BLOCKS_Y_values=(256 128 64 32 16 8 4 2 1)

# 遍历所有配置
for ni in "${NI_values[@]}"; do
  # 设置 NJ 和 NI 相等
  nj=$ni

  for i in "${!BLOCKS_X_values[@]}"; do
    # 获取当前的 DIM_THREAD_BLOCK_X 和 DIM_THREAD_BLOCK_Y
    dim_x="${BLOCKS_X_values[$i]}"
    dim_y="${BLOCKS_Y_values[$i]}"

    # 生成一个临时的2mm.cuh文件以修改参数
    cp covariance.cuh covariance_temp.cuh

    # 修改2mm_temp.cuh中的NI, NJ, NK, NL 和 DIM_THREAD_BLOCK_X, DIM_THREAD_BLOCK_Y
    sed -i "s/#define M .*/#define M $ni/" covariance_temp.cuh
    sed -i "s/#define N .*/#define N $nj/" covariance_temp.cuh
    sed -i "s/#define DIM_THREAD_BLOCK_KERNEL_1_X .*/#define DIM_THREAD_BLOCK_KERNEL_1_X $dim_x/" covariance_temp.cuh
    sed -i "s/#define DIM_THREAD_BLOCK_KERNEL_1_Y .*/#define DIM_THREAD_BLOCK_KERNEL_1_Y $dim_y/" covariance_temp.cuh
    sed -i "s/#define DIM_THREAD_BLOCK_KERNEL_2_X .*/#define DIM_THREAD_BLOCK_KERNEL_2_X $dim_x/" covariance_temp.cuh
    sed -i "s/#define DIM_THREAD_BLOCK_KERNEL_2_Y .*/#define DIM_THREAD_BLOCK_KERNEL_2_Y $dim_y/" covariance_temp.cuh
    sed -i "s/#define DIM_THREAD_BLOCK_KERNEL_3_X .*/#define DIM_THREAD_BLOCK_KERNEL_3_X $dim_x/" covariance_temp.cuh
    sed -i "s/#define DIM_THREAD_BLOCK_KERNEL_3_Y .*/#define DIM_THREAD_BLOCK_KERNEL_3_Y $dim_y/" covariance_temp.cuh
    # 编译源代码时使用临时修改的 2mm_temp.cuh
    hipcc -O3 covariance_hip.cpp -I. -I$(pwd) -o run

    # 使用hipprof工具运行并输出结果到指定文件
    # 以测试的参数命名文件，方便区分
    result_file_pmc="$OUTPUT_DIR/result_${ni}_${nj}_${dim_x}_${dim_y}_pmc.txt"
    result_file_pmc_csv="$OUTPUT_DIR/result_${ni}_${nj}_${dim_x}_${dim_y}_pmc.csv"

    # 执行hipprof，获取 PMC 数据并重命名文件
    hipprof --pmc --pmc-type 2 ./run
    # 获取生成的文件（假设文件名包含 pid）
    generated_file=$(ls pmc_results_*.txt)
    mv "$generated_file" "$result_file_pmc"

    hipprof --pmc --pmc-type 3 ./run
    # 获取生成的文件（假设文件名包含 pid）
    generated_file=$(ls pmc_results_*.csv)
    mv "$generated_file" "$result_file_pmc_csv"

    # 清理临时文件
    rm -f covariance_temp.cuh
  done
done

echo "所有测试完成，结果已保存到 $OUTPUT_DIR 目录中。"