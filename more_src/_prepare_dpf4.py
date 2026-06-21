#compdef prepare_dpf4.py prepare_dpf
# Documentation: https://github.com/Valdes-Tresanco-MS/AutoDockTools_py3/blob/master/AutoDockTools/Utilities24/prepare_dpf42.py
# prepare_dpf4.py - AutoDockTools docking parameter file (DPF) generation.

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-l+[ligand PDBQT filename]:file:_files' \
  '-r+[receptor PDBQT filename]:file:_files' \
  '-o+[output DPF filename]:file:_files' \
  '-i+[template DPF filename]:file:_files' \
  '-x+[flexible residue filename]:file:_files' \
  '*-p+[parameter name=new_value]:param:' \
  '*-k+[parameter to write]:param:' \
  '-e[write EPDB DPF output]' \
  '-L[use local search parameters]' \
  '-S[use simulated annealing parameters]' \
  '-s[seed population using current conformation]' \
  '-A[calculate about using only root atom coords]' \
  '-v[verbose output]' \
  '*:file:_files' && ret=0

return ret
