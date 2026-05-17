#compdef mtail.sh
# Documentation: https://github.com/lmartinking/monkey-tail
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(-n --namespace)'{-n+,--namespace=}'[namespace]:namespace' \
  '--kubeconfig=[kubeconfig]:file:_files' \
  '*:argument:_default'
