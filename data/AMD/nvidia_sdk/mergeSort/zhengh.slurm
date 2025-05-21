#!/bin/bash
#SBATCH -J mergesort
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o mergesort.%j.o
#SBATCH -e mergesort.%j.e 
  
  ./mergesort2 10 
