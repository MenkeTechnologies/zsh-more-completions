#compdef smtpd2.py
# Documentation: https://man.archlinux.org/search?q=smtpd2.py
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  {-n,--nosetuid}'[do not try to setuid nobody]'
  {-V,--version}'[print the version number and exit]'
  {-c,--class}'[use classname as the concrete SMTP proxy class]:classname:'
  {-d,--debug}'[turn on debugging prints]'
  '(- * :)'{-h,--help}'[print this message and exit]'
  '*:filename:_files'
)

_arguments -s -S $arguments
