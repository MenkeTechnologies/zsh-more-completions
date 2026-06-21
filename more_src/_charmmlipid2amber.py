#compdef charmmlipid2amber.py
# Documentation: https://ambermd.org/doc12/Amber24.pdf
# AmberTools charmmlipid2amber.py: convert Charmm C36 lipid names to LIPID21

local ret=1

_arguments -s -S \
  '-i[input Charmm C36 PDB file]:file:_files -g "*.pdb"' \
  '-c[CSV lipid conversion ruleset]:file:_files -g "*.csv"' \
  '-o[output PDB file]:file:_files -g "*.pdb"' \
  '*:file:_files' && ret=0

return ret
