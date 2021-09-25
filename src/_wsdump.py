#compdef wsdump.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--proxy}'[proxy url. ex. http://127.0.0.1:8080]'
  {-v,--verbose}'[set verbose mode. If set to 1, show opcode. If set to]'
  {-n,--nocert}'[ignore invalid SSL cert]'
  {-r,--raw}'[raw output]'
  '-s[\[SUBPROTOCOLS ...\]\], --subprotocols \[SUBPROTOCOLS \[SUBPROTOCOLS ...\]\]]'
  {-o,--origin}'[set origin]'
  '--eof-wait[wait time(second) after EOF received.]'
  {-t,--text}'[send initial text]'
  '--timings[print timings in seconds]'
  '--headers[set custom headers. Use , as separator]'
  '*:filename:_files'
)

_arguments -s $arguments
