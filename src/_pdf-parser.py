#compdef pdf-parser.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-s,--search}'[string to search in indirect objects (except streams)]'
  {-f,--filter}'[pass stream object through filters (FlateDecode]'
  {-o,--object}'[id of indirect object to select (version independent)]'
  {-r,--reference}'[id of indirect object being referenced (version]'
  {-e,--elements}'[type of elements to select (cxtsi)]'
  {-w,--raw}'[raw output for data and filters]'
  {-a,--stats}'[display stats for pdf document]'
  {-t,--type}'[type of indirect object to select]'
  {-v,--verbose}'[display malformed PDF elements]'
  {-x,--extract}'[filename to extract malformed content to]'
  {-H,--hash}'[display hash of objects]'
  {-n,--nocanonicalizedoutput}'[do not canonicalize the output]'
  {-d,--dump}'[filename to dump stream content to]'
  {-D,--debug}'[display debug info]'
  {-c,--content}'[display the content for objects without streams or]'
  '--searchstream[string to search in streams]'
  '--unfiltered[search in unfiltered streams]'
  '--casesensitive[case sensitive search in streams]'
  '--regex[use regex to search in streams]'
  {-g,--generate}'[generate a Python program that creates the parsed PDF]'
  {-y,--yara}'[YARA rule (or directory or @file) to check streams]'
  '*:filename:_files'
)

_arguments -s $arguments
