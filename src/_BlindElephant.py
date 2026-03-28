#compdef BlindElephant.py

local -a arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--pluginName}'[fingerprint version of plugin]:plugin name:'
  {-s,--skip}'[skip fingerprinting webapp, just fingerprint plugin]'
  {-n,--numProbes}'[number of files to fetch (more may increase accuracy)]:count:'
  {-w,--winnow}'[use winnowing to reduce returned versions]'
  {-l,--list}'[list supported webapps and plugins]'
  {-u,--updateDB}'[pull latest DB files]'
  '*:filename:_files'
)

_arguments -s -S $arguments
