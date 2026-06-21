#compdef abicheck.py
# Documentation: https://abinit.github.io/abipy/scripts/abicheck.html
# AbiPy: validate AbiPy + Abinit installation before running flows

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-V --version)'{-V,--version}'[show version]' \
  '*'{-v,--verbose}'[increase verbosity]' \
  '--loglevel=[set loglevel]:level:(CRITICAL ERROR WARNING INFO DEBUG)' \
  '--no-colors[disable ASCII colors]' \
  '--with-flow[build and run a small abipy flow for testing]' \
  '(-d --flow-dir)'{-d,--flow-dir}'+[create AbiPy flow in this directory]:dir:_files -/' \
  '(-m --show-managers)'{-m,--show-managers}'[print table of manager files]' \
  '(-c --create-config)'{-c,--create-config}'[create yaml configuration files]' \
  '(-f --force-reinstall)'{-f,--force-reinstall}'[overwrite existing yaml config files]' && ret=0

return ret
