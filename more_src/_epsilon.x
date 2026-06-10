#compdef epsilon.x
# epsilon.x — Quantum ESPRESSO dielectric function and optical properties

_arguments -s -S \
  '-in[input file]:input file:_files -g "*.in(|put)"' \
  '-inp[input file]:input file:_files -g "*.in(|put)"' \
  '-input[input file]:input file:_files -g "*.in(|put)"' \
  '-nk[number of pools]:number:' \
  '-npool[number of pools]:number:' \
  '-nband[number of band groups]:number:' \
  '-ndiag[number of processors for diagonalization]:number:'
