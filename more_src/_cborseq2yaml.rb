#compdef cborseq2yaml.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# cborseq2yaml.rb - convert a CBOR sequence to YAML (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
