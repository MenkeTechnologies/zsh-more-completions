#compdef kc.sh

local curcontext="$curcontext" state line ret=1
local -a subcommands

subcommands=(
  'start:start in production mode'
  'start-dev:start in development mode'
  'build:precompute provider/feature image'
  'export:export realm/users to file or directory'
  'import:import realm/users from file or directory'
  'show-config:print current resolved configuration'
  'tools:utility subcommands'
  'completion:generate shell completion'
  'help:show help'
)

_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '--help-all[show all options]' \
  '(-v --verbose)'{-v,--verbose}'[verbose output]' \
  '--config-file=[config file]:file:_files' \
  '--profile=[execution profile]:profile:' \
  '*-D-[set system property]:property:' \
  '1: :->subcommand' \
  '*::arg:->args' && ret=0

case $state in
  (subcommand)
    _describe -t subcommands 'kc.sh subcommand' subcommands && ret=0
    ;;
  (args)
    case $line[1] in
      (start|start-dev)
        _arguments \
          '--optimized[run optimized after build]' \
          '--hostname=[hostname]:host:_hosts' \
          '--hostname-strict=[strict hostname]:flag:(true false)' \
          '--hostname-strict-https=[strict HTTPS]:flag:(true false)' \
          '--http-enabled=[enable HTTP]:flag:(true false)' \
          '--http-port=[HTTP port]:port:' \
          '--https-port=[HTTPS port]:port:' \
          '--db=[database vendor]:vendor:(dev-file dev-mem mariadb mssql mysql oracle postgres)' \
          '--db-url=[database JDBC URL]:url:' \
          '--db-username=[database username]:user:_users' \
          '--db-password=[database password]:password:' \
          '--features=[enable features]:features:' \
          '--features-disabled=[disabled features]:features:' \
          '--log=[log handlers]:handlers:' \
          '--log-level=[log level]:level:' \
          '--proxy-headers=[proxy headers]:headers:(forwarded xforwarded)' \
          '--metrics-enabled=[enable metrics]:flag:(true false)' \
          '--health-enabled=[enable health]:flag:(true false)' && ret=0
        ;;
      (build)
        _arguments \
          '--db=[database vendor]:vendor:(dev-file dev-mem mariadb mssql mysql oracle postgres)' \
          '--features=[enable features]:features:' \
          '--features-disabled=[disabled features]:features:' \
          '--health-enabled=[enable health]:flag:(true false)' \
          '--metrics-enabled=[enable metrics]:flag:(true false)' \
          '--cache=[cache mode]:mode:(local ispn)' \
          '--cache-stack=[cache stack]:stack:' \
          '--transaction-xa-enabled=[enable XA]:flag:(true false)' && ret=0
        ;;
      (export)
        _arguments \
          '--dir=[export directory]:dir:_files -/' \
          '--file=[export file]:file:_files' \
          '--users=[user export mode]:mode:(different_files skip realm_file same_file)' \
          '--users-per-file=[users per file]:n:' \
          '--realm=[realm to export]:realm:' \
          '--optimized[skip rebuild]' && ret=0
        ;;
      (import)
        _arguments \
          '--dir=[import directory]:dir:_files -/' \
          '--file=[import file]:file:_files' \
          '--override=[override existing]:flag:(true false)' \
          '--optimized[skip rebuild]' && ret=0
        ;;
      (tools)
        _values 'tools subcommand' 'completion' && ret=0
        ;;
    esac
    ;;
esac

return ret
