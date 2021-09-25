#compdef flamegraph.pl

local arguments

arguments=(
  '--title[# change title text]'
  '--width[# width of image (default 1200)]'
  '--height[# height of each frame (default 16)]'
  '--minwidth[# omit smaller functions (default 0.1 pixels)]'
  '--fonttype[# font type (default "Verdana")]'
  '--fontsize[# font size (default 12)]'
  '--countname[# count type label (default "samples")]'
  '--nametype[# name type label (default "Function:")]'
  '--colors[# set color palette. choices are: hot (default), mem, io]'
  '--hash[# colors are keyed by function name hash]'
  '--cp[# use consistent palette (palette.map)]'
  '--reverse[# generate stack-reversed flame graph]'
  '--inverted[# icicle graph]'
  '--negate[# switch differential hues (blue<->red)]'
  '--help[# this message]'
  '*:filename:_files'
)

_arguments -s $arguments
