#compdef agat_sp_kraken_assess_liftover.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_kraken_assess_lift_coverage.html
# AGAT: assess Kraken liftover coverage of a GTF annotation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--gtf=[input GTF file]:gtf file:_files' \
  '(-t --threshold)'{-t,--threshold}'=[liftover coverage threshold]:threshold:' \
  '(-p --plot)'{-p,--plot}'[create a plot]' \
  '(-o --out --output)'{-o,--out,--output}'=[output file]:output:_files' \
  '*:gtf file:_files' && ret=0

return ret
