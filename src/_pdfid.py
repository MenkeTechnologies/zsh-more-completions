#compdef pdfid.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  {-h,--help}'[show this help message and exit]'
  {-s,--scan}'[scan the given directory]'
  {-a,--all}'[display all the names]'
  {-e,--extra}'[display extra data, like dates]'
  {-f,--force}'[force the scan of the file, even without proper %PDF]'
  {-d,--disarm}'[disable JavaScript and auto launch]'
  {-p,--plugins}'[plugins to load (separate plugins with a comma , ;]'
  {-c,--csv}'[output csv data when using plugins]'
  {-m,--minimumscore}'[minimum score for plugin results output]'
  {-v,--verbose}'[verbose (will also raise catched exceptions)]'
  {-S,--select}'[selection expression]'
  {-o,--output}'[output to log file]'
  '*:filename:_files'
)

_arguments -s $arguments
