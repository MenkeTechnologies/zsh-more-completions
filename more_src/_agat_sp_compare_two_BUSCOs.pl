#compdef agat_sp_compare_two_BUSCOs.pl
# Documentation: https://man.archlinux.org/search?q=agat_sp_compare_two_BUSCOs.pl
# Reference accessed: 2026-05-16
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_compare_two_BUSCOs.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_compare_two_BUSCOs.pl)

# Auto-generated with h2o

function _agat_sp_compare_two_BUSCOs.pl {
    _arguments \
        '--f1[STRING: Input busco folder1]' \
        '--f2[STRING: Input busco folder2]' \
        {-v,--verbose}'[Integer: For displaying extra information use -v 1.]' \
        {-o,--output}'[STRING: Output folder.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_compare_two_BUSCOs.pl "$@"

