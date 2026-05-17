#compdef agat_sp_add_start_and_stop.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_add_start_and_stop.html
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_add_start_and_stop.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_add_start_and_stop.pl)

# Auto-generated with h2o

function _agat_sp_add_start_and_stop.pl {
    _arguments \
        {--gff,-i,-g}'[Input GTF/GFF file.]' \
        {--fasta,--fa,-f}'[Input fasta file. Needed to check that CDS sequences start by start codon and stop by stop codon.]' \
        {--ct,--codon,--table}'[Codon table to use. \[default 1\]]' \
        {--out,--output,-o}'[Output gff file updated]' \
        '-v[Verbose for debugging purpose.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_add_start_and_stop.pl "$@"

