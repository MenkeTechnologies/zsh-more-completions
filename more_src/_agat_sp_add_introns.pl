#compdef agat_sp_add_introns.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_add_introns.html
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_add_introns.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_add_introns.pl)

# Auto-generated with h2o

function _agat_sp_add_introns.pl {
    _arguments \
        {--gff,-f,--ref,-reffile}'[Input GTF/GFF file.]' \
        {--out,--output,-o}'[Output GFF3 file.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_add_introns.pl "$@"

