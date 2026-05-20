#compdef psort.py psort
# Documentation: https://plaso.readthedocs.io/en/latest/sources/user/Using-psort.html
# Reference accessed: 2026-05-20
# Verified: upstream docs at the URL above.

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '--troubles[troubleshooting info]' \
  '--analysis=[analysis plugins]:plugins:' \
  '(--temporary_directory --temporary-directory)'{--temporary_directory,--temporary-directory}'=[tmp dir]:dir:_files -/' \
  '(--worker_memory_limit --worker-memory-limit)'{--worker_memory_limit,--worker-memory-limit}'=[bytes]:n:' \
  '(--worker_timeout --worker-timeout)'{--worker_timeout,--worker-timeout}'=[minutes]:n:' \
  '(--process_memory_limit --process-memory-limit)'{--process_memory_limit,--process-memory-limit}'=[bytes]:n:' \
  '(--logfile --log_file --log-file)'{--logfile,--log_file,--log-file}'=[log file]:file:_files' \
  '(-d --debug)'{-d,--debug}'[debug]' \
  '(-q --quiet)'{-q,--quiet}'[quiet]' \
  '(-u --unattended)'{-u,--unattended}'[unattended]' \
  '(--status_view --status-view)'{--status_view,--status-view}'=[status view]:mode:(file linear none window)' \
  '(--status_view_file --status-view-file)'{--status_view_file,--status-view-file}'=[status file]:file:_files' \
  '(--status_view_interval --status-view-interval)'{--status_view_interval,--status-view-interval}'=[interval]:seconds:' \
  '--slice=[time slice]:datetime:' \
  '(--slice_size --slice-size)'{--slice_size,--slice-size}'=[minutes]:n:' \
  '--slicer[slice around match]' \
  '--data=[data dir]:dir:_files -/' \
  '(-a --include_all --include-all)'{-a,--include_all,--include-all}'[include all events]' \
  '--language=[language tag]:lang:' \
  '(--additional_fields --additional-fields)'{--additional_fields,--additional-fields}'=[fields]:fields:' \
  '(--custom_fields --custom-fields)'{--custom_fields,--custom-fields}'=[name:value list]:fields:' \
  '(--custom_formatter_definitions --custom-formatter-definitions)'{--custom_formatter_definitions,--custom-formatter-definitions}'=[YAML formatter]:file:_files' \
  '(--dynamic_time --dynamic-time)'{--dynamic_time,--dynamic-time}'[dynamic time format]' \
  '(--output_time_zone --output-time-zone)'{--output_time_zone,--output-time-zone}'=[output tz]:tz:' \
  '(-o --output_format --output-format)'{-o,--output_format,--output-format}'=[output format]:fmt:(dynamic json json_line kml l2tcsv l2ttln null opensearch opensearch_ts rawpy tln xlsx)' \
  '(-w --write)'{-w,--write}'=[output file]:file:_files' \
  '--profilers=[profilers]:list:' \
  '(--profiling_directory --profiling-directory)'{--profiling_directory,--profiling-directory}'=[dir]:dir:_files -/' \
  '(--profiling_sample_rate --profiling-sample-rate)'{--profiling_sample_rate,--profiling-sample-rate}'=[rate]:n:' \
  '*:storage file or filter:_files'
