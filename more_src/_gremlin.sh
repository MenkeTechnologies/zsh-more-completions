#compdef gremlin.sh gremlin

_arguments -s \
  '-l[logging level]:level:(TRACE DEBUG INFO WARN ERROR)' \
  '*-i[run init script in interactive mode]:script:_files' \
  '*-e[execute script and exit]:script:_files' \
  '*:arg:'
