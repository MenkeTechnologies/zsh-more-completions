#compdef frr-reload.py
# Documentation: https://docs.frrouting.org/en/latest/setup.html
# Reload the running FRR configuration to match a new config file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help and exit]' \
  '(--reload --test)--reload[apply the configuration changes]' \
  '(--reload --test)--test[display the differences without applying them]' \
  '(--debug --log-level)--debug[enable debug-level logging]' \
  '(--debug --log-level)--log-level[set logging verbosity]:level:(critical error warning info debug)' \
  '--input[read running configuration from a file instead of show running]:input file:_files' \
  '--stdout[direct log output to standard output]' \
  '(-N --pathspace)'{-N,--pathspace}'[reload the specified namespace/path]:pathspace:' \
  '--overwrite[replace frr.conf with running configuration output]' \
  '--bindir[directory containing the vtysh executable]:bindir:_files -/' \
  '--confdir[directory containing daemon config files]:confdir:_files -/' \
  '--rundir[directory for the temporary config file]:rundir:_files -/' \
  '--vty_socket[socket path for vtysh daemon communication]:vty socket:_files -/' \
  '--daemon[specific daemon to reload]:daemon:(zebra bgpd ospfd ospf6d ripd ripngd isisd pimd pim6d ldpd nhrpd eigrpd babeld sharpd fabricd pbrd staticd bfdd vrrpd pathd)' \
  '--test-reset[topotest mode: exclude debug/log file commands]' \
  '--logfmt[use logfmt structured logging format]' \
  '--logfile[log file path]:log file:_files' \
  '1:config file:_files' && ret=0

return ret
