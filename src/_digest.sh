#compdef digest.sh

local arguments

arguments=(
  '-h[:4219712f38522d16c6c6dcbe3009423444269d99527ef6d4dee58174437b3414$1$f18a10456e7568d57fc0758bb939c1540dae931290e16510185d7f92a5d5e5576165ddfdd0470e37a30b24113c1ea29de2686ddcfc0dd608f0888d4e03f84a22]'
  '*:filename:_files'
)

_arguments -s $arguments
