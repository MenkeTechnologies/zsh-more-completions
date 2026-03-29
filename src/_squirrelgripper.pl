#compdef squirrelgripper.pl

local -a arguments

arguments=(
  '-h[print help information and exit]'
  '-newdb[.......... Creates a new SQLite Database using the -db name]'
  '-db[..... SQLite Database filename to extract information to.]'
  '-case[.... Case Tag to apply to the files in the database.]'
  '-tag[..... Optional Tag Name to apply to selected files in the database.]'
  '-dir[... Relative/Absolute Path to folder(s) containing files to extract metadata from]'
  '*:filename:_files'
)

_arguments -s -S $arguments
