#compdef gettgtpkinit.py
# Documentation: https://github.com/dirkjanm/PKINITtools
# Request a TGT using PKINIT certificate-based Kerberos authentication

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-cert-pfx+[PFX file]:file:_files' \
  '-pfx-pass+[PFX file password]:password:' \
  '-pfx-base64+[PFX file as base64 string]:base64:' \
  '-cert-pem+[certificate in PEM format]:file:_files' \
  '-key-pem+[private key file in PEM format]:file:_files' \
  '-dc-ip+[DC IP or hostname to use as KDC]:ip:' \
  '(-v --verbose)'{-v,--verbose}'[verbose output]' \
  '1:domain/username:' \
  '2:ccache file:_files' && ret=0

return ret
