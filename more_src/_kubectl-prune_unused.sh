#compdef kubectl-prune_unused.sh
# Documentation: https://github.com/FikaWorks/kubectl-plugins
# Reference accessed: 2026-05-19
# Verified: upstream docs at the URL above.

local curcontext="$curcontext" state line ret=1

_arguments -s -S -C \
  '(- *)'{-h,--help}'[show help]' \
  '(-l --selector)'{-l+,--selector=}'[label selector]:selector:' \
  '(-n --namespace)'{-n+,--namespace=}'[kubernetes namespace]:namespace:' \
  '--context=[kubeconfig context]:context:' \
  '--dry-run[preview objects to be removed without deletion]' \
  '1:resource type:(configmaps secrets)' \
  '*:: :->args' && ret=0

case $state in
  args)
    _arguments -s -S '*: : _default' && ret=0
    ;;
esac

return ret
