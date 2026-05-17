#compdef agat_sp_ensembl_output_style.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_ensembl_output_style.html
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_ensembl_output_style.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_ensembl_output_style.pl)

# Auto-generated with h2o

function _agat_sp_ensembl_output_style.pl {
    _arguments \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        '-v[Verbose option to see the warning messages when parsing the gff file.]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_ensembl_output_style.pl "$@"

