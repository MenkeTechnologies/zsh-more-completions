#compdef tgzLocalInstaller.sh

local -a arguments

arguments=(
  '-h[|help Display this message]'
  '-v[|version Display script version]'
  '-n[|no-install No sudo make install]'
  '*:filename:_files'
)

_arguments -s -S $arguments
