#compdef e2unwrap3d.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/programs/e2unwrap3d.py
# EMAN2: unwrap a 3D volume into spherical coordinate representation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:volume:_files' && ret=0

return ret
