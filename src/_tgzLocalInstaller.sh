#compdef tgzLocalInstaller.sh

local -a arguments

arguments=(
  {-h,--help}'[display this message]'
  {-v,--version}'[display script version]'
  {-n,--no-install}'[no sudo make install]'
  '*:filename:_files'
)

_arguments -s -S $arguments
