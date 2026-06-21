#compdef dcomexec.py
# Documentation: https://github.com/fortra/impacket/blob/master/examples/dcomexec.py
# impacket dcomexec.py: semi-interactive command execution via DCOM objects

local curcontext="$curcontext" ret=1
_arguments -C \
  '(- *)'{-h,--help}'[show help]' \
  '-share[share where the output will be grabbed from (default ADMIN$)]:share:' \
  '-nooutput[do not print output (no SMB connection created)]' \
  '-ts[add timestamp to every logging output]' \
  '-debug[turn DEBUG output ON]' \
  '-codec[encoding codec for the target output]:codec:' \
  '-object[DCOM object used to execute the shell command]:object:(ShellWindows ShellBrowserWindow MMC20)' \
  '-com-version[DCOM version, format MAJOR:MINOR e.g. 5.7]:version:' \
  '-shell-type[command processor for the semi-interactive shell]:shell:(cmd powershell)' \
  '-silentcommand[do not execute cmd.exe to run the given command]' \
  '-hashes[NTLM hashes, format LMHASH:NTHASH]:hashes:' \
  '-no-pass[do not ask for password (useful for -k)]' \
  '-k[use Kerberos authentication via ccache file]' \
  '-aesKey[AES key for Kerberos authentication (128 or 256 bits)]:hex key:' \
  '-dc-ip[IP address of the domain controller]:ip:' \
  '-A[smbclient/mount.cifs-style authentication file]:file:_files' \
  '-keytab[read keys for SPN from keytab file]:file:_files' \
  '1:target:' \
  '2:command:' && ret=0
return ret
