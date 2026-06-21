#compdef buildRMLibFromEMBL.pl
# Documentation: https://github.com/Dfam-consortium/RepeatMasker/blob/master/util/buildRMLibFromEMBL.pl
# Build a RepeatMasker FASTA library from an EMBL-format database

local ret=1

_arguments -s -S \
  '1:embl_db:_files' && ret=0

return ret
