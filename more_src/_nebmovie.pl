#compdef nebmovie.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to output movie.xyz from a NEB run: nebmovie.pl (flag)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:flag:' && ret=0

return ret
