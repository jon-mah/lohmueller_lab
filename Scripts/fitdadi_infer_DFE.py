"""
Uses fitdadi to infer the DFE of a given synonynmous sfs.

JCM 201907011
"""


import sys
import os
import logging
import time
import argparse
import warnings

import numpy
import dadi
import Selection
import Spectrum


class ArgumentParserNoArgHelp(argparse.ArgumentParser):
    """Like *argparse.ArgumentParser*, but prints help when no arguments."""

    def error(self, message):
        """Print error message, then help."""
        sys.stderr.write('error: %s\n\n' % message)
        self.print_help()
        sys.exit(2)


def ExistingFile(fname):
    """If *fname* is an existing file return it, otherwise raise ValueError."""
    if os.path.isfile(fname):
        return fname
    else:
        raise ValueError("%s must specify a valid file name" % fname)


def inferDFEParser():
    """Return *argparse.ArgumentParser* for ``empiricalBayes`` script."""
    parser = ArgumentParserNoArgHelp(
        description=(
            'Given the number of individuals in population one and two, this '
            'script outputs a `*pops_file.txt` in the format specified for '
            'use by the python package, `easySFS.py`.'),
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument(
        'input_sfs', type=ExistingFile,
        help=('Synonynomous site-frequency spectrum from which the '
              'distribution of fitness effects should be inferred.'))
    parser.add_argument(
        'outprefix', type=str,
        help='The file prefix for the output `*DFE_output.txt`.')
    parser.add_argument(
        'num_samples', type=int,
        help='The number of chromosomes from which we infer the DFE.')
    return parser


def snm(notused, ns, pts):
    """Return a standard neutral model.

    ns = (n1, )
        n1: Number of samples in resulting Spectrum object.
    pts: Number of grid points to use in integration.
    """
    xx = dadi.Numerics.default_grid(pts)  # Define likelihood surface.
    phi = dadi.PhiManip.phi_1D(xx)  # Define initial phi.

    fs = dadi.Spectrum.from_phi(phi, ns, (xx, ))  # Construct Spectrum object.
    return fs


def two_epoch(params, ns, pts):
    """Define a two-epoch demography, i.e., an instantaneous size change.

    params = (nu, T)
        nu: Ratio of contemporary to ancient population size.
        T: Time in the past at which size change occured, in units of 2*N_a.
    ns = (n1, )
        n1: Number of samples in resulting Spectrum object.
    pts: Number of grid points to use in integration.
    """
    nu, T = params  # Define given parameters.
    xx = dadi.Numerics.default_grid(pts)  # Define likelihood surface.
    phi = dadi.PhiManip.phi_1D(xx)  # Define initial phi.

    phi = dadi.Integration.one_pop(phi, xx, T, nu, gamma=gamma)  # Integrate.

    fs = dadi.Spectrum.from_phi(phi, ns, (xx,))  # Construct Spectrum object.
    return fs


def growth(params, ns, pts):
    """Exponential growth beginning some time ago.

    params = (nu, T)
        nu: Ratio of contemporary to ancient population size.
        T: Time in the past at which size change occured, in units of 2*N_a.
    ns = (n1, )
        n1: Number of samples in resulting Spectrum object.
    pts: Number of grid points to use in integration.
    """
    nu, T = params  # Define given parameters.
    xx = dadi.Numerics.default_grid(pts)  # Define likelihood surface.
    phi = dadi.PhiManip.phi_1D(xx)  # Define initial phi.

    def nu_func(t): return numpy.exp(numpy.log(nu) * t / T)  # Exp growth.
    phi = dadi.Integration.one_pop(phi, xx, T, nu_func)  # Integrate.

    fs = dadi.Spectrum.from_phi(phi, ns, (xx, ))  # Construct Spectrum object.
    return fs


def bottlegrowth(params, ns, pts):
    """Instantaneous size change followed by exponential growth.

    params = (nuB, nuF, T)
        nuB: Ratio of population size after instantaneous change to ancient
            population size.
        nuF: Ratio of contemporary to ancient population size.
        T: Time in the past at which size change occured, in units of 2*N_a.
    ns = (n1, )
        n1: Number of samples in resulting Spectrum object.
    pts: Number of grid points to use in integration.
    """
    nuB, nuF, T = params  # Define given parameters.

    xx = dadi.Numerics.default_grid(pts)  # Define likelihood surface.
    phi = dadi.PhiManip.phi_1D(xx)  # Define initial phi

    # Exponential growth function
    def nu_func(t): return nuB * numpy.exp(numpy.log(nuF / nuB) * t / T)

    phi = dadi.Integration.one_pop(phi, xx, T, nu_func)  # Integrate.

    fs = dadi.Spectrum.from_phi(phi, ns, (xx, ))  # Construct Spectrum object.
    return fs


def three_epoch(params, ns, pts):
    """Define a three-epoch demography, i.e., two instantaneous size changes.

    params = (nuB, nuF, TB, TF)
        nuB: Ratio of bottleneck population size to ancient population size.
        nuF: Ratio of contemporary to ancient population size.
        TB: Length of bottleneck, in units of 2 * N_a.
        TF: Time since bottleneck recovery, in units of 2 * N_a.
    ns = (n1, )
        n1: Number of samples in resulting Spectrum object.
    pts: Number of grid points to use in integration.
    """
    nuB, nuF, TB, TF = params  # Define given parameters.

    xx = dadi.Numerics.default_grid(pts)  # Define likelihood surface.
    phi = dadi.PhiManip.phi_1D(xx)  # Define initial phi.

    phi = dadi.Integration.one_pop(phi, xx, TB, nuB)  # Integrate epoch 1 to 2.
    phi = dadi.Integration.one_pop(phi, xx, TF, nuF)  # Integrate epoch 2 to 3.

    fs = dadi.Spectrum.from_phi(phi, ns, (xx, ))
    return fs


def four_epoch(params, ns, pts):
    """Define a four-epoch demography, i.e., three instantaneous size changes.

    params = (Na, Nb, Nc, Ta, Tb, Tc)
        Na: ratio of population size between epoch 1 and 2.
        Nb: ratio of population size between epoch 2 and 3.
        Nc: ratio of population size between epoch 3 and 4.
        Ta: Length of bottleneck between epoch 1 and 2, in units of 2 * N_a.
        Tb: Length of bottleneck between epoch 2 and 3, in units of 2 * N_a.
        Tc: Length of bottleneck between epoch 3 and 4, in units of 2 * N_a.
    ns = (n1, )
        n1: Number of samples in resulting Spectrum object.
    pts: Number of grid points to use in integration.
    """
    Na, Nb, Nc, Ta, Tb, Tc = params  # Define given parameters.

    xx = dadi.Numerics.default_grid(pts)  # Define likelihood surface.
    phi = dadi.PhiManip.phi_1D(xx)  # Define initial phi.

    phi = dadi.Integration.one_pop(phi, xx, Ta, Na)  # Integrate epoch 1 to 2.
    phi = dadi.Integration.one_pop(phi, xx, Tb, Nb)  # Integrate epoch 2 to 3.
    phi = dadi.Integration.one_pop(phi, xx, Tc, Nc)  # Integrate epoch 3 to 4.

    fs = dadi.Spectrum.from_phi(phi, ns, (xx, ))  # Construct spectrum object.
    return fs


def main():
    """Execute main function."""
    # Parse command line arguments
    parser = inferDFEParser()
    args = vars(parser.parse_args())
    prog = parser.prog

    # Assign arguments
    input_sfs = args['input_sfs']
    outprefix = args['outprefix']

    # create output directory if needed
    outdir = os.path.dirname(args['outprefix'])
    if outdir:
        if not os.path.isdir(outdir):
            if os.path.isfile(outdir):
                os.remove(outdir)
            os.mkdir(outdir)

    # Output files: logfile
    # Remove output files if they already exist
    underscore = '' if args['outprefix'][-1] == '/' else '_'
    DFE_output = '{0}{1}DFE_output.txt'.format(args['outprefix'], underscore)
    logfile = '{0}{1}DFE_output_log.log'.format(args['outprefix'], underscore)
    to_remove = [logfile, DFE_output]
    for f in to_remove:
        if os.path.isfile(f):
            os.remove(f)

    # Set up to log everything to logfile.
    logging.shutdown()
    logging.captureWarnings(True)
    logging.basicConfig(
        format='%(asctime)s - %(levelname)s - %(message)s', level=logging.INFO)
    logger = logging.getLogger(prog)
    warning_logger = logging.getLogger("py.warnings")
    logfile_handler = logging.FileHandler(logfile)
    logger.addHandler(logfile_handler)
    warning_logger.addHandler(logfile_handler)
    formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
    logfile_handler.setFormatter(formatter)

    # print some basic information
    logger.info('Beginning execution of {0} in directory {1}\n'.format(
        prog, os.getcwd()))
    logger.info('Progress is being logged to {0}\n'.format(logfile))
    logger.info('Parsed the following arguments:\n{0}\n'.format(
        '\n'.join(['\t{0} = {1}'.format(*tup) for tup in args.items()])))

    # Construct initial Spectrum object from input synonymous sfs.
    syn_data = dadi.Spectrum.from_file(input_sfs)
    syn_ns = syn_data.sample_sizes  # Number of samples.
    pts_l = [100, 200, 300]

    # Optomize parameters for this model.
    # First set parameter bounds for optimization
    upper_bound = [8, 3]
    lower_bound = [1e-4, 0]

    initial_guesses = [1., 0.1, , 0.05, 0.01, 0.005, 0.001, 0.0005, 0.0001,
                       0.00005, 0.00001]
    with open(DFE_output, 'w') as f:
        f.write('Beginning with demographic inference.')
        max_likelihood = -1e25
        for i in range(10):
            # Pick from initial guesses
            p0 = [initial_guesses[i], initial_guesses[i]]
            # Perturb parameters before optimization.
            p0 = dadi.Misc.perturb_params(
                p0, fold=1, upper_bound=upper_bound, lower_bound=lower_bound)
            # Make the extrapolating version of demographic model function.
            func_ex = dadi.Numerics.make_extrap_log_func(two_epoch())
            f.write(
                'Attempting optimization with initial guess, {0}.'.format(p0))
            logger.info(
                'Beginning optimization with initial guess, {0}.'.format(p0))
            popt = dadi.Inference.optomize_log_lbgfsb(
                p0, syn_data, func_ex, pts_l,
                lower_bound=lower_bound, upper_bound=upper_bound,
                verbose=len(p0), maxiter=100)
            logger.info(
                'Finished optimization with initial guess, ' + str(p0) + '.')
            logger.info('Best fit parameters: {0}.'.format(popt))
            # Calculate the best-fit model allele-frequency spectrum.
            model = func_ex(popt, ns, pts_l)
            # Likelihood of the data given the model AFS.
            ll_model = dadi.Inference.ll_multinom(model, syn_data)
            logger.info(
                'Maximum log composite likelihood: {0}.'.format(ll_model))
            theta = dadi.Inference.optimal_sfs_scaling(model, syn_data)
            logger.info(
                'Optimal value of theta: {0}.'.format(theta))
            if ll_model > max_likelihood:
                best_param = popt
                best_model = model
                max_likelihood = ll_model
                best_theta = theta
        f.write('Best fit parameters: {0}.\n'.format(best_popt))
        f.write(
            'Maximum log composite likelihood: {0}.\n'.format(max_likelihood))
        f.write('Optimal value of theta: {0}.\n'.format(theta))

    """
    demog_params = [2, 0.05]
    theta_ns = 4000
    ns = data.sample_sizes

    # If SFS has 40 individuals, largest bin should be 81
    pts_l = [2000, 2200, 2400]
    spectra = Selection.spectra(demog_params, ns, two_epoch, pts_l=pts_l,
                                int_bounds=(1e-5, 500), Npts=600, echo=True,
                                mp=True)

    data = dadi.Spectrum.from_file(input_sfs)
    sel_params = [0.2, 1000.]  # From example sfs.
    lower_bound = [1e-3, 1e-2]  # From example sfs.
    upper_bound = [1, 50000.]  # From example sfs.
    p0 = dadi.Misc.perturb_params(sel_params, lower_bound=lower_bound,
                                  upper_bound=upper_bound)
    popt = Selection.optimize_log(p0, data, spectra.integrate,
                                  Selection.gamma_dist, theta_ns,
                                  lower_bound=lower_bound,
                                  upper_bound=upper_bound,
                                  verbose=len(sel_params),
                                  maxiter=30)

    # Expected SFS at the maximum likelihood estimate.
    model_sfs = spectra.integrate(popt[1], Selection.gamma_dist, theta_ns)

    logger.info('Finished inferring the DFE of the given site frequency '
                'spectrum.')

    gamma_parameters = popt[1]
    alpha = gamma_parameters[0]
    beta = gamma_parameters[1]
    with open(DFE_output, 'w') as f:
        f.write('The inferred alpha parameter is ' + str(alpha) + '.\n')
        f.write('The inferred beta parameters is ' + str(beta) + '.\n')
        f.write('The expected distribution is as follows: ' +
                str(model_sfs) + '.')
    """
    logger.info('Pipeline executed succesfully.')


if __name__ == '__main__':
    main()
