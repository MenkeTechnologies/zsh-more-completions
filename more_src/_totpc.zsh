#compdef totpc
# Documentation: https://github.com/jost-s/totpc
# Reference accessed: 2026-05-21
# Verified: upstream docs at the URL above.
# Source: upstream _totpc.zsh from jost-s/totpc

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
