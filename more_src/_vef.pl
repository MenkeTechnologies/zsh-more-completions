#compdef vef.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to print force and energy at each ionic iteration (run in run directory)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
