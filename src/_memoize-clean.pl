#compdef memoize-clean.pl

local -a arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  {--version,-V}'[show version and exit]'
  {--yes,-y}'[do not ask for confirmation.]'
  {--all,-a}'[remove *all* memos and externs.]'
  {--quiet,-q}'[suppress informational messages]'
  {--prefix,-p}'[A path prefix to clean;]'
  '*:filename:_files'
)

_arguments -s -S $arguments
