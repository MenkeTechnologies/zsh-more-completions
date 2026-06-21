#compdef combineRMFiles.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/combineRMFiles.pl
# Combine two RepeatMasker .out/.align file pairs into one

local ret=1

_arguments -s -S \
  '1:file1Prefix:_files' \
  '2:file2Prefix:_files' \
  '3:newFilesPrefix:_files' && ret=0

return ret
