#!/bin/bash
#SBATCH --job-name=JOBNAME
#SBATCH --partition=intel
#SBATCH --qos=normal
#SBATCH --time=18:00:00
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=144G

images_dir=PATH_TO_DIR/JOBNAME/code/images
output_dir=PATH_TO_DIR/JOBNAME

module load singularity/3.8.0

srun singularity run --bind $images_dir:/$output_dir/JOBNAME/images, \
--writable-tmpfs PATH_TO/odm_latest.sif \
--fast-orthophoto \
--optimize-disk-space \
--matcher-type flann \
--orthophoto-compression JPEG \
--ignore-gsd --orthophoto-resolution 0.05 --feature-quality ultra \
--build-overviews --time \
--project-path $output_dir
