#compdef e2evalrefine.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2evalrefine.html
# Performs various assessments of e2refine_easy runs

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '--timing[report time required for each step of each run]' \
  '--timingbypath[report CPU time required in each refine_xx folder]' \
  '--resolution[resolution and convergence plot for one run]' \
  '--resolution_all[resolution plot for last iter of all refine_xx]' \
  '--resolution_vsref=[FSC between last iter of each refine_xx and a ref map]:file:_files' \
  '--evalptclqual[evaluate particle-map agreement]' \
  '--evalclassqual[evaluate class-average-projection agreement]' \
  '--extractorientptcl=[extract particles with per-particle orientation]:val' \
  '--anisotropy=[class-number to evaluate magnification anisotropy]:n' \
  '--evalclassdetail[generate individual FRC curves per class average]' \
  '--includeprojs[write projections to disk for comparison]' \
  '--iter=[select a particular refinement iteration]:n' \
  '--mask=[mask to focus evalptclqual and other options]:file:_files' \
  '--sym=[symmetry for searching adjacent unit cells]:sym' \
  '--threads=[number of threads to run in parallel]:n' \
  '--ppid=[set parent process PID]:pid' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '*:refine dir:_files -/' && ret=0

return ret
