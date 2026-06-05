#compdef ph.x
# Documentation: https://www.quantum-espresso.org/Doc/user_guide/node20.html
# Reference accessed: 2026-05-20
# Verified: upstream docs at the URL above.

# Quantum ESPRESSO ph.x: phonon code; standard MPI parallel and input flags.
local curcontext="$curcontext" ret=1
_arguments -C \
  '-input[input data file]:file:_files' \
  '-inp[input data file]:file:_files' \
  '-i[input data file]:file:_files' \
  '-help[show help]' \
  '-version[show version]' \
  '-nimage[number of images]:n:' \
  '-ni[number of images]:n:' \
  '-npool[number of k-point pools]:n:' \
  '-npools[number of k-point pools]:n:' \
  '-nk[number of k-point pools]:n:' \
  '-nband[number of band groups]:n:' \
  '-nb[number of band groups]:n:' \
  '-ntg[number of task groups]:n:' \
  '-nt[number of task groups]:n:' \
  '-ndiag[number of processes for diagonalization]:n:' \
  '-nd[number of processes for diagonalization]:n:' \
  '-northo[number of orthogonalization procs]:n:' \
  '*:input file:_files -g "*.in"' && ret=0
return ret
