#!/bin/bash
#SBATCH --ntasks=16

module purge
/usr/local/module/spartan_old.sh
module load OpenMPI/1.10.2-GCC-4.9.2

srun mpi-helloworld
