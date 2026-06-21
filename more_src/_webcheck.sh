#compdef webcheck.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/webcheck.sh
# BBTools: summarize web access log files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[primary input]:file:_files' \
  'out=-[summary output]:file:_files' \
  'fail=-[output of failing lines]:file:_files' \
  'invalid=-[output of misformatted lines]:file:_files' \
  'extendedstats=-[print more stats]:bool:(t f)' \
  'overwrite=-[overwrite existing files]:bool:(t f)' \
  '*:file:_files' && ret=0

return ret
