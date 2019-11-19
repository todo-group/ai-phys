#!/bin/bash

# Example for MPI parallel execution with 4 processes

#SBATCH --partition=batch       ## partition (queue) name
#SBATCH --job-name=mpi
#SBATCH --output=%x-%j.out      ## %x will be replaced by jobname 
#SBATCH --error=%x-%j.err       ## %j will be replaced by jobid
#SBATCH --ntasks=4              ## number of tasks (processes)
#SBATCH --time=1:00:00          ## hour:min:sec

# no need to use mpirun/mpiexec
srun a.out
