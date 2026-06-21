#compdef nebresults.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script that runs nebef.pl, nebspline.pl, nebmovie.pl and nebconverge.pl (run in NEB directory)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
