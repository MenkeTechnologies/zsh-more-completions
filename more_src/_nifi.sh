#compdef nifi.sh

local curcontext="$curcontext" state line ret=1
local -a subcommands

subcommands=(
  'start:start NiFi'
  'stop:stop NiFi'
  'restart:restart NiFi'
  'run:run NiFi in foreground'
  'status:show NiFi status'
  'install:install as service (optionally with custom name)'
  'remove:remove service'
  'dump:print thread dump'
  'diagnostics:collect diagnostics info'
  'set-single-user-credentials:set username/password for single-user auth'
  'set-sensitive-properties-key:set the sensitive properties key'
  'set-sensitive-properties-algorithm:set sensitive properties algorithm'
  'env:show environment variables'
  'help:show help'
)

_arguments -C \
  '1: :->subcommand' \
  '*::arg:->args' && ret=0

case $state in
  (subcommand)
    _describe -t subcommands 'nifi.sh subcommand' subcommands && ret=0
    ;;
  (args)
    case $line[1] in
      (install)
        _arguments \
          '1::service name:' && ret=0
        ;;
      (set-single-user-credentials)
        _arguments \
          '1:username:_users' \
          '2:password:' && ret=0
        ;;
      (set-sensitive-properties-key)
        _arguments \
          '1:key (>= 12 chars):' && ret=0
        ;;
      (set-sensitive-properties-algorithm)
        _arguments \
          '1:algorithm:(NIFI_PBKDF2_AES_GCM_256 NIFI_ARGON2_AES_GCM_256 NIFI_BCRYPT_AES_GCM_256 NIFI_SCRYPT_AES_GCM_256)' && ret=0
        ;;
      (diagnostics)
        _arguments \
          '--verbose[verbose output]' \
          '*:output file:_files' && ret=0
        ;;
    esac
    ;;
esac

return ret
