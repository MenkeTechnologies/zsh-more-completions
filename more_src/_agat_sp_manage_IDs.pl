#compdef agat_sp_manage_IDs.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_manage_IDs.html
# AGAT: manage and renumber IDs in a GTF/GFF file

local ret=1

_arguments -s -S \
  '(--gff -f)'{--gff,-f}'=[input GTF/GFF file]:file:_files' \
  '--gap=[increment next gene suffix by value (default 0)]:int:' \
  '--ensembl[Ensembl-like ID format]' \
  '--prefix=[prefix to add to the ID]:prefix:' \
  '--type_dependent[activate type-dependent numbering]' \
  '--collective[unique ID for discontinuous features]' \
  '--tair[Tair-like output]' \
  '--nb=[start numbering at this value (default 1)]:int:' \
  '(-p -t -l)'{-p,-t,-l}'=[feature types to handle]:type:' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file (default STDOUT)]:file:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:file:_files' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:file:_files' && ret=0

return ret
