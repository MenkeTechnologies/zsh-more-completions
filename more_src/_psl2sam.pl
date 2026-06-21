#compdef psl2sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/psl2sam.pl
# Convert a BLAT PSL alignment file to SAM

local ret=1

_arguments -s -S \
  '-a[match score]:score:' \
  '-b[mismatch penalty]:penalty:' \
  '-q[gap open penalty]:penalty:' \
  '-r[gap extension penalty]:penalty:' \
  '*:psl file:_files' && ret=0

return ret
