#compdef sram_char.py
# Documentation: https://github.com/VLSIDA/OpenRAM
# OpenRAM SRAM characterizer — characterize an SRAM from a config file and spice netlist

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-b --backannotated)'{-b,--backannotated}'[back annotate simulation]' \
  '(-o --output)'{-o,--output}'=[base output file name(s) prefix]:prefix:' \
  '(-p --outpath)'{-p,--outpath}'=[output file(s) location]:dir:_files -/' \
  '(-i --inlinecheck)'{-i,--inlinecheck}'[enable inline LVS/DRC checks]' \
  '(-n --nocheck)'{-n,--nocheck}'[disable all LVS/DRC checks]' \
  '(-j --threads)'{-j,--threads}'=[number of threads]:n:' \
  '(-m --sim_threads)'{-m,--sim_threads}'=[number of spice simulation threads]:n:' \
  '(-v --verbose)'{-v,--verbose}'[increase the verbosity level]' \
  '(-t --tech)'{-t,--tech}'=[technology name]:tech:' \
  '(-s --spice)'{-s,--spice}'=[spice simulator executable name]:exe:_command_names' \
  '(-r --remove_netlist_trimming)'{-r,--remove_netlist_trimming}'[disable removal of noncritical memory cells]' \
  '(-c --characterize)'{-c,--characterize}'[perform characterization to calculate delays]' \
  '(-k --keeptemp)'{-k,--keeptemp}'[keep temp directory after successful run]' \
  '(-d --debug)'{-d,--debug}'[run in debug mode (drop to pdb on failure)]' \
  '*:file:_files' && ret=0

return ret
