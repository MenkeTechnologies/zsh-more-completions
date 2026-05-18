#compdef idf.py
# Documentation: https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/tools/idf-py.html
# Reference accessed: 2026-05-18
# Verified: upstream docs at the URL above.

local curcontext="$curcontext" state line ret=1
local -a subcommands

subcommands=(
  'build:compile project'
  'clean:remove build artifacts'
  'fullclean:full project reset'
  'reconfigure:re-run CMake config'
  'set-target:select hardware target'
  'menuconfig:interactive Kconfig menu'
  'flash:build and flash project'
  'app:build application binary'
  'app-flash:flash application only'
  'bootloader:build bootloader'
  'bootloader-flash:flash bootloader'
  'partition-table:generate partition table'
  'partition-table-flash:flash partition table'
  'monitor:open serial monitor'
  'erase-flash:erase device flash'
  'size:binary size summary'
  'size-components:component-wise size'
  'size-files:file-wise size'
)

_arguments -C \
  '(-p --port)'{-p,--port=}'[serial port]:port:_files -g "/dev/tty*"' \
  '-B+[build directory]:dir:_files -/' \
  '-C+[project directory]:dir:_files -/' \
  '-T+[target hardware]:target:(esp32 esp32s2 esp32s3 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4)' \
  '-G+[CMake generator]:generator:(Ninja "Unix Makefiles")' \
  '*-D+[CMake define]:define:' \
  '(-v --verbose)'{-v,--verbose}'[verbose]' \
  '--ccache[enable ccache]' \
  '--no-ccache[disable ccache]' \
  '(- *)--help[show help]' \
  '1: :->subcommand' \
  '*::arg:->args' && ret=0

case $state in
  (subcommand)
    _describe -t subcommands 'idf.py subcommand' subcommands && ret=0
    ;;
esac

return ret
