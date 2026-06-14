#compdef kc.sh
# Documentation: https://www.keycloak.org/server/configuration
# Reference accessed: 2026-05-19
# Verified: upstream keycloak Main.java picocli subcommands list
# (Build, Start, StartDev, Export, Import, ShowConfig, Tools,
# BootstrapAdmin, UpdateCompatibility) + Main.java @Option set.
# Fixed from prior file: removed fake top-level completion/help
# commands; added bootstrap-admin / update-compatibility; corrected
# Main options to real -pf/--profile, -cf/--config-file, -v.

local curcontext="$curcontext" state line ret=1
local -a subcommands

subcommands=(
  'start:start the server in production mode'
  'start-dev:start the server in development mode'
  'build:create an optimized server image for the chosen features/providers'
  'export:export data from realms to a file or directory'
  'import:import data from a directory or file'
  'show-config:print the current configuration'
  'tools:utilities for use and maintenance'
  'bootstrap-admin:commands for bootstrapping admin access'
  'update-compatibility:commands for checking rolling-update compatibility'
)

_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '--help-all[show all available options]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '(-v --verbose)'{-v,--verbose}'[print out error details when errors occur]' \
  '(-pf --profile)'{-pf,--profile}'=[set the profile, e.g. dev/prod]:profile:' \
  '(-cf --config-file)'{-cf,--config-file}'=[set the path to a configuration file]:file:_files' \
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
          '--optimized[run the server without rebuilding (use a prior build)]' \
          '--hostname=[address at which is the server exposed]:host:_hosts' \
          '--http-enabled=[enables the HTTP listener]:flag:(true false)' \
          '--http-port=[the used HTTP port]:port:' \
          '--https-port=[the used HTTPS port]:port:' \
          '--db=[the database vendor]:vendor:(dev-file dev-mem mariadb mssql mysql oracle postgres)' \
          '--db-url=[the full database JDBC URL]:url:' \
          '--db-username=[the username of the database user]:user:_users' \
          '--db-password=[the password of the database user]:password:' \
          '--features=[enables a set of one or more features]:features:' \
          '--features-disabled=[disables a set of one or more features]:features:' \
          '--log=[enable one or more log handlers in a comma-separated list]:handlers:' \
          '--log-level=[the log level of the root category or a comma-separated list]:level:' \
          '--metrics-enabled=[enables the metrics endpoint]:flag:(true false)' \
          '--health-enabled=[enables the health endpoints]:flag:(true false)' && ret=0
        ;;
      (build)
        _arguments \
          '--db=[the database vendor]:vendor:(dev-file dev-mem mariadb mssql mysql oracle postgres)' \
          '--features=[enables a set of one or more features]:features:' \
          '--features-disabled=[disables a set of one or more features]:features:' \
          '--health-enabled=[enables the health endpoints]:flag:(true false)' \
          '--metrics-enabled=[enables the metrics endpoint]:flag:(true false)' \
          '--cache=[defines the cache mechanism for high-availability]:mode:(local ispn)' \
          '--cache-stack=[define the default stack to use for cluster communication]:stack:' && ret=0
        ;;
      (export)
        _arguments \
          '--dir=[set the path to a directory where files will be created]:dir:_files -/' \
          '--file=[set the path to a file that will be created]:file:_files' \
          '--users=[strategy to export users]:mode:(skip realm_file same_file different_files)' \
          '--users-per-file=[set the number of users per file]:n:' \
          '--realm=[set the name of the realm to export]:realm:' \
          '--optimized[run the server without rebuilding]' && ret=0
        ;;
      (import)
        _arguments \
          '--dir=[set the path to a directory where files will be read]:dir:_files -/' \
          '--file=[set the path to a file that will be read]:file:_files' \
          '--override=[set if existing data should be overwritten]:flag:(true false)' \
          '--optimized[run the server without rebuilding]' && ret=0
        ;;
      (tools)
        _values 'tools subcommand' \
          'completion[generate a shell completion script]' \
          'windows-service[install or uninstall the Windows service]' \
          'build-password-denylist[build a password blacklist file]' && ret=0
        ;;
      (bootstrap-admin)
        _values 'bootstrap-admin subcommand' \
          'user[create a temporary admin user]' \
          'service[create a temporary admin service account]' && ret=0
        ;;
    esac
    ;;
esac

return ret
