# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_filter_by_ORF_size.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_filter_by_ORF_size.pl)
#compdef agat_sp_filter_by_ORF_size.pl

# Auto-generated with h2o

function _agat_sp_filter_by_ORF_size.pl {
    _arguments \
        {-g,--gff}'[Input GTF/GFF file.]' \
        {-s,--size}'[ORF size to apply the test. Default 100.]' \
        '-v[Verbose. Useful for debugging purpose. Bolean]' \
        {-o,--out,--output,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_filter_by_ORF_size.pl "$@"

