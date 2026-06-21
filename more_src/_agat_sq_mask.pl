#compdef agat_sq_mask.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_mask.html
# AGAT: soft/hard mask a genome fasta using GFF features

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-g --gff -ref)'{-g,--gff,-ref}'=[input GTF/GFF file]:gff file:_files' \
  '(-f --fasta)'{-f,--fasta}'=[input fasta file to mask]:fasta:_files' \
  '-sm[soft mask: masked sequence in lowercase]' \
  '-hm=[hard mask: replace masked sequence with a character (default n)]:char:' \
  '(-o --output)'{-o,--output}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
