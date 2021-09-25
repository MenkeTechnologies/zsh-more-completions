#compdef gdal2tiles.py

local arguments

arguments=(
  '--version[show programs version number and exit]'
  '(- * :)'{-h,--help}'[show this help message and exit]'
  {-p,--profile}'[tile cutting profile (mercator,geodetic,raster) -]'
  {-r,--resampling}'[resampling method (average,near,bilinear,cubic,cubicsp]'
  {-s,--s}'[_srs=SRS The spatial reference system used for the source input]'
  {-z,--zoom}'[zoom levels to render (format:2-5 or 10).]'
  {-e,--resume}'[resume mode. Generate only missing files.]'
  {-a,--srcnodata}'[NODATA transparency value to assign to the input data]'
  {-d,--tmscompatible}'[when using the geodetic profile, specifies the base]'
  {-v,--verbose}'[print status messages to stdout]'
  {-x,--exclude}'[exclude transparent tiles from result tileset]'
  {-q,--quiet}'[disable messages and status to stdout]'
  '--processes[number of processes to use for tiling]'
  {-k,--force-kml}'[generate KML for Google Earth - default for geodetic]'
  {-n,--no-kml}'[avoid automatic generation of KML files for EPSG:4326]'
  {-u,--url}'[URL address where the generated tiles are going to be]'
  {-w,--webviewer}'[web viewer to generate]'
  {-t,--title}'[title of the map]'
  {-c,--copyright}'[copyright for the map]'
  {-g,--googlekey}'[google Maps API key from]'
  {-b,--bingkey}'[bing Maps API key from https://www.bingmapsportal.com/]'
  '*:filename:_files'
)

_arguments -s $arguments
