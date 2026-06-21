#compdef pprism.x
# pprism.x — Quantum ESPRESSO 3D-RISM/Laue-RISM solvation post-processing

_arguments -s -S \
  '-i[input file]:input file:_files -g "*.(in|inp|input|nml)"' \
  '-in[input file]:input file:_files -g "*.(in|inp|input|nml)"' \
  '-inp[input file]:input file:_files -g "*.(in|inp|input|nml)"' \
  '-input[input file]:input file:_files -g "*.(in|inp|input|nml)"' \
  '-ni[number of images for NEB/linear-response parallelization]:number:' \
  '-nimage[number of images for NEB/linear-response parallelization]:number:' \
  '-nk[number of pools for k-point parallelization]:number:' \
  '-npool[number of pools for k-point parallelization]:number:' \
  '-npools[number of pools for k-point parallelization]:number:' \
  '-nb[number of band groups]:number:' \
  '-nband[number of band groups]:number:' \
  '-nbgrp[number of band groups]:number:' \
  '-nt[number of task groups for 3D FFT]:number:' \
  '-ntg[number of task groups for 3D FFT]:number:' \
  '-nd[number of processors for linear-algebra diagonalization]:number:' \
  '-ndiag[number of processors for linear-algebra diagonalization]:number:' \
  '-northo[number of processors for linear-algebra diagonalization]:number:'
