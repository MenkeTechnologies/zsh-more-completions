#compdef cif2fasta.py
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# cif2fasta.py: extract FASTA sequences from mmCIF structural files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-i+[input cif folder]:dir:_files -/' \
  '-o+[output fasta file]:file:_files' \
  '-p+[output PDB filter file]:file:_files' \
  '-s+[SCOP annotation file]:file:_files' \
  '-c+[number of cores]:int' \
  '-l+[remove chains with a length below X]:int' \
  '-v+[verbose mode]:level:(0 1 2)' && ret=0

return ret
