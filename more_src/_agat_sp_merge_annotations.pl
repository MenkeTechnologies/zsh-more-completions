#compdef agat_sp_merge_annotations.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_merge_annotations.html
# AGAT: merge several GTF/GFF annotation files into one

local ret=1

_arguments -s -S \
  '*'{--gff,-f}'=[input GTF/GFF file (repeatable)]:file:_files' \
  '(-o --out --output)'{-o,--out,--output}'=[output gff3 file]:file:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
