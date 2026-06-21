#compdef rmOutToGFF3.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/rmOutToGFF3.pl
# Convert a RepeatMasker .out file to GFF3 format

local ret=1

_arguments -s -S \
  '-version[display program version]' \
  '*:rm_out_file:_files -g "*.out"' && ret=0

return ret
