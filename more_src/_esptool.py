#compdef esptool.py esptool
# _esptool.py — Espressif Systems esptool.py CLI for communicating with the ROM bootloader on Espressif ESP8266 ESP32 ESP32-S2 ESP32-S3 ESP32-C3 ESP32-H2 reading writing erasing flash MAC chip-id verify (espressif team, Python); argparse
# upstream: https://github.com/espressif/esptool

_esptool.py() {
    local -a sub=(
        'load_ram:load to RAM'
        'dump_mem:dump memory'
        'read_mem:read memory'
        'write_mem:write memory'
        'write_flash:write flash'
        'read_flash:read flash'
        'erase_flash:erase entire flash'
        'erase_region:erase region'
        'merge_bin:merge bin files'
        'flash_id:read flash chip id'
        'chip_id:read chip id'
        'image_info:show image info'
        'make_image:make image'
        'elf2image:convert ELF to image'
        'run:run from RAM'
        'verify_flash:verify flash'
        'read_mac:read MAC address'
        'mac:read MAC address'
        'reset:reset'
        'no_stub_reset:no stub reset'
        'help:show help'
        'version:show version'
    )
    _arguments -C \
        '-h[show help]' \
        '--help[show help]' \
        '-V[show version]' \
        '--version[show version]' \
        '-v[verbose]' \
        '-c+[chip]:c:(auto esp8266 esp32 esp32s2 esp32s3 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4)' \
        '--chip=+[chip]:c:(auto esp8266 esp32 esp32s2 esp32s3 esp32c2 esp32c3 esp32c6 esp32h2 esp32p4)' \
        '-p+[serial port]:file:_files -g "/dev/tty* /dev/cu*"' \
        '--port=+[serial port]:file:_files -g "/dev/tty* /dev/cu*"' \
        '-b+[baud]:n:(9600 19200 38400 57600 74880 115200 230400 460800 921600 1500000 2000000)' \
        '--baud=+[baud]:n:(9600 19200 38400 57600 74880 115200 230400 460800 921600 1500000 2000000)' \
        '--before=+[mode]:m:(default_reset usb_reset no_reset no_reset_no_sync)' \
        '--after=+[mode]:m:(hard_reset soft_reset no_reset no_reset_stub)' \
        '--no-stub[do not use stub loader]' \
        '--trace[enable tracing]' \
        '--connect-attempts=+[N]:n:' \
        '1:subcommand:->sub' \
        '*::args:->args'

    case $state in
        sub) _describe -t commands 'esptool.py subcommand' sub ;;
        args)
            case $words[1] in
                write_flash) _arguments \
                    '--flash_freq=+[freq]:f:(keep 20m 26m 40m 80m)' \
                    '--flash_mode=+[mode]:m:(keep qio qout dio dout)' \
                    '--flash_size=+[size]:s:(keep detect 256KB 512KB 1MB 2MB 4MB 8MB 16MB 32MB 64MB 128MB)' \
                    '-e[erase before flashing]' \
                    '--erase-all[erase all]' \
                    '--no-progress[no progress]' \
                    '--compress[compress]' \
                    '--no-compress[no compress]' \
                    '--encrypt[encrypt]' \
                    '*:addr file:_files' ;;
                read_flash) _arguments '*:offset size file:_files' ;;
                erase_region) _arguments '*:offset size:' ;;
            esac
            ;;
    esac
}

_esptool.py "$@"
