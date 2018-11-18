#compdef gitgo.sh

local arguments

arguments=(
  '-h[help]'
  '-l[from Repo]'
  '-p[push to Repo]'
  '-c[repo]'
  '*:filename:_files'
)

_arguments -s $arguments
