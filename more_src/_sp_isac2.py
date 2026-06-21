#compdef sp_isac2.py
# Documentation: https://github.com/cryoem/eman2/blob/master/sphire/bin_py3/sp_isac2.py
# SPHIRE ISAC2 iterative stable alignment and clustering for 2D class averages

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--radius=[particle radius (pixels)]:n' \
  '--target_radius=[target particle radius for processing]:n' \
  '--target_nx=[target particle image size]:n' \
  '--img_per_grp=[number of images per class]:n' \
  '--minimum_grp_size=[minimum size of class]:n' \
  '--CTF[apply phase-flip for CTF correction]' \
  '--VPP[Phase Plate data]' \
  '--ir=[inner ring of polar resampling (pixels)]:n' \
  '--rs=[ring step of polar resampling (pixels)]:n' \
  '--xr=[x range of translational search]:n' \
  '--yr=[y range of translational search]:n' \
  '--ts=[search step of translational search (pixels)]:val' \
  '--maxit=[iterations for reference-free alignment]:n' \
  '--center_method=[method for centering global 2D average]:n' \
  '--dst=[discrete angle used in within-group alignment]:val' \
  '--FL=[lowest stopband frequency of tangent filter]:val' \
  '--FH=[highest stopband frequency of tangent filter]:val' \
  '--FF=[fall-off of the tangent filter]:val' \
  '--init_iter=[max generation iterations for a given subset]:n' \
  '--iter_reali=[SAC stability check interval]:n' \
  '--stab_ali=[number of alignments when checking stability]:n' \
  '--thld_err=[threshold of pixel error for stability]:val' \
  '--restart=[restart after iteration]:n' \
  '--rand_seed=[random seed before calculations]:n' \
  '--skip_prealignment[skip pre-alignment step]' \
  '--filament_width=[helical data filament width]:n' \
  '--filament_mask_ignore[disable masking particle images]' \
  '--skip_ordering[skip ordered class_averages creation]' \
  '*:stack:_files' && ret=0

return ret
