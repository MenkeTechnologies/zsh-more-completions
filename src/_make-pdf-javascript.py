#compdef make-pdf-javascript.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-j,--javascript}'[javascript to embed (default embedded JavaScript is]'
  {-f,--javascriptfile}'[javascript file to embed (default embedded JavaScript]'
  '*:filename:_files'
)

_arguments -s $arguments
