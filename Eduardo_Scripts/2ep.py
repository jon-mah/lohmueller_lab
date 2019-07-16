from numpy import array
import dadi
import Demographics1D
import random

# Load the data
#data = dadi.Spectrum.from_file('curr_ssp.sfs')
data = dadi.Spectrum.from_file('AW_temp.sfs')
#data = data.fold()
ns = data.sample_sizes

pts_l = [80,100,120]

# choose model
func = Demographics1D.two_epoch

# Optimize parameters for this model. 
# First set parameter bounds for optimization
upper_bound = [8, 3]
lower_bound = [1e-4, 0]

# Pick random initial guess for the parameters 
p0 = [1, 1]
# Perturb our parameters before optimization. This does so by taking each parameter a up to a factor of two up or down.
p0 = dadi.Misc.perturb_params(p0, fold=1, upper_bound=upper_bound, lower_bound=lower_bound)

# Make the extrapolating version of our demographic model function.
func_ex = dadi.Numerics.make_extrap_log_func(func)

print('Beginning optimization ************************************************')
popt = dadi.Inference.optimize_log_lbfgsb(p0, data, func_ex, pts_l, 			
                                   lower_bound=lower_bound,
                                   upper_bound=upper_bound,
                                   verbose=len(p0), maxiter=100)			
print('Finshed optimization **************************************************')

print('Best-fit parameters: {0}'.format(popt))

# Calculate the best-fit model AFS.
model = func_ex(popt, ns, pts_l)
# Likelihood of the data given the model AFS.
ll_model = dadi.Inference.ll_multinom(model, data)
print('Maximum log composite likelihood: {0}'.format(ll_model))
# The optimal value of theta given the model.
theta = dadi.Inference.optimal_sfs_scaling(model, data)
print('Optimal value of theta: {0}'.format(theta))
