#compdef agat_sp_split_by_level2_feature.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_split_by_level2_feature.html
# AGAT: split a GFF/GTF by level2 feature type

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-g --gff -ref)'{-g,--gff,-ref}'=[input GTF/GFF file]:gff file:_files' \
  '(-o --output)'{-o,--output}'=[output folder (default split_result)]:output:_files -/' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
