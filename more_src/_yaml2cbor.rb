#compdef yaml2cbor.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# yaml2cbor.rb - convert YAML to binary CBOR (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
