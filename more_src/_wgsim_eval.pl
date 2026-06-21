#compdef wgsim_eval.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/wgsim_eval.pl
# Evaluate alignment accuracy of wgsim-simulated reads

local ret=1

_arguments -s -S \
  '1:command:(alneval vareval unique uniqcmp)' \
  '*::arguments:_files' && ret=0

return ret
