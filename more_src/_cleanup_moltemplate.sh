#compdef cleanup_moltemplate.sh
# Documentation: https://github.com/jewettaij/moltemplate/blob/master/doc/doc_cleanup_moltemplate.md
# Remove unused atom, bond, angle, and force-field types from moltemplate output

local ret=1

_arguments -s -S \
  '-base[base name prefix of the LAMMPS data and input files]:base name' \
  '-ignore-comments[disable type-name inference from Masses comments]' \
  '*:data file:_files -g "*.data"' && ret=0

return ret
