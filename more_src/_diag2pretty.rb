#compdef diag2pretty.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# diag2pretty.rb - convert CBOR diagnostic notation to pretty-printed CBOR (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
