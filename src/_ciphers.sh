#compdef ciphers.sh
# Documentation: https://man.archlinux.org/search?q=ciphers.sh
# Reference accessed: 2026-05-16

local -a arguments

arguments=(
  '--help[show help]'
  '-h[print this help message]'
  '--openssl[show OpenSSL cipher suite names instead of IANA cipher suite names.]'
  '--verbose[verbose output]'
  '-v[provide detailed cipher listing]'
  '*:filename:_files'
)

_arguments -s -S $arguments
