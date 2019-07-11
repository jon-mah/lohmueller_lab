# 20190711

Today I worked on the pipeline to take an input `.vcf` file and produce the inferred DFE.

## Next Steps

### Miguel
1. Read Claire Marsden "Bottlenecks and Selective Sweeps", from supplementary materials find dog and wolf parameters.
2. Simulate "real" dog + wolf evolution with changing DFEs.
3. Simulate neutral and selection in dog and wolf evolution.
4. What parameters we're changing

### Jon
Read through `dadi` and `fitdadi` manuals.

Create pipeline using `dadi` and `fitdadi` to take in a `.vcf` file and output a DFE.

### Both
Look at how to model an evolving DFE in `SLiM`:
*  The common ancester of dogs and wolfs had a single DFE.
*  After speciation, we suspect that the DFE changed between the two populations.
*  Look at how to implement a method for creating changes in DFE between two diverging populations in `SLiM`. Do this with adjustable parameters.
*  Look at `SLiM` function, `setSelectionCoefficient`.
*  Think of parameters we could change, e.g., time at which DFE starts to change, or sample size, or mutation rate, or recombination rate.
