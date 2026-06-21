#compdef image_export.py
# Documentation: https://plaso.readthedocs.io/
# plaso tool to export file content from a storage media image or device

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-x --extensions)'{-x,--extensions}'+[filter on comma separated file name extensions]:extensions' \
  '--names=[filter on comma separated file names]:names' \
  '--signatures=[filter on comma separated file format signature identifiers (use list to show)]:identifiers' \
  '--enable_artifacts_map[output a JSON file mapping extracted files to artifact definitions]' \
  '(-w --write)'{-w,--write}'+[directory in which extracted files should be stored]:directory:_files -/' \
  '(--include_duplicates --include-duplicates)'{--include_duplicates,--include-duplicates}'[include duplicate files in the export]' \
  '(--no_hashes --no-hashes)'{--no_hashes,--no-hashes}'[do not generate the hashes.json file]' \
  '*:image:_files' && ret=0

return ret
