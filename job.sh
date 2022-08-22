#!/bin/bash
#SBATCH --job-name          simple-template
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --tasks-per-node    12
#SBATCH --mem-per-cpu       2G
#SBATCH --error             output-%j.err
#SBATCH --output            output-%j.out

# Eliminamos los modulos cargados
module purge

# Cargando los modulos necesarios
module load netcdf-fortran/4.6.0

# Comandos que seran ejecutados
./example
