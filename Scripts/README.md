# inference_pipeline

This directory contains the necessary files used to infer demographic parameters and the DFE, given a `.vcf` file. Specifically, it includes:
*  `write_pops_file.py`, which is used to write the `*pops_file.txt` used for `easySFS.py`, given the number of individuals in two populations and an outprefix.
*  `easySFS.py`, which is used to compute the nonsynonymous and synonymous site-frequency spectrums of a given `.vcf` file. Requires a `*pops_file.txt` written by `write_pops_file.py`, an outdirectory, and a projection.
*  `fitdadi_infer_DFE.py`, which is used to infer demographic parameters and the DFE, given a synonymous and a nonsynonymous site-frequency spectrum computed by `easySFS.py`, as well as an output directory. Optionally accepts a breed specification, such as "AW" indicating arctic wolves, "LB" indicating labradors, and "PG" indicating pugs. The default breed is arctic wolves.
*  `pipeline.bash`, which is a bash script that executes the other three scripts to infer the demographic parameters and the DFE of a given `.vcf` file.
