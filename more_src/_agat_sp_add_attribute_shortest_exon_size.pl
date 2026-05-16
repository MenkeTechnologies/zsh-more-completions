#compdef agat_sp_add_attribute_shortest_exon_size.pl
# Documentation: https://man.archlinux.org/search?q=agat_sp_add_attribute_shortest_exon_size.pl
# Reference accessed: 2026-05-16
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_add_attribute_shortest_exon_size.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_add_attribute_shortest_exon_size.pl)

# Auto-generated with h2o

function _agat_sp_add_attribute_shortest_exon_size.pl {
    _arguments \
        {--gff,-f,--ref}'[STRING: Input GTF/GFF file.]' \
        {--out,--output,-o}'[STRING: Output gff3 file where the result will be printed.]' \
        '-v[BOLEAN: Verbose for debugging purpose.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_add_attribute_shortest_exon_size.pl "$@"

