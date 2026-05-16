#compdef totpc
# Documentation: https://man.archlinux.org/search?q=totpc
# Reference accessed: 2026-05-16
# Source: https://github.com/jost-s/totpc/blob/e21442c6e2e557a765d6c5c4683ede9ac067d062/_totpc.zsh
# Repository: jost-s/totpc (_totpc.zsh)

_totpc() {
    _arguments '1:command:->command'

    case $state in
        (command)
            local -a commands=('compute' 'delete' 'list' 'read' 'store' 'init')
            _describe totpc commands
            ;;
    esac
    
    case $words[2] in
        compute|c|read|r|delete|d)
            _path_files -W $HOME/.totpc/ -g "*.gpg(:r)"
            ;;
    esac
}

