#compdef readlength.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# ReadLength: generate a read-length histogram from a fasta/fastq file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input file (use in=stdin.fq to pipe)]:file:_files' \
  'in2=[separate file for second read of pairs]:file:_files' \
  'out=[output file for histogram (default stdout)]:file:_files' \
  'bin=[histogram bin size]:n:' \
  'max=[maximum read length to track]:n:' \
  'round=[place reads in closest bin rather than highest]:bool:(t f)' \
  'nzo=[exclude empty bins from output]:bool:(t f)' \
  'reads=[stop after this many reads (negative = all)]:n:' \
  '*:file:_files' && ret=0

return ret
