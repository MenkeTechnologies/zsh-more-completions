#compdef wublastToCrossmatch.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/wublastToCrossmatch.pl
# Convert WU-BLAST search results to cross_match alignment format

local ret=1

_arguments -s -S \
  '-version[display program version]' \
  '-matrix=[score matrix to use]:file:_files' \
  '-gap_init=[gap initiation penalty]:penalty:' \
  '-gap_ext=[gap extension penalty]:penalty:' \
  '-minscore=[minimum alignment score]:score:' \
  '1:wublast_result:_files' && ret=0

return ret
