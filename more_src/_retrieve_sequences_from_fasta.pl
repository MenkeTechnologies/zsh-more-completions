#compdef retrieve_sequences_from_fasta.pl
# Documentation: https://raw.githubusercontent.com/trinityrnaseq/trinityrnaseq/master/util/retrieve_sequences_from_fasta.pl
# Trinity util: extract sequences from a fasta db by accession list

local ret=1

_arguments -s -S \
  '1:accession list file:_files' \
  '2:target fasta db:_files' && ret=0

return ret
