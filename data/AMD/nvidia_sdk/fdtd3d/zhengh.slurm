#!/bin/bash
#SBATCH -J fdtd3d 
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o fdtd3d.%j.o
#SBATCH -e fdtd3d.%j.e 
  
  ./main
