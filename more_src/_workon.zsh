#compdef workon
# Source: https://github.com/Voronenko/dotfiles/blob/93559d875bba2eaac109c43a5fb31bcc9090d2e0/completions/_workon.zsh
# Repository: Voronenko/dotfiles (completions/_workon.zsh)

_workon() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments '1: :->csi'

    case $state in
    csi)
      _arguments "1: :($(ls -1d $WORKON_HOME/*/ | awk -F "/" "{print \$(NF-1)}"))"
    ;;
    esac
}

_workon "$@"
