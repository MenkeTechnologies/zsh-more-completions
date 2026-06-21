#compdef agat_sq_add_locus_tag.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_add_locus_tag.html
# AGAT: add a locus_tag attribute to a GFF/GTF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--gff --file --input)'{--gff,--file,--input}'=[input GTF/GFF file]:gff file:_files' \
  '(-p --type -l)'{-p,--type,-l}'=[level1 feature types to handle]:type:' \
  '(--lo --to)'{--lo,--to}'=[locus tag attribute name (default locus_tag)]:name:' \
  '(--li --ti)'{--li,--ti}'=[existing attribute to use for values]:attribute:' \
  '--of=[force gff version (1, 2 or 3)]:version:(1 2 3)' \
  '(-o --output)'{-o,--output}'=[output file]:output:_files' \
  '(-q --quiet)'{-q,--quiet}'[remove verbosity]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
