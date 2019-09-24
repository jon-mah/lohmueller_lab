# inference_pipeline

**Last updated: September 24th, 2019.**

This directory contains the necessary files used to infer demographic parameters and the DFE, given a `.vcf` file. Specifically, it includes:
*  `simulation.slim`, which is an example `SLiM` file that is, by default, set up to simulate an Arctic Wolf lineage with a chromosome of length 20154 base pairs. This is 1/800 times the full length of the Arctic Wolf genome.
*  `Selection.py`, which includes the `fitdadi` code used in `fitdadi_infer_DFE.py`. Written by Bernard Kim.
*  `write_pops_file.py`, which is used to write the `*pops_file.txt` used for `easySFS.py`, given the number of individuals in two populations and an outprefix.
*  `easySFS.py`, which is used to compute the nonsynonymous and synonymous site-frequency spectrums of a given `.vcf` file. Requires a `*pops_file.txt` written by `write_pops_file.py`, an outdirectory, and a projection.
*  `fitdadi_infer_DFE.py`, which is used to infer demographic parameters and the DFE, given a synonymous and a nonsynonymous site-frequency spectrum computed by `easySFS.py`, as well as an output directory. Optionally accepts a breed specification, such as "AW" indicating arctic wolves, "LB" indicating labradors, and "PG" indicating pugs. The default breed is arctic wolves.
*  `pipeline_array.bash`, which is a bash script that executes `simulation.slim` several times using parallel computing over a job array. Note that each resulting `.vcf` file is essentially an independent chromosome.
*  `pipeline_inference.bash`, which is a bash script that executes `write_pops_file.py`, `easySFS.py`, and `fitdadi_infer_DFE.py` to infer demographic parameters and the DFE of a given `.vcf` file. This script also concatenates all of the `.vcf` files created by `pipeline_array.bash` into a single `.vcf` file.

## pipeline_array inputs
In the `pipeline_array.bash` file, you need to define
*  `seed`, a random seed.
*  `num_ind`, Number of samples from single population.
*  `prefix`, the input prefix of the given `.vcf` file. Also serves as the output prefix for most of the output. It is assumed that the input `.vcf` is an existing file in the output directory.
*  `easySFS_proj`, the number of chromosomes that the sample is projected down into via `easySFS.py`.

## pipeline_inference inputs
In the `pipeline.bash` file, you need to define
*  `seed`, a random seed.
*  `num_ind`, Number of samples from single population.
*  `prefix`, the input prefix of the given `.vcf` file. Also serves as the output prefix for most of the output. It is assumed that the input `.vcf` is an existing file in the output directory.
*  `easySFS_proj`, the number of chromosomes that the sample is projected down into via `easySFS.py`.

## Pipeline dependencies
*  Executable form of `SLiM` or pathway to `slim` executable.
*  `Python 2.7.x`, I use `Python 2.7.16`.
*  `dadi`
*  `numpy`
*  `scipy`
*  `pandas`
*  `matplotlib`
*  `Selection.py`
*  `easySFS.py`
*  `write_pops_file.py`
*  `fitdadi_infer_DFE.py`
