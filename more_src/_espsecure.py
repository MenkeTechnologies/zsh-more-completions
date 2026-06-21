#compdef espsecure.py
# Documentation: https://docs.espressif.com/projects/esptool/
# Espressif secure boot and flash encryption tool (espsecure.py)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version]' \
  '*:command:(digest-secure-bootloader generate-signing-key sign-data verify-signature extract-public-key digest-rsa-public-key digest-sbv2-public-key signature-info-v2 digest-private-key generate-flash-encryption-key decrypt-flash-data encrypt-flash-data)' && ret=0

return ret
