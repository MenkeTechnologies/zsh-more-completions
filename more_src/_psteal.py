#compdef psteal.py
# Documentation: https://plaso.readthedocs.io/
# plaso tool combining the functionality of log2timeline and psort

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--source=[the source to process]:source:_files' \
  '(-w --write)'{-w,--write}'+[output file location]:output file:_files' \
  '(--storage_file --storage-file)'{--storage_file=,--storage-file=}'[path of the storage file]:storage file:_files' \
  '(--no_dependencies_check --no-dependencies-check)'{--no_dependencies_check,--no-dependencies-check}'[disable the dependencies check]' && ret=0

return ret
