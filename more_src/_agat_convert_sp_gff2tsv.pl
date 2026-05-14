# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_convert_sp_gff2tsv.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_convert_sp_gff2tsv.pl)
#compdef agat_convert_sp_gff2tsv.pl

# Auto-generated with h2o

function _agat_convert_sp_gff2tsv.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_sp_gff2tsv.pl "$@"

