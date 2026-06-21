#compdef ldsc.py ldsc
# Documentation: https://github.com/bulik/ldsc/wiki/LD-Score-Estimation-Tutorial
# LDSC: LD Score regression for heritability and genetic correlation

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--bfile=[PLINK format fileset prefix (.bed/.bim/.fam)]:prefix:_files' \
  '--l2[compute LD Scores]' \
  '--ld-wind-cm=[window size in centiMorgans for LD Score estimation]:cm' \
  '--ld-wind-kb=[window size in kilobases]:kb' \
  '--ld-wind-snp=[window size by number of SNPs]:snps' \
  '--out=[output file prefix]:prefix' \
  '--annot=[annotation file for annotation-specific LD scores]:file:_files' \
  '--thin-annot[annotation file omits CHR/BP/SNP/CM columns]' \
  '--extract=[restrict analysis to a subset of SNPs]:file:_files' \
  '--print-snps=[filter output to only specified SNPs]:file:_files' \
  '--maf=[minor allele frequency lower bound]:float' \
  '--not-M-5-50[use total SNP count instead of MAF>5% filtered count]' \
  '--h2=[estimate SNP-heritability for a single trait]:file:_files' \
  '--rg=[compute genetic correlation between traits]:files' \
  '--ref-ld-chr=[LD Score files as independent variables]:dir:_files -/' \
  '--w-ld-chr=[LD Scores for regression weighting]:dir:_files -/' \
  '--samp-prev=[sample prevalence for binary traits]:values' \
  '--pop-prev=[population prevalence for binary traits]:values' \
  '--intercept-h2=[constrain single-trait regression intercepts]:values' \
  '--intercept-gencov=[constrain cross-trait regression intercepts]:values' \
  '--no-intercept[set all intercepts to defaults]' && ret=0

return ret
