#compdef agat_sq_list_attributes.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_list_attributes.html
# AGAT: list attributes present in a GFF/GTF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff)'{-f,--gff}'=[input GTF/GFF file]:gff file:_files' \
  '(-p -t -l)'{-p,-t,-l}'=[feature types to process]:type:' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
