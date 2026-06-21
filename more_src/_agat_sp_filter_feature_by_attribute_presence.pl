#compdef agat_sp_filter_feature_by_attribute_presence.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_feature_by_attribute_presence.html
# AGAT: filter features by presence of an attribute

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --reffile --gff -ref)'{-f,--reffile,--gff,-ref}'=[input GFF3 file]:gff file:_files' \
  '(-p --type -l)'{-p,--type,-l}'=[feature types to process]:type:' \
  '(-a --att --attribute)'{-a,--att,--attribute}'=[attribute tag(s) to filter on]:attribute:' \
  '--flip[retain features possessing the attribute]' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
