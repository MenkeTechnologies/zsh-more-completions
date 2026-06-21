#compdef color-chrs.pl
# Documentation: https://raw.githubusercontent.com/samtools/bcftools/develop/misc/color-chrs.pl
# Plot output of the bcftools +color-chrs plugin

local ret=1

_arguments -s -S \
  '(-h -? --help)'{-h,--help}'[show help]' \
  '(-c --colors)'{-c,--colors}'[file with list of "chr hap color"]:file:_files' \
  '(-p --prefix)'{-p,--prefix}'[prefix of output files]:name:' \
  '*:output.dat:_files' && ret=0

return ret
