#compdef targetedKerberoast.py
# Documentation: https://github.com/ShutdownRepo/targetedKerberoast
# Targeted Kerberoasting by temporarily setting an SPN on writable accounts

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-v --verbose)'{-v,--verbose}'[verbosity level]' \
  '(-q --quiet)'{-q,--quiet}'[show no information at all]' \
  '(-D --target-domain)'{-D,--target-domain}'+[domain to query/request if different]:domain:' \
  '(-U --users-file)'{-U,--users-file}'+[file with user per line]:file:_files' \
  '--request-user+[request TGS for specified username]:user:' \
  '(-o --output-file)'{-o,--output-file}'+[output filename for ciphers]:file:_files' \
  '(-f --output-format)'{-f,--output-format}'+[output format]:format:(hashcat john)' \
  '--use-ldaps[use LDAPS instead of LDAP]' \
  '--only-abuse[focus only on targeted Kerberoasting]' \
  '--no-abuse[do not attempt targeted Kerberoasting]' \
  '--dc-ip+[IP address of domain controller or KDC]:ip:' \
  '(-d --domain)'{-d,--domain}'+[FQDN domain to authenticate to]:domain:' \
  '(-u --user)'{-u,--user}'+[user to authenticate with]:user:' \
  '(-k --kerberos)'{-k,--kerberos}'[use Kerberos authentication]' \
  '--no-pass[do not ask for password]' \
  '(-p --password)'{-p,--password}'+[password to authenticate with]:password:' \
  '(-H --hashes)'{-H,--hashes}'+[NT/LM hashes LMhash:NThash]:hashes:' \
  '--aes-key+[AES key for Kerberos]:hex:' && ret=0

return ret
