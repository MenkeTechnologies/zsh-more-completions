#compdef agat_convert_mfannot2gff.pl
# Documentation: https://man.archlinux.org/search?q=agat_convert_mfannot2gff.pl
# Reference accessed: 2026-05-16
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_convert_mfannot2gff.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_convert_mfannot2gff.pl)

# Auto-generated with h2o

function _agat_convert_mfannot2gff.pl {
    _arguments \
        {-m,-i,--mfannot}'[The mfannot input file]' \
        {-g,-o,--gff}'[the gff output file]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_mfannot2gff.pl "$@"

