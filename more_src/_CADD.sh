#compdef CADD.sh
# Documentation: https://github.com/kircherlab/CADD-scripts
# CADD score annotation for VCF variants

local ret=1

_arguments -s -S \
  '(-h)-h[show help]' \
  '-o[output tsv.gz file]:outfile:_files' \
  '-g[genome build]:build:(GRCh37 GRCh38)' \
  '-v[CADD version]:version:' \
  '-c[number of cores for snakemake]:cores:' \
  '-a[include annotation in output]' \
  '-m[use conda only, no containers]' \
  '-r[container runtime arguments]:args:' \
  '-q[print basic snakemake information]' \
  '-p[print full snakemake information]' \
  '-d[keep temporary directory]' \
  '*:vcf file:_files -g "*.vcf *.vcf.gz"' && ret=0

return ret
