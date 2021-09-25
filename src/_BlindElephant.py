#compdef BlindElephant.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--pluginName}'[fingerprint version of plugin (should apply to web app]'
  {-s,--skip}'[skip fingerprinting webpp, just fingerprint plugin]'
  {-n,--numProbes}'[number of files to fetch (more may increase accuracy).]'
  {-w,--winnow}'[if more than one version are returned, use winnowing]'
  {-l,--list}'[list supported webapps and plugins]'
  {-u,--updateDB}'[pull latest DB files from]'
  '*:filename:_files'
)

_arguments -s $arguments
