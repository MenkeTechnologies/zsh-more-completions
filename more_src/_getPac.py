#compdef getPac.py
# Documentation: https://github.com/fortra/impacket/blob/master/examples/getPac.py
# impacket getPac.py: retrieve the PAC of a target user

local curcontext="$curcontext" ret=1
_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '-targetUser[the target user to retrieve the PAC of]:user:' \
  '-debug[turn DEBUG output ON]' \
  '-ts[add timestamp to every logging output]' \
  '-hashes[NTLM hashes, format LMHASH:NTHASH]:hashes:' \
  '1:credentials:' && ret=0
return ret
