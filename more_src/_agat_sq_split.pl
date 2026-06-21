#compdef agat_sq_split.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_split.html
# AGAT: split a GFF/GTF into chunks of feature groups

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--gff --file --input)'{--gff,--file,--input}'=[input GTF/GFF file]:gff file:_files' \
  '(-i --interval)'{-i,--interval}'=[feature groups per file (default 1000)]:interval:' \
  '(--ft --feature_type)'{--ft,--feature_type}'=[top feature of the group (default gene)]:type:' \
  '(-o --output)'{-o,--output}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
