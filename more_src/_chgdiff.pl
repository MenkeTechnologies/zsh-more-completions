#compdef chgdiff.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script for CHGCAR difference: chgdiff.pl CHGCAR1 CHGCAR2

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:CHGCAR1:_files' \
  '2:CHGCAR2:_files' && ret=0

return ret
