#!/bin/bash
#SBATCH --job-name="PingPong"
#SBATCH --ntasks=2
#SBATCH --time=0-00:10:00

module purge


module load gcc/8.3.0
module load openmpi/3.1.4
srun -n 2 ./mpi-pingpong
