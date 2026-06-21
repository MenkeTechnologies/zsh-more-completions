#compdef agat_sp_move_attributes_within_records.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_move_attributes_within_records.html
# AGAT: copy attributes between feature levels within records

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --reffile --gff -ref)'{-f,--reffile,--gff,-ref}'=[input GFF3 file]:gff file:_files' \
  '(--feature_copy --fc)'{--feature_copy,--fc}'=[feature types to copy attributes from]:feature:' \
  '(--feature_paste --fp)'{--feature_paste,--fp}'=[feature types to copy attributes to]:feature:' \
  '(-a --attribute)'{-a,--attribute}'=[attribute(s) to copy (case sensitive)]:attribute:' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
