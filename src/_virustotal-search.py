#compdef virustotal-search.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-d,--delay}'[delay in seconds between queries (default 16s, VT rate]'
  {-c,--comment}'[the search term is followed by a comment and separated]'
  {-f,--force}'[force all request to be send to VirusTotal, even if]'
  {-k,--key}'[virusTotal API key]'
  {-g,--globaldb}'[use global database (pkl file) in same directory as]'
  {-m,--md5}'[calculate the md5 of the file and search it]'
  {-u,--update}'[update the database (pkl file) with the provided]'
  {-o,--output}'[output to file]'
  {-r,--refresh}'[refresh the database sequentially]'
  {-R,--refreshrandom}'[refresh the database randomly]'
  {-a,--after}'[date to start refreshing (default 1970-01-01)]'
  {-n,--notfound}'[file to keep track and skip not found searches]'
  {-i,--noupdate}'[do not update the database]'
  {-w,--waitquota}'[wait 1 hour when quota exceeded]'
  {-s,--separator}'[separator character (default ;)]'
  '*:filename:_files'
)

_arguments -s $arguments
