#compdef check-abi.sh

local arguments

arguments=(
  '(- * :)'{-h,--help}'[display this information.]'
  {-v,--version}'[report the version number of this script.]'
  {-s,--silent}'[produce no output, just an exit status.]'
  {-q,--quiet}'[do not include the script name in the output.]'
  {-V,--verbose}'[report on progress.]'
  {-i,--inconsistencies}'[only report potential ABI problems.]'
  {-r,--readelf}'[path to version of readelf to use to read notes.]'
  {-t,--tmpfile}'[temporary file to use.]'
  '--ignore-unknown[silently skip files of unknown type.]'
  '--ignore-ABI[do not check ABI annotation.]'
  '--no-ignore-ABI[check ABI information but do not complain if none is found.]'
  '--ignore-enum[do not check enum size annotation.]'
  '--no-ignore-enum[check enum size information but do not complain if none is found.]'
  '--ignore-FORTIFY[do not check FORTIFY SOURCE annotation.]'
  '--no-ignore-FORTIFY[check FORTIFY SOURCE information but do not complain if none is found.]'
  '--ignore-stack-prot[do not check stack protection annotation.]'
  '--no-ignore-stack-prot[check stack protection information but do not complain if none is found.]'
  '--ignore-gaps[do not fail if there are gaps in the coverage.]'
  '--no-ignore-gaps[fail if there are gaps in the coverage.]'
  '*:filename:_files'
)

_arguments -s $arguments
