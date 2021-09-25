#compdef sqlparser.py

local arguments

arguments=(
  '-f[/sanforensics/smsmms.db -o report.tsv]'
  '-f[/sanforensics/smssms.db -r -o report.txt]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '-f[.db, --file=smsmms.db]'
  '-o[.tsv, --output=output.tsv]'
  {-r,--raw}'[optional. Will out put data field in a raw format and]'
  '*:filename:_files'
)

_arguments -s $arguments
