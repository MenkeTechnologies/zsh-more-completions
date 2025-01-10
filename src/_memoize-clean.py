#compdef memoize-clean.py

local arguments

arguments=(
  {-h,--help}'[show this help message and exit]'
  {--yes,-y}'[do not ask for confirmation.]'
  {--all,-a}'[remove *all* memos and externs.]'
  {--quiet,-q}'[]'
  {--prefix,-p}'[A path prefix to clean; this option can be specified]'
  {--version,-V}'[show programs version number and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
