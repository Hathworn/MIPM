#!/bin/bash
#SBATCH -J binomialoption
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o binomialoption.%j.o
#SBATCH -e binomialoption.%j.e 
./main1  --verify







