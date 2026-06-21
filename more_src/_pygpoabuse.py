#compdef pygpoabuse.py
# Documentation: https://github.com/Hackndo/pyGPOAbuse
# Abuse a writable GPO to run a scheduled task / command via SYSVOL

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-gpo-id+[GPO identifier]:gpo:' \
  '-taskname+[name for the scheduled task]:name:' \
  '-dc-ip+[domain controller IP]:ip:' \
  '-command+[command to execute]:command:' \
  '-hashes+[NTLM hash authentication lm:nt]:hashes:' \
  '-powershell[use PowerShell for command execution]' \
  '-description+[task description]:description:' \
  '-user[target user GPO]' \
  '-filter-enabled[enable GPO host/user targeting]' \
  '-target-dns-name+[host FQDN that should run the task]:fqdn:' \
  '-target-username+[user that processes the task (DOMAIN\\USER)]:user:' \
  '-target-user-sid+[SID of the targeted user]:sid:' \
  '--cleanup[delete the scheduled task]' \
  '--linux-exec[execute on Samba AD (Linux)]' \
  '*:target:' && ret=0

return ret
