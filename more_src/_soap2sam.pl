#compdef soap2sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/soap2sam.pl
# Convert a SOAP alignment file to SAM

local ret=1

_arguments -s -S \
  '-p[paired-end reads]' \
  '*:soap file:_files' && ret=0

return ret
