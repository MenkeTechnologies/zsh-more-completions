#compdef gvmap

local -a arguments

arguments=(
    '-a[set the average number of artificial points]:k:'
    '-K[specify program for initial layout]:layout:'
    '-T[set the final output format]:format:'
    '-N[specifies the setting of a default node attribute during the rendering phase.]'
    '-G[specifies the setting of a graph attribute during the rendering phase.]'
    '-E[specifies the setting of a default edge attribute during the rendering phase.]'
    '-n[specifies the setting of a default node attribute during the layout phase.]'
    '-g[specifies the setting of a graph attribute during the layout phase.]'
    '-e[specifies the setting of a default edge attribute during the layout phase.]'
    '-A[specify a flag to be passed to gvmap]:flag:'
    '-v[Set verbose mode.]'
    '-V[Print version information and exit.]'
    '-?[Print usage information and exit.]'
    '*:filename:_files'
)
_arguments -s -S $arguments
