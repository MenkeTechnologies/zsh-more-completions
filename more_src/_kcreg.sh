#compdef kcreg.sh

local curcontext="$curcontext" state line ret=1
local -a subcommands

subcommands=(
  'config:configure credentials, tokens, or truststore'
  'create:create a client'
  'get:get a client'
  'update:update a client'
  'delete:delete a client'
  'attrs:list settable client attributes'
  'update-token:refresh registration access token'
  'completion:generate shell completion'
  'help:show help'
)

_arguments -C \
  '(- *)--help[show help]' \
  '--server=[Keycloak server URL]:url:' \
  '--realm=[realm]:realm:' \
  '--user=[username]:user:_users' \
  '--password=[password]:password:' \
  '--client=[clientId]:client:' \
  '--secret=[client secret]:secret:' \
  '--token=[bearer or initial access token]:token:' \
  '--config=[config file]:file:_files' \
  '--no-config[do not use config file]' \
  '--truststore=[truststore]:file:_files' \
  '--trustpass=[truststore password]:password:' \
  '-x[print stack on error]' \
  '1: :->subcommand' \
  '*::arg:->args' && ret=0

case $state in
  (subcommand)
    _describe -t subcommands 'kcreg.sh subcommand' subcommands && ret=0
    ;;
  (args)
    case $line[1] in
      (config)
        _values 'config target' \
          'credentials' 'initial-token' 'registration-token' 'truststore' && ret=0
        ;;
    esac
    ;;
esac

return ret
