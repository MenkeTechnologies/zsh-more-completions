#compdef sp_cter.py
# Documentation: https://github.com/cryoem/eman2/blob/master/sphire/bin_py3/sp_cter.py
# SPHIRE automated CTF estimation from micrographs

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--selection_list=[path of a micrograph selection list]:file:_files' \
  '--wn=[CTF window size (pixels)]:n' \
  '--apix=[pixel size (A/pixel)]:val' \
  '--Cs=[microscope spherical aberration (mm)]:val' \
  '--voltage=[microscope voltage (kV)]:val' \
  '--ac=[amplitude contrast (%)]:pct' \
  '--f_start=[lowest resolution to consider (A)]:val' \
  '--f_stop=[highest resolution to consider (A)]:val' \
  '--kboot=[number of CTF estimates per micrograph]:n' \
  '--overlap_x=[x overlap between windows (%)]:pct' \
  '--overlap_y=[y overlap between windows (%)]:pct' \
  '--edge_x=[edge of tiling area in x (pixels)]:n' \
  '--edge_y=[edge of tiling area in y (pixels)]:n' \
  '--check_consistency[check consistency of inputs]' \
  '--stack_mode[use a stack as the input]' \
  '--debug_mode[print out debug information]' \
  '--vpp[Volta Phase Plate; fit amplitude contrast]' \
  '--defocus_min=[minimum defocus search (um)]:val' \
  '--defocus_max=[maximum defocus search (um)]:val' \
  '--defocus_step=[step defocus search (um)]:val' \
  '--phase_min=[minimum phase search (degrees)]:val' \
  '--phase_max=[maximum phase search (degrees)]:val' \
  '--phase_step=[step phase search (degrees)]:val' \
  '--pap[use power spectrum for fitting]' \
  '*:input:_files' && ret=0

return ret
