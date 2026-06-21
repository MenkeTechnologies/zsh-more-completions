#compdef prepare_receptor4.py prepare_receptor
# Documentation: https://github.com/Valdes-Tresanco-MS/AutoDockTools_py3/blob/master/AutoDockTools/Utilities24/prepare_receptor4.py
# prepare_receptor4.py - AutoDockTools receptor PDBQT preparation.

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-r+[receptor filename (pdb/mol2/pdbq/pdbqt/pqr/cif)]:file:_files' \
  '-v[verbose output]' \
  '-o+[output PDBQT filename]:file:_files' \
  '-A+[repair type]:repair:(bonds_hydrogens bonds hydrogens checkhydrogens None)' \
  '-C[preserve all input charges; skip Gasteiger]' \
  '*-p+[preserve charges on atom type]:type:' \
  '*-U+[cleanup type]:type:(nphs lps waters nonstdres deleteAltB)' \
  '-e[delete non-standard residues]' \
  '-M+[mode]:mode:(interactive automatic)' \
  '-d+[dictionary filename for receptor summary]:file:_files' \
  '-w[assign unique names to each atom]' \
  '*:file:_files' && ret=0

return ret
