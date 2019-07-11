"""
The purpose of this script is to write a `*pops_file.txt` in the format
specified by `easySFS.py`.

JCM 201907011
"""


import sys
import os
import logging
import time
import argparse
import warnings


class ArgumentParserNoArgHelp(argparse.ArgumentParser):
    """Like *argparse.ArgumentParser*, but prints help when no arguments.

    Written by Sarah Hilton, Mike Doud, Jesse Bloom
    """
    def error(self, message):
        """Prints error message, then help."""
        sys.stderr.write('error: %s\n\n' % message)
        self.print_help()
        sys.exit(2)


def writePopsFileParser():
    """Returns *argparse.ArgumentParser* for ``empiricalBayes`` script."""
    parser = ArgumentParserNoArgHelp(
        description=(
            'Given the number of individuals in population one and two, this '
            'script outputs a `*pops_file.txt` in the format specified for '
            'use by the python package, `easySFS.py`.'),
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument(
        'num_ind_1', type=int,
        help='The number of individuals in population one.')
    parser.add_argument(
        'num_ind_2', type=int,
        help='The number of individuals in population two.')
    parser.add_argument(
        'outprefix', type=str,
        help='The file prefix for the output `*.pops_file.txt`.')
    return parser


def main():
    """Main body of script."""

    # Parse command line arguments
    parser = writePopsFileParser()
    args = vars(parser.parse_args())
    prog = parser.prog

    # Assign arguments
    num_ind_1 = args['num_ind_1']
    num_ind_2 = args['num_ind_2']
    outprefix = args['outprefix']

    # create output directory if needed
    outdir = os.path.dirname(args['outprefix'])
    if outdir:
        if not os.path.isdir(outdir):
            if os.path.isfile(outdir):
                os.remove(outdir)
            os.mkdir(outdir)

    # Output files:
        # simulated_seqs.fasta, site_rates.txt, site_rates_info.txt, log.log
    # Remove output files if they already exist
    underscore = '' if args['outprefix'][-1] == '/' else '_'
    logfile = '{0}{1}log.log'.format(args['outprefix'], underscore)
    pops_file = '{0}{1}pops_file.txt'.format(
        args['outprefix'], underscore)
    to_remove = [logfile, pops_file]
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

    total_ind = 0
    with open(pops_file, 'w') as f:
        for i in range(num_ind_1):
            f.write('i' + str(total_ind) + ' pop1\n')
            total_ind += 1
        for i in range(num_ind_2):
            f.write('i' + str(total_ind) + ' pop2\n')
            total_ind += 1


if __name__ == '__main__':
    main()
