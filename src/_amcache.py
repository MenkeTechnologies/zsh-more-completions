#compdef amcache.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-v[enable verbose output]'
  '-t[output in simple timeline format]'
  '*:filename:_files'
)

_arguments -s $arguments
