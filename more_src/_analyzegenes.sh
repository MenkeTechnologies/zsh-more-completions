#compdef analyzegenes.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools AnalyzeGenes: generate a prokaryotic gene model for gene calling

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input fasta file or comma-delimited list]:file:_files' \
  'gff=[GFF file or comma-delimited list]:file:_files' \
  'out=[output prokaryotic gene model (.pgm) file]:file:_files' \
  '*:file:_files' && ret=0

return ret
