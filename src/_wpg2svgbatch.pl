#compdef wpg2svgbatch.pl

local arguments

arguments=(
  '-d[begins the conversion process in directory "dir"]'
  '-h[displays this help text.]'
  '-o[causes all the generated SVG files to be deposited in]'
  '-r[converts files in either the current directory or the]'
  '-u[replaces spaces with underscores in the target filename(s).]'
  '-v[displays statistics and the progress of the conversion.]'
  '*:filename:_files'
)

_arguments -s $arguments
