#compdef FEW.pl
# Documentation: https://ambermd.org/doc12/Amber24.pdf
# AmberTools FEW.pl: Free Energy Workflow for protein-ligand binding

local ret=1

_arguments -s -S \
  '1:procedure:' \
  '2:command file:_files' && ret=0

return ret
