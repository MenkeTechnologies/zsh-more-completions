#compdef configureStrelkaGermlineWorkflow.py
# Documentation: https://github.com/Illumina/strelka/blob/master/docs/userGuide/README.md
# Strelka germline small-variant workflow configuration script

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '*--bam=[input alignment BAM/CRAM (repeatable for joint analysis)]:bam:_files' \
  '--referenceFasta=[reference genome FASTA]:fasta:_files' \
  '--runDir=[output directory for workflow run script]:dir:_files -/' \
  '*--indelCandidates=[candidate indel VCF (bgzip+tabix)]:vcf:_files' \
  '*--forcedGT=[forced genotype VCF (bgzip+tabix)]:vcf:_files' \
  '--callRegions=[restrict calling to BED regions (bgzip+tabix)]:bed:_files' \
  '--ploidy=[haploid/absent regions VCF with FORMAT/CN]:vcf:_files' \
  '--noCompress=[exclude sites from gVCF compression (BED)]:bed:_files' \
  '--callContinuousVf=[pooled/heteroplasmic calling on chromosome]:chrom:' \
  '--exome[enable settings for whole exome sequencing]' \
  '--rna[enable experimental RNA-Seq variant calling mode]' \
  '--disableSequenceErrorEstimation[disable adaptive indel error estimation]' && ret=0

return ret
