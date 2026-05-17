#compdef cactivate
# Documentation: https://github.com/tboudreaux/ZSH_conda
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/tboudreaux/ZSH_conda/blob/90c306855f1fcba696d0242b7d8a335908e6c72b/_cact.sh

function get_envs()
{
    env_string=$(ls /anaconda/envs/)
    env_list=$(echo $env_string | tr " " "\n")
}

_cactivate() {
  local state

  _arguments \
    '1: :->envs'
  get_envs
  case $state in
	  (envs) _arguments "1:profiles:($env_string)" ;;
  esac
}

_cactivate "$@"
