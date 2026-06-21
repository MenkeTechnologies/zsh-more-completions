#compdef ltemplify.py
# Documentation: https://github.com/jewettaij/moltemplate/blob/master/doc/doc_ltemplify.md
# Convert a LAMMPS data file into a moltemplate .lt file

local ret=1

_arguments -s -S \
  '-name[name of the molecule in the output LT file]:name' \
  '-atomstyle[name of the LAMMPS atom_style]:atom style:(full molecular atomic charge angle bond)' \
  '-columns[names of the columns in the Atoms section]:columns' \
  '-mol[select the molecule by its molecule-ID number]:mol id' \
  '-id[select atoms by their atom-IDs]:atom ids' \
  '-type[select atoms by their types]:types' \
  '-datacoeffs[put force field information in the data file]' \
  '-ignore-comments[do not infer type names from comments]' \
  '-infer-comments[infer type names from comments in the data file]' \
  '-atom-type-map[text file mapping atom type integers to names]:map file:_files' \
  '-ignore-coeffs[ignore all force field parameters]' \
  '-ignore-angles[ignore angles, dihedrals and impropers]' \
  '-ignore-bond-types[omit bond types from output]' \
  '-ignore-masses[ignore all masses in the data file]' \
  '-prepend-atom-type[prepend a string to all atom type names]:prefix' \
  '-preamble[print a string at the beginning of the output file]:text' \
  '*:data file:_files' && ret=0

return ret
