#compdef pinfo.py
# Documentation: https://plaso.readthedocs.io/
# plaso tool to provide information about the contents of a Plaso storage file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --verbose)'{-v,--verbose}'[print verbose output]' \
  '--compare=[path of the storage file to compare against]:storage file:_files' \
  '(--output_format --output-format)'{--output_format=,--output-format=}'[format of output]:format:(json markdown text)' \
  '--hash=[type of hash to output in file_hashes report]:type:(md5 sha1 sha256)' \
  '--report=[report on specific information]:report:(browser_search chrome_extension environment_variables file_hashes windows_services winevt_providers list none)' \
  '--sections=[comma separated list of sections to output]:sections' \
  '(-w --write)'{-w,--write}'+[output filename]:output file:_files' \
  '*:storage file:_files' && ret=0

return ret
