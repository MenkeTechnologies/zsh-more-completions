#compdef cborseq2neatjson.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# cborseq2neatjson.rb - convert a CBOR sequence to neatly-formatted JSON (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
