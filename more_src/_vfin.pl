#compdef vfin.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to organize completed run data: vfin.pl output_directory

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:output directory:_files -/' && ret=0

return ret
