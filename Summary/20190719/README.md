# 20190719

## Installing `msprime` and `pyslim` on `hoffman2` for use in coalescent trees

Note that this guide assumes that you are using a `conda` environment, loaded with `python2.7`, with the `dadi`, etc. packages installed. My suggested approach is to create a **separate** conda environment for `python3` packages.

Type `cd` to enter your home directory.

Type `conda deactivate` to exit your conda environment.

Type `conda create -n your_environment_name_3 python3.6 anaconda` to create a new environment for `python3.6`.

When that is done, type `conda activate your_environment_name_3`.

Type `conda config --add channels conda-forge`.

Type `conda install msprime`.

Type `python3 -m pip install pyslim --user`.

You should now be good to go! Just make sure to keep track of when you are using `python2.x` and `python3.x`

## Next steps
1.  Using recapitation, create 960,000 generations of neutral burn-in. Done in `msprime` or `pyslim`.
2.  Using recapitation tree, add 10,000 generations of non-neutral burn-in, containing neutral and deleterious mutations.
3.  Bottleneck.
4.  Analysis.
