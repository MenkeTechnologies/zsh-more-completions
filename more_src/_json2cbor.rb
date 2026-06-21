#compdef json2cbor.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# json2cbor.rb - convert JSON to binary CBOR

local ret=1

_arguments -s -S \
  '-v[be verbose about sizes in bytes]' \
  '*:JSON file:_files' && ret=0

return ret
