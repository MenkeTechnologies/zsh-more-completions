#compdef dump_lfts.sh

local arguments

arguments=(
  {--all,-a}'[show all lids, even invalid entries]'
  '--no[_dests, -n          do not try to resolve destinations]'
  {--Multicast,-M}'[show multicast forwarding tables]'
  '--node-name-map[node name map file]'
  {--config,-z}'[use config file, default: /etc/infiniband-diags/ibdiag.conf]'
  {--Ca,-C}'[ca name to use]'
  {--Port,-P}'[ca port number to use]'
  {--timeout,-t}'[timeout in ms]'
  '--m[_key, -y <key>       M_Key to use in request]'
  {--errors,-e}'[show send and receive errors]'
  {--verbose,-v}'[increase verbosity level]'
  {--debug,-d}'[raise debug level]'
  {--help,-h}'[help message]'
  {--version,-V}'[show version]'
  '*:filename:_files'
)

_arguments -s $arguments
