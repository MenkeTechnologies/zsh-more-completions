#compdef buildSummary.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/buildSummary.pl
# Build a summary report from a RepeatMasker output file

local ret=1

_arguments -s -S \
  '-version[display program version]' \
  '-useAbsoluteGenomeSize[use sum of all sequence lengths from genome file]' \
  '-species=[species name for categorizing annotations]:species:' \
  '-genome=[genome file (*.tsv or *.2bit) for sequence sizing]:file:_files' \
  '-libdir=[alternate directory for primary repeat libraries]:dir:_files -/' \
  '-maxDiv=[maximum mismatch level threshold (0-1)]:div:' \
  '-minDiv=[minimum mismatch level threshold (0-1)]:div:' \
  '*:rm_out_file:_files -g "*.(out|out.gz)"' && ret=0

return ret
