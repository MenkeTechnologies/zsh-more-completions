#compdef gremlin.sh gremlin
# Documentation: https://man.archlinux.org/search?q=gremlin.sh
# Reference accessed: 2026-05-16

_arguments -s \
  '-l[logging level]:level:(TRACE DEBUG INFO WARN ERROR)' \
  '*-i[run init script in interactive mode]:script:_files' \
  '*-e[execute script and exit]:script:_files' \
  '*:arg:'
