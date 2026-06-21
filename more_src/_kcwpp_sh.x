#compdef kcwpp_sh.x
# Documentation: https://www.quantum-espresso.org/Doc/INPUT_kcw.html
# kcwpp_sh.x - QE KCW post-processing: compute the self-Hartree of Wannier functions; standard QE command-line parser

local ret=1

_arguments -s -S \
  '(-i -in -inp -input)'{-i,-in,-inp,-input}'[input data file]:input file:_files -g "*.in(|put)"' \
  '(-ni -nimage -nimages)'{-ni,-nimage,-nimages}'[number of images]:number:' \
  '(-nk -npool -npools)'{-nk,-npool,-npools}'[number of k-point pools]:number:' \
  '(-nb -nband -nbgrp)'{-nb,-nband,-nbgrp}'[number of band groups]:number:' \
  '(-nt -ntg -ntask_groups)'{-nt,-ntg,-ntask_groups}'[number of task groups for FFT]:number:' \
  '(-nd -ndiag -northo)'{-nd,-ndiag,-northo}'[number of processors for diagonalization]:number:' \
  '*:input file:_files -g "*.in(|put)"' && ret=0

return ret
