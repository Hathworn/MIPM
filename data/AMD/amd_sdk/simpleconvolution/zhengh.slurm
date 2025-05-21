#!/bin/bash
#SBATCH -J simpleconvolution
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o simpleconvolution.%j.o
#SBATCH -e simpleconvolution.%j.e 
./simpleconvolution  --width 1024 --height 768 --iterations 10 --seed 456







