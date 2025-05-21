#!/bin/bash

# 遍历当前目录下的所有子文件夹
for dir in */; do
    # 确保这是一个目录
    if [ -d "$dir" ]; then
        # 在每个子文件夹中查找 .cpp 文件
        for cpp_file in "$dir"*.cpp; do
            # 检查 .cpp 文件是否存在
            if [ -f "$cpp_file" ]; then
                # 获取文件名（去掉路径）
                filename=$(basename "$cpp_file" .cpp)
                # 设置输出的目标文件路径
                output_file="$dir$filename"
                # 设置输出的LLVM IR文件路径
                llvm_file_device="$dir$filename"_device.ll
                llvm_file_host="$dir$filename"_host.ll

                # 生成目标文件
                echo "Compiling $cpp_file to $output_file..."
                /public/software/compiler/dtk/dtk-22.04.2/bin/hipcc -x hip --offload-arch=gfx906 "$cpp_file" -o "$output_file"

                # 生成设备端中间表示（LLVM IR）
                echo "Generating device IR for $cpp_file to $llvm_file..."
                /public/software/compiler/dtk/dtk-22.04.2/bin/hipcc -x hip --offload-arch=gfx906 --cuda-device-only -S -emit-llvm "$cpp_file" -o "$llvm_file_device"
                /public/software/compiler/dtk/dtk-22.04.2/bin/hipcc -x hip --offload-arch=gfx906 --cuda-host-only -S -emit-llvm "$cpp_file" -o "$llvm_file_host"
            fi
        done
    fi
done

echo "Compilation and LLVM IR generation finished."
