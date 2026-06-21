#compdef abiview.py
# Documentation: https://abinit.github.io/abipy/scripts/abiview.html
# AbiPy: visualize ABINIT data from a netcdf or text file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '*'{-v,--verbose}'[increase verbosity]' \
  '--loglevel=[set loglevel]:level:(CRITICAL ERROR WARNING INFO DEBUG)' \
  '(-sns --seaborn)'{-sns,--seaborn}'[use seaborn settings]' \
  '(-mpl --mpl-backend)'{-mpl,--mpl-backend}'+[set matplotlib backend]:backend' \
  '1:command:((structure\:"visualize structure" input\:"view input file" hist\:"plot relaxation history" data\:"plot 2D data" timer\:"plot timer data" memlog\:"plot memory usage" dirviz\:"visualize directory tree" ebands\:"plot electron bands" effmass\:"plot effective masses" skw\:"plot SKW interpolation" fs\:"plot Fermi surface" ddb\:"plot phonons from DDB" ddb_becs\:"plot Born effective charges" ddb_ir\:"plot IR spectrum" ddb_asr\:"check acoustic sum rule" ddb_ifc\:"plot interatomic force constants" ddb_elastic\:"plot elastic tensor" phbands\:"plot phonon bands" lobster\:"plot Lobster results" xrd_traj\:"XRD over trajectory" denpot\:"plot density/potential"))' \
  '*::file:_files' && ret=0

return ret
