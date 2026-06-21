#compdef pyboard.py pyboard
# Documentation: https://docs.micropython.org/en/latest/reference/pyboard.py.html
# pyboard.py - run MicroPython scripts and filesystem ops on a board over serial/telnet

local ret=1

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(-d --device)'{-d,--device}'=[serial device or IP address of board]:device:_files' \
  '(-b --baudrate)'{-b,--baudrate}'=[serial device baud rate]:baud:(9600 19200 38400 57600 115200 230400 460800 921600)' \
  '(-u --user)'{-u,--user}'=[telnet login username]:user:' \
  '(-p --password)'{-p,--password}'=[telnet login password]:password:' \
  '(-c --command)'{-c,--command}'=[program passed in as string]:program:' \
  '(-w --wait)'{-w,--wait}'=[seconds to wait for USB connected board to become available]:seconds:' \
  '--follow[follow the output after running the scripts]' \
  '--no-follow[do not follow output after running scripts]' \
  '(-f --filesystem)'{-f,--filesystem}'[perform a filesystem action]' \
  '*:script or fs command:(cp cat ls mkdir rm rmdir touch)' && ret=0

return ret
