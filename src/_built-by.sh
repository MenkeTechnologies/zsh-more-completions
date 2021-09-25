#compdef built-by.sh

local arguments

arguments=(
  '(- * :)'{-h,--help}'[display this information.]'
  {-v,--version}'[report the version number of this script.]'
  {-V,--verbose}'[report on progress.]'
  {-s,--silent}'[produce no output, just an exit status.]'
  {-q,--quiet}'[do not include the script name in the output.]'
  {-i,--ignore}'[silently ignore files where the builder cannot be found.]'
  {-r,--readelf}'[path to version of readelf to use to read notes.]'
  {-t,--tmpfile}'[temporary file to use.]'
  '--tool[only report binaries built by <NAME>]'
  '--nottool[skip binaries built by <NAME>]'
  '--before[only report binaries built before <DATE>]'
  '--after[only report binaries built after <DATE>]'
  '--minver[only report binaries built by version <VER> or higher]'
  '--maxver[only report binaries built by version <VER> or lower]'
  '*:filename:_files'
)

_arguments -s $arguments
