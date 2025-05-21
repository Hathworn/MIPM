#!/bin/bash
#SBATCH -J bitonicsort
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o bitonicsort.%j.o
#SBATCH -e bitonicsort.%j.e 
./bitonicsort --seed 456 -l 65536 --order asc







