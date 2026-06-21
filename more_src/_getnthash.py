#compdef getnthash.py
# Documentation: https://github.com/dirkjanm/PKINITtools
# Recover an NT hash via U2U from a PKINIT-obtained AS-REP key

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-key+[AS REP key from gettgtpkinit.py]:key:' \
  '-dc-ip+[IP address of the domain controller]:ip:' \
  '-debug[turn DEBUG output on]' \
  '1:identity (domain/username):' && ret=0

return ret
