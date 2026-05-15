#compdef toggl1
# Source: https://github.com/Voronenko/dotfiles/blob/93559d875bba2eaac109c43a5fb31bcc9090d2e0/completions/_toggl.zsh
# Repository: Voronenko/dotfiles (completions/_toggl.zsh)

__toggl-workspaces() {
    toggl workspaces
}

__toggl-projects() {
    toggl projects | awk '{ print $2 }'
}

__toggl-now() {
    echo "''d1:20''"
    echo "'`date '+%Y-%m-%d %H:%M:%S'`'"
}

__toggl-duration() {
    echo "''d1:20''"
}

__toggl-recent-entries() {
    toggl ls | grep @ | awk -F'@' '{gsub(/^[ \t\r\n]+/, "", $1);gsub(/[ \t\r\n]+$/, "", $1);print "\""$1"\""}' | sort | uniq
}


_toggl-commands() {
  local -a commands

  commands=(
    'add: toggl add [OPTIONS] START STOP DESCR'
    'add: DESCR [:WORKSPACE] [@PROJECT | #PROJECT_ID] ''d''DURATION creates a completed time entry, with start time DURATION ago, DURATION = [[Hours:]Minutes:]Seconds'
    'clients:lists all clients'
    'continue: [from DATETIME | ''d''DURATION] restarts the last entry, DURATION = [[Hours:]Minutes:]Seconds'
    'continue: DESCR [from DATETIME | ''d''DURATION] restarts the last entry matching DESCR'
    'ls:list recent time entries'
    'now:print what you''re working on now'
    'workspaces:lists all workspaces'
    'projects: [:WORKSPACE] lists all projects'
    'rm:delete a time entry by id'
    'start: DESCR [:WORKSPACE] [@PROJECT | #PROJECT_ID] [''d''DURATION | DATETIME] starts a new entry , DURATION = [[Hours:]Minutes:]Seconds'
    'stop:stops the current entry'
    'www:visits toggl.com'
  )

  _arguments -s : $nul_args && ret=0
  _describe -t commands 'toggl command' commands && ret=0
}


_toggl() {
  local -a nul_args
  nul_args=(
    '(-h --help)'{-h,--help}'[show help message and exit.]'
    '(-q --quiet)'{-q,--quiet}'[don''t print anything]'
    '(-v --verbose)'{-v,--verbose}'[print additional info]'
    '(-d --debug)'{-d,--debug}'[print debugging output]'
  )

  local curcontext=$curcontext ret=1

  if ((CURRENT == 2)); then
    _toggl-commands
  else
    shift words
    (( CURRENT -- ))
    curcontext="${curcontext%:*:*}:toggl-$words[1]:"
    case $words[1] in
    add)
      _arguments "2: :($(__toggl-workspaces))" \
                 "3: :($(__toggl-projects))" \
                 "4: :($(__toggl-now))" \
                 "5: :($(__toggl-duration))"
      ;;
    start)
      _arguments "2: :($(__toggl-workspaces))" \
                 "3: :($(__toggl-projects))" \
                 "4: :($(__toggl-now))"
      ;;
    stop)
      _arguments "1: :($(__toggl-now))"
      ;;
    projects)
      _arguments "1: :($(__toggl-workspaces))"
      ;;
    continue)
      _arguments "1: :($(__toggl-recent-entries))"
      ;;


    esac  fi
}

_toggl "$@"

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=zsh sw=2 ts=2 et
