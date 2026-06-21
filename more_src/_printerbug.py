#compdef printerbug.py
# Documentation: https://github.com/dirkjanm/krbrelayx
# Trigger SpoolService bug to coerce authentication from a target

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-target-file+[file with targets]:file:_files' \
  '-port+[destination port]:port:' \
  '-hashes+[NTLM hashes LMHASH:NTHASH]:hashes:' \
  '-no-pass[do not prompt for password]' \
  '-k[use Kerberos authentication]' \
  '-dc-ip+[domain controller IP]:ip:' \
  '-target-ip+[target IP]:ip:' \
  '*:target:' && ret=0

return ret
