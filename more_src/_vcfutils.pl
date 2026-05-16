#compdef vcfutils.pl
# Documentation: https://man.archlinux.org/search?q=vcfutils.pl
# Reference accessed: 2026-05-16

# samtools vcfutils.pl: helper utilities for VCF files
local curcontext="$curcontext" ret=1 state line
typeset -A opt_args

local -a commands
commands=(
  'subsam:subset VCF to one or more samples'
  'listsam:list samples in VCF'
  'fillac:fill in AC and AN tags'
  'fillaln:fill in AL tag (alternate allele alignments)'
  'qstats:produce per-sample variant quality stats'
  'varFilter:filter SNPs and indels'
  'hapmap2vcf:convert HapMap formatted file to VCF'
  'ucscsnp2vcf:convert UCSC snpVcf table to VCF'
  'splitchr:split chr in VCF'
  'vcf2fq:convert VCF to FASTQ consensus sequence'
)

_arguments -C \
  '1: :->cmd' \
  '*::arg:->args' && ret=0

case $state in
  cmd) _describe -t commands 'vcfutils command' commands && ret=0 ;;
  args)
    case $line[1] in
      varFilter) _arguments \
        '-Q[minimum mapping quality (RMS)]:n:' \
        '-d[minimum read depth]:n:' \
        '-D[maximum read depth]:n:' \
        '-a[minimum alt-base reads]:n:' \
        '-w[SNP within INT bp of indel filtered]:n:' \
        '-W[window size for filtering adjacent SNPs]:n:' \
        '-1[min P-value for strand bias (1=disable)]:val:' \
        '-2[min P-value for end distance bias]:val:' \
        '-3[min P-value for baseQ bias]:val:' \
        '-4[min P-value for mapQ bias]:val:' \
        '-e[min P-value for HWE]:val:' \
        '-G[gap size when reporting indel discords]:n:' \
        '-S[strict mode]' \
        '*:VCF file:_files' ;;
      vcf2fq) _arguments \
        '-d[min depth]:n:' \
        '-D[max depth]:n:' \
        '-Q[min RMS mapQ]:n:' \
        '-l[indel filtering window]:n:' \
        '*:VCF file:_files' ;;
      *) _files ;;
    esac
    ret=0 ;;
esac
return ret
