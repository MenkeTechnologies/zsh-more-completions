#compdef e2version.py
# Documentation: https://github.com/cryoem/eman2/blob/master/programs/e2version.py
# EMAN2 print installed version and platform information

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' && ret=0

return ret
