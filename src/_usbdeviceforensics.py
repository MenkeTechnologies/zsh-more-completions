#compdef usbdeviceforensics.py
# Documentation: https://man.archlinux.org/search?q=usbdeviceforensics.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-o,--output}'[the output file name]'
  '-f[text}, --format {csv,text}]'
  {-d,--debug}'[debug mode, which outputs details VERY verbosely]'
  {-r,--registry}'[path to registry hives]'
  '*:filename:_files'
)

_arguments -s -S $arguments
