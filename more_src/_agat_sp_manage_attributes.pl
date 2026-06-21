#compdef agat_sp_manage_attributes.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_manage_attributes.html
# AGAT: add, remove or rename attributes in a GFF/GTF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff)'{-f,--gff}'=[input GTF/GFF file]:gff file:_files' \
  '(-p --type -l)'{-p,--type,-l}'=[feature types to handle (or all)]:type:' \
  '(--tag --att)'{--tag,--att}'=[attribute tags to remove/rename (tag/newTag)]:tag:' \
  '--add=[add attribute tag with empty value if absent]:tag:' \
  '--cp[duplicate attributes with renamed tags]' \
  '--overwrite[modify existing attributes with --add/--cp]' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
