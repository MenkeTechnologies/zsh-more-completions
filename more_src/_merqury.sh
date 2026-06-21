#compdef merqury.sh
# Documentation: https://github.com/marbl/merqury
# Merqury: reference-free assembly evaluation and QV estimation from k-mers

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '1:read-db.meryl:_files -g "*.meryl"' \
  '2:asm or mat.meryl:_files' \
  '3:asm or pat.meryl:_files' \
  '*:fasta or output prefix:_files' && ret=0

return ret
