#compdef MMPBSA.py
# end-state free energy (MM/PBSA and MM/GBSA) analysis of MD trajectories

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '-O[allow output files to be overwritten]' \
  '-prefix[prefix for intermediate files]:prefix:' \
  '-i[MM/PBSA input file]:file:_files' \
  '-xvvfile[XVV file for 3D-RISM]:file:_files' \
  '-o[output file with MM/PBSA statistics]:file:_files' \
  '-do[decomposition statistics summary output]:file:_files' \
  '-eo[per-frame energy terms CSV output]:file:_files' \
  '-deo[per-residue energy terms CSV output]:file:_files' \
  '-sp[solvated complex topology file]:file:_files' \
  '-cp[complex topology file]:file:_files' \
  '-rp[receptor topology file]:file:_files' \
  '-lp[ligand topology file]:file:_files' \
  '*-y[trajectory file(s) of the complex]:file:_files' \
  '-yr[trajectory file(s) of the receptor]:file:_files' \
  '-yl[trajectory file(s) of the ligand]:file:_files' \
  '-make-mdins[create the input files for each calculation and quit]' \
  '-use-mdins[use existing input files for each calculation]' \
  '-rewrite-output[parse output files and rewrite without re-running]' \
  '--clean[clean temporary files and quit]' \
  '--input-file-help[print all available input-file options]' && ret=0

return ret
