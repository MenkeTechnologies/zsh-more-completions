#compdef afl-cmin.py
# Documentation: https://github.com/AFLplusplus/AFLplusplus/blob/stable/afl-cmin.py
# AFL++ python corpus minimization tool

local ret=1

_arguments -s -S \
  '-i[input directory with the starting corpus]:input dir:_files -/' \
  '-o[output directory for minimized files]:output dir:_files -/' \
  '-f[location read by the fuzzed program (stdin)]:file:_files' \
  '-m[memory limit for child process (default none)]:megs' \
  '-t[timeout for each run in ms (default 5000)]:msec' \
  '-O[use binary-only instrumentation (FRIDA mode)]' \
  '-Q[use binary-only instrumentation (QEMU mode)]' \
  '-U[use unicorn-based instrumentation (Unicorn mode)]' \
  '-X[use Nyx mode]' \
  '-T[number of concurrent workers (default 1)]:workers' \
  '--crash-dir[move crashes to a separate dir, deduplicated]:dir:_files -/' \
  '-A[allow crashes and timeouts (not recommended)]' \
  '-C[keep crashing inputs, reject everything else]' \
  '-e[solve for edge coverage only, ignore hit counts]' \
  '--as_queue[output file name like id:000000,hash:value]' \
  '--no-dedup[skip deduplication step for corpus files]' \
  '--debug[enable debug output]' \
  '(-h --help)'{-h,--help}'[show help]' \
  '*:target and args:_files' && ret=0

return ret
