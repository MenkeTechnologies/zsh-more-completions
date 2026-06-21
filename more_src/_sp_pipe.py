#compdef sp_pipe.py
# Documentation: https://raw.githubusercontent.com/cryoem/eman2/master/sphire/sphire/bin/sp_pipe.py
# SPHIRE: pipeline utilities (substack, micrograph organization, resampling)

local ret=1

_arguments -s -S \
  '(-h --help)'{-h,--help}'[show help]' \
  '--min_nr_segments=[minimum number of segments for filament validity]:n:' \
  '--isac_class_avgs_path=[path to ISAC class average stack file]:file:_files' \
  '--selection_list=[file containing selection criteria for micrographs]:file:_files' \
  '--resample_ratio=[ratio for micrograph resampling]:f:' \
  '--check_consistency[generate consistency reports]' \
  '--reverse[reverse operation mode]' \
  '*::subcommand:->cmds' && ret=0

case $state in
  cmds)
    _values 'subcommand' \
      'isac_substack[create a virtual stack from ISAC or Beautifier outputs]' \
      'resample_micrographs[resample micrographs by a specified ratio]' \
      'organize_micrographs[organize micrographs based on a selection list]' \
      'reorder_filaments[reorder filament segments]' \
      'restacking[restack particles]' \
      'angular_distribution[create angular distribution plot]' \
      'moon_eliminator[eliminate moons from a map]' && ret=0
    ;;
esac

return ret
