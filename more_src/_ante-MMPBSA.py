#compdef ante-MMPBSA.py
# Documentation: https://ambermd.org/AmberTools.php
# strip and create the topology files needed by MMPBSA.py

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-p[input solvated topology file]:file:_files' \
  '-c[complex topology file to create]:file:_files' \
  '-r[receptor topology file to create]:file:_files' \
  '-l[ligand topology file to create]:file:_files' \
  '-s[strip mask of atoms to remove]:mask:' \
  '-m[mask of receptor atoms in the complex]:mask:' \
  '-n[mask of ligand atoms in the complex]:mask:' \
  '--radii[PBRadii set to use]:radii:(bondi mbondi mbondi2 mbondi3 amber6)' && ret=0

return ret
