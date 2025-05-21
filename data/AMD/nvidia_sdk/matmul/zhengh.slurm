#!/bin/bash
#SBATCH -J matmul
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o matmul.%j.o
#SBATCH -e matmul.%j.e 
  
  ./main
