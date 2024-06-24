#compdef socat-chain.sh

local arguments

arguments=(
  '-d[*  -S <sigmask>  -t <timeout>  -T <timeout> 	are passed to socat]'
  '-V[prints the socat commands before starting them]'
  '*:filename:_files'
)

_arguments -s $arguments
