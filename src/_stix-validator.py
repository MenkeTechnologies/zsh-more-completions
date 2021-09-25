#compdef stix-validator.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '--stix-version[the version of STIX to validate against]'
  '--schema-dir[schema directory. If not provided, the STIX schemas]'
  '--use-schemaloc[use schemaLocation attribute to determine schema]'
  '--best-practices[check that the document follows authoring best]'
  '--profile[path to STIX Profile .xlsx file.]'
  '--quiet[only print results and errors if they occur.]'
  '--json-results[print results as raw JSON. This also sets --quiet.]'
  '--recursive[recursively descend into input directories.]'
  '--huge-tree[disable libxml2 security restrictions on XML document]'
  '*:filename:_files'
)

_arguments -s $arguments
