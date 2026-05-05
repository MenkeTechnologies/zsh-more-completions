#compdef standalone.sh

_arguments -s \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)'{-V,-v,--version}'[show version]' \
  '-b=[bind address]:addr:' \
  '-bmanagement=[management bind address]:addr:' \
  '-bsecure=[secure bind address]:addr:' \
  '(-P --properties)'{-P,--properties=}'[properties file]:file:_files' \
  '*-D-[set system property key=value]:property:' \
  '(-c --server-config)'{-c,--server-config=}'[server config file]:file:_files -g "*.xml"' \
  '--read-only-server-config=[read-only server config]:file:_files -g "*.xml"' \
  '-u=[multicast address]:addr:' \
  '--admin-only[start in admin-only mode]' \
  '--secmgr[install security manager]' \
  '--debug=[enable debugging on optional port]:port:' \
  '--start-mode=[start mode]:mode:(normal admin-only suspend)' \
  '--gc-log[enable GC logging]' \
  '--git-repo=[Git repo URL]:url:' \
  '--git-branch=[Git branch]:branch:' \
  '--stability=[stability level]:level:(experimental preview community default)'
