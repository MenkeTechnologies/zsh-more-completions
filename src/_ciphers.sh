#compdef ciphers.sh

local arguments

arguments=(
  '--help[]'
  '-h[print this help message]'
  '--openssl[show OpenSSL cipher suite names instead of IANA cipher suite names.]'
  '--verbose[]'
  '-v[provide detailed cipher listing]'
  '*:filename:_files'
)

_arguments -s $arguments
