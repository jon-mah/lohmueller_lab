# 20190708

## Using `easySFS.py` and `fsc26` from any directory

Type `cd` to enter your home directory.

Type `cd .local` to enter you `.local` directory.

Type `mkdir bin` to create a bin directory inside your `.local` directory.

Copy or move an executable into your `.local/bin` directory.

Type `cd` to enter your home directory.

Type `nano .bashrc` to open the nano text editor over your `.bashrc` file.

Add this to the bottom of your `.bashrc` file:

`export PATH=$PATH:~/.local/bin`

Exit `nano` by hitting `Ctrl + x`, `y`, `Enter`.

Logoff `Hoffman2` and log back in, and you should be able to run the contents of `$HOME/.local/bin` from any directory!

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
