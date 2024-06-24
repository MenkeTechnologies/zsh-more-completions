#compdef memoize-extract.py

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  {-P,--pdf}'[extract from file PDF]'
  {-p,--prune}'[remove the extern pages after extraction]'
  {-k,--keep}'[do not mark externs as extracted]'
  '-F[plain,context}, --format {latex,plain,context}]'
  {-f,--force}'[extract even if the size-check fails]'
  {-q,--quiet}'[describe whats happening]'
  {-m,--mkdir}'[create a directory (and exit); mmz argument is]'
  {-V,--version}'[show programs version number and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
