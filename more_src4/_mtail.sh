#compdef mtail.sh
# Documentation: https://github.com/ahmetb/kubectl-extras/blob/master/mtail/mtail.sh
# Reference accessed: 2026-05-19
# Verified: upstream docs at the URL above.

# mtail.sh: tail logs of multiple Kubernetes pods selected by a label selector.
# Takes a single positional argument: the label selector.

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  ':label selector:' \
  '*:argument:_default'
