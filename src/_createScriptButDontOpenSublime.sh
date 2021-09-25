#compdef createScriptButDontOpenSublime.sh

local arguments

arguments=(
  '--project[load the given project]'
  '--command[run the given command]'
  {-n,--new-window}'[Open a new window]'
  {-a,--add}'[Add folders to the current window]'
  {-w,--wait}'[Wait for the files to be closed before returning]'
  {-b,--background}'[Dont activate the application]'
  {-s,--stay}'[Keep the application activated after closing the file]'
  '(- * :)'{-h,--help}'[Show help (this message) and exit]'
  {-v,--version}'[Show version and exit]'
  '--wait[implied if reading from stdin. Use --stay to not switch back]'
  '*:filename:_files'
)

_arguments -s $arguments
