#compdef sp_filterlocal.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/sphire/sphire/bin/sp_filterlocal.py
# SPHIRE: locally filter a map using a local resolution volume

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--radius=[sphere radius if no maskfile]:r:' \
  '--falloff=[falloff of tanl filter]:f:' \
  '--MPI[use MPI version]' \
  '*:file:_files' && ret=0

return ret
