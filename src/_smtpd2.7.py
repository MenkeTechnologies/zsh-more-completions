#compdef smtpd2.7.py

local arguments

arguments=(
  '--nosetuid[]'
  '-n[this program generally tries to setuid `nobody, unless this flag is]'
  '--version[]'
  '-V[print the version number and exit.]'
  '--class[]'
  '-c[use `classname as the concrete SMTP proxy class. Uses `PureProxy by]'
  '--debug[]'
  '-d[turn on debugging prints.]'
  '--help[]'
  '-h[print this message and exit.]'
  '*:filename:_files'
)

_arguments -s $arguments
