#compdef domain.sh

_arguments -s \
  '(- *)'{-h,--help}'[show help]' \
  '(- *)'{-V,-v,--version}'[show version]' \
  '-b=[bind address]:addr:' \
  '-bmanagement=[management bind address]:addr:' \
  '-bsecure=[secure bind address]:addr:' \
  '(-P --properties)'{-P,--properties=}'[properties file]:file:_files' \
  '*-D-[set system property key=value]:property:' \
  '(-c --domain-config)'{-c,--domain-config=}'[domain config file]:file:_files -g "*.xml"' \
  '--read-only-domain-config=[read-only domain config]:file:_files -g "*.xml"' \
  '--host-config=[host config file]:file:_files -g "*.xml"' \
  '--read-only-host-config=[read-only host config]:file:_files -g "*.xml"' \
  '--backup[locally cache domain config]' \
  '--cached-dc[boot from cached config if DC unreachable]' \
  '--admin-only[start in admin-only mode]' \
  '--secmgr[install security manager]' \
  '--debug=[enable debugging on optional port]:port:' \
  '--gc-log[enable GC logging]' \
  '--git-repo=[Git repo URL]:url:' \
  '--git-branch=[Git branch]:branch:' \
  '--stability=[stability level]:level:(experimental preview community default)'
