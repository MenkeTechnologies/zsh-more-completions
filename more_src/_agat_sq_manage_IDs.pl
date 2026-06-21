#compdef agat_sq_manage_IDs.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_manage_ID.html
# AGAT: manage IDs in a GFF/GTF (sequential / structure-unaware)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--file --input --gff -i)'{--file,--input,--gff,-i}'=[input GTF/GFF file]:gff file:_files' \
  '(-o --out --output)'{-o,--out,--output}'=[output file]:output:_files' \
  '*:gff file:_files' && ret=0

return ret
