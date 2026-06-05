#compdef kubectl-assert.sh
# Documentation: https://github.com/morningspace/kubeassert
# Reference accessed: 2026-05-19
# Verified: upstream docs at the URL above.

# kubeassert (morningspace/kubeassert). Binary kubectl-assert.sh; invoked as
# `kubectl assert`.

local curcontext="$curcontext" state line ret=1

_arguments -s -S -C \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)'{-V,--version}'[print version]' \
  '(-v --verbose)'{-v,--verbose}'[verbose logging]' \
  '(-n --namespace)'{-n+,--namespace=}'[namespace scope]:namespace:' \
  '(-A --all-namespaces)'{-A,--all-namespaces}'[query across all namespaces]' \
  '(-l --selector)'{-l+,--selector=}'[label query filter]:selector:' \
  '--field-selector=[field query filter]:selector:' \
  '-eq+[equal to]:value:' \
  '-lt+[less than]:value:' \
  '-gt+[greater than]:value:' \
  '-ge+[no less than]:value:' \
  '-le+[no greater than]:value:' \
  '1:assertion:->assertions' \
  '*::arg:_default' && ret=0

case $state in
  assertions)
    local -a assertions=(
      'exist:assert resource should exist'
      'not-exist:assert resource should not exist'
      'exist-enhanced:assert resource should exist using enhanced field selector'
      'not-exist-enhanced:assert resource should not exist using enhanced field selector'
      'num:assert the number of resource should match criteria'
      'pod-ready:assert pod should be ready'
      'pod-not-terminating:assert pod should not keep terminating'
      'pod-restarts:assert pod restarts should match criteria'
      'apiservice-available:assert apiservice should be available'
    )
    _describe -t assertions 'kubectl assert assertion' assertions && ret=0
    ;;
esac

return ret
