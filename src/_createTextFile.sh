#compdef createTextFile.sh

local arguments

arguments=(
  {-c,--console}'[use the given VT number;]'
  {-e,--exec}'[execute the command, without forking;]'
  {-f,--force}'[force opening a VT without checking;]'
  {-l,--login}'[make the command a login shell;]'
  {-u,--user}'[figure out the owner of the current VT;]'
  {-s,--switch}'[switch to the new VT;]'
  {-w,--wait}'[wait for command to complete;]'
  {-v,--verbose}'[print a message for each action;]'
  {-V,--version}'[print program version and exit;]'
  '(- * :)'{-h,--help}'[output a brief help message.]'
  '*:filename:_files'
)

_arguments -s $arguments
