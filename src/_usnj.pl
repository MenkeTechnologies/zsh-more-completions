#compdef usnj.pl
# Documentation: https://man.archlinux.org/search?q=usnj.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-f[........USN Change Journal (full path)]'
  '-c[...........CSV output]'
  '-t[...........TLN output (use with -s)]'
  '-s[......System name (use with -t)]'
  '-h[...........Help (print this information)]'
  '*:filename:_files'
)

_arguments -s -S $arguments
