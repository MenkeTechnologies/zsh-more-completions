#compdef munge_sumstats.py
# Documentation: https://github.com/bulik/ldsc/blob/master/munge_sumstats.py
# LDSC munge_sumstats.py converts GWAS summary statistics to .sumstats format

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--sumstats=[input summary statistics file]:file:_files' \
  '--out=[output filename prefix]:prefix:_files' \
  '--N=[total sample size]:n' \
  '--N-cas=[number of cases]:n' \
  '--N-con=[number of controls]:n' \
  '--info-min=[minimum INFO score]:val' \
  '--maf-min=[minimum minor allele frequency]:val' \
  '--daner[input is daner-format file]' \
  '--daner-n[use Nca and Nco from daner header]' \
  '--no-alleles[do not require alleles]' \
  '--merge-alleles=[file of SNPs and alleles to merge]:file:_files' \
  '--n-min=[minimum N filter]:n' \
  '--chunksize=[chunk size for reading]:n' \
  '--snp=[SNP column name]:name' \
  '--N-col=[N column name]:name' \
  '--N-cas-col=[N cases column name]:name' \
  '--N-con-col=[N controls column name]:name' \
  '--a1=[allele 1 column name]:name' \
  '--a2=[allele 2 column name]:name' \
  '--p=[p-value column name]:name' \
  '--frq=[allele frequency column name]:name' \
  '--signed-sumstats=[signed sumstat column and null value]:spec' \
  '--info=[INFO column name]:name' \
  '--info-list=[comma-separated INFO column names]:names' \
  '--nstudy=[NSTUDY column name]:name' \
  '--nstudy-min=[minimum number of studies]:n' \
  '--ignore=[comma-separated columns to ignore]:names' \
  '--a1-inc[A1 is the increasing allele]' \
  '--keep-maf[keep the MAF column]' \
  '*:file:_files' && ret=0

return ret
