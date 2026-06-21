#compdef getRepeatMaskerBatch.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/getRepeatMaskerBatch.pl
# Split/retrieve RepeatMasker sequence batches from a FASTA file

local ret=1

_arguments -s -S \
  '-frag=[max sequence length to mask without fragmenting]:bp:' \
  '-batch=[retrieve only the specified batch number]:num:' \
  '*:fasta:_files' && ret=0

return ret
