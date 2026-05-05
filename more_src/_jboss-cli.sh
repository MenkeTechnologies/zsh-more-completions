#compdef jboss-cli.sh jboss-cli

_arguments -s \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)--version[show version]' \
  '--connect[connect to controller on startup]' \
  '--controller=[host:port of controller]:host:_hosts' \
  '--user=[username]:user:_users' \
  '--password=[password]:password:' \
  '--gui[start GUI]' \
  '--command=[execute one command]:cmd:' \
  '--commands=[execute comma-separated commands]:cmds:' \
  '--file=[read commands from file]:file:_files' \
  '--properties=[properties file]:file:_files' \
  '--no-color-output[disable color output]' \
  '--no-local-auth[disable local auth]' \
  '--error-on-interact[error if interaction needed]' \
  '--controller-agent[enable controller agent]' \
  '--resolve-parameter-values[resolve parameter values]' \
  '--command-timeout=[command timeout seconds]:secs:' \
  '--timeout=[timeout milliseconds]:ms:' \
  '--echo-command[echo executed commands]' \
  '--no-output-paging[disable output paging]' \
  '--output-json[JSON output]' \
  '--quiet[quiet mode]'
