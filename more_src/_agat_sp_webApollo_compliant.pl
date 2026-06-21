#compdef agat_sp_webApollo_compliant.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_webApollo_compliant.html
# AGAT: make a GFF/GTF WebApollo compliant

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-g --gff -ref)'{-g,--gff,-ref}'=[input GTF/GFF file]:gff file:_files' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
