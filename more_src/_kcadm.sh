#compdef kcadm.sh
# Documentation: https://github.com/keycloak/keycloak/blob/main/integration/client-cli/admin-cli/src/main/java/org/keycloak/client/admin/cli/commands/KcAdmCmd.java
# Reference accessed: 2026-05-19
# Verified: upstream docs at the URL above (picocli command/subcommand defs).

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
        _values 'config target' 'credentials' 'truststore' && ret=0
        ;;
      (create|get|update|delete)
        _values 'endpoint' \
          'users' 'clients' 'roles' 'roles-by-id' 'groups' 'realms' 'components' \
          'authentication/flows' 'identity-provider/instances' 'client-scopes' \
          'sessions' 'partial-export' 'partial-import' \
          'attack-detection/brute-force/users' 'authentication/required-actions' \
          'authentication/config' && ret=0
        ;;
      (set-password)
        _arguments \
          '--username=[username]:user:_users' \
          '--userid=[user id]:id:' \
          '--new-password=[new password]:password:' \
          '--temporary[temporary password]' \
          '-r[realm]:realm:' && ret=0
        ;;
    esac
    ;;
esac

return ret
