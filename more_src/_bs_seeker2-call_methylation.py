#compdef bs_seeker2-call_methylation.py
# Documentation: https://github.com/BSSeeker/BSseeker2
# bs_seeker2-call_methylation.py: extract methylation levels from BS-Seeker2 alignments

local ret=1

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)'{-v,--version}'[show version]' \
  '(-i --input)'{-i+,--input=}'[BAM file from bs_seeker2-align.py]:file:_files' \
  '(-d --db)'{-d+,--db=}'[reference genome library path]:dir:_files -/' \
  '(-o --output-prefix)'{-o+,--output-prefix=}'[output filename prefix]:prefix:' \
  '--sorted[skip sorting if BAM already sorted]' \
  '--wig=[WIG output filename]:file:_files' \
  '--CGmap=[CGmap output filename]:file:_files' \
  '--ATCGmap=[ATCGmap output filename]:file:_files' \
  '(-x --rm-SX)'{-x,--rm-SX}'[remove reads with XS:i:1 tag]' \
  '--rm-CCGG[remove CCGG sites for RRBS bias correction]' \
  '--rm-overlap[remove overlaps in paired-end data]' \
  '--txt[output plain text instead of gzip]' \
  '(-r --read-no)'{-r+,--read-no=}'[minimum read coverage per site]:n:' && ret=0

return ret
