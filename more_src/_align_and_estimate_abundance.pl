#compdef align_and_estimate_abundance.pl
# Documentation: https://github.com/trinityrnaseq/trinityrnaseq/wiki/Trinity-Transcript-Quantification
# Trinity util: align reads and estimate transcript abundance

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--transcripts=[transcript fasta file]:file:_files' \
  '--seqType=[input sequence type]:type:(fq fa)' \
  '--left=[left reads file (paired-end)]:file:_files' \
  '--right=[right reads file (paired-end)]:file:_files' \
  '--single=[single-end reads file]:file:_files' \
  '--samples_file=[tab-delimited replicate relationships file]:file:_files' \
  '--est_method=[estimation method]:method:(RSEM kallisto salmon)' \
  '--aln_method=[alignment tool or bam path]:method:(bowtie bowtie2)' \
  '--output_dir=[output directory]:dir:_files -/' \
  '--SS_lib_type=[strand-specific library type]:type:(RF FR F R)' \
  '--thread_count=[number of threads]:n:' \
  '--debug[retain intermediate files]' \
  '--gene_trans_map=[gene-to-transcript mapping file]:file:_files' \
  '--trinity_mode[auto-generate gene_trans_map]' \
  '--prep_reference[prepare reference index only]' \
  '--fragment_length=[fragment length]:n:' \
  '--fragment_std=[fragment length standard deviation]:n:' \
  '--max_ins_size=[maximum insert size]:n:' \
  '--coordsort_bam[generate coordinate-sorted BAM]' \
  '--bowtie_RSEM=[custom bowtie params for RSEM]:opts:' \
  '--bowtie2_RSEM=[custom bowtie2 params for RSEM]:opts:' \
  '--include_rsem_bam[include RSEM BAM with posterior probabilities]' \
  '--rsem_add_opts=[additional RSEM params]:opts:' \
  '--kallisto_add_opts=[additional kallisto params]:opts:' \
  '--salmon_idx_type=[salmon index type]:type:(quasi fmd)' \
  '--salmon_add_opts=[additional salmon params]:opts:' \
  '*:file:_files' && ret=0

return ret
