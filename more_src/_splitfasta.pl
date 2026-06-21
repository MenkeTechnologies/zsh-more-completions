#compdef splitfasta.pl
# Documentation: https://github.com/soedinglab/hh-suite/wiki
# splitfasta.pl: split a multi-sequence FASTA file into single-sequence FASTA files

local ret=1

_arguments -s -S \
  '-fam[use family-based name for SCOP/ASTRAL sequences]' \
  '-name[use sequence name as file name]' \
  '-ext+[extension for sequence files]:ext' \
  '1:input FASTA file:_files' && ret=0

return ret
