#compdef pileup.sh
# Documentation: https://jgi.doe.gov/data-and-tools/software-tools/bbtools/bb-tools-user-guide/
# Pileup: calculate per-scaffold and per-base coverage from a SAM/BAM file

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  'in=[input SAM file (required)]:file:_files' \
  'ref=[scan reference FASTA for per-scaffold GC counts]:file:_files' \
  'fastaorf=[FASTA with ORF headers in PRODIGAL format]:file:_files' \
  'unpigz=[decompress with pigz for speed]:bool:(t f)' \
  'addfromref=[add reference scaffolds not in SAM header]:bool:(t f)' \
  'addfromreads=[add reference scaffolds from reads]:bool:(t f)' \
  'out=[per-scaffold coverage info output file]:file:_files' \
  'rpkm=[per-scaffold RPKM/FPKM counts]:file:_files' \
  'twocolumn=[print only ID and Avg_fold]:bool:(t f)' \
  'countgc=[enable counting of read GC content]:bool:(t f)' \
  'outorf=[per-ORF coverage info (requires fastaorf)]:file:_files' \
  'outsam=[print input SAM stream to file or stdout]:file:_files' \
  'hist=[histogram of occurrences at each depth level]:file:_files' \
  'basecov=[coverage per base location]:file:_files' \
  'bincov=[binned coverage per location]:file:_files' \
  'binsize=[binsize for binned coverage output]:n:' \
  'keepshortbins=[keep residual bins shorter than binsize]:bool:(t f)' \
  'normcov=[normalized coverage by normalized location]:file:_files' \
  'normcovo=[overall normalized coverage by location]:file:_files' \
  'normb=[use fixed number of bins per scaffold]:n:' \
  'normc=[normalize coverage to fraction of max per scaffold]:bool:(t f)' \
  'delta=[only print base coverage lines when coverage differs]:bool:(t f)' \
  'nzo=[only print scaffolds with nonzero coverage]:bool:(t f)' \
  'concise=[write basecov in more concise format]:bool:(t f)' \
  'header=[include headers in output files]:bool:(t f)' \
  'headerpound=[prepend header lines with #]:bool:(t f)' \
  'stdev=[calculate coverage standard deviation]:bool:(t f)' \
  'covminscaf=[skip coverage for scaffolds shorter than this]:n:' \
  'covwindow=[calculate bases in windows of low coverage]:n:' \
  'covwindowavg=[average coverage below this is low]:n:' \
  'k=[calculate kmer coverage statistics for this kmer length]:k:' \
  'keyvalue=[output statistics to screen as key=value pairs]:bool:(t f)' \
  'mincov=[ignore bases under this depth for percent covered]:n:' \
  'strandedcov=[track plus and minus strand independently]:bool:(t f)' \
  'startcov=[only track start positions of reads]:bool:(t f)' \
  'stopcov=[only track stop positions of reads]:bool:(t f)' \
  'secondary=[use secondary alignments if present]:bool:(t f)' \
  'softclip=[include soft-clipped bases in coverage]:bool:(t f)' \
  'minmapq=[ignore alignments with MAPQ below this]:q:' \
  'physical=[calculate physical coverage for paired reads]:bool:(t f)' \
  'tlen=[track physical coverage from TLEN field]:bool:(t f)' \
  'arrays=[manually force use of coverage arrays]:mode:(auto t f)' \
  'bitsets=[manually force use of coverage bitsets]:mode:(auto t f)' \
  '32bit=[enable for per-base coverage over 64k]:bool:(t f)' \
  'delcoverage=[count bases in deletions/introns as covered]:bool:(t f)' \
  'dupecoverage=[include reads flagged as duplicates]:bool:(t f)' \
  'samstreamer=[load reads multithreaded for speed]:bool:(t f)' \
  'qtrim=[quality-trim mode]:mode:(f r l rl)' \
  'trimq=[quality-trim to this threshold if positive]:q:' \
  'border=[ignore this many bases on left and right end]:n:' \
  '*:file:_files' && ret=0

return ret
