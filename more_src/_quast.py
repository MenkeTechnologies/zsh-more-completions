#compdef quast.py
# quast.py — quality assessment tool for genome assemblies

local curcontext="$curcontext" state line ret=1
typeset -A opt_args

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)--version[show version]' \
  '(-o --output-dir)'{-o+,--output-dir=}'[output directory (default quast_results/results_<date>)]:dir:_files -/' \
  '(-r --reference)'{-r+,--reference=}'[reference genome file]:file:_files' \
  '(-g --features)'{-g+,--features=}'[file with genomic feature coordinates in GFF/BED format]:file:_files' \
  '--gene-finding[predict genes using GeneMarkS/GeneMark-ES/MetaGeneMark/Glimmer]' \
  '--glimmer[use GlimmerHMM for gene prediction]' \
  '(-t --threads)'{-t+,--threads=}'[number of threads (default 25% of CPUs)]:threads' \
  '(-m --min-contig)'{-m+,--min-contig=}'[minimum contig length (default 500)]:length' \
  '(-l --labels)'{-l+,--labels=}'[comma-separated list of assembly labels]:labels' \
  '(-e --eukaryote)'{-e,--eukaryote}'[genome is eukaryotic]' \
  '--fungus[genome is fungal]' \
  '--large[genome is large, use optimized settings]' \
  '--min-alignment=[minimum alignment length (default 65)]:length' \
  '--min-identity=[minimum alignment identity (default 95.0)]:percent' \
  '--ambiguity-usage=[use ambiguous alignments]:mode:(none one all)' \
  '--strict-NA[break contigs at every misassembly]' \
  '--extensive-mis-size=[lower threshold for extensive misassembly (default 1000)]:size' \
  '--no-snps[do not report SNPs]' \
  '--no-gc[do not compute GC%]' \
  '--no-sv[do not run SV calling]' \
  '--no-gzip[do not compress output]' \
  '--no-html[do not build HTML report]' \
  '--no-icarus[do not build Icarus viewers]' \
  '--no-plots[do not draw plots]' \
  '--fast[fast mode (same as --no-gc --no-sv --no-snps --no-plots --no-icarus)]' \
  '--silent[only produce necessary output]' \
  '--space-efficient[use less disk space]' \
  '--est-ref-size=[estimated reference size for computing NGAx without reference]:size' \
  '--contig-thresholds=[comma-separated list of contig length thresholds (default 0,1000)]:thresholds' \
  '(-k --k-mer-stats)'{-k,--k-mer-stats}'[compute k-mer-based quality metrics]' \
  '--k-mer-size=[size of k-mer for k-mer-based metrics (default 101)]:size' \
  '--circos[draw Circos plot]' \
  '*:assembly files:_files' \
  && ret=0

return ret
