#!/bin/bash
#---------------Script SBATCH - NLHPC ----------------
#SBATCH -J tarea
#SBATCH -p general
#SBATCH -n 1
#SBATCH -c 1
#SBATCH --reservation=pronostico
#SBATCH --mem-per-cpu=4250
##SBATCH --mail-user=foo@bar.com
##SBATCH --mail-type=ALL
#SBATCH -o tarea_%j.out

ml Python

source ~/curso_dl/bin/activate

python Presentacion_NLHPC.py

