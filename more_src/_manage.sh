#compdef manage.sh
# Documentation: https://github.com/8bit-wraith/8q-is/blob/96b1f24d28fc2a5222a918994be3ea71b18fd21f/scripts/manage.sh
# Reference accessed: 2026-05-19
# Verified: upstream docs at the URL above (subcommand list parsed from
# show_help() in the source).
# Note: STUB-ish. "manage.sh" is not a single canonical binary; this completion
# targets the 8q-is M8C Nexus management script referenced above. Other
# projects ship their own manage.sh with unrelated subcommands.

local curcontext="$curcontext" state line ret=1
local -a commands=(
  'build:build the project in release mode'
  'test:run all tests'
  'clean:clean build artifacts'
  'run:run the server in foreground'
  'start:start server in background'
  'stop:stop background server'
  'restart:restart background server'
  'dev:run in development mode with auto-reload'
  'status:check if server is running'
  'lint:run clippy linter'
  'format:format code with rustfmt'
  'demo:upload a demo file'
  'docker:build Docker container'
  'completions:generate shell completions'
  'help:show help message'
)

_arguments -C \
  '-n[run in non-interactive mode]' \
  '1:command:->cmd' \
  '*::arg:->args' && ret=0

case $state in
  cmd) _describe -t commands 'manage.sh command' commands && ret=0 ;;
esac

return ret
