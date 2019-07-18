#!/bin/bash
#$ -cwd
#$ -V
#$ -m bea

# AW_inference.bash
# This script infers the demography and DFE of arctic wolves, given
# their synonymous and nonsynonymous sfs.
#
python fitdadi_infer_DFE.py ../Data/syn_PG.sfs ../Data/nonsyn_PG.sfs ../Eduardo_Output/PG/ --breed "PG"
