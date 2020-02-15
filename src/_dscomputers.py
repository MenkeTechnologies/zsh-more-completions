#compdef dscomputers.py

local arguments

arguments=(
  '--name[name regexp>]'
  '--syshive[to system hive>]'
  '--lmoutfile[to the LM hash output file>]'
  '--ntoutfile[to the NT hash output file>]'
  '--pwdformat[of the hash output>]'
  '--passwordhashes[]'
  '--passwordhistory[]'
  '--supplcreds[]'
  '--bitlocker[extract Bitlocker recovery information (recovery password)]'
  '--csvoutfile[of the CSV output file>]'
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s $arguments
