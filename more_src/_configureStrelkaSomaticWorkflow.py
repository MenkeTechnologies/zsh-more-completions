#compdef configureStrelkaSomaticWorkflow.py
# Documentation: https://github.com/Illumina/strelka/blob/master/docs/userGuide/README.md
# Strelka somatic small-variant workflow configuration script

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--normalBam=[normal sample alignment BAM/CRAM]:bam:_files' \
  '--tumorBam=[tumor sample alignment BAM/CRAM]:bam:_files' \
  '--referenceFasta=[reference genome FASTA]:fasta:_files' \
  '--runDir=[output directory for workflow run script]:dir:_files -/' \
  '--indelCandidates=[candidate indel VCF from Manta (bgzip+tabix)]:vcf:_files' \
  '--forcedGT=[forced genotype VCF (bgzip+tabix)]:vcf:_files' \
  '--callRegions=[restrict calling to BED regions (bgzip+tabix)]:bed:_files' \
  '--exome[enable settings for whole exome sequencing]' \
  '--outputCallableRegions[generate somatic callability track]' && ret=0

return ret
