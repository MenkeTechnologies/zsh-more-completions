#compdef summarizescafstats.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/summarizescafstats.sh
# BBTools: summarize BBSplit scafstats output files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[list of stats files or a file of stats filenames]:file:_files' \
  'out=-[destination for summary]:file:_files' \
  '*:file:_files' && ret=0

return ret
