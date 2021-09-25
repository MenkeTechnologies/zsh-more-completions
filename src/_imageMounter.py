#compdef imageMounter.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-s,--single}'[single partition in image]'
  {-i,--info}'[just Display the information]'
  {-e,--e01}'[use ewfmount to mount E0 Evidence Files]'
  {-b,--bitlocker}'[mount Bitlocker Drive with Recovery Key]'
  {-k,--key}'[bitlokcer Recovery Key]'
  '*:filename:_files'
)

_arguments -s $arguments
