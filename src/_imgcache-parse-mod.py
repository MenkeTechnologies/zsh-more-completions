#compdef imgcache-parse-mod.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-f[imgcache file to be searched]'
  '-o[HTML table File]'
  '-p[parse cached picture only (do not use in conjunction with -v)]'
  '-v[parse cached video thumbnails only (do not use in conjunction]'
  '*:filename:_files'
)

_arguments -s $arguments
