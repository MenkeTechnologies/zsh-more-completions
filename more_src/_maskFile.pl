#compdef maskFile.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/maskFile.pl
# Mask a FASTA file using RepeatMasker .out annotations

local ret=1

_arguments -s -S \
  '-version[display script version]' \
  '-fasta=[input FASTA sequence file]:file:_files' \
  '-annotations=[RepeatMasker .out annotation file]:file:_files -g "*.out"' \
  '-softmask[soft mask (convert repeats to lowercase)]' \
  '-minDivergence=[minimum divergence threshold]:div:' \
  '-maxDivergence=[maximum divergence threshold]:div:' && ret=0

return ret
