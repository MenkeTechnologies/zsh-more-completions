#compdef standalone-job.sh
# Documentation: https://nightlies.apache.org/flink/flink-docs-stable/docs/deployment/resource-providers/standalone/overview/
# Start/stop a Flink standalone application-mode JobManager daemon

local ret=1

_arguments -s -S \
  '1:action:(start start-foreground stop stop-all)' \
  '--job-classname[fully qualified class name of the application entry point]:class' \
  '--jars[comma-separated artifacts to fetch via the artifact fetching mechanism]:jars' \
  '*-D[set a dynamic configuration property key=value]:property' \
  '*:arg:_default' && ret=0

return ret
