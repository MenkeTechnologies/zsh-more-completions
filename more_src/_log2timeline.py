#compdef log2timeline.py log2timeline

_arguments -s \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '--troubles[troubleshooting info]' \
  '(-d --debug)'{-d,--debug}'[debug]' \
  '(-q --quiet)'{-q,--quiet}'[quiet]' \
  '(-u --unattended)'{-u,--unattended}'[unattended]' \
  '--info[show info on plugins]' \
  '(--use_markdown --use-markdown)'{--use_markdown,--use-markdown}'[Markdown lists]' \
  '(--no_dependencies_check --no-dependencies-check)'{--no_dependencies_check,--no-dependencies-check}'[no deps check]' \
  '(--logfile --log_file --log-file)'{--logfile,--log_file,--log-file}'=[log file]:file:_files' \
  '(--status_view --status-view)'{--status_view,--status-view}'=[status view]:mode:(file linear none window)' \
  '(--status_view_file --status-view-file)'{--status_view_file,--status-view-file}'=[status file]:file:_files' \
  '(--status_view_interval --status-view-interval)'{--status_view_interval,--status-view-interval}'=[interval]:seconds:' \
  '--data=[data dir]:dir:_files -/' \
  '--archives=[archive types]:types:' \
  '(--artifact_filters --artifact-filters)'{--artifact_filters,--artifact-filters}'=[filter names]:names:' \
  '(--artifact_filters_file --artifact-filters_file)'{--artifact_filters_file,--artifact-filters_file}'=[filter file]:file:_files' \
  '(--artifact_definitions --artifact-definitions)'{--artifact_definitions,--artifact-definitions}'=[definitions]:path:_files' \
  '(--custom_artifact_definitions --custom-artifact-definitions)'{--custom_artifact_definitions,--custom-artifact-definitions}'=[custom defs]:path:_files' \
  '(-f --filter-file --filter_file --file-filter --file_filter)'{-f,--filter-file,--filter_file,--file-filter,--file_filter}'=[filter file]:file:_files' \
  '--hashers=[hashers]:hashers:' \
  '(--hasher_file_size_limit --hasher-file-size-limit)'{--hasher_file_size_limit,--hasher-file-size-limit}'=[bytes]:n:' \
  '--parsers=[parsers]:parsers:' \
  '(--yara_rules --yara-rules)'{--yara_rules,--yara-rules}'=[yara rules]:file:_files' \
  '--codepage=[codepage]:codepage:' \
  '--language=[language tag]:lang:' \
  '(--no_extract_winevt_resources --no-extract-winevt-resources)'{--no_extract_winevt_resources,--no-extract-winevt-resources}'[skip winevt extraction]' \
  '(-z --zone --timezone)'{-z,--zone,--timezone}'=[time zone]:tz:' \
  '(--extract_winreg_binary --extract-winreg-binary)'{--extract_winreg_binary,--extract-winreg-binary}'[extract binary registry]' \
  '(--preferred_year --preferred-year)'{--preferred_year,--preferred-year}'=[year]:year:' \
  '(--skip_compressed_streams --skip-compressed-streams)'{--skip_compressed_streams,--skip-compressed-streams}'[skip compressed]' \
  '(--partitions --partition)'{--partitions,--partition}'=[partition spec]:spec:' \
  '(--volumes --volume)'{--volumes,--volume}'=[volume spec]:spec:' \
  '(--no_vss --no-vss)'{--no_vss,--no-vss}'[skip VSS]' \
  '(--vss_only --vss-only)'{--vss_only,--vss-only}'[only VSS]' \
  '(--vss_stores --vss-stores)'{--vss_stores,--vss-stores}'=[VSS stores]:spec:' \
  '*--credential=[type:data]:cred:' \
  '(--buffer_size --buffer-size --bs)'{--buffer_size,--buffer-size,--bs}'=[bytes]:n:' \
  '(--queue_size --queue-size)'{--queue_size,--queue-size}'=[queue size]:n:' \
  '(--single_process --single-process)'{--single_process,--single-process}'[single process]' \
  '(--temporary_directory --temporary-directory)'{--temporary_directory,--temporary-directory}'=[tmp dir]:dir:_files -/' \
  '(--vfs_back_end --vfs-back-end)'{--vfs_back_end,--vfs-back-end}'=[backend]:backend:(auto fsext fsfat fshfs fsntfs tsk vsgpt)' \
  '--workers=[worker count]:n:' \
  '(--worker_memory_limit --worker-memory-limit)'{--worker_memory_limit,--worker-memory-limit}'=[bytes]:n:' \
  '(--worker_timeout --worker-timeout)'{--worker_timeout,--worker-timeout}'=[minutes]:n:' \
  '(--process_memory_limit --process-memory-limit)'{--process_memory_limit,--process-memory-limit}'=[bytes]:n:' \
  '(--sigsegv_handler --sigsegv-handler)'{--sigsegv_handler,--sigsegv-handler}'[SIGSEGV handler]' \
  '--profilers=[profilers]:list:' \
  '(--profiling_directory --profiling-directory)'{--profiling_directory,--profiling-directory}'=[dir]:dir:_files -/' \
  '(--profiling_sample_rate --profiling-sample-rate)'{--profiling_sample_rate,--profiling-sample-rate}'=[rate]:n:' \
  '(--storage_file --storage-file)'{--storage_file,--storage-file}'=[storage]:file:_files' \
  '(--storage_format --storage-format)'{--storage_format,--storage-format}'=[format]:fmt:' \
  '(--task_storage_format --task-storage-format)'{--task_storage_format,--task-storage-format}'=[format]:fmt:' \
  '*:source:_files'
