#compdef fk
# Documentation: https://github.com/fantastic-kit/fantastic-kit
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/fantastic-kit/fantastic-kit/blob/4f05545472ba16aff7a2d88748a4db5f16cadf91/autocompletion/_fk.zsh

_fk() { 
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments \
        '1:fk cmds:->cmd'\
        '2:subcmd:->args'\

    case $state in
    cmd)
        _arguments '1:fk cmds:(cd clone config pr help update load-dev)'
    ;;
    args)
        case $words[2] in
          cd)
            _alternative 'arg::_path_files -W "$HOME/src/github.com" -/'
          ;;
          config)
            _alternative '*:fk config cmds:(--key= --value= --list)'
          ;;
          *)
            _files 
          esac
    esac
}

_fk "$@"
