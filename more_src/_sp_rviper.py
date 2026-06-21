#compdef sp_rviper.py
# Documentation: https://github.com/cryoem/eman2/blob/master/sphire/bin_py3/sp_rviper.py
# SPHIRE reproducible VIPER (RVIPER) ab initio 3D reconstruction

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--radius=[radius of the particle (pixels)]:n' \
  '--ir=[inner radius for rotational search]:n' \
  '--rs=[step between rings in rotational search]:n' \
  '--xr=[range for translation search in x]:range' \
  '--yr=[range for translation search in y]:range' \
  '--ts=[step size of the translation search]:val' \
  '--delta=[angular step of reference projections]:val' \
  '--center=[centering of 3D template]:val' \
  '--maxit1=[max iterations for the GA part]:n' \
  '--maxit2=[max iterations for the finishing-up part]:n' \
  '--L2threshold=[stopping criterion of GA]:val' \
  '--doga=[do GA when orientation change fraction reaches this]:val' \
  '--n_shc_runs=[number of quasi-independent shc runs]:n' \
  '--n_rv_runs=[number of rviper iterations]:n' \
  '--n_v_runs=[number of viper runs per r_viper cycle]:n' \
  '--outlier_percentile=[percentile above which outliers are removed]:val' \
  '--iteration_start=[starting iteration for rviper]:n' \
  '--ref_a=[method for quasi-uniform projection directions]:method' \
  '--sym=[point-group symmetry of the structure]:sym' \
  '--npad=[padding size for 3D reconstruction]:n' \
  '--fl=[cut-off frequency for template volume filter]:val' \
  '--aa=[fall-off of hyperbolic tangent low-pass filter]:val' \
  '--pwreference=[text file with a reference power spectrum]:file:_files' \
  '--mask3D=[3D mask file]:file:_files' \
  '--moon_elimination=[mass in KDa and pixel size, comma-separated]:val' \
  '--dpi=[resolution of angular distribution BILD file]:n' \
  '--theta1=[starting restriction angle for out-of-plane tilt]:val' \
  '--theta2=[ending restriction angle for out-of-plane tilt]:val' \
  '--criterion_name=[criterion for core set of stable projections]:name' \
  '--outlier_index_threshold_method=[method to decide which images to keep]:method' \
  '--angle_threshold=[angle threshold for projection removal]:n' \
  '--filament_width=[helical data alignment mask width]:n' \
  '--resample_ratio=[resample ratio or ISAC2 output directory]:val' \
  '*:stack:_files' && ret=0

return ret
