#compdef interpolate_sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/interpolate_sam.pl
# Fill in implied SAM records from a condensed SAM file

local ret=1

_arguments -s -S \
  '1:sam file:_files' && ret=0

return ret
