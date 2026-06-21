#compdef nebspline.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to output spline.dat, exts.dat and mep.eps (run in NEB directory)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
