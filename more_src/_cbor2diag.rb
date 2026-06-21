#compdef cbor2diag.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# cbor2diag.rb - dump binary CBOR as diagnostic notation

local ret=1

_arguments -s -S \
  '-e[output byte strings as embedded CBOR if well-formed as such]' \
  '-t[output byte strings that are valid UTF-8 text as such in single quotes]' \
  '-u[do not escape beyond-ASCII characters in strings]' \
  '*:CBOR file:_files' && ret=0

return ret
