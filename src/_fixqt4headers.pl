#compdef fixqt4headers.pl

local arguments

arguments=(
  '--dry-run[: Do not replace anything, just print what would be replaced]'
  '--strip-modules[: Strip the module headers for writing portable code]'
  '--verbose[: Verbose]'
  '--qtdir[: Point to Qt 5s qtbase directory]'
  '*:filename:_files'
)

_arguments -s $arguments
