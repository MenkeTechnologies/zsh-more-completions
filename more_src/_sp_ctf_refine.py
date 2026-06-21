#compdef sp_ctf_refine.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/sphire/sphire/bin/sp_ctf_refine.py
# SPHIRE: per-particle CTF (defocus) refinement

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '(-r --range)'{-r,--range}'=[defocus search range in microns]:um:' \
  '(-d --delta)'{-d,--delta}'=[defocus step size in microns]:um:' \
  '(-res --resolution)'{-res,--resolution}'=[nominal resolution in angstrom]:ang:' \
  '(-apix --apix)'{-apix,--apix}'=[pixel size in angstrom]:apix:' \
  '(-m --mask)'{-m,--mask}'=[path to adaptive mask for the volume]:file:_files' \
  '(-num --number_particles)'{-num,--number_particles}'=[number of particles to process]:n:' \
  '(-v2 --volume2)'{-v2,--volume2}'=[path to second half map]:file:_files' \
  '(-c --chunk)'{-c,--chunk}'=[path to one of the chunk files]:file:_files' \
  '*::arg:->args' && ret=0

case $state in
  args)
    _values 'subcommand' \
      'meridien[run by specifying meridien folder]' \
      'manual[run by specifying parameters manually]' && ret=0
    ;;
esac

return ret
