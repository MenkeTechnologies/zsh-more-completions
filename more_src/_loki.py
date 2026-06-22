#compdef loki.py
# Documentation: https://github.com/Neo23x0/Loki
# LOKI - Simple IOC and YARA scanner

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-p[path to scan]:path:_files -/' \
  '-s[maximum file size to check in KB]:kilobyte' \
  '-l[log file]:log file:_files' \
  '-r[remote syslog system]:remote loghost' \
  '-t[remote syslog port]:port' \
  '-a[alert score]:alert level' \
  '-w[warning score]:warning level' \
  '-n[notice score]:notice level' \
  '--allhds[scan all local hard drives (Windows only)]' \
  '--alldrives[scan all drives including network and removable media]' \
  '--printall[print all files that are scanned]' \
  '--allreasons[print all reasons that caused the score]' \
  '--noprocscan[skip the process scan]' \
  '--nofilescan[skip the file scan]' \
  '--vulnchecks[run the vulnerability checks]' \
  '--nolevcheck[skip the Levenshtein distance check]' \
  '--scriptanalysis[statistical analysis for scripts to detect obfuscated code (beta)]' \
  '--rootkit[skip the rootkit check]' \
  '--noindicator[do not show a progress indicator]' \
  '--dontwait[do not wait on exit]' \
  '--intense[intense scan mode (also scan unknown file types and all extensions)]' \
  '--csv[write CSV log format to STDOUT (machine processing)]' \
  '--onlyrelevant[only print warnings or alerts]' \
  '--nolog[do not write a local log file]' \
  '--update[update the signatures from the signature-base sub repository]' \
  '--debug[debug output]' \
  '--maxworkingset[maximum working set size of processes to scan in MB]:mb' \
  '--syslogtcp[use TCP instead of UDP for syslog logging]' \
  '--logfolder[folder to use for logging when log file is not specified]:log folder:_files -/' \
  '--nopesieve[do not perform pe-sieve scans]' \
  '--pesieveshellc[perform pe-sieve shellcode scan]' \
  '--python[override default python path]:python:_files' \
  '--nolisten[do not show listening connections]' \
  '*--excludeprocess[executable name to exclude from scans]:process' \
  '--force[force the scan on a certain folder]' \
  '--version[show welcome text and version, then exit]' && ret=0

return ret
