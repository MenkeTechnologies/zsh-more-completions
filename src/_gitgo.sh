#compdef gitgo.sh

local -a arguments

arguments=(
  '-h[help]'
  '-l[from Repo]'
  '-p[push to Repo]'
  '-c[repo]'
  '*:filename:_files'
)

_arguments -s -S $arguments
