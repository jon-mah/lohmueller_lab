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


def two_epoch(params, ns, pts):
    """Define a two-epoch demography."""
    nu, T = params
    xx = dadi.Numerics.default_grid(pts)
    phi = dadi.PhiManip.phi_1D(xx)
    phi = dadi.Integration.one_pop(phi, xx, T, nu)
    return fs


def two_epoch_sel(params, ns, pts):
    """Define a selection model for a two-epoch demography."""
    nu, T, gamma = params
    xx = dadi.Numerics.default_grid(pts)
    phi = dadi.PhiManip.phi_1D(xx, gamma=gamma)
    phi = dadi.Integration.one_pop(phi, xx, T, nu, gamma=gamma)
    fs = dadi.Spectrum.from_phi(phi, ns, (xx,))
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
    num_samples = args['num_samples']

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

    demog_params = [2, 0.05]
    theta_ns = 4000
    ns = numpy.array([num_samples])

    # If SFS has 40 individuals, largest bin should be 81
    pts_l = [2000, 2200, 2400]
    spectra = Selection.spectra(demog_params, ns, two_epoch_sel, pts_l=pts_l,
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

    logger.info('Pipeline executed succesfully.')


if __name__ == '__main__':
    main()
