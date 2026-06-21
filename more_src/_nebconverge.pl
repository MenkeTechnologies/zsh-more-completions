#compdef nebconverge.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to output vaspgr directory with convergence plots (run in NEB directory)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
