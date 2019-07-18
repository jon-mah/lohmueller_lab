#!/bin/bash
#$ -cwd
#$ -V
#$ -m bea

# AW_inference.bash
# This script infers the demography and DFE of arctic wolves, given
# their synonymous and nonsynonymous sfs.

python fitdadi_infer_DFE.py ../Data/syn_AW.sfs ../Data/nonsyn_AW.sfs ../Eduardo_Output/AW/ --breed "AW"
