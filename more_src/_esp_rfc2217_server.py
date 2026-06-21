#compdef esp_rfc2217_server.py
# Documentation: https://docs.espressif.com/projects/esptool/
# RFC2217 TCP/IP remote serial port server for ESP chips

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-p --localport)'{-p,--localport}'[local TCP port to listen on]:port:' \
  '*'{-v,--verbose}'[print more diagnostic messages (repeat for more)]' \
  '--r0[use delays needed for ESP32 revision 0 chips]' \
  '*:serial port:_files' && ret=0

return ret
