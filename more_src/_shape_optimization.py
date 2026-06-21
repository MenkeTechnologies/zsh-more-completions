#compdef shape_optimization.py
# Documentation: https://su2code.github.io/docs_v7/Execution/
# SU2 shape optimization driver wrapper

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --file)'{-f,--file=}'[read config from FILE]:file:_files -g "*.cfg"' \
  '(-r --name)'{-r,--name=}'[try to restart from project file NAME]:name:' \
  '(-n --partitions)'{-n,--partitions=}'[number of partitions]:partitions:' \
  '(-g --gradient)'{-g,--gradient=}'[method for computing the gradient]:gradient:' \
  '(-q --quiet)'{-q,--quiet=}'[quiet all SU2 output]:quiet:(True False)' && ret=0

return ret
