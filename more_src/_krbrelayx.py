#compdef krbrelayx.py
# Documentation: https://github.com/dirkjanm/krbrelayx
# Kerberos relay and unconstrained delegation abuse toolkit

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-debug[turn on debug output]' \
  '(-t --target)'{-t,--target}'+[target to relay to]:target:' \
  '-tf+[file with targets]:file:_files' \
  '-w[watch for new targets]' \
  '(-ip --interface-ip)'{-ip,--interface-ip}'+[IP to bind sockets to]:ip:' \
  '-r+[SMB server to relay to]:server:' \
  '(-l --lootdir)'{-l,--lootdir}'+[loot directory]:dir:_files -/' \
  '(-f --format)'{-f,--format}'+[credential cache format]:format:(ccache kirbi)' \
  '-codec+[codec for output]:codec:' \
  '-no-smb2support[disable SMB2 support]' \
  '(-wh --wpad-host)'{-wh,--wpad-host}'+[WPAD host]:host:' \
  '(-wa --wpad-auth-num)'{-wa,--wpad-auth-num}'+[WPAD auth request count]:num:' \
  '(-6 --ipv6)'{-6,--ipv6}'[listen on IPv6]' \
  '(-p --krbpass)'{-p,--krbpass}'+[Kerberos password]:password:' \
  '(-hp --krbhexpass)'{-hp,--krbhexpass}'+[Kerberos hex password]:hexpassword:' \
  '(-s --krbsalt)'{-s,--krbsalt}'+[Kerberos salt username]:username:' \
  '-hashes+[NTLM hashes LMHASH:NTHASH]:hashes:' \
  '-aesKey+[AES key for Kerberos]:hex key:' \
  '-dc-ip+[domain controller IP]:ip:' \
  '-e+[executable to drop]:file:_files' \
  '-c+[command to execute]:command:' \
  '--enum-local-admins[enumerate local admins]' \
  '--no-dump[do not dump LDAP domain info]' \
  '--no-da[do not add a domain admin]' \
  '--no-acl[do not perform ACL attacks]' \
  '--no-validate-privs[do not validate privileges]' \
  '--escalate-user+[user to escalate]:user:' \
  '--add-computer[add a new computer account]' \
  '--delegate-access[delegate access to attacker computer]' \
  '--adcs[enable AD CS relay attack]' \
  '--template+[certificate template]:template:' \
  '(-v --victim)'{-v,--victim}'+[victim target]:target:' \
  '*:target:' && ret=0

return ret
