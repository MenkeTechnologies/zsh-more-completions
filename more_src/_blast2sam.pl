#compdef blast2sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/blast2sam.pl
# Convert NCBI blastn output to SAM

local ret=1

_arguments -s -S \
  '-s[output the read sequence]' \
  '-d[use a dummy alignment score]' \
  '*:blastn file:_files' && ret=0

return ret
