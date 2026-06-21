#compdef agat_sp_sensitivity_specificity.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_sensitivity_specificity.html
# AGAT: compute sensitivity and specificity between two annotations

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gff1=[input GTF/GFF file 1]:gff file:_files' \
  '--gff2=[input GTF/GFF file 2]:gff file:_files' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
