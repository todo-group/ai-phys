#!/bin/bash

# Example for OpenMP parallel execution with OMP_NUM_THREADS=4

#SBATCH --partition=batch       ## partition (queue) name
#SBATCH --job-name=openmp
#SBATCH --output=%x-%j.out      ## %x will be replaced by jobname 
#SBATCH --error=%x-%j.err       ## %j will be replaced by jobid
#SBATCH --ntasks=1              ## number of tasks (processes)
#SBATCH --cpus-per-task=4       ## number of cpus (threads) per process
#SBATCH --time=1:00:00          ## hour:min:sec

# no need to set OMP_NUM_THREADS
srun a.out
