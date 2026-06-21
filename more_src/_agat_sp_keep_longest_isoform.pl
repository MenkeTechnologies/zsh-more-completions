#compdef agat_sp_keep_longest_isoform.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_keep_longest_isoform.html
# AGAT: keep only the longest isoform per gene

local ret=1

_arguments -s -S \
  '(--gff -f)'{--gff,-f}'=[input GTF/GFF file]:file:_files' \
  '(-o --output)'{-o,--output}'=[output file (default STDOUT)]:file:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
