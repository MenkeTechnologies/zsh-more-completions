#compdef addspn.py
# Documentation: https://github.com/dirkjanm/krbrelayx
# Add, remove or query servicePrincipalName attributes via LDAP

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-u --user)'{-u,--user}'+[username]:user:' \
  '(-p --password)'{-p,--password}'+[password]:password:' \
  '(-t --target)'{-t,--target}'+[computer object to target]:target:' \
  '(-s --spn)'{-s,--spn}'+[servicePrincipalName to add]:spn:' \
  '(-r --remove)'{-r,--remove}'[remove the SPN instead of adding it]' \
  '(-q --query)'{-q,--query}'[query the current SPNs]' \
  '(-a --additional)'{-a,--additional}'[add SPN via msDS-AdditionalDnsHostName]' \
  '*:target:' && ret=0

return ret
