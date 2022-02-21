#compdef etags.emacs

local arguments

arguments=(
  {-a,--append}'[append tag entries to existing tags file.]'
  '--packages-only[for Ada files, only generate tags for packages.]'
  '--declarations[in C and derived languages, create tags for function declarations]'
  {-D,--no-defines}'[dont create tag entries for C #define constants and enum constants.]'
  {-i,--include}'[include a note in tag file indicating that, when searching for]'
  {-l,--language}'[force the following files to be considered as written in the]'
  '--no-globals[do not create tag entries for global variables in some]'
  '--no-line-directive[ignore #line preprocessor directives in C and derived languages.]'
  '--no-members[do not create tag entries for members of structures]'
  {-Q,--class-qualify}'[qualify tag names with their class name in C++, ObjC, Java, and Perl.]'
  {-r,--regex}'[or --regex=@regexfile]'
  '--regex[/proc\[ \t\]+\(\[^ \t\]+\)/\1/.".]'
  {-R,--no-regex}'[dont create tags from regexps for the following files.]'
  {-I,--ignore-indentation}'[in C and C++ do not assume that a closing brace in the first]'
  {-o,--output}'[write the tags to FILE.]'
  '--parse-stdin[read from standard input and record tags as belonging to file NAME.]'
  {-V,--version}'[print the version of the program.]'
  {-h,--help}'[print this help message.]'
  '*:filename:_files'
)

_arguments -s $arguments
