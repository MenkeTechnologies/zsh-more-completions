#compdef pssql
# Documentation: https://man.archlinux.org/search?q=pssql
# Reference accessed: 2026-05-16
# Source: https://github.com/faustobranco/pssql/blob/8ea430291a33cfd9cf343f0534b7a9a3d1b2f5b3/completion/_pssql.zsh
# Repository: faustobranco/pssql (completion/_pssql.zsh)

_pssql() {
    local -a servers
    servers=(${(f)"$(PSSQL_COMPLETION_MODE=true pssql 2>/dev/null)"})

    _arguments \
        '--connect[Server name]:server:compadd -a servers' \
        '--config[Config path]:file:_files -g "*.json"' \
        '--list[List all servers]' \
        '--help[Show help]' \
        '--version[Show version]'
}

_pssql "$@"
