#compdef timer_analyser.d
# Documentation: https://man.archlinux.org/search?q=timer_analyser.d
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-p[# examine this PID]'
  '-n[# examine this process name]'
  '-t[# the length of time in ms to run until exiting]'
  '*:filename:_files'
)

_arguments -s -S $arguments
