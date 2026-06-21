#compdef bs_seeker2-build.py
# Documentation: https://github.com/BSSeeker/BSseeker2
# bs_seeker2-build.py: build bisulfite genome indexes for BS-Seeker2

local ret=1

_arguments -s -S \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)'{-v,--version}'[show version]' \
  '(-f --file)'{-f+,--file=}'[reference genome file in FASTA format]:file:_files' \
  '--aligner=[alignment tool]:aligner:(bowtie bowtie2 soap rmap)' \
  '(-p --path)'{-p+,--path=}'[path to aligner program directory]:dir:_files -/' \
  '(-d --db)'{-d+,--db=}'[reference genome library path]:dir:_files -/' \
  '(-r --rrbs)'{-r,--rrbs}'[build index for RRBS]' \
  '(-l --low)'{-l+,--low=}'[minimum fragment length excluding restriction site]:n:' \
  '(-u --up)'{-u+,--up=}'[maximum fragment length excluding restriction site]:n:' \
  '(-c --cut-site)'{-c+,--cut-site=}'[restriction enzyme cutting sites]:site:' && ret=0

return ret
