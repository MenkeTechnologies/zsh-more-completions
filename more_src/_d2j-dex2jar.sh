#compdef d2j-dex2jar.sh
# Documentation: https://github.com/pxb1988/dex2jar
# dex2jar converts Android dex files to jar

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --force)'{-f,--force}'[force overwrite existing output]' \
  '(-o --output)'{-o,--output}'[specify output file location]:file:_files' \
  '(-e --exception-file)'{-e,--exception-file}'[set exception handling file]:file:_files' \
  '(-n --not-handle-exception)'{-n,--not-handle-exception}'[disable exception handling]' \
  '(-d --debug-info)'{-d,--debug-info}'[include debug information]' \
  '(-s --skip-debug)'{-s,--skip-debug}'[omit debug information]' \
  '(-r --reuse-reg)'{-r,--reuse-reg}'[reuse registers]' \
  '--topological-sort[apply topological sorting]' \
  '*:file:_files' && ret=0

return ret
