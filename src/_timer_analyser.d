#compdef timer_analyser.d

local arguments

arguments=(
  '-p[# examine this PID]'
  '-n[# examine this process name]'
  '-t[# the length of time in ms to run until exiting]'
  '*:filename:_files'
)

_arguments -s $arguments
