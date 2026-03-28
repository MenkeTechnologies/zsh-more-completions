#compdef etags.emacs

local arguments

arguments=(
    {-a,--append}'[Append tag entries to existing tags file]'
    '--packages-only[For Ada files, only generate tags for packages]'
    '--declarations[In C and derived languages, create tags for function declarations]'
    {-D,--no-defines}'[Do not create tag entries for C #define constants and enum constants]'
    {-i,--include}'[Include a note in tag file indicating another tag file to search]'
    {-l,--language}'[Force the following files to be considered as written in the given language]:language'
    '--no-globals[Do not create tag entries for global variables]'
    '--no-line-directive[Ignore #line preprocessor directives in C and derived languages]'
    '--no-members[Do not create tag entries for members of structures]'
    {-Q,--class-qualify}'[Qualify tag names with their class name in C++, ObjC, Java, and Perl]'
    {-r,--regex}'[Make tags based on regexp matching]:regex'
    {-R,--no-regex}'[Do not create tags from regexps for the following files]'
    {-I,--ignore-indentation}'[In C and C++ do not assume that a closing brace in the first column ends a function]'
    {-o,--output}'[Write the tags to FILE]:FILE:_files'
    '--parse-stdin[Read from standard input and record tags as belonging to file NAME]:NAME:_files'
    {-V,--version}'[Print the version of the program]'
    {-h,--help}'[Print this help message]'
    '*:filename:_files'
)

_arguments -s $arguments
