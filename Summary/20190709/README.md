# 20190709

Today we finished the checklist that Jesse provided us, as follows:

## Goals
*  Get comfortable with installing/using things on hoffman2. **Done.**
    *  Learn easySFS on Hoffman2. **Done.**
*  Learn how to use fastsimcoal for demographic inference. **Done.**
*  Get more comfortable with SLiM, specifically... **Done.**
    *  Figure out how to output a single `.vcf` comprised of individuals from two populations. **Done.**

            P_1 = individuals --> sample individuals from P_1
            P_2 = individuals --> sample individuals from P_2
            Combine two samples into P_3 (or something)
            P_3.outputVCFsample()
    *  Update `create_2d_SFS.R` so that it takes a single `.vcf` file comprising multiple populations. **Done.**
*  Illustrate workflow for inferring the Distribution of Fitness Effects, or DFE. **Done.**

## Meeting with Jesse + Miguel
*  Theta is summary statistics to capture the amount of diversity of mutation rate in either nonsynonymous or synonymous sites.
*  Nonsynonymous mutations have a different *mutation* rate, as well as a different rate of *fixation*.
*  Nonsynonymous SFS differs due to differences in selection pressure **and** differences in mutation rate.
*  Nonsynonymous mutation rate /
*  Once we have the demographic model for the synonymous mutations, we can infer the expected SFS for the nonsynonymous mutations in the absence of selection pressure. This expected SFS is a null expectation for the nonsynonymous SFS in the absence of selection pressure.
*  Theta_ns / Theta_s ~ 2.31, based on codon table.
*  DFE is the distribution that would explain the difference between the neutral [null expectation] and observed nonsynonymous SFS.
*  We will be using *dadi*, which is da/di --> fitdadi.
*  We may be able to use *dadi* to find the observed nonsynonymous SFS.
*  Miguel has an `create_sfs` script, I have a `create_sfs` script, *dadi*, and

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
