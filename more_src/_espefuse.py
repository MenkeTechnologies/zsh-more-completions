#compdef espefuse.py
# Espressif eFuse read/write tool (espefuse.py)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-c --chip)'{-c,--chip}'[target chip type]:chip:(esp32 esp32s2 esp32s3 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4)' \
  '(-p --port)'{-p,--port}'[serial port device]:port:_files' \
  '(-b --baud)'{-b,--baud}'[serial baud rate]:baud:(115200 230400 460800 921600)' \
  '--before[action before connecting]:action:(default-reset usb-reset no-reset no-reset-no-sync)' \
  '(-a --after)'{-a,--after}'[action after operation]:action:(hard-reset soft-reset no-reset watchdog-reset)' \
  '(-d --debug)'{-d,--debug}'[enable debugging output]' \
  '--virt[run in virtual mode without hardware]' \
  '--path-efuse-file[save eFuse memory to file (requires --virt)]:file:_files' \
  '--do-not-confirm[skip confirmation before burning]' \
  '--extend-efuse-table[CSV file with custom eFuse definitions]:file:_files -g "*.csv"' \
  '*:command:(dump summary burn-efuse burn-block-data burn-bit read-protect-efuse write-protect-efuse burn-key burn-key-digest burn-custom-mac get-custom-mac adc-info set-flash-voltage check-error)' && ret=0

return ret
