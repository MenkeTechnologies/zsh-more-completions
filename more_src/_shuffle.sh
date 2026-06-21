#compdef shuffle.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/shuffle.sh
# BBTools: randomly reorder or sort reads in memory

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[input file or stdin]:file:_files' \
  'in2=-[second read of pairs in different file]:file:_files' \
  'out=-[output file or stdout]:file:_files' \
  'out2=-[write second read of pairs to different file]:file:_files' \
  'overwrite=-[overwrite existing files]:bool:(t f)' \
  'ziplevel=-[compression level 1-9]:level:' \
  'int=-[override interleaving autodetection]:bool:(auto t f)' \
  'shuffle[randomly reorder reads (default)]' \
  'name[sort reads by name]' \
  'coordinate[sort reads by mapping location]' \
  'sequence[sort reads by sequence]' \
  '*:file:_files' && ret=0

return ret
