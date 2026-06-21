#compdef nebmake.pl
# Documentation: https://theory.cm.utexas.edu/vtsttools/scripts.html
# VTST script to create NEB images: nebmake.pl POSCAR1 POSCAR2 num_images

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:POSCAR1:_files' \
  '2:POSCAR2:_files' \
  '3:number of images:' && ret=0

return ret
