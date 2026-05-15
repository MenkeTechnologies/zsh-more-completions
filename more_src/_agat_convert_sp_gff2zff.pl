#compdef agat_convert_sp_gff2zff.pl
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_convert_sp_gff2zff.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_convert_sp_gff2zff.pl)

# Auto-generated with h2o

function _agat_convert_sp_gff2zff.pl {
    _arguments \
        '--gff[Input GTF/GFF file]' \
        '--fasta[Input fasta file]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_sp_gff2zff.pl "$@"

