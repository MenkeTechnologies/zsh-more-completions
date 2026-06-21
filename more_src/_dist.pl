#compdef dist.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script for root-sum-squared distance: dist.pl POSCAR1 POSCAR2

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:POSCAR1:_files' \
  '2:POSCAR2:_files' && ret=0

return ret
