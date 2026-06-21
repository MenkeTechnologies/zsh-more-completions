#compdef questdb.sh
# Documentation: https://github.com/questdb/questdb/blob/master/core/src/main/bin/questdb.sh
# QuestDB time-series database start/stop/status control script

local ret=1

_arguments -s -S \
  '-f[overwrite the public directory on startup]' \
  '-n[disable the HUP handler]' \
  '-c[run in container mode]' \
  '-p[enable profiling]' \
  '-d[set the QuestDB data root directory]:path:_files -/' \
  '-t[set the process label tag]:tag' \
  '1:command:(start status stop)' \
  '*:agent params:_default' && ret=0

return ret
