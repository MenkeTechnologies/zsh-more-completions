#compdef dpdk-hugepages.py
# Documentation: https://doc.dpdk.org/guides/tools/hugepages.html
# DPDK utility to setup and show hugepages reservations

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[display usage information and quit]' \
  '(-s --show)'{-s,--show}'[print the current huge page configuration]' \
  '(-c --clear)'{-c,--clear}'[clear existing huge page reservation]' \
  '(-m --mount)'{-m,--mount}'[mount the huge page filesystem]' \
  '(-u --unmount)'{-u,--unmount}'[unmount the huge page filesystem]' \
  '(-n --node)'{-n+,--node=}'[set NUMA node to reserve pages on]:node' \
  '(-p --pagesize)'{-p+,--pagesize=}'[set huge page size]:size' \
  '(-r --reserve)'{-r+,--reserve=}'[reserve hugepages in bytes (K/M/G suffix)]:size' \
  '--setup=[shortcut: clear, unmount, reserve and mount]:size' && ret=0

return ret
