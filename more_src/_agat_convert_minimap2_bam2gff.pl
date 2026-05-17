#compdef agat_convert_minimap2_bam2gff.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_convert_minimap2_bam2gff.html
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_convert_minimap2_bam2gff.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_convert_minimap2_bam2gff.pl)

# Auto-generated with h2o

function _agat_convert_minimap2_bam2gff.pl {
    _arguments \
        {-i,--input}'[Input file in sam (.sam extension) or bam (.bam extension) format.]' \
        {-b,--bam}'[To force to use the input file as sam file.]' \
        {-s,--sam}'[To force to use the input file as sam file.]' \
        {-o,--out,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_minimap2_bam2gff.pl "$@"

