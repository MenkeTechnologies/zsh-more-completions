#compdef analyze_phonons.py
# Documentation: https://alamode.readthedocs.io/en/latest/almdir/analyzephonons.html
# ALAMODE tool: analyze phonon lifetimes and thermal conductivity from anphon output

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--temp=[target temperature to analyze]:temp' \
  '--mode=[phonon mode index to print]:mode' \
  '--kpoint=[k-point index to print]:kpoint' \
  '--calc=[calculation type]:calc:(tau kappa cumulative cumulative2 kappa_boundary)' \
  '--isotope[include phonon-isotope scattering from PREFIX.self_isotope]' \
  '--noavg[do not average the damping function at degenerate points]' \
  '--size=[grain boundary size in nm]:size' \
  '--length=[maximum system size and step in nm (Lmax:dL)]:length' \
  '--nsample=[number of sampling points for cumulative kappa]:nsample' \
  '--gridtype=[grid scale for cumulative kappa]:gridtype:(linear logarithmic)' \
  '--direction=[directions (1,2,3 for x,y,z) for size effect]:direction' \
  '*:file:_files' && ret=0

return ret
