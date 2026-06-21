#compdef agat_sp_filter_feature_from_kill_list.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_feature_from_kill_list.html
# AGAT: remove features matching values in a kill list

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --reffile --gff -ref)'{-f,--reffile,--gff,-ref}'=[input GFF3 file]:gff file:_files' \
  '(-p --type -l)'{-p,--type,-l}'=[feature types to process]:type:' \
  '(--kl --kill_list)'{--kl,--kill_list}'=[kill list, one value per line]:kill list:_files' \
  '(-a --attribute)'{-a,--attribute}'=[attribute to analyze (default ID)]:attribute:' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
