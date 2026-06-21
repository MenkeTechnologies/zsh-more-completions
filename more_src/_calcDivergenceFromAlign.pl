#compdef calcDivergenceFromAlign.pl
# Documentation: https://github.com/rmhubley/RepeatMasker/blob/master/util/calcDivergenceFromAlign.pl
# RepeatMasker: recalculate Kimura divergence from a RepeatMasker .align file

local ret=1

_arguments -s \
  '-version[print version and exit]' \
  '-noCpGMod[do not apply the CpG site modification]' \
  '-a[write a new alignment file with recalculated divergences]:file:_files' \
  '-s[write a summary divergence file]:file:_files' \
  '*:align file:_files' && ret=0

return ret
