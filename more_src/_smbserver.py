#compdef smbserver.py
# Documentation: https://github.com/fortra/impacket/blob/master/examples/smbserver.py
# impacket smbserver.py: simple SMB server for sharing a folder

local curcontext="$curcontext" ret=1
_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '-comment[share comment to display when asked for shares]:comment:' \
  '-username[username to authenticate clients]:username:' \
  '-password[password for the username]:password:' \
  '-computeraccountname[computer account name for signing via NetLogon/Kerberos]:name:' \
  '-computeraccounthash[computer account NT hash for signing via NetLogon/Kerberos]:hash:' \
  '-computeraccountaes[computer account AES key for signing via NetLogon/Kerberos]:key:' \
  '-computeraccountpassword[computer account password for signing via NetLogon/Kerberos]:password:' \
  '-computeraccountdomain[computer account domain for signing via NetLogon/Kerberos]:domain:' \
  '-dc-ip[IP of domain controller for signing via NetLogon/Kerberos]:ip:' \
  '-hashes[NTLM hashes for the username, format LMHASH:NTHASH]:hashes:' \
  '-ts[add timestamp to every logging output]' \
  '-debug[turn DEBUG output ON]' \
  '(-ip --interface-address)'{-ip,--interface-address}'[IP address of listening interface]:ip:' \
  '-readonly[only allow reading of files]' \
  '-disablekerberos[do not offer Kerberos authentication]' \
  '-disablentlm[do not offer NTLM authentication]' \
  '-port[TCP port for listening connections (default 445)]:port:' \
  '-dropssp[disable NTLM ESS/SSP during negotiation]' \
  '(-6 --ipv6)'{-6,--ipv6}'[listen on IPv6]' \
  '-smb2support[SMB2 support (experimental)]' \
  '-outputfile[output file to log smbserver messages]:file:_files' \
  '1:shareName:' \
  '2:sharePath:_files -/' && ret=0
return ret
