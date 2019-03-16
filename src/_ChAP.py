#compdef ChAP.py

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
  '-a[bruteforce AIDs]'
  '-A[print list of known AIDs]'
  '-d[debug - Show PC/SC APDU data]'
  '-e[bruteforce EMV AIDs]'
  '-f[bruteforce files]'
  '-h[print detailed help message]'
  '-o[output to files (\[AID\]-FILExxRECORDxx.HEX)]'
  '-p[bruteforce primitives]'
  '-r[raw output - do not interpret EMV data]'
  '-t[use T1 protocol (default is T0)]'
  '-v[verbose on]'
  '*:filename:_files'
)

_arguments -s $arguments
