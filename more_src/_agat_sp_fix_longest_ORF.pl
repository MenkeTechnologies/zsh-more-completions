#compdef agat_sp_fix_longest_ORF.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_fix_longest_ORF.html
# AGAT: fix gene models to the longest ORF

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gff=[input GTF/GFF file]:gff file:_files' \
  '(-f --fa --fasta)'{-f,--fa,--fasta}'=[input fasta file]:fasta:_files' \
  '(--ct --codon --table)'{--ct,--codon,--table}'=[codon table (default 1)]:table:' \
  '(-m --model)'{-m,--model}'=[ORF correction model(s) to process]:model:' \
  '(-s --split)'{-s,--split}'[split genes for non-overlapping predictions (Model2)]' \
  '(-o --output --out --outfile)'{-o,--output,--out,--outfile}'=[output GFF file]:output:_files' \
  '-v=[verbosity level (1-3)]:level:' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
