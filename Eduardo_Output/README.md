# example_outputs

**Last updated: July 17th, 2019.**

This directory contains the pipeline outputs (i.e., inferred demographic parameters and inferred gamma-distributed DFE) of arctic wolf (`./AW/`), labrador (`./LB/`), and pug (`./PG/`) data, provided by Eduardo.

Additionally, these directories contain the `*_inference.bash` files submitted to the server that produced the shown output, as well as their error and output files. Note that to run these `.bash` files, they must be in a directory containing the dependencies, as described in `../inference_pipeline/README.md`.

Of note, the demographic parameters inferred by Eduardo and the demographic parameters inferred by `../inference_pipeline/fitdadi_infer_DFE.py` are slightly different. `../inference_pipeline/fitdadi_infer_DFE.py` randomly perturbs around 10 initial guesses and proceeds with the guess that gave the highest maximum likelihood, so I believe this difference in inferred demographic parameters can be attributed to different initial guesses.
