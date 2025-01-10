#compdef memoize-clean.pl

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  {--version,-V}'[show version and exit]'
  {--yes,-y}'[do not ask for confirmation.]'
  {--all,-a}'[remove *all* memos and externs.]'
  {--quiet,-q}'[]'
  {--prefix,-p}'[A path prefix to clean;]'
  '*:filename:_files'
)

_arguments -s $arguments
