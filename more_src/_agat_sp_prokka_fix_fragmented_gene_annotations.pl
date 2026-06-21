#compdef agat_sp_prokka_fix_fragmented_gene_annotations.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_prokka_fragmented_gene_annotations.html
# AGAT: fix fragmented gene annotations from Prokka

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gff=[input GTF/GFF file]:gff file:_files' \
  '(-f --fa --fasta)'{-f,--fa,--fasta}'=[input fasta file]:fasta:_files' \
  '--db=[database file]:db:_files' \
  '--frags[handle fragments]' \
  '--pseudo[handle pseudo genes]' \
  '--hamap_size=[HAMAP size]:size:' \
  '(--ct --codon --table)'{--ct,--codon,--table}'=[codon table]:table:' \
  '--skip_hamap[skip HAMAP step]' \
  '(-o --out --output)'{-o,--out,--output}'=[output folder]:output:_files -/' \
  '*:gff file:_files' && ret=0

return ret
