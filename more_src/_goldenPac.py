#compdef goldenPac.py
# Documentation: https://github.com/fortra/impacket/blob/master/examples/goldenPac.py
# impacket goldenPac.py: MS14-068 exploit, forges a golden ticket and PSEXECs the target

local curcontext="$curcontext" ret=1
_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '-ts[add timestamp to every logging output]' \
  '-debug[turn DEBUG output ON]' \
  '-c[upload the filename for later execution]:pathname:_files' \
  '-w[write the golden ticket in ccache format into the file]:pathname:_files' \
  '-dc-ip[IP address of the domain controller (needed to get the user SID)]:ip:' \
  '-target-ip[IP address of the target host to attack]:ip:' \
  '-hashes[NTLM hashes, format LMHASH:NTHASH]:hashes:' \
  '1:target:' \
  '*:command:' && ret=0
return ret
