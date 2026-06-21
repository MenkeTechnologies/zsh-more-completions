#compdef certi.py
# Documentation: https://github.com/zer1t0/certi
# Request and enumerate AD CS certificates and templates

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-k[use Kerberos authentication]' \
  '-n[use no password]' \
  '--alt-name+[alternative subject name]:name:' \
  '--template+[certificate template]:template:' \
  '--on-behalf+[request certificate on behalf of another user]:user:' \
  '--enroll-cert+[enrollment agent certificate]:file:_files' \
  '--enroll-cert-pw+[enrollment certificate password]:password:' \
  '--class+[filter by class]:class:(service ca)' \
  '--dc-ip+[domain controller IP]:ip:' \
  '--vuln[show vulnerable templates]' \
  '--enable[show enabled templates]' \
  '*:command:(req list)' && ret=0

return ret
