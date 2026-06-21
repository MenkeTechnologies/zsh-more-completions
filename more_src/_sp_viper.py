#compdef sp_viper.py
# Documentation: https://github.com/cryoem/eman2/blob/master/sphire/bin_py3/sp_viper.py
# SPHIRE VIPER ab initio 3D structure determination via genetic algorithm

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--radius=[radius of the particle (pixels)]:n' \
  '--xr=[range for translation search in x]:range' \
  '--yr=[range for translation search in y]:range' \
  '--mask3D=[3D mask file]:file:_files' \
  '--moon_elimination=[mass in KDa and pixel size, comma-separated]:val' \
  '--ir=[inner radius for rotational search]:n' \
  '--rs=[step between rings in rotational search]:n' \
  '--ts=[step size of the translation search]:val' \
  '--delta=[angular step of reference projections]:val' \
  '--center=[centering of 3D template]:val' \
  '--maxit1=[max iterations for the GA part]:n' \
  '--maxit2=[max iterations for the finishing-up part]:n' \
  '--L2threshold=[stopping criterion of GA]:val' \
  '--ref_a=[method for quasi-uniform projection directions]:method' \
  '--sym=[point-group symmetry of the structure]:sym' \
  '--nruns=[GA population (number of volumes)]:n' \
  '--doga=[do GA when orientation change fraction reaches this]:val' \
  '--npad=[padding size for 3D reconstruction]:n' \
  '--fl=[cut-off frequency for template volume filter]:val' \
  '--aa=[fall-off of hyperbolic tangent low-pass filter]:val' \
  '--pwreference=[text file with a reference power spectrum]:file:_files' \
  '--debug[debug info printout]' \
  '--filament_width=[helical data filament width]:n' \
  '*:stack:_files' && ret=0

return ret
