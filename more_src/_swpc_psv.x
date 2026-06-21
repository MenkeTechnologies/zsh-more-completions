#compdef swpc_psv.x
# Documentation: https://openswpc.github.io/1._SetUp/0103_compile/
# OpenSWPC 2D P-SV seismic wave propagation finite-difference solver

local ret=1

_arguments -s \
  '-i[input parameter file]:input file:_files -g "*.inf"' \
  '-r[restart model name]:restart name:' \
  '*:input file:_files -g "*.inf"' && ret=0

return ret
