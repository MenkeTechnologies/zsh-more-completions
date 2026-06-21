#compdef cbor2yaml.rb
# Documentation: https://github.com/cabo/cbor-diag/blob/master/README.md
# cbor2yaml.rb - convert binary CBOR to YAML (reads stdin or files given as arguments)

local ret=1

_arguments -s -S \
  '*:input file:_files' && ret=0

return ret
