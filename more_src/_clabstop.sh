#compdef clabstop
# Documentation: https://github.com/tboudreaux/ZSH_conda
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.

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
