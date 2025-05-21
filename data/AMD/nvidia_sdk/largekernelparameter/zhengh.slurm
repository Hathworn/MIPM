#!/bin/bash
#SBATCH -J largekernel
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o largekernel.%j.o
#SBATCH -e largekernel.%j.e 
  
  ./main
