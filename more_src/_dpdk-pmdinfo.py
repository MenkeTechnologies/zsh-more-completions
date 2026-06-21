#compdef dpdk-pmdinfo.py
# Documentation: https://doc.dpdk.org/guides/tools/pmdinfo.html
# DPDK utility to dump PMD information from ELF files

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show the inline help]' \
  '(-p --search-plugins)'{-p,--search-plugins}'[also scan the DPDK plugins path]' \
  '(-v --verbose)'{-v,--verbose}'[display warnings; use twice to show debug messages]' \
  '*:ELF file:_files' && ret=0

return ret
