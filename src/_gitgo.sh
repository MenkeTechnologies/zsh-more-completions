#compdef gitgo.sh
# Documentation: https://man.archlinux.org/search?q=gitgo.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[help]'
  '-l[from Repo]'
  '-p[push to Repo]'
  '-c[repo]'
  '*:filename:_files'
)

_arguments -s -S $arguments
