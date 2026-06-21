#compdef emoltemplate.sh
# Documentation: https://github.com/jewettaij/emoltemplate
# Build ESPResSo input files from .lt molecule template files

local ret=1

_arguments -s -S \
  '-pdb[read atomic coordinates from a PDB file]:PDB file:_files -g "*.pdb"' \
  '-xyz[read atomic coordinates from an XYZ file]:XYZ file:_files -g "*.xyz"' \
  '*:lt file:_files -g "*.lt"' && ret=0

return ret
