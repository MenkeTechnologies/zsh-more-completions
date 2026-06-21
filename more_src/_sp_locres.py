#compdef sp_locres.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/sphire/sphire/bin/sp_locres.py
# SPHIRE: compute local resolution from two half maps

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--prefix=[prefix for the output files]:prefix:' \
  '--wn=[size of window for local real-space FSC]:n:' \
  '--step=[shell step in Fourier size in pixels]:f:' \
  '--cutoff=[resolution cut-off for FSC]:f:' \
  '--radius=[sphere radius if no maskfile]:r:' \
  '--fsc=[save overall FSC curve to file]:file:_files' \
  '--res_overall=[overall resolution at the cutoff level]:f:' \
  '--out_ang_res[create a local resolution file in Angstroms]' \
  '--apix=[pixel size in Angstrom]:apix:' \
  '--MPI[use MPI version]' \
  '*:file:_files' && ret=0

return ret
