#compdef cybox-validator.py
# Documentation: https://man.archlinux.org/search?q=cybox-validator.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '--cybox-version[the version of CybOX to validate against]'
  '--schema-dir[schema directory. If not provided, the CybOX schemas]'
  '--use-schemaloc[use schemaLocation attribute to determine schema]'
  '--quiet[only print results and errors if they occur.]'
  '--json-results[print results as raw JSON. This also sets --quiet.]'
  '--recursive[recursively descend into input directories.]'
  '--huge-tree[disable libxml2 security restrictions on XML document]'
  '*:filename:_files'
)

_arguments -s -S $arguments
