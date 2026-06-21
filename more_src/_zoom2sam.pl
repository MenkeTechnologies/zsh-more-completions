#compdef zoom2sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/zoom2sam.pl
# Convert an Illumina ZOOM alignment file to SAM

local ret=1

_arguments -s -S \
  '-p[paired-end reads]' \
  '1:read length:' \
  '2:zoom file:_files' && ret=0

return ret
