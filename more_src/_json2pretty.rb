#compdef json2pretty.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# json2pretty.rb - convert JSON to pretty-printed CBOR (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
