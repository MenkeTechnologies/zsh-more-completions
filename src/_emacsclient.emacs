#compdef emacsclient


local -a arguments

arguments=(
    {-a,--alternate-editor}'[if the Emacs server is not running, run the specified shell command instead.]':COMMAND
    {-c,--create-frame}'[create a new frame instead of trying to use the current Emacs frame.]'
    {-F,--frame-parameters}'[set the parameters of a newly-created frame.]':ALIST
    {-d,--display}'[tell the server to display the files on the given display.]':DISPLAY
    {-e,--eval}'[do not visit files but instead evaluate the arguments as Emacs Lisp expressions]'
    {-f,--server-file}'[use TCP configuration file FILENAME for communication.]':FILENAME
    {-n,--no-wait}'[returns immediately without waiting for you to "finish" the buffer in Emacs.]'
    {--nw,-t,--tty}'[open a new Emacs frame on the current terminal.]'
    {-s,--socket-name}'[use socket named FILENAME for communication.]':FILENAME
    {-V,--version}'[print version information and exit.]'
    {-H,--help}'[print this usage information message and exit]'
    '*:filename:_files'
)
_arguments -s -S $arguments
