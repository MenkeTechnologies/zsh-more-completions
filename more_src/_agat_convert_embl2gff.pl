# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_convert_embl2gff.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_convert_embl2gff.pl)
#compdef agat_convert_embl2gff.pl

# Auto-generated with h2o

function _agat_convert_embl2gff.pl {
    _arguments \
        '--embl[Input EMBL file that will be read]' \
        '--emblmygff3[Bolean - Means that the EMBL flat file comes from the EMBLmyGFF3 software. This is an EMBL format dedicated for submission and contains particularity to deal with. This parameter is needed to get a proper sequence id in the GFF3 from an embl made with EMBLmyGFF3.]' \
        {--primary_tag,--pt,-t}'[List of "primary tag". Useful to discard or keep specific features. Multiple tags must be coma-separated.]' \
        '-d[Bolean - Means that primary tags provided by the option "primary_tag" will be discarded.]' \
        '-k[Bolean - Means that only primary tags provided by the option "primary_tag" will be kept.]' \
        '--throw_fasta[Bolean - Means that you do not want to keep the fasta sequence at the end of the gff output.]' \
        {-o,--output,--out,--outfile,--gff}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_embl2gff.pl "$@"

