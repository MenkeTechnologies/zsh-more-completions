#compdef sms-grep.pl

local arguments

arguments=(
  '-h[|help ... Help (print this information). Does not run anything else.]'
  '-c[. Configuration file containing db schema.]'
  '-f[... File to be parsed (eg database, journal).]'
  '-s[.. Phone number(s) to be searched for.]'
  '-p[... Number of bytes between last cell header field and phone number (should be 1 or 2 for Android sms).]'
  '-o[. Optional Tab separated output file. Will overwrite an existing file.]'
  '*:filename:_files'
)

_arguments -s $arguments
