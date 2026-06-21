#compdef prepare_gpf4.py prepare_gpf
# Documentation: https://github.com/Valdes-Tresanco-MS/AutoDockTools_py3/blob/master/AutoDockTools/Utilities24/prepare_gpf4.py
# prepare_gpf4.py - AutoDockTools grid parameter file (GPF) generation.

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-l+[ligand PDBQT filename]:file:_files' \
  '-r+[receptor PDBQT filename]:file:_files' \
  '-i+[reference GPF filename]:file:_files' \
  '-o+[output GPF filename]:file:_files' \
  '-x+[flexible residue filename]:file:_files' \
  '*-p+[parameter assignment key=value]:param:' \
  '-d+[directory of ligands for type determination]:dir:_files -/' \
  '-y[center grids on ligand center]' \
  '-n[disable automatic box sizing to include ligand]' \
  '-I+[increment grid points in all dimensions]:n:' \
  '-v[verbose output]' \
  '*:file:_files' && ret=0

return ret
