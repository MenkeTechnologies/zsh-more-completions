#compdef acme.sh

# Zsh completion for acme.sh - ACME protocol client

local curcontext="$curcontext" state line ret=1

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)--version[show version]' \
  '--issue[issue a certificate]' \
  '--renew[renew a certificate]' \
  '--revoke[revoke a certificate]' \
  '--install-cert[install certificate to specified path]' \
  '--deploy[deploy certificate using deploy hook]' \
  '--list[list certificates]' \
  '--remove[remove a certificate]' \
  '--info[show certificate info]' \
  '--install[install acme.sh]' \
  '--uninstall[uninstall acme.sh]' \
  '--upgrade[upgrade acme.sh]' \
  '--cron[install/run renewal cron job]' \
  '*-d+[domain name]:domain' \
  '-w+[webroot path]:directory:_directories' \
  '--dns=[DNS API plugin]:dns plugin' \
  '--standalone[use standalone mode]' \
  '--alpn[use TLS-ALPN-01 challenge]' \
  '--stateless[use stateless mode]' \
  '--nginx[use nginx mode]' \
  '--apache[use apache mode]' \
  '--cert-file=[certificate file path]:file:_files' \
  '--key-file=[key file path]:file:_files' \
  '--ca-file=[CA certificate file path]:file:_files' \
  '--fullchain-file=[full chain file path]:file:_files' \
  '--reloadcmd=[command to reload service]:command' \
  '--server=[ACME server URL]:url' \
  '--keylength=[key length or EC curve]:length:(2048 3072 4096 ec-256 ec-384)' \
  '--accountemail=[account email]:email' \
  '--force[force operation]' \
  '--staging[use the staging server]' \
  '--debug[enable debug mode]' \
  '--output-insecure[output insecure info to syslog]' \
  '--log=[log file]:file:_files' \
  '--log-level=[log level]:level:(1 2)' \
  '--syslog=[syslog level]:level:(0 1 2 3 4 5 6 7)' \
  '--home=[set the home directory]:directory:_directories' \
  && ret=0

return ret
