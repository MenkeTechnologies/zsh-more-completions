#compdef mtail.sh

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(-n --namespace)'{-n+,--namespace=}'[namespace]:namespace' \
  '--kubeconfig=[kubeconfig]:file:_files' \
  '*:argument:_default'
