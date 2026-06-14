#compdef pp.x
# pp.x — Quantum ESPRESSO post-processing for charge density and wavefunctions

_arguments -s -S \
  '-in[input file]:input file:_files -g "*.in(|put)"' \
  '-inp[input file]:input file:_files -g "*.in(|put)"' \
  '-input[input file]:input file:_files -g "*.in(|put)"' \
  '-nk[number of pools for k-point parallelization]:number:' \
  '-npool[number of pools]:number:' \
  '-nband[number of band groups]:number:' \
  '-ntg[number of task groups]:number:' \
  '-ndiag[number of processors for diagonalization]:number:'
