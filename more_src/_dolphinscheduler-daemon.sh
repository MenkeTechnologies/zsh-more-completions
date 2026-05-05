#compdef dolphinscheduler-daemon.sh

local curcontext="$curcontext" state line ret=1
local -a actions components

actions=(
  'start:start the component'
  'stop:stop the component'
  'status:show component status'
)

components=(
  'api-server'
  'master-server'
  'worker-server'
  'alert-server'
  'standalone-server'
)

_arguments -C \
  '1: :->action' \
  '2: :->component' && ret=0

case $state in
  (action)
    _describe -t actions 'action' actions && ret=0
    ;;
  (component)
    _describe -t components 'component' components && ret=0
    ;;
esac

return ret
