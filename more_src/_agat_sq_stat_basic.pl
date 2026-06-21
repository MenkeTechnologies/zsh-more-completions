#compdef agat_sq_stat_basic.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_stat_basic.html
# AGAT: basic feature-type statistics from a GTF/GFF file

local ret=1

_arguments -s -S \
  '*'{-i,--gff,--file,--input}'=[input GTF/GFF file (repeatable)]:file:_files' \
  '(-g --genome)'{-g,--genome}'=[genome size (integer) or fasta file]:genome:_files' \
  '--inflate[count features with multiple parents multiple times]' \
  '(-o --output)'{-o,--output}'=[output file (default STDOUT)]:file:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
