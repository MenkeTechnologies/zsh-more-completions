#compdef agat_sq_remove_redundant_entries.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_remove_redundant_entries.html
# AGAT: remove redundant entries from a GFF/GTF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --gff --file --input)'{-i,--gff,--file,--input}'=[input GTF/GFF file]:gff file:_files' \
  '(-o --output)'{-o,--output}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
