#compdef debug-shell.sh
# Documentation: https://github.com/MenkeTechnologies/zsh-more-completions
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(-n --namespace)'{-n+,--namespace=}'[namespace]:namespace' \
  '--kubeconfig=[kubeconfig]:file:_files' \
  '--context=[kube context]:context' \
  '*:pod name:_default'
