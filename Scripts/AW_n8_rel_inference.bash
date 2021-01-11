#!/bin/bash
#$ -cwd
#$ -V
#$ -l h_data=10G
#$ -l h_rt=00:10:00

# AW_inference.bash
# This script infers the demography and DFE of arctic wolves, given
# their synonymous and nonsynonymous sfs.

python fitdadi_infer_DFE.py ../Data/20201208_eduardo_sfs/AW.n8.S.rel.sfs ../Data/20201208_eduardo_sfs/AW.n8.NS.rel.sfs ../20201208_eduardo_sfs/AW_n8_rel/ --breed "AW"
