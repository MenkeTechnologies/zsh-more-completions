#compdef nebbarrier.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to generate neb.dat with distance, energy and forces (run in NEB directory)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
