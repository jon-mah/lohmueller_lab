# AW_inference.bash
# This script infers the demography and DFE of arctic wolves, given
# their synonymous and nonsynonymous sfs.
#
# It can be run by submitting the following to the command line:
# qsub -cwd -V PG_inference.bash

python fitdadi_infer_DFE.py ../Data/syn_PG.sfs ../Data/nonsyn_PG.sfs ../Eduardo_Output/PG/ --breed "PG"
