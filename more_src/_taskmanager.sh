#compdef taskmanager.sh
# Documentation: https://nightlies.apache.org/flink/flink-docs-stable/docs/deployment/resource-providers/standalone/overview/
# Start/stop a Flink standalone TaskManager daemon

local ret=1

_arguments -s -S \
  '1:action:(start start-foreground stop stop-all)' \
  '*-D[set a dynamic configuration property key=value]:property' \
  '*:arg:_default' && ret=0

return ret
