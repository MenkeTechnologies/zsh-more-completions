#compdef server.py
# Documentation: https://github.com/stamparm/maltrail
# Maltrail server - reporting/analytics web server

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '-c[configuration file]:config file:_files' \
  '--debug[enable debug output]' \
  '--version[show version and exit]' && ret=0

return ret
