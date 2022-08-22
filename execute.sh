#!/bin/bash
module purge
module load netcdf-fortran/4.6.0
ifort $(nf-config --cflags) $(nf-config --flibs) example.f90 -o example
sbatch job.sh
