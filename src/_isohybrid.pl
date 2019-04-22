#compdef isohybrid.pl

local arguments

arguments=(
  '-h[number of default geometry heads]'
  '-s[number of default geometry sectors]'
  '-entry[specify partition entry number (1-4)]'
  '-offset[specify partition offset (default 0)]'
  '-type[specify partition type (default 0x17)]'
  '-id[specify MBR ID (default random)]'
  '-forcehd0[always assume we are loaded as disk ID 0]'
  '-ctrlhd0[assume disk ID 0 if the Ctrl key is pressed]'
  '-partok[allow booting from within a partition]'
  '*:filename:_files'
)

_arguments -s $arguments
