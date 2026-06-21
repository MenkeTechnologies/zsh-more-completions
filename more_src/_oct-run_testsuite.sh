#compdef oct-run_testsuite.sh
# Documentation: https://www.octopus-code.org/documentation/main/manual/utilities/oct-run_testsuite.sh/
# Octopus: run the octopus testsuite

local ret=1

_arguments -s -S \
  '-h[print this help and exit]' \
  '-n[dry-run mode (show what would be executed)]' \
  '-g[comma-separated list of test groups to run]:groups' \
  '-q[query testfiles for the given groups (no tests are run)]:groups' \
  '-d[directory where to look for the testsuite]:dir:_files -/' \
  '-l[local run]' \
  '-p[installation prefix]:prefix:_files -/' \
  '-c[delete all .log files and work directories after the run]' \
  '-r[name of the YAML report]:report:_files' && ret=0

return ret
