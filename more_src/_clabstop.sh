#compdef clabstop
# Documentation: https://man.archlinux.org/search?q=clabstop
# Reference accessed: 2026-05-16
# Source: https://github.com/tboudreaux/ZSH_conda/blob/90c306855f1fcba696d0242b7d8a335908e6c72b/_clabstop.sh
# Repository: tboudreaux/ZSH_conda (_clabstop.sh)

function get_running_envs()
{
    running=$(running_labs)
}

_clabstop() {
  local state

  _arguments \
    '1: :->envs'
  get_running_envs
  case $state in
	  (envs) _arguments "1:profiles:($running)" ;;
  esac
}

_clabstop "$@"
