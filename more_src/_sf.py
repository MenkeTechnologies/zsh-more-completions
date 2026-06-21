#compdef sf.py
# Documentation: https://github.com/smicallef/spiderfoot
# OSINT: SpiderFoot automation server and scan launcher.

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-d --debug)'{-d,--debug}'[enable debug output]' \
  '-l+[IP and port to listen on]:ip\:port:' \
  '-m+[modules to enable]:modules:' \
  '(-M --modules)'{-M,--modules}'[list available modules]' \
  '(-C --correlate)'{-C+,--correlate=}'[run correlation rules against a scan ID]:scanID:' \
  '-s+[target for the scan]:target:' \
  '-t+[event types to collect]:types:' \
  '-u+[select modules automatically by use case]:usecase:' \
  '(-T --types)'{-T,--types}'[list available event types]' \
  '-o+[output format (tab is default)]:format:' \
  "-H[don't print field headers, just data]" \
  '-n[strip newlines from data]' \
  '-r[include the source data field in tab/csv output]' \
  '-S+[maximum data length to display]:length:' \
  '-D+[delimiter to use for CSV output (default ,)]:delimiter:' \
  "-f[filter out event types not requested with -t]" \
  '-F+[show only a set of event types (comma-separated)]:types:' \
  '-x[strict mode; only enable modules that can directly consume the target]' \
  '-q[disable logging (also hides errors)]' \
  '(-V --version)'{-V,--version}'[display the version and exit]' \
  '--max-threads=[max number of modules to run concurrently]:n:' && ret=0

return ret
