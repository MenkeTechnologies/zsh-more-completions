#compdef kcadm.sh

local curcontext="$curcontext" state line ret=1
local -a subcommands

subcommands=(
  'config:configure credentials and truststore'
  'create:create a new resource'
  'get:get a resource'
  'update:update a resource'
  'delete:delete a resource'
  'get-roles:list roles for a user/group/client'
  'add-roles:add roles to a user/group/client'
  'remove-roles:remove roles from a user/group/client'
  'set-password:set or reset a user password'
  'reset-password:reset a user password'
  'get-events:list realm events'
  'update-events:update events config'
  'push-realm-events:push events to remote'
  'add-permissions:add permissions'
  'remove-permissions:remove permissions'
  'attrs:list attributes'
  'completion:generate shell completion'
  'help:show help'
)

_arguments -C \
  '(- *)--help[show help]' \
  '--server=[Keycloak server URL]:url:' \
  '--realm=[realm to authenticate against]:realm:' \
  '--user=[username]:user:_users' \
  '--password=[password]:password:' \
  '--client=[clientId]:client:' \
  '--secret=[client secret]:secret:' \
  '--keystore=[keystore]:file:_files' \
  '--storepass=[keystore password]:password:' \
  '--keypass=[key password]:password:' \
  '--alias=[key alias]:alias:' \
  '--truststore=[truststore]:file:_files' \
  '--trustpass=[truststore password]:password:' \
  '--config=[config file]:file:_files' \
  '--no-config[do not use config file]' \
  '--token=[bearer token]:token:' \
  '--client-secret=[client secret]:secret:' \
  '-x[print stack on error]' \
  '1: :->subcommand' \
  '*::arg:->args' && ret=0

case $state in
  (subcommand)
    _describe -t subcommands 'kcadm.sh subcommand' subcommands && ret=0
    ;;
  (args)
    case $line[1] in
      (config)
        _values 'config target' 'credentials' 'truststore' 'initial-token' 'registration-token' && ret=0
        ;;
      (create|get|update|delete)
        _values 'endpoint' \
          'users' 'clients' 'roles' 'roles-by-id' 'groups' 'realms' 'components' \
          'authentication/flows' 'identity-provider/instances' 'client-scopes' \
          'client-templates' 'sessions' 'partial-export' 'partial-import' \
          'attack-detection/brute-force/users' 'authentication/required-actions' \
          'authentication/config' && ret=0
        ;;
      (set-password|reset-password)
        _arguments \
          '--username=[username]:user:_users' \
          '--userid=[user id]:id:' \
          '--new-password=[new password]:password:' \
          '--temporary[temporary password]' \
          '-r[realm]:realm:' && ret=0
        ;;
      (completion)
        _values 'shell' 'bash' 'zsh' && ret=0
        ;;
    esac
    ;;
esac

return ret
