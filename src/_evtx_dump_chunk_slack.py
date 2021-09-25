#compdef evtx_dump_chunk_slack.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
