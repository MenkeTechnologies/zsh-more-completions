#compdef rmToUCSCTables.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/rmToUCSCTables.pl
# Convert RepeatMasker output to UCSC genome browser table format

local ret=1

_arguments -s -S \
  '-version[display program version]' \
  '-out=[RepeatMasker output file (*.out[.gz]) to process]:file:_files -g "*.out(|.gz)"' \
  '-align=[alignment file (*.align[.gz]) to process]:file:_files -g "*.align(|.gz)"' && ret=0

return ret
