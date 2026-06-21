#compdef agat_sp_fix_features_locations_duplicated.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_fix_features_locations_duplicated.html
# AGAT: fix features with duplicated locations

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --file --gff3 --gff)'{-f,--file,--gff3,--gff}'=[input GTF/GFF file]:gff file:_files' \
  '(-m --model)'{-m,--model}'=[cases to fix (default all, e.g. 1,4,5)]:model:' \
  '(-v --verbose)'{-v,--verbose}'[add verbosity]' \
  '(-o --out --output --outfile)'{-o,--out,--output,--outfile}'=[output file]:output:_files' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
