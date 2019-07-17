#!/bin/bash
#$ -cwd
#$ -V
#$ -m bea

# AW_inference.bash
# This script infers the demography and DFE of arctic wolves, given
# their synonymous and nonsynonymous sfs.
#
# It can be run by submitting the following to the command line:
# qsub -cwd -V LB_inference.bash

python fitdadi_infer_DFE.py ../Data/syn_LB.sfs ../Data/nonsyn_LB.sfs ../Eduardo_Output/LB/ --breed "LB"
