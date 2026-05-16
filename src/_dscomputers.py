#compdef dscomputers.py
# Documentation: https://man.archlinux.org/search?q=dscomputers.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '--name[name regexp>]'
  '--syshive[to system hive>]'
  '--lmoutfile[to the LM hash output file>]'
  '--ntoutfile[to the NT hash output file>]'
  '--pwdformat[of the hash output>]'
  '--passwordhashes[dump password hashes]'
  '--passwordhistory[dump password history]'
  '--supplcreds[dump supplemental credentials]'
  '--bitlocker[extract Bitlocker recovery information (recovery password)]'
  '--csvoutfile[of the CSV output file>]'
  '--debug[turn on detailed error messages and stack trace]'
  '*:filename:_files'
)

_arguments -s -S $arguments
