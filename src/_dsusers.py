#compdef dsusers.py

local arguments

arguments=(
  '--sid[sid>]'
  '--guid[guid>]'
  '--name[name regexp>]'
  '--active[list only active accounts. This option cannot be used]'
  '--locked[list only locked accounts. This option cannot be used]'
  '--uac[flag combination as hex>]'
  '--locked[]'
  '--syshive[to system hive>]'
  '--lmoutfile[of the LM hash output file>]'
  '--ntoutfile[of the NT hash output file>]'
  '--pwdformat[of the hash output>]'
  '--passwordhashes[extract password hashes]'
  '--passwordhistory[extract password history]'
  '--certificates[extract certificates]'
  '--supplcreds[extract supplemental credentials (e.g.: clear text passwords]'
  '--membership[list groups of which the user is a member]'
  '--csvoutfile[of the CSV output file>]'
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s $arguments
