#compdef continuous_adjoint.py
# Documentation: https://su2code.github.io/docs_v7/Execution/
# SU2 continuous adjoint computation wrapper

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --file)'{-f,--file=}'[read config from FILE]:file:_files -g "*.cfg"' \
  '(-n --partitions)'{-n,--partitions=}'[number of partitions]:partitions:' \
  '(-c --compute)'{-c,--compute=}'[direct and adjoint problem]:compute:' \
  '(-s --step)'{-s,--step=}'[finite difference step]:step:' && ret=0

return ret
