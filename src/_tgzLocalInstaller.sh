#compdef tgzLocalInstaller.sh
# Documentation: https://man.archlinux.org/search?q=tgzLocalInstaller.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  {-h,--help}'[display this message]'
  {-v,--version}'[display script version]'
  {-n,--no-install}'[no sudo make install]'
  '*:filename:_files'
)

_arguments -s -S $arguments
