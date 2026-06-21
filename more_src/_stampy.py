#compdef stampy.py
# Documentation: https://github.com/uwb-linux/stampy
# Stampy: statistical short-read mapper for Illumina sequence reads

local ret=1

_arguments -s -S \
  '-G+[build genome index file PREFIX.stidx from fasta]:prefix:' \
  '--species=[species name for genome index]:species:' \
  '--assembly=[assembly name for genome index]:assembly:' \
  '-g+[use genome index file PREFIX.stidx]:prefix:' \
  '-H+[build hash file PREFIX.sthash]:prefix:' \
  '-h+[use hash file PREFIX.sthash]:prefix:' \
  '-M+[map fastq/fasta/BAM file(s)]:reads:_files' \
  '-o+[output file]:file:_files' \
  '-t+[number of threads]:int:' \
  '-f+[output format]:format:(sam maqtxt maqmap maqmapShort maqmapShortN)' \
  '--substitutionrate=[expected substitution rate / divergence from reference]:rate:' \
  '--insertsize=[mean insert size for paired-end]:int:' \
  '--insertsd=[insert size standard deviation]:int:' \
  '--readgroup=[read group(s) to map / re-map]:rg:' \
  '--bwaoptions=[options passed to bwa for pre-mapping]:options:' \
  '--bamkeepgoodreads[keep reads already mapped well by bwa]' \
  '--bwamark[mark reads mapped by BWA and copied by Stampy with XP:Z:BWA tag]' \
  '--sensitive[more sensitive but slower mapping]' \
  '--gatkcigarworkaround[emit GATK-compatible CIGAR strings]' \
  '*:file:_files' && ret=0

return ret
