#compdef cybox-validator.py

local arguments

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

_arguments -s $arguments
