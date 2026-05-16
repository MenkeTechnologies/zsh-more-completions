#compdef agat_sp_extract_attributes.pl
# Documentation: https://man.archlinux.org/search?q=agat_sp_extract_attributes.pl
# Reference accessed: 2026-05-16
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_extract_attributes.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_extract_attributes.pl)

# Auto-generated with h2o

function _agat_sp_extract_attributes.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {-p,-t,-l}'[primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking in account. fill the option by the value "all" will have the same behaviour.]' \
        {--attribute,--att,-a}'[attribute tag. The value of the attribute tag specified will be extracted from the feature type specified by the option -p. List of attributes must be coma separated.]' \
        {--merge,-m}'[By default the values of each attribute tag is writen in its dedicated file. To write the values of all tags in only one file use this option.]' \
        '-d[By default when an attribute is not found for a feature, a dot (.) is reported. If you don'\''t want anything to be printed in such case use this option.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_extract_attributes.pl "$@"

