#compdef rmToTrackHub.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/rmToTrackHub.pl
# Convert RepeatMasker output to a UCSC track hub

local ret=1

_arguments -s -S \
  '-version[display program version]' \
  '-genome=[UCSC genome identifier]:genome:' \
  '-hubname=[track hub name (no spaces)]:name:' \
  '-out=[RepeatMasker output file]:file:_files -g "*.out(|.gz)"' \
  '-align=[alignment file]:file:_files -g "*.align(|.gz)"' \
  '-chromsizes=[chromosome sizes file]:file:_files' \
  '(-f -force)'{-f,-force}'[overwrite existing hub directory]' \
  '-only_beds[generate only bigBed files, skip hub template files]' && ret=0

return ret
