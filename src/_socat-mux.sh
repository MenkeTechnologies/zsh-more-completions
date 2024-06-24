#compdef socat-mux.sh

local arguments

arguments=(
  '-h[show this help text and exit]'
  '-V[show Socat commands]'
  '-q[suppress most messages]'
  '-d[*	Options beginning with -d are passed to Socat processes]'
  '-l[*	Options beginning with -l are passed to Socat processes]'
  '-b[|-S|-t|-T|-l <arg>	These options are passed to Socat processes]'
  '*:filename:_files'
)

_arguments -s $arguments
