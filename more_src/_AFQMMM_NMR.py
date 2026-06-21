#compdef AFQMMM_NMR.py
# Documentation: https://ambermd.org/AmberTools.php
# set up adaptive fragmentation QM/MM NMR calculations (MCPB toolset)

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-p[topology file name]:file:_files' \
  '-c[coordinate file name]:file:_files' \
  '-m[Amber mask of the core residue]:mask:' \
  '-w[whether to delete water and ions]:choice:((0\:keep 1\:water+ions 2\:water 3\:ions))' && ret=0

return ret
