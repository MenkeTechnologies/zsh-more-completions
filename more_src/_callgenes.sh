#compdef callgenes.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools CallGenes: prokaryotic gene caller

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input fasta file]:file:_files' \
  'out=[output GFF file]:file:_files' \
  'outa=[amino acid output file]:file:_files' \
  'out16s=[16S rRNA output file]:file:_files' \
  'model=[PGM file or comma-delimited model list]:file:_files' \
  'stats=[statistics output destination]:dest' \
  'hist=[gene length histogram file]:file:_files' \
  'compareto=[reference GFF file for comparison]:file:_files' \
  'json=[output statistics in JSON format]:bool:(t f)' \
  'binlen=[histogram bin length]:value' \
  'bins=[maximum histogram bins]:value' \
  'pz=[print histogram lines with zero count]:bool:(t f)' \
  'minlen=[minimum gene length threshold]:value' \
  'trd=[trim read descriptions at first whitespace]:bool:(t f)' \
  'merge=[merge paired reads before processing]:bool:(t f)' \
  'detranslate=[output nucleotide instead of amino acid]:bool:(t f)' \
  'recode=[re-encode nucleotides over called genes]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
