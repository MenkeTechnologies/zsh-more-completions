#compdef cqlsh.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-C,--color}'[always use color output]'
  '--no-color[never use color output]'
  '--browser[the browser to use to display CQL help, where BROWSER]'
  '--ssl[use SSL]'
  '--no[_compact No Compact]'
  {-u,--username}'[authenticate as user.]'
  {-p,--password}'[authenticate using password.]'
  {-k,--keyspace}'[authenticate to the given keyspace.]'
  {-f,--file}'[execute commands from FILE, then exit]'
  '--debug[show additional debugging information]'
  '--encoding[specify a non-default encoding for output. (Default:]'
  '--cqlshrc[specify an alternative cqlshrc file location.]'
  '--cqlversion[specify a particular CQL version, by default the]'
  '--protocol-version[specify a specific protcol version otherwise the]'
  {-e,--execute}'[execute the statement and quit.]'
  '--connect-timeout[specify the connection timeout in seconds (default: 5]'
  '--request-timeout[specify the default request timeout in seconds]'
  {-t,--tty}'[force tty mode (command prompt).]'
  '*:filename:_files'
)

_arguments -s $arguments
