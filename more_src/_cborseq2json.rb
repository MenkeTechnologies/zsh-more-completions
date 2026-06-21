#compdef cborseq2json.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# cborseq2json.rb - convert a CBOR sequence to JSON (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
