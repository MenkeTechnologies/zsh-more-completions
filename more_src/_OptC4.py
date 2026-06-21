#compdef OptC4.py
# optimize C4 terms for metal-ion force fields (MCPB toolset)

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '-m[Amber mask of the center metal ion]:mask:' \
  '-p[topology file]:file:_files' \
  '-c[coordinate file]:file:_files' \
  '-r[restart file]:file:_files' \
  '--maxsteps[maximum minimization steps per cycle]:steps:' \
  '--phase[simulation phase]:phase:(gas liquid)' \
  '--size[step size for the C4 value during searching]:size:' \
  '--method[optimization method]:method:(powell cg bfgs ncg l_bfgs_b tnc slsqp)' \
  '--platform[compute platform]:platform:(reference cpu cuda opencl)' \
  '--model[metal ion complex model for RMSD]:model:' && ret=0

return ret
