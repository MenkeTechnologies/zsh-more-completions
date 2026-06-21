#compdef metalpdb2mol2.py
# Documentation: https://ambermd.org/tutorials/advanced/tutorial20/files/mcpbpy/metalpdb2mol2.py
# AmberTools/MCPB.py: convert a metal ion PDB file to a mol2 file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-i[input PDB file of the metal ion]:pdb:_files -g "*.pdb"' \
  '-o[output mol2 file]:mol2:_files -g "*.mol2"' \
  '-c[charge of the metal ion]:charge:' \
  '*:file:_files' && ret=0

return ret
