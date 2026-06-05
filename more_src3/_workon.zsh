#compdef workon
# Documentation: https://virtualenvwrapper.readthedocs.io/en/latest/command_ref.html#workon
# Reference accessed: 2026-05-21
# Verified: upstream docs at the URL above.

# workon: virtualenvwrapper command for switching Python virtualenvs.
# Reads venvs from $WORKON_HOME (default ~/.virtualenvs).
_workon() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments '1: :->csi'

    case $state in
    csi)
      _arguments "1: :($(ls -1d $WORKON_HOME/*/ 2>/dev/null | awk -F "/" "{print \$(NF-1)}"))"
    ;;
    esac
}

_workon "$@"
