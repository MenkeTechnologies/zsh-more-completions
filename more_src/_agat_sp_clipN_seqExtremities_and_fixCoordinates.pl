#compdef agat_sp_clipN_seqExtremities_and_fixCoordinates.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_clipN_seqExtremities_and_fixCoordinates.html
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/yamaton/zsh-completions-bio/blob/d485f76b4d9c03e9fbf70baf2c5ccd85653558a2/completions/_agat_sp_clipN_seqExtremities_and_fixCoordinates.pl
# Repository: yamaton/zsh-completions-bio (completions/_agat_sp_clipN_seqExtremities_and_fixCoordinates.pl)

# Auto-generated with h2o

function _agat_sp_clipN_seqExtremities_and_fixCoordinates.pl {
    _arguments \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        {-f,--fasta}'[Input fasta file.]' \
        '--of[Output fixed fasta file. If no output file is specified, the output will be written to STDOUT.]' \
        '--og[Output fixed GFF file. If no output file is specified, the output will be written to STDOUT]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_clipN_seqExtremities_and_fixCoordinates.pl "$@"

