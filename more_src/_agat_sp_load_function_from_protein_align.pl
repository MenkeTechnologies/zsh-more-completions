#compdef agat_sp_load_function_from_protein_align.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_load_function_from_protein_align.html
# AGAT: lift function from aligned proteins onto an annotation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-a --annotation)'{-a,--annotation}'=[input GTF/GFF annotation file]:gff file:_files' \
  '-pgff=[GFF file of aligned proteins]:pgff:_files' \
  '-pfasta=[protein fasta file]:pfasta:_files' \
  '(-m --method)'{-m,--method}'=[lifting rule (replace/complete/add)]:method:(replace complete add)' \
  '(-t --value --threshold)'{-t,--value,--threshold}'=[gene mapping percent threshold (default 50)]:threshold:' \
  '-w[use whole sequence instead of CDS]' \
  '--pe=[protein existence priority level (1-5)]:level:' \
  '--test=[overlap comparison operator (>, <, =, >=, <=)]:test:' \
  '--sp=[species prioritization list]:species:' \
  '(-p --priority)'{-p,--priority}'=[flip PE/species priority order]:priority:' \
  '-v[verbose output]' \
  '(-o --output --out)'{-o,--output,--out}'=[output GFF file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
