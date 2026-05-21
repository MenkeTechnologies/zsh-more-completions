#compdef standalone.sh
# Documentation: https://github.com/wildfly/wildfly-core/blob/main/process-controller/src/main/java/org/jboss/as/process/CommandLineConstants.java
# Reference accessed: 2026-05-21
# Verified: upstream docs at the URL above.

_arguments -s \
  '(- *)'{-h,--help,-help}'[show help]' \
  '(- *)'{-V,-v,--version,-version}'[show version]' \
  '-b=[bind address for public interface]:addr:' \
  '-bmanagement=[management bind address]:addr:' \
  '-bsecure=[secure interface bind address]:addr:' \
  '(-P --properties)'{-P,--properties=,-properties=}'[properties file]:file:_files' \
  '*-D-[set system property key=value]:property:' \
  '*-S-[set security property key=value]:property:' \
  '(-c --server-config)'{-c,--server-config=,-server-config=}'[server config file]:file:_files -g "*.xml"' \
  '--read-only-server-config=[read-only server config]:file:_files -g "*.xml"' \
  '-u=[default multicast address]:addr:' \
  '--admin-only[start in admin-only mode]' \
  '-secmgr[install security manager]' \
  '--debug=[enable debugging on optional port]:port:' \
  '--start-mode=[start mode]:mode:(normal admin-only suspend)' \
  '--graceful-startup=[graceful startup]:bool:(true false)' \
  '--git-repo=[Git repo URL for config history]:url:' \
  '--git-branch=[Git branch]:branch:' \
  '--git-auth=[Git auth elytron config]:auth:' \
  '--stability=[minimum stability level]:level:(experimental preview community default)' \
  '-mp=[module path]:path:_files -/' \
  '--default-jvm=[default JVM]:jvm:_files'
