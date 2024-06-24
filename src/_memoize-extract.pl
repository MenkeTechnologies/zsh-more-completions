#compdef memoize-extract.pl

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  {-P,--pdf}'[extract from file PDF]'
  {-p,--prune}'[remove the extern pages after extraction]'
  {-k,--keep}'[do not mark externs as extracted]'
  {-F,--format}'[plain,context}]'
  {-f,--force}'[extract even if the size-check fails]'
  {-q,--quiet}'[describe whats happening]'
  {-L,--library}'[2, PDF::Builder}]'
  {-m,--mkdir}'[create a directory (and exit);]'
  {-V,--version}'[show programs version number and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
