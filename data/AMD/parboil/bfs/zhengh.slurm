#!/bin/bash
#SBATCH -J zhengh
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o test.%j.o
#SBATCH -e test.%j.e 
./main -i /public/home/dtune/zhengh/datasets/bfs/UT/input/graph_input.dat -o output.txt







