#!/bin/bash
#SBATCH -J transpose
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o transpose.%j.o
#SBATCH -e transpose.%j.e 
  
  ./main
