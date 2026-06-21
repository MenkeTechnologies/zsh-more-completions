#compdef PdbSearcher.py
# search PDB files for metal-center environment information (MCPB toolset)

local ret=1

_arguments -s -S \
  '-h[show help]' \
  '(-i --ion)'{-i,--ion}'[element symbol of ion, e.g. Zn]:symbol:' \
  '(-l --list)'{-l,--list}'[list file (one PDB file name per line)]:file:_files' \
  '(-e --env)'{-e,--env}'[environment output file name]:file:_files' \
  '(-s --sum)'{-s,--sum}'[summary output file name]:file:_files' \
  '(-c --cut)'{-c,--cut}'[bond-detection distance threshold in Angstrom]:cutoff:' && ret=0

return ret
