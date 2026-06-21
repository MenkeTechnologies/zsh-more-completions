#compdef sp_window.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/sphire/sphire/bin/sp_window.py
# SPHIRE: window out particles from micrographs using coordinate files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--selection_list=[micrograph selection list text file]:file:_files' \
  '--coordinates_format=[coordinate file format]:fmt:(sphire eman1 eman2 spider cryolo)' \
  '--box_size=[particle box size in pixels]:size:' \
  '--skip_invert[skip invert image contrast]' \
  '--limit_ctf[use CTF limit filter]' \
  '--astigmatism_error=[astigmatism error limit in degrees]:deg:' \
  '--resample_ratio=[ratio between new and original pixel size]:f:' \
  '--check_consistency[check consistency of dataset]' \
  '--filament_width=[filament width in pixels]:n:' \
  '*:file:_files' && ret=0

return ret
