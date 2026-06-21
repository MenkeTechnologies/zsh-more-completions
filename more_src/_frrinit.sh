#compdef frrinit.sh
# Documentation: https://docs.frrouting.org/en/latest/setup.html
# FRR init script to start, stop, restart and reload the daemons

local ret=1

_arguments -s -S \
  '1:command:(start stop restart force-reload status reload)' && ret=0

return ret
