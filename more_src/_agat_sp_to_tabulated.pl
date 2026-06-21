#compdef agat_sp_to_tabulated.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_to_tabulated.html
# AGAT: convert a GFF/GTF to a tabulated format

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --gff)'{-f,--gff}'=[input GTF/GFF file]:gff file:_files' \
  '--ct=[group features using a shared attribute]:tag:' \
  '(--ml --merge_loci)'{--ml,--merge_loci}'[merge overlapping loci]' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
