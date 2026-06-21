#compdef gMSADumper.py
# Documentation: https://github.com/micahvandeusen/gMSADumper
# Read and parse gMSA password blobs accessible to the current user

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-u+[username]:user:' \
  '-p+[password (supports hash for pass-the-hash)]:password:' \
  '-d+[domain name]:domain:' \
  '-l+[LDAP server]:server:' \
  '-k[use Kerberos authentication]' && ret=0

return ret
