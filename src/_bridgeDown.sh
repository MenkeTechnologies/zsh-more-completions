#compdef bridgeDown.sh

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help]'
  {-M,--collect-mobile-documents}'[(default: all containers)]'
  {-s,--sysdiagnose}'[do not collect whats already part of sysdiagnose]'
  {-t,--uitest}'[collect logs for UI tests]'
  {-n,--name}'[change the device name]'
  {-f,--full}'[do a full diagnose, including server checks]'
  {-d,--doc}'[collect additional information about the document at that path.]'
  {-e,--no-reveal}'[do not reveal diagnose in the Finder when done]'
  {-a,--all}'[show all system logs]'
  {-p,--predicate}'[additional predicate (see `log help predicates`)]'
  {-x,--process}'[filter events from the specified process]'
  {-d,--path}'[use <logs-dir> instead of default]'
  {-S,--start}'[HH:MM:SS" Start log dump from a specified date]'
  {-E,--end}'[HH:MM:SS"   Stop log dump after a specified date]'
  '-b[            Only show CloudDocs logs]'
  '-f[            Only show FileProvider related logs]'
  '-F[only show FruitBasket related logs]'
  '-g[            Only show Genstore related logs]'
  '-i[only show SQL and CloudDocs logs]'
  {-z,--local-timezone}'[display timestamps within local timezone]'
  {-o,--output}'[redirect output to <file-path>]'
  {-d,--database-path}'[use the database at <db-path>]'
  {-i,--itemless}'[dont dump items from the db]'
  {-u,--upgrade}'[upgrade the db if necessary before dumping]'
  '-g[dump global activity of the iCloud Drive]'
  '-i[dump changes incrementally]'
  {-S,--scope}'[restrict the NSMetadataQuery scope to docs, data, external or a combination]'
  '*:filename:_files'
)

_arguments -s $arguments
