#compdef agat_sp_manage_functional_annotation.pl
# Documentation: https://agat.readthedocs.io/en/latest/tools/agat_sp_manage_functional_annotation.html
# AGAT: load functional annotation from blast and InterPro results

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-f --reffile -ref --gff --gff3)'{-f,--reffile,-ref,--gff,--gff3}'=[input GTF/GFF file]:gff file:_files' \
  '(-b --blast)'{-b,--blast}'=[blast results in outfmt 6]:blast:_files' \
  '--clean_name[remove existing Name attributes first]' \
  '--clean_product[remove existing product attributes first]' \
  '--clean_dbxref[remove existing Dbxref attributes first]' \
  '--clean_ontology[remove existing Ontology_term attributes first]' \
  '(-d --db)'{-d,--db}'=[fasta database used for blast]:db:_files' \
  '(--be --blast_evalue)'{--be,--blast_evalue}'=[max blast e-value (default 1e-6)]:evalue:' \
  '--pe=[protein existence level cutoff (1-5, default 5)]:pe:' \
  '(-i --interpro)'{-i,--interpro}'=[InterPro TSV results file]:interpro:_files' \
  '-id=[generate unique IDs with prefix]:prefix:' \
  '-idau[generate unique IDs for all discontinuous features]' \
  '-nb=[starting number for ID numbering (default 1)]:number:' \
  '(-o --output)'{-o,--output}'=[output GFF file]:output:_files' \
  '-v[verbose output]' \
  '(-c --config)'{-c,--config}'=[input agat config file]:config:_files' \
  '*:gff file:_files' && ret=0

return ret
