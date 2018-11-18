#compdef escapeRemover.pl

local arguments

arguments=(
  {-A,--show-all}'[equivalent to -vET]'
  {-b,--number-nonblank}'[number nonempty output lines, overrides -n]'
  '-e[equivalent to -vE]'
  {-E,--show-ends}'[display $ at end of each line]'
  {-n,--number}'[number all output lines]'
  {-s,--squeeze-blank}'[suppress repeated empty output lines]'
  '-t[equivalent to -vT]'
  {-T,--show-tabs}'[display TAB characters as ^I]'
  '-u[(ignored)]'
  {-v,--show-nonprinting}'[use ^ and M- notation, except for LFD and TAB]'
  '--help[display this help and exit]'
  '--version[output version information and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
