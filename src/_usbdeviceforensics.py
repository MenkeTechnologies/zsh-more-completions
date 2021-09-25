#compdef usbdeviceforensics.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-o,--output}'[the output file name]'
  '-f[text}, --format {csv,text}]'
  {-d,--debug}'[debug mode, which outputs details VERY verbosely]'
  {-r,--registry}'[path to registry hives]'
  '*:filename:_files'
)

_arguments -s $arguments
