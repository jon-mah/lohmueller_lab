#!/bin/bash
#$ -cwd
#$ -V
#$ -m bea
#$ -l h_data=1G
#$ -l h_rt=10:00:00


# AW_inference.bash
# This script infers the demography and DFE of arctic wolves, given
# their synonymous and nonsynonymous sfs.

python fitdadi_infer_DFE.py ../Data/syn_AW.sfs ../Data/nonsyn_AW.sfs ../20200103_Output/AW/ --breed "AW"
python fitdadi_infer_DFE.py ../Data/syn_LB.sfs ../Data/nonsyn_LB.sfs ../20200103_Output/LB/ --breed "LB"
python fitdadi_infer_DFE.py ../Data/syn_PG.sfs ../Data/nonsyn_PG.sfs ../20200103_Output/PG/ --breed "PG"
