#compdef ticketer.py
# Documentation: https://github.com/fortra/impacket/blob/master/examples/ticketer.py
# impacket ticketer.py: forge Kerberos golden/silver/sapphire tickets

local curcontext="$curcontext" ret=1
_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '-spn[SPN of the target service (silver ticket); omit for golden ticket]:spn:' \
  '-request[request ticket to domain and clone it (requires -user)]' \
  '-domain[fully qualified domain name (e.g. contoso.com)]:domain:' \
  '-domain-sid[domain SID of the target domain]:sid:' \
  '-aesKey[AES key used for signing the ticket (128 or 256 bits)]:hex key:' \
  '-nthash[NT hash used for signing the ticket]:hash:' \
  '-keytab[read keys for SPN from keytab file (silver ticket only)]:file:_files' \
  '-groups[comma separated list of group RIDs the user belongs to]:groups:' \
  '-user-id[user id for the user the ticket is created for]:rid:' \
  '-extra-sid[comma separated list of ExtraSids included in the PAC]:sids:' \
  '-extra-pac[populate the ticket with extra PAC (UPN_DNS)]' \
  '-old-pac[use the old PAC structure to create the ticket]' \
  '-duration[hours till the ticket expires]:hours:' \
  '-ts[add timestamp to every logging output]' \
  '-debug[turn DEBUG output ON]' \
  '-impersonate[sapphire ticket, target username to impersonate via S4U2Self+U2U]:user:' \
  '-user[domain/username used if -request is chosen]:user:' \
  '-password[password for domain/username]:password:' \
  '-hashes[NTLM hashes, format LMHASH:NTHASH]:hashes:' \
  '-dc-ip[IP address of the domain controller]:ip:' \
  '1:target username:' && ret=0
return ret
