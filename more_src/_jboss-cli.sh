#compdef jboss-cli.sh jboss-cli
# Documentation: https://github.com/wildfly/wildfly-core/blob/main/cli/src/main/java/org/jboss/as/cli/impl/CliLauncher.java
# Reference accessed: 2026-05-19
# Verified: wildfly-core CliLauncher.java parsed argument strings.
# Removed invented --controller-agent and --quiet; added real
# -c/-D/--no-operation-validation/--bind. Prior man.archlinux-style
# docs.jboss.org confluence URL was a dead 404.

_arguments -s \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)--version[print version and exit]' \
  '(-c --connect)'{-c,--connect}'[connect to the controller on startup]' \
  '--controller=[host:port of the controller]:host:_hosts' \
  '(-u --user)'{-u,--user}'=[username]:user:_users' \
  '(-p --password)'{-p,--password}'=[password]:password:' \
  '*-D[set a system property]:property:' \
  '--gui[start the CLI in GUI mode]' \
  '--command=[execute a single command]:cmd:' \
  '--commands=[execute a comma-separated list of commands]:cmds:' \
  '--file=[read commands from a file]:file:_files' \
  '--properties=[properties file to load]:file:_files' \
  '--bind=[bind address for the CLI]:address:' \
  '--no-color-output[disable color output]' \
  '--no-local-auth[disable local authentication]' \
  '--no-operation-validation[disable client-side operation validation]' \
  '--error-on-interact[error if interaction is required]' \
  '--resolve-parameter-values[resolve parameter values before sending to controller]' \
  '--command-timeout=[command execution timeout in seconds]:secs:' \
  '--timeout=[connection timeout in milliseconds]:ms:' \
  '--echo-command[include prompt + command in the output]' \
  '--no-output-paging[disable output paging]' \
  '--output-json[output operation results in JSON]'
