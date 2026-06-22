#compdef cado-nfs.py
# Documentation: https://github.com/cado-nfs/cado-nfs
# cado-nfs.py - Number Field Sieve integer factorization driver

local ret=1

_arguments -s -S \
  '-t[number of cores/threads to use (e.g. all)]:threads' \
  '--server[run cado-nfs in server mode]' \
  '--slaves[number of client instances to run]:num' \
  '--client-threads[thread count per client]:num' \
  '--server-threads[thread count for server operations]:num' \
  '--parameters[supply a custom parameter file]:file:_files' \
  '*:arg:_files' && ret=0

return ret
