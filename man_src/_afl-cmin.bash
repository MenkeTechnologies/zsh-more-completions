#compdef afl-cmin.bash

local arguments

arguments=(
  '-i[- input directory with the starting corpus]'
  '-o[- output directory for minimized files]'
  '-f[- location read by the fuzzed program (stdin)]'
  '-m[- memory limit for child process (200 MB)]'
  '-t[- run time limit for child process (none)]'
  '-Q[- use binary-only instrumentation (QEMU mode)]'
  '-U[- use unicorn-based instrumentation (Unicorn mode)]'
  '-C[- keep crashing inputs, reject everything else]'
  '-e[- solve for edge coverage only, ignore hit counts]'
  '*:filename:_files'
)

_arguments -s $arguments
