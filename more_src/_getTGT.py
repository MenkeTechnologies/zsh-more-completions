#compdef getTGT.py
# Documentation: https://github.com/fortra/impacket/blob/master/examples/getTGT.py
# impacket getTGT.py: request a Kerberos TGT and save it in ccache format

local curcontext="$curcontext" ret=1
_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '-ts[add timestamp to every logging output]' \
  '-debug[turn DEBUG output ON]' \
  '-hashes[NTLM hashes, format LMHASH:NTHASH]:hashes:' \
  '-no-pass[do not ask for password (useful for -k)]' \
  '-k[use Kerberos authentication from ccache file]' \
  '-aesKey[AES key for Kerberos authentication (128 or 256 bits)]:hex key:' \
  '-dc-ip[IP address of the domain controller]:ip:' \
  '-service[request a service ticket directly through an AS-REQ]:service:' \
  '-principalType[PrincipalType of the token (default NT_PRINCIPAL)]:type:(NT_UNKNOWN NT_PRINCIPAL NT_SRV_INST NT_SRV_HST NT_SRV_XHST NT_UID NT_SMTP_NAME NT_ENTERPRISE NT_WELLKNOWN NT_SRV_HST_DOMAIN NT_MS_PRINCIPAL NT_MS_PRINCIPAL_AND_ID NT_ENT_PRINCIPAL_AND_ID)' \
  '1:identity:' && ret=0
return ret
