#compdef agat_sq_filter_feature_from_fasta.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sq_filter_feature_from_fasta.html
# AGAT: keep only features whose sequence is present in a fasta

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(--gff --file --input)'{--gff,--file,--input}'=[input GTF/GFF file]:gff file:_files' \
  '(-f --fasta)'{-f,--fasta}'=[fasta file]:fasta:_files' \
  '(-v --verbose)'{-v,--verbose}'[add verbosity]' \
  '(-o --output)'{-o,--output}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
