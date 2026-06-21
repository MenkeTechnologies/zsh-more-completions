#compdef raiseChild.py
# Documentation: https://github.com/fortra/impacket/blob/master/examples/raiseChild.py
# impacket raiseChild.py: automated child-to-parent domain privilege escalation

local curcontext="$curcontext" ret=1
_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '-ts[add timestamp to every logging output]' \
  '-debug[turn DEBUG output ON]' \
  '-w[write the golden ticket in ccache format into the file]:pathname:_files' \
  '-target-exec[host to PSEXEC against once the main attack finishes]:target address:' \
  '-targetRID[target user RID to dump credentials (default 500)]:rid:' \
  '-hashes[NTLM hashes, format LMHASH:NTHASH]:hashes:' \
  '-no-pass[do not ask for password (useful for -k)]' \
  '-k[use Kerberos authentication from ccache file]' \
  '-aesKey[AES key for Kerberos authentication (128 or 256 bits)]:hex key:' \
  '1:target:' && ret=0
return ret
