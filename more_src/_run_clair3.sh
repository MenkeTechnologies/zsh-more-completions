#compdef run_clair3.sh
# Documentation: https://github.com/HKU-BAL/Clair3
# Clair3 deep-learning germline small variant caller pipeline

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--bam_fn=[indexed BAM input]:bam:_files' \
  '--ref_fn=[indexed FASTA reference]:fasta:_files' \
  '--model_path=[folder containing pileup.pt and full_alignment.pt]:dir:_files -/' \
  '--threads=[max threads]:int:' \
  '--platform=[sequencing platform]:platform:(ont hifi ilmn)' \
  '--output=[VCF/GVCF output directory]:dir:_files -/' \
  '--bed_fn=[call variants only in BED regions]:bed:_files' \
  '--vcf_fn=[candidate sites VCF]:vcf:_files' \
  '--ctg_name=[sequences to process]:contig:' \
  '--sample_name=[sample name in output VCF]:name:' \
  '--qual=[quality threshold for PASS/LowQual]:int:' \
  '--chunk_size=[chunk size (default 5000000)]:int:' \
  '--snp_min_af=[minimum SNP allele frequency]:float:' \
  '--indel_min_af=[minimum indel allele frequency]:float:' \
  '--var_pct_full=[percentage for full-alignment rerun]:float:' \
  '--samtools=[path to samtools >= 1.10]:path:_files' \
  '--python=[path to python3 >= 3.6]:path:_files' \
  '--pypy=[path to pypy3 >= 3.6]:path:_files' \
  '--parallel=[path to GNU parallel >= 20191122]:path:_files' \
  '--whatshap=[path to whatshap >= 1.0]:path:_files' \
  '--longphase=[path to longphase >= 1.0]:path:_files' \
  '--device=[GPU device(s)]:device:' \
  '--pileup_only[use pileup model only]' \
  '--print_ref_calls[include 0/0 calls]' \
  '--include_all_ctgs[call on all contigs]' \
  '--gvcf[emit GVCF format]' \
  '--remove_intermediate_dir[drop intermediate files]' \
  '--use_gpu[enable GPU acceleration]' \
  '--enable_dwell_time[signal-aware calling via Dorado mv tags]' \
  '--use_whatshap_for_intermediate_phasing[phase intermediates with whatshap]' \
  '--use_longphase_for_intermediate_phasing[phase intermediates with longphase]' \
  '--enable_phasing[final output phasing (legacy alias)]' \
  '--no_phasing_for_fa[skip full-alignment phasing]' \
  '--call_snp_only[skip indels]' \
  '--enable_long_indel[call indels >50 bp]' \
  '--keep_iupac_bases[retain IUPAC bases]' \
  '--haploid_precise[haploid organism precise mode]' \
  '--haploid_sensitive[haploid organism sensitive mode]' && ret=0

return ret
