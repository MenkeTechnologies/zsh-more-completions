#compdef agat_sp_fix_small_exon_from_extremities.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_fix_small_exon_from_extremities.html
# AGAT: fix small exons at gene extremities

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-gff=[input GTF/GFF file]:gff file:_files' \
  '(-fa --fasta)'{-fa,--fasta}'=[genome fasta file]:fasta:_files' \
  '(--ct --table --codon)'{--ct,--table,--codon}'=[codon table (default 1)]:table:' \
  '(-s --size)'{-s,--size}'=[minimum exon size in nucleotide]:size:' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file]:output:_files' \
  '-v[verbose for debugging]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
