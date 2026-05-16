#compdef agat_convert_bed2gff.pl
# Documentation: https://man.archlinux.org/search?q=agat_convert_bed2gff.pl
# Reference accessed: 2026-05-16
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_convert_bed2gff.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_convert_bed2gff.pl)

# Auto-generated with h2o

function _agat_convert_bed2gff.pl {
    _arguments \
        '--bed[Input bed file that will be converted.]' \
        '--source[The source informs about the tool used to produce the data and is stored in 2nd field of a gff file. Example: Stringtie,Maker,Augustus,etc. \[default: data\]]' \
        '--primary_tag[The primary_tag corresponds to the data type and is stored in 3rd field of a gff file. Example: gene,mRNA,CDS,etc. \[default: gene\]]' \
        '--inflate_off[By default we inflate the block fields (blockCount, blockSizes, blockStarts) to create subfeatures of the main feature (primary_tag). The type of subfeature created is based on the inflate_type parameter. If you do not want this inflating behaviour you can deactivate it by using the --inflate_off option.]' \
        '--inflate_type[Feature type (3rd column in gff) created when inflate parameter activated \[default: exon\].]' \
        '--verbose[add verbosity]' \
        {-o,--output,--out,--outfile,--gff}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_bed2gff.pl "$@"

