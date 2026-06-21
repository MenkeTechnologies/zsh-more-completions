#compdef sensor.py
# Documentation: https://github.com/stamparm/maltrail
# Maltrail sensor - malicious traffic detection sensor

local ret=1

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '-c[configuration file]:config file:_files' \
  '-r[pcap file for offline analysis]:pcap:_files' \
  '-p[plugin(s) to be used per event]:plugin:_files' \
  '(-q --quiet)'{-q,--quiet}'[turn off regular output]' \
  '--console[print events to console]' \
  '--offline[disable (online) trail updates]' \
  '--debug[enable debug output]' \
  '--profile[profiling output]' \
  '--version[show version and exit]' \
  '*:pcap file:_files' && ret=0

return ret
