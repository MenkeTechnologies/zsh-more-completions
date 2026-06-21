#compdef start-thriftserver.sh
# Documentation: https://spark.apache.org/docs/latest/sql-distributed-sql-engine.html
# Start the Spark SQL Thrift JDBC/ODBC server (accepts spark-submit options)

local ret=1

_arguments -s -S \
  '--help[show help for all available options]' \
  '*--hiveconf[set a Hive configuration property=value]:property' \
  '--master[Spark master URL to connect to]:master' \
  '--conf[set an arbitrary Spark configuration property key=value]:property' \
  '--executor-memory[memory per executor e.g. 1g]:mem' \
  '--driver-memory[memory for the driver process e.g. 1g]:mem' \
  '--name[name of the application]:name' \
  '*:arg:_default' && ret=0

return ret
