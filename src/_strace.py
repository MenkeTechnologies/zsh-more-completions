#compdef strace.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--pid}'[attach running process specified by its identifier]'
  {-f,--fork}'[trace fork and child process]'
  '--trace-exec[trace execve() event]'
  '--no-stdout[use /dev/null as stdout/stderr, or close stdout and]'
  '--enter[show system call enter and exit]'
  '--profiler[use profiler]'
  '--type[display arguments type and result type (default: no)]'
  '--name[display argument name (default: no)]'
  {-s,--string-length}'[string max length (default: 300)]'
  '--array-count[maximum number of array items (default: 20)]'
  '--raw-socketcall[raw socketcall form]'
  {-o,--output}'[write output to specified log file]'
  '--ignore-regex[regex used to filter syscall names (e.g.]'
  '--ignore[^(gettimeofday|futex|f?stat))]'
  '--address[display structure address]'
  {-e,--syscalls}'[comma separated list of shown system calls (other will]'
  '--socket[show only socket functions]'
  '--filename[show only syscall using filename]'
  '--show-pid[prefix line with process identifier]'
  '--list-syscalls[display system calls and exit]'
  {-i,--show-ip}'[print instruction pointer at time of syscall]'
  {-q,--quiet}'[be quiet (set log level to ERROR)]'
  {-v,--verbose}'[debug mode (set log level to INFO)]'
  '--debug[debug mode (set log level to DEBUG)]'
  '*:filename:_files'
)

_arguments -s $arguments
