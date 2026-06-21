#compdef renumberRMFiles.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/renumberRMFiles.pl
# Renumber the ID column of a RepeatMasker output file

local ret=1

_arguments -s -S \
  '-version[display program version]' \
  '-out=[RepeatMasker output file (*.out[.gz]) to process]:file:_files -g "*.out(|.gz)"' && ret=0

return ret
