#compdef novo2sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/novo2sam.pl
# Convert a NovoAlign alignment file to SAM

local ret=1

_arguments -s -S \
  '-p[paired-end reads]' \
  '*:novo file:_files' && ret=0

return ret
