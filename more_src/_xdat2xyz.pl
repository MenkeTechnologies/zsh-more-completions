#compdef xdat2xyz.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to create an xyz movie from an XDATCAR: xdat2xyz.pl (XDATCAR file)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:XDATCAR file:_files' && ret=0

return ret
