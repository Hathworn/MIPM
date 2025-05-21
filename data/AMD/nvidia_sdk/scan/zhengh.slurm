#!/bin/bash
#SBATCH -J scan
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o scan.%j.o
#SBATCH -e scan.%j.e 
  
  ./scan 7340032
