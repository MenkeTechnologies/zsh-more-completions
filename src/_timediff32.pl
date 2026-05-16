#compdef timediff32.pl
# Documentation: https://man.archlinux.org/search?q=timediff32.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[print help information and exit]'
  '-ref[...... Reference date in YYYY-MM-DDTHH:mm:ss format.]'
  '-target[... Target date in YYYY-MM-DDTHH:mm:ss format.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
