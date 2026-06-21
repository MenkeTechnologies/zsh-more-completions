#compdef gen_esp32part.py
# ESP-IDF partition table CSV<->binary converter

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--flash-size[total flash size]:size:(1MB 2MB 4MB 8MB 16MB 32MB 64MB 128MB)' \
  '--disable-md5sum[do not append md5 checksum to binary]' \
  '--no-verify[do not verify partition table fields]' \
  '(-v --verify)'{-v,--verify}'[verify partition table fields (deprecated)]' \
  '(-q --quiet)'{-q,--quiet}'[suppress non-error messages]' \
  '(-o --offset)'{-o,--offset}'[partition table offset]:offset:' \
  '--primary-bootloader-offset[primary bootloader offset]:offset:' \
  '--recovery-bootloader-offset[recovery bootloader offset]:offset:' \
  '--secure[secure boot version]:version:(v1 v2)' \
  '--extra-partition-subtypes[additional partition subtype definitions]:subtypes:' \
  ':input:_files' \
  '::output:_files' && ret=0

return ret
