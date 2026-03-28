#compdef flamegraph.pl

local -a arguments

arguments=(
  '--title[change title text]:title:'
  '--width[width of image (default 1200)]:pixels:'
  '--height[height of each frame (default 16)]:pixels:'
  '--minwidth[omit smaller functions (default 0.1 pixels)]:pixels:'
  '--fonttype[font type (default "Verdana")]:font:'
  '--fontsize[font size (default 12)]:size:'
  '--countname[count type label (default "samples")]:label:'
  '--nametype[name type label (default "Function:")]:label:'
  '--colors[set color palette]:palette:(hot mem io wakeup chain java js perl green aqua orange red blue yellow purple)'
  '--hash[colors are keyed by function name hash]'
  '--cp[use consistent palette (palette.map)]'
  '--reverse[generate stack-reversed flame graph]'
  '--inverted[icicle graph]'
  '--negate[switch differential hues (blue<->red)]'
  '(- * :)--help[show help message]'
  '*:filename:_files'
)

_arguments -s -S $arguments
