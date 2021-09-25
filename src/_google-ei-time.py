#compdef google-ei-time.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-e[google search URLs EI parameter value]'
  '-u[complete Google search URL]'
  '-q[(Optional) Quiet output (only outputs timestamp string)]'
  '*:filename:_files'
)

_arguments -s $arguments
