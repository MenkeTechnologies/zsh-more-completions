#compdef xgettext5.18.pl

local arguments

arguments=(
  {-f,--files-from}'[*]'
  {-D,--directory}'[*]'
  {-u,--use-gettext-style}'[specifies that the source programs uses the Gettext style (e.g. %1)]'
  {-d,--default-domain}'[*]'
  {-o,--output}'[*]'
  {-p,--output-dir}'[*]'
  {-g,--gnu-gettext}'[enables GNU gettext interoperability by printing "#]'
  {-W,--wrap}'[if wrap is enabled, then, for entries with multiple file locations]'
  '-P[|--plugin pluginname]'
  '-P[|--plugin pluginname=*]'
  '-P[|--plugin pluginname=ext,ext2]'
  '-P[|--plugin My::Module::Name=*]'
  '-w[|--warnings]'
  '-now[|--nowarnings]'
  '-v[|--verbose]'
  {-v,-v}'[|--verbose --verbose :]'
  {-v,-v}'[|--verbose --verbose :]'
  '*:filename:_files'
)

_arguments -s $arguments
