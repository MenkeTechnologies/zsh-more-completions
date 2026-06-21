#compdef vcf2gff.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/vcf2gff.sh
# BBTools: convert a VCF file to GFF format

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input VCF file]:file:_files' \
  'out=-[output GFF file]:file:_files' \
  '*:file:_files' && ret=0

return ret
