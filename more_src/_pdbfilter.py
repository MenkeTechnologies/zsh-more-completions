#compdef pdbfilter.py
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# pdbfilter.py: select representative PDB sequences from MMseqs2 clusters

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --include)'{-i,--include}'+[include PDB chains]:file:_files' \
  '(-r --remove)'{-r,--remove}'+[exclude PDB chains]:file:_files' \
  '(-v --verbose)'{-v,--verbose}'[verbose mode]' \
  '1:input fasta file:_files' \
  '2:sequence clusters MMseqs file:_files' \
  '3:annotations file:_files' \
  '4:output fasta file:_files' && ret=0

return ret
