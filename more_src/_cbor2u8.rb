#compdef cbor2u8.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# cbor2u8.rb - convert binary CBOR to UTF-8 diagnostic notation (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
