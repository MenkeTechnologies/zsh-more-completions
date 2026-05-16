#compdef mtail.sh
# Documentation: https://man.archlinux.org/search?q=mtail.sh
# Reference accessed: 2026-05-16

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(-n --namespace)'{-n+,--namespace=}'[namespace]:namespace' \
  '--kubeconfig=[kubeconfig]:file:_files' \
  '*:argument:_default'
