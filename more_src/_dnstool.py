#compdef dnstool.py
# Documentation: https://github.com/dirkjanm/krbrelayx
# Add, modify or query Active Directory Integrated DNS records via LDAP

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-u --user)'{-u,--user}'+[username]:user:' \
  '(-p --password)'{-p,--password}'+[password]:password:' \
  '--forest[search in forest DNS zones]' \
  '--legacy[search in legacy DNS zones]' \
  '--zone+[DNS zone to operate on]:zone:' \
  '--print-zones[print all DNS zones]' \
  '--tcp[use LDAP over TCP]' \
  '-k[use Kerberos authentication]' \
  '-dc-ip+[domain controller IP]:ip:' \
  '-dns-ip+[DNS server IP]:ip:' \
  '-aesKey+[AES key for Kerberos]:hex key:' \
  '(-r --record)'{-r,--record}'+[target DNS record]:record:' \
  '(-a --action)'{-a,--action}'+[action to perform]:action:(add modify query remove resurrect ldapdelete)' \
  '(-t --type)'{-t,--type}'+[DNS record type]:type:(A)' \
  '(-d --data)'{-d,--data}'+[record data]:data:' \
  '--allow-multiple[allow multiple records for the same name]' \
  '--ttl+[time to live]:ttl:' \
  '*:target:' && ret=0

return ret
