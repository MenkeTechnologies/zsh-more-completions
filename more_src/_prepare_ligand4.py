#compdef prepare_ligand4.py prepare_ligand
# Documentation: https://github.com/Valdes-Tresanco-MS/AutoDockTools_py3/blob/master/AutoDockTools/Utilities24/prepare_ligand4.py
# prepare_ligand4.py - AutoDockTools ligand PDBQT preparation.

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-l+[input ligand filename (pdb/mol2/pdbq)]:file:_files' \
  '-v[verbose output]' \
  '-o+[output PDBQT filename]:file:_files' \
  '-d+[dictionary file for atom types/torsions]:file:_files' \
  '-A+[repair type]:repair:(bonds_hydrogens bonds hydrogens)' \
  '-C[disable automatic Gasteiger charges]' \
  '*-p+[preserve charges on atom type]:type:' \
  '-U+[cleanup type]:type:(nphs_lps nphs lps)' \
  '-B+[rotatable bond types]:types:(backbone amide guanidinium)' \
  '-R+[root atom index]:n:' \
  '-F[use largest non-bonded fragment]' \
  '-M[interactive mode]' \
  '-I+[bonds to inactivate (e.g. 5_13_2_10)]:bonds:' \
  '-Z[inactivate all active torsions]' \
  '-g[attach all nonbonded fragments]' \
  '-s[attach all nonbonded singletons]' \
  '*:file:_files' && ret=0

return ret
