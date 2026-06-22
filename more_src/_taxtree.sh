#compdef taxtree.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/
# BBTools TaxTree: build a taxonomy tree from NCBI taxonomy dumps

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '-Xmx[set maximum Java heap memory]:mem' \
  '-Xms[set initial Java heap memory]:mem' \
  '-eoom[exit on out-of-memory exceptions]' \
  '-da[disable assertions]' \
  '*:file:_files' && ret=0

return ret
