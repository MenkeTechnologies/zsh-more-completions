#compdef bs_seeker2-align.py
# Documentation: https://github.com/BSSeeker/BSseeker2
# bs_seeker2-align.py: map bisulfite-treated reads to a reference genome

local ret=1

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(-i --input)'{-i+,--input=}'[single-end read file]:file:_files' \
  '(-1 --input_1)'{-1+,--input_1=}'[paired-end mate 1 file]:file:_files' \
  '(-2 --input_2)'{-2+,--input_2=}'[paired-end mate 2 file]:file:_files' \
  '(-I --minins)'{-I+,--minins=}'[minimum insert size for paired alignments]:n:' \
  '(-X --maxins)'{-X+,--maxins=}'[maximum insert size for paired alignments]:n:' \
  '(-r --rrbs)'{-r,--rrbs}'[map to RRBS-specific index]' \
  '(-c --cut-site)'{-c+,--cut-site=}'[restriction enzyme sites for RRBS]:site:' \
  '(-L --low)'{-L+,--low=}'[minimum RRBS fragment length]:n:' \
  '(-U --up)'{-U+,--up=}'[maximum RRBS fragment length]:n:' \
  '(-t --tag)'{-t+,--tag=}'[directional (N) or undirectional (Y) library]:tag:(N Y)' \
  '(-s --start_base)'{-s+,--start_base=}'[first read cycle to map]:n:' \
  '(-e --end_base)'{-e+,--end_base=}'[last read cycle to map]:n:' \
  '(-a --adapter)'{-a+,--adapter=}'[adapter sequence file]:file:_files' \
  '--am=[allowed adapter mismatches]:n:' \
  '(-g --genome)'{-g+,--genome=}'[reference genome filename]:file:_files' \
  '(-m --mismatches)'{-m+,--mismatches=}'[allowed mismatches as count or percentage]:n:' \
  '--aligner=[alignment tool]:aligner:(bowtie bowtie2 soap rmap)' \
  '(-p --path)'{-p+,--path=}'[aligner program path]:dir:_files -/' \
  '(-d --db)'{-d+,--db=}'[reference genome library path]:dir:_files -/' \
  '(-l --split_line)'{-l+,--split_line=}'[lines per file split]:n:' \
  '(-o --output)'{-o+,--output=}'[output filename]:file:_files' \
  '(-f --output-format)'{-f+,--output-format=}'[output format]:fmt:(bam sam bs_seeker1)' \
  '--no-header[suppress SAM header lines]' \
  '--temp_dir=[temporary directory path]:dir:_files -/' \
  '--XS=[XS tag filter definition]:def:' \
  '--XSteve[alternative XS filter for plants]' \
  '(-M --multiple-hit)'{-M+,--multiple-hit=}'[file for multiple-hit reads]:file:_files' \
  '(-u --unmapped)'{-u+,--unmapped=}'[file for unmapped reads]:file:_files' \
  '(--bt-p --bt2-p)'{--bt-p=,--bt2-p=}'[thread count for aligner]:n:' && ret=0

return ret
