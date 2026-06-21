#compdef dump2data.py
# Documentation: https://github.com/jewettaij/moltemplate/blob/master/doc/doc_dump2data.md
# Convert a LAMMPS dump trajectory into data files or coordinate text

local ret=1

_arguments -s -S \
  '-raw[generate 3-column ASCII text coordinate output]' \
  '-xyz[create 4-column ASCII text with atom-type and coordinates]' \
  '-t[select a particular frame by timestep]:timestep' \
  '-tstart[limit output to a time range (starting point)]:timestep' \
  '-tstop[limit output to a time range (ending point)]:timestep' \
  '-last[select the most recent complete frame]' \
  '-interval[desired spacing between frames]:number' \
  '-type[restrict output to certain atom types]:types' \
  '-id[restrict output to a range of atom IDs]:ids' \
  '-mol[restrict output to molecules within a range]:mol ids' \
  '-multi[generate a new data file for each frame]' \
  '-center[center coordinates around the geometric center]' \
  '-scale[multiply the coordinates by a constant]:number' \
  '-atomstyle[atom style format for output]:atom style:(full molecular atomic charge angle bond)' \
  '-xyz-id[place atom-ID in first column of XYZ output]' \
  '-xyz-mol[place molecule-ID in first column of XYZ output]' \
  '-xyz-type-mol[place atom-type and molecule-ID in XYZ output]' \
  '*:data file:_files' && ret=0

return ret
