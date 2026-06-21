#compdef rmOut2Fasta.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/rmOut2Fasta.pl
# Extract repeat sequences from a FASTA using a RepeatMasker .out file

local ret=1

_arguments -s -S \
  '-version[display version information]' \
  '-fasta=[FASTA file containing sequences referenced in the .out file]:file:_files' \
  '-out=[RepeatMasker *.out annotation file]:file:_files -g "*.out"' && ret=0

return ret
