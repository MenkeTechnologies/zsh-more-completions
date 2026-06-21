#compdef export2sam.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/export2sam.pl
# Convert Illumina GERALD export files to SAM

local ret=1

_arguments -s -S \
  '--read1=[read1 export file or - for stdin (mandatory)]:file:_files' \
  '--read2=[read2 export file or - for stdin]:file:_files' \
  '--nofilter[include reads that failed the basecaller purity filter]' \
  '--qlogodds[assume export files use logodds quality values]' \
  '--version[print version]' \
  '--help[show help]' && ret=0

return ret
