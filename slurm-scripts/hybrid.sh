#!/bin/bash

# Example for MPI/OpenMP hybrid parallel execution with 4 processes with 4 threads each (16 threads in total)

#SBATCH --partition=batch       ## partition (queue) name
#SBATCH --job-name=hybrid
#SBATCH --output=%x-%j.out      ## %x will be replaced by jobname 
#SBATCH --error=%x-%j.err       ## %j will be replaced by jobid
#SBATCH --ntasks=4              ## number of tasks (processes)
#SBATCH --cpus-per-task=4       ## number of cpus (threads) per process
#SBATCH --time=1:00:00          ## hour:min:sec

# no need to use mpirun/mpiexec nor OMP_NUM_THREADS
srun a.out
