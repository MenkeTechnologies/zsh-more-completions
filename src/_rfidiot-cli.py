#compdef rfidiot-cli.py

local arguments

arguments=(
  '-d[debug on]'
  '-f[use LibNFC device number <num> (implies -R READER_LIBNFC)]'
  '-g[no GUI]'
  '-h[print detailed help message]'
  '-n[no Init - do not initialise hardware]'
  '-N[list available LibNFC devices]'
  '-r[use PCSC device number <num> (implies -R READER_PCSC)]'
  '-R[reader/writer type:]'
  '-l[line to use for reader/writer]'
  '-L[list available PCSC devices]'
  '-s[speed of reader/writer]'
  '-t[timeout for inactivity of reader/writer]'
  '*:filename:_files'
)

_arguments -s $arguments
