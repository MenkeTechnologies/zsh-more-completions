#compdef cactivate
# Documentation: https://man.archlinux.org/search?q=cactivate
# Reference accessed: 2026-05-16
# Source: https://github.com/tboudreaux/ZSH_conda/blob/90c306855f1fcba696d0242b7d8a335908e6c72b/_cact.sh
# Repository: tboudreaux/ZSH_conda (_cact.sh)

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
