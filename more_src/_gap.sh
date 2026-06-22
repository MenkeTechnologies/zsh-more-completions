#compdef gap.sh
# Documentation: https://docs.gap-system.org/doc/ref/chap3.html
# gap.sh - launcher script for GAP (groups, algorithms, programming)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[display option summary and exit]' \
  '--version[print version and exit]' \
  '-A[disable loading of suggested packages]' \
  '-b[suppress the banner]' \
  '-c[execute GAP code during startup]:gapcode' \
  '-D[print messages when reading files or loading modules]' \
  '-e[do not quit on Ctrl-D with empty input]' \
  '-f[enable line editing and history]' \
  '-g[show garbage collection messages]' \
  '(-K --limitworkspace)'{-K,--limitworkspace}'[set memory limit]:memory' \
  '-L[load a saved workspace]:file:_files' \
  '(-l --roots)'{-l,--roots}'[set/modify root directories]:path_list:_dir_list' \
  '(-m --minworkspace)'{-m,--minworkspace}'[allocate memory at startup]:memory' \
  '-M[disable compiled library file usage]' \
  '-n[disable line editing and history]' \
  '(-o --maxworkspace)'{-o,--maxworkspace}'[set maximum memory allocation]:memory' \
  '-O[disable loading obsolete variables]' \
  '-q[quiet mode: no banner or prompt]' \
  '-r[ignore user configuration files]' \
  '-R[prevent loading saved workspace]' \
  '-s[use mmap/malloc instead of sbrk]:memory' \
  '-T[suppress break loop for automated testing]' \
  '(-x --width)'{-x,--width}'[set terminal line width]:length' \
  '(-y --line)'{-y,--line}'[set screen line count]:length' \
  '--packagedirs[add package directory paths]:path_list:_dir_list' \
  '*:file:_files' && ret=0

return ret
