#!/bin/bash
#SBATCH --ntasks=16

module purge


module load gcc/8.3.0
module load openmpi/3.1.4
srun -n 16 ./hello.x
