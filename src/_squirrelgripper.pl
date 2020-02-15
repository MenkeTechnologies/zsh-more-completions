#compdef squirrelgripper.pl

local arguments

arguments=(
  '-h[|help .......... Help (print this information). Does not run anything else.]'
  '-newdb[.......... Creates a new SQLite Database using the -db name. WARNING: Deletes existing database.]'
  '-db[..... SQLite Database filename to extract information to.]'
  '-case[.... Case Tag to apply to the files in the database.]'
  '-tag[..... Optional Tag Name to apply to selected files in the database.]'
  '-dir[... Relative/Absolute Path to folder(s) containing files to extract metadata from]'
  '*:filename:_files'
)

_arguments -s $arguments
