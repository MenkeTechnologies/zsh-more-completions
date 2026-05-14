# Source: https://github.com/dablenparty/.hyprland/blob/289e16f07d4e2621d1501eef2e104c92d1e0efef/scripts/completions/_mon.zsh
# Repository: dablenparty/.hyprland (scripts/completions/_mon.zsh)
#compdef mon.zsh

_mon_bare_cmd() {
  # WARN: _files respects 'list-dirs-first' which recurses into the active dir and adds it to the
  # list despite it being ignored; therefore, use _path_files
  _arguments \
    '1:conf file:_path_files -W "${XDG_CONFIG_HOME:-$HOME/.config}/hypr/monitors" -g "*.conf" -F "active/*"'
}

_mon_rotate_cmd() {
  _mon_bare_cmd
  _arguments \
    '2:rotate:((0\:"normal (no transforms)"
1\:"90 degrees"
2\:"180 degrees"
3\:"270 degrees"
4\:"flipped"
5\:"flipped + 90 degrees"
6\:"flipped + 180 degrees"
7\:"flipped + 270 degrees"))'
}

_mon() {
  local curcontext="$curcontext" ret=1
  local commands line state

  commands=(
    "enable:Enable a monitor"
    "disable:Disable a monitor"
    "primary:Set your primary monitor"
    "reload:Disable and re-enable a monitor"
    "rotate:Rotate a monitor"
  )
  _arguments -C : \
    '1:cmd:->cmds' \
    '*::arg:->args' && ret=0

  case $state in
  cmds)
    _describe -t commands 'commands' commands
    ;;
  args)
    local cmd=$line[1]
    case $cmd in
    enable | disable | primary | reload)
      _mon_bare_cmd && ret=0
      ;;
    rotate)
      _mon_rotate_cmd && ret=0
      ;;
    esac
    ;;
  esac

  return ret
}

_mon_comp() {
  case "$service" in
  mon.zsh)
    _mon "$@"
    ;;
  *)
    _message "Error"
    ;;
  esac
}

_mon_comp "$@"
