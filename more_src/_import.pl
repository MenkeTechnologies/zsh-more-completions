#compdef import.pl
# Documentation: http://ekhidna2.biocenter.helsinki.fi/dali/README.v5.html
# DaliLite.v5 import.pl - convert PDB files to Dali internal data format

local ret=1

_arguments -s -S \
  '--pdbfile[PDB structure file (uncompressed or .gz) to import]:file:_files' \
  '--pdbid[four-letter structure identifier to assign]:id' \
  '--dat[directory for reformatted structure data]:dir:_files -/' \
  '--clean[remove temporary files after run]' \
  '*:file:_files' && ret=0

return ret
