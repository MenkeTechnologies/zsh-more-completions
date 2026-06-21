#compdef stackcollapse-perf.pl
# Documentation: https://github.com/brendangregg/FlameGraph
# Collapse perf script output into single lines for flamegraph.pl

local ret=1

_arguments -s -S \
  '--inline[un-inline using addr2line]' \
  '--context[adds source context to --inline]' \
  '--srcline[parse perf script -F+srcline output]' \
  '--pid[include PID with process names]' \
  '--tid[include TID and PID with process names]' \
  '--kernel[annotate kernel functions with _[k]]' \
  '--jit[annotate jit functions with _[j]]' \
  '--all[all annotations (--kernel --jit)]' \
  '--addrs[include raw addresses where symbols not found]' \
  '--event-filter=[event name filter]:event' \
  '*:perf script output:_files' && ret=0

return ret
