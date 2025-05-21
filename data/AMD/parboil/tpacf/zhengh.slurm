#!/bin/bash
#SBATCH -J zhengh
#SBATCH -p normal
#SBATCH -N 1
#SBATCH --ntasks-per-node=20
#SBATCH --mem=80G
#SBATCH --gres=dcu:4
#SBATCH -o test.%j.o
#SBATCH -e test.%j.e 
# ./main  -d /public/home/dtune/zhengh/datasets/tpacf/small/input/Datapnts.1 -n 1  -r  /public/home/dtune/zhengh/datasets/tpacf/small/input/Randompnts.1 -p 487 -o output.dat
./main -i /public/home/dtune/zhengh/datasets/tpacf/small/input/Datapnts.1,/public/home/dtune/zhengh/datasets/tpacf/small/input/Randompnts.1 -o output.out

# ./main



