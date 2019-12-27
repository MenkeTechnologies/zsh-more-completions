#compdef pipes.sh

local arguments

arguments=(
  '-p[1-\] number of pipes (D=1)]'
  '-t[0-9\] pipe type (D=0)]'
  '-t[16 chars\] custom pipe type]'
  '-c[0-256\] pipe color INDEX (TERM=xterm-256color), can be]'
  '-f[20-100\] framerate (D=75)]'
  '-s[5-15\] going straight probability, 1 in (D=13)]'
  '-r[0-\] reset after (D=2000) characters, 0 if no reset]'
  '-R[randomize starting position and direction]'
  '-B[no bold effect]'
  '-C[no color]'
  '-K[keep pipe color and type when crossing edges]'
  '-h[print this help message]'
  '-v[print version number]'
  '*:filename:_files'
)

_arguments -s $arguments
