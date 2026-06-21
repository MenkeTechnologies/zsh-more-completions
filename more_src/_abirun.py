#compdef abirun.py
# Documentation: https://abinit.github.io/abipy/scripts/abirun.html
# AbiPy: execute and manage ABINIT flows/works/tasks

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '*'{-v,--verbose}'[increase verbosity]' \
  '--loglevel=[set loglevel]:level:(CRITICAL ERROR WARNING INFO DEBUG)' \
  '--no-colors[disable ASCII colors]' \
  '--no-logo[disable AbiPy logo]' \
  '--remove-lock[remove lock on pickle file]' \
  '1:flowdir:_files -/' \
  '2:command:((scheduler\:"run the scheduler" single\:"run a single task" rapid\:"run tasks in rapid mode" status\:"show flow status" cancel\:"cancel tasks" restart\:"restart unconverged tasks" reset\:"reset tasks" open\:"open output files" inputs\:"show input variables" abivars\:"show Abinit variables" structures\:"show structures" ebands\:"show electron bands" hist\:"show relaxation history" inspect\:"inspect tasks" robot\:"build a robot" tail\:"tail output files" deps\:"show dependencies" events\:"show events" networkx\:"plot with networkx" graphviz\:"plot with graphviz" notebook\:"open jupyter notebook" ipython\:"open ipython shell" group\:"group tasks" diff\:"diff files" listext\:"list files by extension"))' \
  '*::arg:_files' && ret=0

return ret
