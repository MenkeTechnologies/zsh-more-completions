#compdef agat_sq_add_hash_tag.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_add_hash_tag.html
# AGAT: add ### / #### separators to a GFF/GTF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--gff --file --input)'{--gff,--file,--input}'=[input GTF/GFF file]:gff file:_files' \
  '(-i --interval)'{-i,--interval}'=[1 adds #### per sequence, 2 adds ### per gene]:interval:(1 2)' \
  '(-o --output)'{-o,--output}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
