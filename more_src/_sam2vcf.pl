#compdef sam2vcf.pl
# Documentation: https://raw.githubusercontent.com/samtools/samtools/develop/misc/sam2vcf.pl
# Convert samtools pileup output to VCF

local ret=1

_arguments -s -S \
  '(-h -? --help)'{-h,--help}'[show help]' \
  '(-i --indels-only)'{-i,--indels-only}'[ignore SNPs]' \
  '(-r --refseq)'{-r,--refseq}'[reference sequence, required when indels are present]:fasta:_files' \
  '(-R --keep-ref)'{-R,--keep-ref}'[print reference alleles as well]' \
  '(-s --snps-only)'{-s,--snps-only}'[ignore indels]' \
  '(-t --column-title)'{-t,--column-title}'[column title]:title:' && ret=0

return ret
