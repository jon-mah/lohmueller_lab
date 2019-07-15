# 20190712

Today we made a skeleton script for the `pipeline.bash`, which takes in a `.vcf` file and outputs a `.txt` file describing the alpha and beta parameters of an inferred DFE.

## Next steps

*  Read through the materials provided by Jesse.
*  Meet Monday, 20190715 at 2:00 PM.
*  Finish pipeline, which takes in a `.vcf` for a single population, and outputs a DFE.

## Meeting with Jesse, Miguel, Kirk, Eduardo
*  Eduardo will provide parameters that make sense for defining a simulation.
*  He has led the DFE inference work.
*  We will be using the demography that Eduardo inferred from **arctic wolves** and from **pugs**.
*  These models were inferred from synonymous sites.
*  Eduardo inferred a distribution of fitness effects in both species. They were quite similar.
*  We take parameters from arctic wolves.
*  Simulate data under the two different demographies (arctic wolf and pug), but use the DFE inferred from arctic wolves.
*  We have fit single population models. We will be proceeding with the populations separately.
*  Arctic wolves is two epoch, pugs are three epoch.
*  Exome is 25,000,000 sites.
*  When we simulate data given the parameters that Eduardo provides, we want to see how they relate to the previously inferred demography and DFE.

1.  Eduardo provides sfs from real data and from inference.
2.  When we do simulation using demography and DFE, the produced sfs should be similar.
*  Proportional sfs is easy to get correct than a count sfs. Proportional will work with incorrect parameters.
3.  Make sure demographic model and DFE matches SFS produced from dadi.
4.  Brainstorm how to change selection coefficients.

## In the future
*  Simulate entire exome.
*  Simulate with human-like exon density.
*  Take a sample of the same size as what we have empirically.
*  Possibly take bigger samples eventually.

## Next steps
1.  Take Eduardo's parameters.
2.  Simulate under them.
3.  Compute and compare SFS.
4.  Infer and compare demography / DFE.

## Simulations
1.  Using Wolf DFE, simulate under either the wolf demography or the pug demography.

2.  Burn in
*  Using the Wolf DFE and demography, burn in.
*  In the last 100 generations, make some proportion of deleterious mutations less deleterious.

3.  Burn in with new mutations
*  Using the Wolf DFE and demography, burn in.
*  In the last 100 generations, make some proportion of deleterious mutations less deleterious.
*  Also change the distribution of new mutations.
