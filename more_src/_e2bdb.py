#compdef e2bdb.py
# Documentation: https://blake.bcm.edu/doxygen/programs_help_html/e2bdb.html
# Various utilities related to BDB databases

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--version[show version and exit]' \
  '(-c --cleanup)'{-c,--cleanup}'[clean up database cache]' \
  '(-F --force)'{-F,--force}'[force an action that would normally fail]' \
  '--delete[delete or empty the named database(s)]' \
  '(-a --all)'{-a,--all}'[list per-particle info]' \
  '(-l --long)'{-l,--long}'[long listing]' \
  '(-s --short)'{-s,--short}'[dense listing of names only]' \
  '--filt=[only include names containing the string]:str' \
  '--filtexclude=[exclude names containing the string]:str' \
  '--match=[only include dictionaries matching regex]:regex' \
  '--exclude=[database containing a list of exclusion keys]:db' \
  '(-D --dump)'{-D,--dump}'[list contents of an entire database]' \
  '--smalldump[list contents with only 2 items per dictionary]' \
  '--extractplots[extract plot sets as text files]' \
  '--check[check for self-consistency and errors]' \
  '--nocache[do not use the database cache]' \
  '--merge[merge contents of BDB 2-N into BDB 1]' \
  '--makevstack=[create a virtual BDB stack]:str' \
  '--appendvstack=[append to/create a virtual BDB stack]:str' \
  '(-v --verbose)'{-v,--verbose}'=[verbosity level 0-9]:level' \
  '--list=[file with list of images for virtual stack]:file:_files' \
  '--exlist=[file with list of images to exclude]:file:_files' \
  '--restore=[write changes in derived virtual stack back]:str' \
  '--ppid=[set parent process PID]:pid' \
  '--checkctf[verify CTF information and provide statistics]' \
  '--step=[process subset, init,step[,max]]:params' \
  '*:database:_files' && ret=0

return ret
