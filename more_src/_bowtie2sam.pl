#compdef bowtie2sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/bowtie2sam.pl
# Convert a Bowtie default-format alignment file to SAM

local ret=1

_arguments -s -S \
  '*:bowtie file:_files' && ret=0

return ret
