#compdef pw.x
# pw.x — Quantum ESPRESSO plane-wave self-consistent field calculation

_arguments -s -S \
  '-in[input file]:input file:_files -g "*.in(|put)"' \
  '-inp[input file]:input file:_files -g "*.in(|put)"' \
  '-input[input file]:input file:_files -g "*.in(|put)"' \
  '-nk[number of pools for k-point parallelization]:number:' \
  '-npool[number of pools for k-point parallelization]:number:' \
  '-npools[number of pools for k-point parallelization]:number:' \
  '-nband[number of band groups]:number:' \
  '-nbgrp[number of band groups]:number:' \
  '-ntg[number of task groups for FFT]:number:' \
  '-ndiag[number of processors for diagonalization]:number:' \
  '-northo[number of processors for orthogonalization]:number:' \
  '-nd[number of processors for diagonalization]:number:'
