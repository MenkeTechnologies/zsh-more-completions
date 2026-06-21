#compdef a_sample_mt.sh
# Documentation: https://raw.githubusercontent.com/BioInfoTools/BBMap/master/sh/a_sample_mt.sh
# BBTools: multithreaded sample/template tool

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=-[primary input or read 1 input]:file:_files' \
  'in2=-[read 2 input if in two files]:file:_files' \
  'out=-[primary output or read 1 output]:file:_files' \
  'out2=-[read 2 output if in two files]:file:_files' \
  'overwrite=-[overwrite existing files]:bool:(t f)' \
  'showspeed=-[display processing speed]:bool:(t f)' \
  'ziplevel=-[compression level 1-9]:level:' \
  '*:file:_files' && ret=0

return ret
