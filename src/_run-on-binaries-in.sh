#compdef run-on-binaries-in.sh

local arguments

arguments=(
  '(- * :)'{-h,--help}'[display this information and then exit.]'
  {-v,--version}'[report the version number of this script.]'
  {-V,--verbose}'[report on progress.]'
  {-q,--quiet}'[do not include the script name in the output.]'
  {-i,--ignore}'[silently ignore files that are not executables or archives.]'
  {-p,--prefix}'[prefix normal output with this string.]'
  {-t,--tmpdir}'[temporary directory to use when opening archives.]'
  {-f,--files-from}'[process files listed in <FILE>.]'
  {-s,--skip-list}'[skip any file listed in <FILE>.]'
  '-v[to check-abi.sh as it does so.]'
  '*:filename:_files'
)

_arguments -s $arguments
