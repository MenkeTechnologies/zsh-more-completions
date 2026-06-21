#compdef pretty2diag.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# pretty2diag.rb - convert pretty-printed CBOR to diagnostic notation (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
