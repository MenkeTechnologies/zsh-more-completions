#compdef mantozshcomp.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message]'
  {-v,--verbose}'[0, 1, 2\] Show debugging output to stderr. Larger is more verbose.]'
  {-s,--stdout}'[write all completions to stdout (trumps the --directory option)]'
  {-d,--directory}'[write all completions to the given directory, instead of to ~/.local/share/fish/generated_completions]'
  {-m,--manpath}'[process all man1 and man8 files available in the manpath (as determined by manpath)]'
  {-p,--progress}'[show progress]'
  '*:filename:_files'
)

_arguments -s $arguments
