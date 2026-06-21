#compdef abiopen.py
# Documentation: https://abinit.github.io/abipy/scripts/abiopen.html
# AbiPy: open an ABINIT file in an interactive shell, notebook or dashboard

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '*'{-v,--verbose}'[increase verbosity]' \
  '--loglevel=[set loglevel]:level:(CRITICAL ERROR WARNING INFO DEBUG)' \
  '(-nb --notebook)'{-nb,--notebook}'[open file in jupyter notebook]' \
  '(-cnb --classic-notebook)'{-cnb,--classic-notebook}'[use classic jupyter notebook]' \
  '--no-browser[start jupyter server without opening browser]' \
  '--foreground[run jupyter notebook in the foreground]' \
  '(-p --print)'{-p,--print}'[print python object and return]' \
  '(-pn --panel)'{-pn,--panel}'[open dashboard in web browser]' \
  '(-pnt --panel-template)'{-pnt,--panel-template}'+[dashboard template]:template:(FastList FastGrid Golden Bootstrap Material React Vanilla)' \
  '--port=[port for panel app]:port' \
  '(-e --expose)'{-e,--expose}'[generate matplotlib figures automatically]' \
  '(-s --slide-mode)'{-s,--slide-mode}'[cycle through figures sequentially]' \
  '(-t --slide-timeout)'{-t,--slide-timeout}'+[close figure after seconds]:seconds' \
  '(-sns --seaborn)'{-sns,--seaborn}'[apply seaborn styling]:style:(paper notebook talk poster)' \
  '(-mpl --mpl-backend)'{-mpl,--mpl-backend}'+[set matplotlib backend]:backend' \
  '(-ew --expose-web)'{-ew,--expose-web}'[generate matplotlib plots in browser]' \
  '(-ply --plotly)'{-ply,--plotly}'[generate plotly plots in browser]' \
  '*:file:_files' && ret=0

return ret
