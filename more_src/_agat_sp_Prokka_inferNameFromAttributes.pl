#compdef agat_sp_Prokka_inferNameFromAttributes.pl
# Documentation: https://man.archlinux.org/search?q=agat_sp_Prokka_inferNameFromAttributes.pl
# Reference accessed: 2026-05-16
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_Prokka_inferNameFromAttributes.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_Prokka_inferNameFromAttributes.pl)

# Auto-generated with h2o

function _agat_sp_Prokka_inferNameFromAttributes.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        '--force[If Name attribute already exists, they will be replaced if a new one is found]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_Prokka_inferNameFromAttributes.pl "$@"

