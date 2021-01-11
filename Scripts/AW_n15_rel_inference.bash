#!/bin/bash
#$ -cwd
#$ -V
#$ -l h_data=10G
#$ -l h_rt=00:10:00

# AW_inference.bash
# This script infers the demography and DFE of arctic wolves, given
# their synonymous and nonsynonymous sfs.

python fitdadi_infer_DFE.py ../Data/20201208_eduardo_sfs/AW.n15.S.rel.sfs ../Data/20201208_eduardo_sfs/AW.n15.NS.rel.sfs ../20201208_eduardo_sfs/AW_n15_rel/ --breed "AW"
