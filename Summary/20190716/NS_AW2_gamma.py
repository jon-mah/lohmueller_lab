#! /usr/bin/env python

import numpy
import dadi
import Selection
from dadi import Numerics, Inference, Misc, PhiManip, Integration
from dadi.Spectrum_mod import Spectrum
import cPickle

def two_epoch(params, ns, pts):																
    nu, T = params
    xx = dadi.Numerics.default_grid(pts)
    phi = dadi.PhiManip.phi_1D(xx)
    phi = dadi.Integration.one_pop(phi, xx, T, nu)
    fs = dadi.Spectrum.from_phi(phi, ns, (xx,))
    return fs

data = dadi.Spectrum.from_file('AW.sfs')												###
#data = data.fold()
ns = data.sample_sizes

demog_params = [0.15587314,0.0111469]														###
theta_syn = 11084.6193041																	###
theta_ns = theta_syn * 2.14																																		
																									
def two_epoch_sel(params, ns, pts):
    nu, T, gamma = params
    xx = dadi.Numerics.default_grid(pts)
    phi = dadi.PhiManip.phi_1D(xx, gamma=gamma)
    phi = dadi.Integration.one_pop(phi, xx, T, nu, gamma=gamma)
    fs = dadi.Spectrum.from_phi(phi, ns, (xx,))
    return fs

Lsyn = 5144295																				###																
u = 5.38E-09																			
u_exon = u * 1.25																		
Na = theta_syn / (4 * u_exon * Lsyn)
max_s = 0.5																				
max_gam = max_s * 2 * Na

pts_l = [500,1000,2000]
spectra = Selection.spectra(demog_params, ns, two_epoch_sel, pts_l=pts_l, 
                            int_bounds=(1e-5,max_gam), Npts=300, echo=True, 
                            mp=True)

#fit a DFE to the data
BETAinit = max_gam / 3				
sel_params = [0.15, BETAinit]		
upper_beta = 10 * max_gam			
lower_bound = [1e-3, 0]
upper_bound = [1, upper_beta]		
p0 = dadi.Misc.perturb_params(sel_params, lower_bound=lower_bound,
                              upper_bound=upper_bound)
popt = Selection.optimize_log(p0, data, spectra.integrate, Selection.gamma_dist, 
                              theta_ns, lower_bound=lower_bound, 
                              upper_bound=upper_bound, verbose=len(sel_params), 
                              maxiter=30)

#get expected SFS for MLE
model_sfs = spectra.integrate(popt[1], Selection.gamma_dist, theta_ns)

print('Best-fit parameters: {0}'.format(popt))





## delete below?
# ll_model = dadi.Inference.ll(model_sfs, data) #Poisson
# print('Maximum log composite likelihood: {0}'.format(ll_model))
# PLOT
# 
# # Plot a comparison of the resulting fs with the data.
# import pylab
# pylab.figure(1)
# dadi.Plotting.plot_1d_comp_multinom(model_sfs, data)
# # This ensures that the figure pops up. It may be unecessary if you are using
# # ipython.
# pylab.show()
# 
