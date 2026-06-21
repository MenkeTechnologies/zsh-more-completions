#compdef prepDE.py
# Documentation: https://ccb.jhu.edu/software/stringtie/
# StringTie: build gene and transcript count matrices from -e coverage output

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-i --input --in)'{-i,--input,--in}'=[folder of sample subdirs or sample-list file]:path:_files' \
  '-g+[gene count matrix output]:gene matrix:_files' \
  '-t+[transcript count matrix output]:transcript matrix:_files' \
  '(-l --length)'{-l,--length}'=[average read length (default 75)]:int' \
  '(-p --pattern)'{-p,--pattern}'=[regex to select sample subdirectories]:regex' \
  '(-c --cluster)'{-c,--cluster}'[cluster overlapping genes with different IDs]' \
  '(-s --string)'{-s,--string}'=[prefix for StringTie gene IDs (default MSTRG)]:prefix' \
  '(-k --key)'{-k,--key}'=[prefix for script-assigned gene IDs (default prepG)]:prefix' \
  '-v[verbose processing]' \
  '--legend=[clustering legend output (default legend.csv)]:legend file:_files' && ret=0

return ret
