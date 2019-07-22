"""This python script performs recapitation over a simulated AW lineage."""

import msprime
import pyslim
import matplotlib.pyplot as plt


def main():
    """Execute main functions of script."""
    # Load the .tress file
    ts = pyslim.load('../Data/AW_recap/seed_1.trees')

    # Recapitate
    recap = ts.recapitate(recombination_rate=1e-8, Ne=80000, random_seed=1)
    recap.dump('../Data/AW_recap/seed_1.trees')


if __name__ == '__main__':
    main()
