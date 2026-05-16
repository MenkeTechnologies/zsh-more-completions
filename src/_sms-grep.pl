#compdef sms-grep.pl
# Documentation: https://man.archlinux.org/search?q=sms-grep.pl
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '-h[print help information and exit]'
  '-c[. Configuration file containing db schema.]'
  '-f[... File to be parsed (eg database, journal).]'
  '-s[Phone number(s) to be searched for.]'
  '-p[... Number of bytes between last cell header field and phone number (should be 1 or 2 for Android sms).]'
  '-o[. Optional Tab separated output file. Will overwrite an existing file.]'
  '*:filename:_files'
)

_arguments -s -S $arguments
