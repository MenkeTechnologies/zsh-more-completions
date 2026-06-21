#compdef pdb2fasta.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# pdb2fasta.pl: extract FASTA sequences from a glob of PDB files

local ret=1

_arguments -s -S \
  '-u+[update: write only sequences not contained in oldfile]:oldfile:_files' \
  '-scop+[read dir.cla.scop.txt and list SCOP folds]:file:_files' \
  '-dali+[read DALI directory files and list DALI folds]:dir:_files -/' \
  '-v+[verbose mode]:int' \
  '-t+[use only structures released until given month-year]:date' \
  '-all[include all sequences instead of nonredundant set]' \
  '*:pdb file or output:_files' && ret=0

return ret
