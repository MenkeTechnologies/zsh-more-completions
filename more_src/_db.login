#compdef db.login
# Documentation: https://grass.osgeo.org/grass-stable/manuals/db.login.html
# GRASS GIS: set user/password for DB driver/database

local ret=1

_arguments -s -S \
  '--help[print usage summary]' \
  '--verbose[verbose module output]' \
  '--quiet[quiet module output]' \
  '--ui[force launching GUI dialog]' \
  '-p[print connection settings and exit]' \
  'driver=[database driver]:driver:(dbf odbc ogr pg sqlite)' \
  'database=[database name]:database' \
  'user=[username for database authentication]:user' \
  'password=[password for database authentication]:password' \
  'host=[hostname (PostgreSQL/MySQL)]:host:_hosts' \
  'port=[port (PostgreSQL/MySQL)]:port' && ret=0

return ret
