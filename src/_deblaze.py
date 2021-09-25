#compdef deblaze.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-u,--url}'[URL for AMF Gateway]'
  {-s,--service}'[remote service to call]'
  {-m,--method}'[method to call]'
  {-p,--params}'[parameters to send pipe seperated]'
  {-f,--fullauto}'[URL to SWF - Download SWF, find remoting services]'
  '--fuzz[fuzz parameter values]'
  {-c,--creds}'[username and password for service in u:p format]'
  {-b,--cookie}'[send cookies with request]'
  {-A,--user-agent}'[user-Agent string to send to the server]'
  {-1,--bruteService}'[file to load services for brute forcing (mutually]'
  {-2,--bruteMethod}'[file to load methods for brute forcing (mutually]'
  {-d,--debug}'[enable pyamf/AMF debugging]'
  {-v,--verbose}'[print http request/response]'
  {-r,--report}'[generate HTML report]'
  {-n,--nobanner}'[do not display banner]'
  {-q,--quiet}'[do not display messages]'
  '*:filename:_files'
)

_arguments -s $arguments
