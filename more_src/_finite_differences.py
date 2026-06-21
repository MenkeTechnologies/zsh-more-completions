#compdef finite_differences.py
# Documentation: https://su2code.github.io/docs_v7/Execution/
# SU2 finite difference gradient computation wrapper

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --file)'{-f,--file=}'[read config from FILE]:file:_files -g "*.cfg"' \
  '(-n --partitions)'{-n,--partitions=}'[number of partitions]:partitions:' \
  '(-s --step)'{-s,--step=}'[finite difference step]:step:' \
  '(-q --quiet)'{-q,--quiet=}'[output to log files if True]:quiet:(True False)' && ret=0

return ret
