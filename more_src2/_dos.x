#compdef dos.x
# Documentation: https://www.quantum-espresso.org/Doc/INPUT_DOS.html
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.

# Quantum ESPRESSO dos.x: reads input file via -input/-inp/-i or stdin
local curcontext="$curcontext" ret=1
_arguments -C \
  '-input[input data file]:file:_files' \
  '-inp[input data file]:file:_files' \
  '-i[input data file]:file:_files' \
  '-help[show help]' \
  '-version[show version]' \
  '-pd[parallel mode pool distribution]:val:' \
  '-nimage[number of images for NEB/string]:n:' \
  '-npool[number of k-point pools]:n:' \
  '-nband[number of band groups]:n:' \
  '-ntg[number of task groups]:n:' \
  '-ndiag[number of processes for diag]:n:' \
  '-northo[number of orthogonalization procs]:n:' \
  '*:input file:_files -g "*.in"' && ret=0
return ret
