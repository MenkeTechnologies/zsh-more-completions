#compdef souporcell_pipeline.py
# Documentation: https://github.com/wheaton5/souporcell
# souporcell_pipeline.py - clustering single cells by genotype

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --bam)'{-i,--bam}'=[cellranger BAM file]:bam:_files' \
  '(-b --barcodes)'{-b,--barcodes}'=[barcodes.tsv from cellranger]:file:_files' \
  '(-f --fasta)'{-f,--fasta}'=[reference FASTA file]:fasta:_files' \
  '(-t --threads)'{-t,--threads}'=[maximum threads to use]:threads:' \
  '(-o --out_dir)'{-o,--out_dir}'=[output directory]:dir:_files -/' \
  '(-k --clusters)'{-k,--clusters}'=[number of clusters]:k:' \
  '(-p --ploidy)'{-p,--ploidy}'=[ploidy (1 or 2)]:ploidy:(1 2)' \
  '(-m --clustering_method)'{-m,--clustering_method}'=[clustering method]:method:(em khm)' \
  '(-s --souporcell3)'{-s,--souporcell3}'=[use souporcell3 (>16 donors)]:bool:(True False)' \
  '(-I --max_base_mem)'{-I,--max_base_mem}'=[max target bases in RAM for indexing]:bases:' \
  '--min_alt=[minimum alt alleles per locus]:n:' \
  '--min_ref=[minimum ref alleles per locus]:n:' \
  '--max_loci=[maximum loci per cell]:n:' \
  '--restarts=[number of clustering restarts]:n:' \
  '--common_variants=[common variant loci VCF file]:vcf:_files' \
  '--known_genotypes=[known variants per clone VCF]:vcf:_files' \
  '--known_genotypes_sample_names=[sample names from known_genotypes VCF]:names:' \
  '--skip_remap=[skip remapping with minimap2]:bool:(True False)' \
  '--ignore=[ignore data error assertions]:bool:(True False)' \
  '*:file:_files' && ret=0

return ret
