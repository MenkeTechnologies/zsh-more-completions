#compdef grib2ctl.pl
# Documentation: https://www.cpc.ncep.noaa.gov/products/wesley/
# make a GrADS control (.ctl) descriptor file from a GRIB1 file (uses wgrib)

local ret=1

_arguments -s -S \
  '-verf[use end of averaging interval or verification time]' \
  '-0[use reference time for analyses (with gribmap)]' \
  '-ec_gbl[handle ECMWF reduced Gaussian grids]' \
  '*:grib file:_files -g "*.(grb|grb1|grib|grib1)"' && ret=0

return ret
