#compdef sortbyname.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/sortbyname.sh
# BBTools: sort reads by name, length, quality or position

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input file]:file:_files' \
  'out=-[output file]:file:_files' \
  'delete=-[delete temporary files]:bool:(t f)' \
  'allowtemp=-[allow writing temporary files]:bool:(t f)' \
  'name=-[sort reads by name]:bool:(t f)' \
  'length=-[sort reads by length]:bool:(t f)' \
  'quality=-[sort reads by quality]:bool:(t f)' \
  'position=-[sort reads by position]:bool:(t f)' \
  'taxa=-[sort reads by taxonomy]:bool:(t f)' \
  'sequence=-[sort reads by sequence]:bool:(t f)' \
  'flowcell=-[sort reads by flowcell coordinates]:bool:(t f)' \
  'shuffle=-[shuffle reads randomly]:bool:(t f)' \
  'list=-[sort reads according to this list of names]:file:_files' \
  'ascending=-[sort ascending]:bool:(t f)' \
  'tree=-[specify a taxtree file]:file:_files' \
  'gi=-[specify a gitable file]:file:_files' \
  'accession=-[NCBI accession to taxid files]:file:_files' \
  '*:file:_files' && ret=0

return ret
