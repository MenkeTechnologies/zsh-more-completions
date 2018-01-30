#compdef powerTo.sh

_arguments \
       '(-h)-help[prints an help message]' \
       '(-help)-h[prints an help message]' \
       '(-v)-version[prints the version]' \
       '(-version)-v[prints the version]' \
       '(-alone)-l[leave me alone]' \
       '(-l)-alone[leave me alone]'

_nums=(1 2 3 4 5 6 7 8 9 10)

_describe -t commands "iterations" _nums

