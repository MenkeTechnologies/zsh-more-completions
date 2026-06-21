#compdef pos2con.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to convert between POSCAR and con files: pos2con.pl (POSCAR or con file)

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:POSCAR or con file:_files' && ret=0

return ret
