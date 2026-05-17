#compdef agat_convert_sp_gff2gtf.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_convert_sp_gff2gtf.html
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_convert_sp_gff2gtf.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_convert_sp_gff2gtf.pl)

# Auto-generated with h2o

function _agat_convert_sp_gff2gtf.pl {
    _arguments \
        {--gff,--gtf,-i}'[Input GFF/GTF file that will be read]' \
        {-o,--output,--out,--outfile,--gtf}'[Output GTF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_sp_gff2gtf.pl "$@"

