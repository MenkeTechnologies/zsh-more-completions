#compdef spades.py
# spades.py — SPAdes genome assembler

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(--sc --meta --bio --corona --rna --plasmid --metaviral --metaplasmid --rnaviral)--isolate[standard isolate mode]' \
  '(--isolate --meta --bio --corona --rna --plasmid --metaviral --metaplasmid --rnaviral)--sc[single-cell mode]' \
  '(--isolate --sc --bio --corona --rna --plasmid --metaviral --metaplasmid --rnaviral)--meta[metagenome mode]' \
  '(--isolate --sc --meta --corona --rna --plasmid --metaviral --metaplasmid --rnaviral)--bio[biosyntheticSPAdes mode]' \
  '(--isolate --sc --meta --bio --rna --plasmid --metaviral --metaplasmid --rnaviral)--corona[coronaSPAdes mode]' \
  '(--isolate --sc --meta --bio --corona --plasmid --metaviral --metaplasmid --rnaviral)--rna[rnaSPAdes mode]' \
  '(--isolate --sc --meta --bio --corona --rna --metaviral --metaplasmid --rnaviral)--plasmid[plasmidSPAdes mode]' \
  '(--isolate --sc --meta --bio --corona --rna --plasmid --metaplasmid --rnaviral)--metaviral[metaviralSPAdes mode]' \
  '(--isolate --sc --meta --bio --corona --rna --plasmid --metaviral --rnaviral)--metaplasmid[metaplasmidSPAdes mode]' \
  '(--isolate --sc --meta --bio --corona --rna --plasmid --metaviral --metaplasmid)--rnaviral[rnaviralSPAdes mode]' \
  '-1+[file with forward paired-end reads]:file:_files' \
  '-2+[file with reverse paired-end reads]:file:_files' \
  '--merged=[file with merged paired-end reads]:file:_files' \
  '--12=[file with interlaced forward/reverse reads]:file:_files' \
  '-s+[file with unpaired reads]:file:_files' \
  '--pe-1=[file with forward reads for paired-end library N]:file:_files' \
  '--pe-2=[file with reverse reads for paired-end library N]:file:_files' \
  '--mp-1=[file with forward reads for mate-pair library N]:file:_files' \
  '--mp-2=[file with reverse reads for mate-pair library N]:file:_files' \
  '--hqmp-1=[file with forward reads for high-quality mate-pair library N]:file:_files' \
  '--hqmp-2=[file with reverse reads for high-quality mate-pair library N]:file:_files' \
  '--sanger=[file with Sanger reads]:file:_files' \
  '--pacbio=[file with PacBio reads]:file:_files' \
  '--nanopore=[file with Nanopore reads]:file:_files' \
  '--trusted-contigs=[file with trusted contigs]:file:_files' \
  '--untrusted-contigs=[file with untrusted contigs]:file:_files' \
  '-o+[output directory]:dir:_files -/' \
  '(-t --threads)'{-t+,--threads=}'[number of threads]:threads' \
  '(-m --memory)'{-m+,--memory=}'[RAM limit in Gb]:gb' \
  '-k+[comma-separated list of k-mer sizes]:kmers' \
  '--cov-cutoff=[coverage cutoff value]:cutoff:(auto off)' \
  '--phred-offset=[PHRED quality offset]:offset:(33 64)' \
  '--only-assembler[run only assembler, no error correction]' \
  '--careful[run MismatchCorrector step]' \
  '--continue[continue from last checkpoint]' \
  '--restart-from=[restart from specified stage]:stage:(ec as mc last)' \
  '--disable-gzip-output[force output in non-gzipped format]' \
  '--disable-rr[disable repeat resolution]' \
  '--dataset=[file with dataset description in YAML format]:file:_files' \
  '--tmp-dir=[directory for temporary files]:dir:_files -/' \
  '--checkpoints=[save intermediate state]:mode:(last all)' \
  && ret=0

return ret
