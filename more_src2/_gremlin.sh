#compdef gremlin.sh gremlin
# Documentation: https://tinkerpop.apache.org/docs/current/reference/#gremlin-console
# Reference accessed: 2026-05-18
# Verified: upstream docs at the URL above.

_arguments -s \
  '-l[logging level]:level:(TRACE DEBUG INFO WARN ERROR)' \
  '*-i[run init script in interactive mode]:script:_files' \
  '*-e[execute script and exit]:script:_files' \
  '*:arg:'
