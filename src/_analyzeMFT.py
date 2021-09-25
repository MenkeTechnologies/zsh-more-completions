#compdef analyzeMFT.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-v,--version}'[report version and exit]'
  {-f,--file}'[read MFT from FILE]'
  {-j,--json}'[file paths should use the windows path separator]'
  {-o,--output}'[write results to FILE]'
  {-a,--anomaly}'[turn on anomaly detection]'
  {-e,--excel}'[print date/time in Excel friendly format]'
  {-b,--bodyfile}'[write MAC information to bodyfile]'
  '--bodystd[use STD_INFO timestamps for body file rather than FN]'
  '--bodyfull[use full path name + filename rather than just]'
  {-c,--csvtimefile}'[write CSV format timeline file]'
  {-l,--localtz}'[report times using local timezone]'
  {-d,--debug}'[turn on debugging output]'
  {-s,--saveinmemory}'[save a copy of the decoded MFT in memory. Do not use]'
  {-p,--progress}'[show systematic progress reports.]'
  {-w,--windows-path}'[file paths should use the windows path separator]'
  '*:filename:_files'
)

_arguments -s $arguments
