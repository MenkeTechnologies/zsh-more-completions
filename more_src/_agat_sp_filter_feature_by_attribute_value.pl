#compdef agat_sp_filter_feature_by_attribute_value.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_filter_feature_by_attribute_value.html
# AGAT: filter features by an attribute value test

local ret=1

_arguments -s -S \
  '(-f --reffile --gff -ref)'{-f,--reffile,--gff,-ref}'=[input GFF3 file]:file:_files' \
  '(-a --attribute)'{-a,--attribute}'=[attribute tag to analyse]:tag:' \
  '(-p --type -l)'{-p,--type,-l}'=[feature types/levels to handle]:type:' \
  '--value=[value(s) to check, comma separated]:value:' \
  '--value_insensitive[case-insensitive value comparison]' \
  '--na_aside[write features missing the tag to a separate _na.gff file]' \
  '--keep_parental[preserve parent features when all children removed]' \
  '(-t --test)'{-t,--test}'=[test to apply (default =)]:test:(> < = ! >= <=)' \
  '(-o --output)'{-o,--output}'=[output GFF file (default STDOUT)]:file:_files' \
  '-v[verbose output]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
