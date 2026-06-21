#compdef chgsum.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script for weighted CHGCAR sum: chgsum.pl CHGCAR1 CHGCAR2 fact1 fact2

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:CHGCAR1:_files' \
  '2:CHGCAR2:_files' \
  '3:fact1:' \
  '4:fact2:' && ret=0

return ret
