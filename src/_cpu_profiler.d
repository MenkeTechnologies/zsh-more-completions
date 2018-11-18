#compdef cpu_profiler.d

local arguments

arguments=(
  '-p[# examine this PID]'
  '-n[# examine this process name]'
  '-t[# the length of time in ms to run until exiting]'
  '-c[# show the top N stacks only]'
  '*:filename:_files'
)

_arguments -s $arguments
