#compdef sfcli.py
# Documentation: https://github.com/smicallef/spiderfoot
# OSINT: SpiderFoot command-line client for the SpiderFoot server.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-d --debug)'{-d,--debug}'[enable debug output]' \
  '-s+[connect to SpiderFoot server on URL (default http://127.0.0.1:5001)]:url:' \
  '-u+[username to authenticate to SpiderFoot server]:username:' \
  '-p+[password to authenticate (prefer -P PASSFILE)]:password:' \
  '-P+[file containing password to authenticate]:file:_files' \
  '-e+[execute commands from FILE]:file:_files' \
  '-l+[log command history to FILE]:file:_files' \
  '-n[disable history logging]' \
  '-o+[spool commands and output to FILE]:file:_files' \
  '-i[allow insecure server connections when using SSL]' \
  '-k[turn off color-coded output]' \
  '(-b -v)'{-b,-v}'[print the banner with version and exit]' && ret=0

return ret
