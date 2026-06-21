#compdef bbmerge.sh
# Documentation: https://github.com/BioInfoTools/BBMap/blob/master/sh/bbmerge.sh
# merge overlapping paired-end reads into single longer reads (BBTools)

local ret=1

_arguments -s -S \
  '*-h[show help]' \
  '*in=-[primary input file]:file:_files' \
  '*in2=-[second input file]:file:_files' \
  '*interleaved=-[override interleaved autodetection]:bool:(auto true false)' \
  '*reads=-[quit after this many read pairs]:n:' \
  '*out=-[file for merged reads]:file:_files' \
  '*outu=-[file for unmerged reads]:file:_files' \
  '*outinsert=-[file to write read names and insert sizes]:file:_files' \
  '*outadapter=-[file to write consensus adapter sequences]:file:_files' \
  '*ihist=-[insert length histogram output file]:file:_files' \
  '*ordered=-[output reads in same order as input]:bool:(t f)' \
  '*mix=-[output both merged and unmerged reads in same file]:bool:(t f)' \
  '*merge=-[create merged reads]:bool:(t f)' \
  '*mininsert=-[minimum insert size to merge reads]:n:' \
  '*minoverlap=-[minimum overlapping bases to allow merging]:n:' \
  '*maxratio=-[max error rate]:ratio:' \
  '*maxmismatches=-[maximum mismatches allowed in overlapping region]:n:' \
  '*qtrim=-[trim read ends below minq]:bool:(t f)' \
  '*minlength=-[discard reads shorter than this after trimming]:n:' \
  '*maxlength=-[discard reads with longer insert sizes]:n:' \
  '*:input:_files' && ret=0

return ret
