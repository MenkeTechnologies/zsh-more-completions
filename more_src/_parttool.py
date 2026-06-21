#compdef parttool.py
# ESP-IDF partition table read/write/erase tool

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-q --quiet)'{-q,--quiet}'[suppress stderr messages]' \
  '(-p --port)'{-p,--port}'[serial port device]:port:_files' \
  '(-b --baud)'{-b,--baud}'[serial baud rate]:baud:(115200 230400 460800 921600)' \
  '(-f --partition-table-file)'{-f,--partition-table-file}'[partition table file]:file:_files' \
  '(-o --partition-table-offset)'{-o,--partition-table-offset}'[partition table offset]:offset:' \
  '--primary-bootloader-offset[primary bootloader offset]:offset:' \
  '--recovery-bootloader-offset[recovery bootloader offset]:offset:' \
  '--esptool-args[extra arguments passed to esptool]:args:' \
  '--esptool-write-args[extra esptool write arguments]:args:' \
  '--esptool-read-args[extra esptool read arguments]:args:' \
  '--esptool-erase-args[extra esptool erase arguments]:args:' \
  '--extra-partition-subtypes[additional partition subtype definitions]:subtypes:' \
  '*:command:(read_partition write_partition erase_partition get_partition_info)' && ret=0

return ret
