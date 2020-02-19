#compdef syncqt.pl

local arguments

arguments=(
  '-copy[copy headers instead of include-fwd(default: no)]'
  '-remove-stale[removes stale headers              (default: yes)]'
  '-windows[force platform to Windows          (default: no)]'
  '-showonly[show action but not perform        (default: no)]'
  '-minimal[do not create CamelCase headers    (default: no)]'
  '-outdir[specify output directory for sync  (default: /home/manjaro/Desktop)]'
  '-builddir[specify build directory for sync   (default: same as -outdir)]'
  '-version[specify the modules version       (default: detect from qglobal.h)]'
  '-quiet[only report problems, not activity (same as -verbose 0)]'
  {-v,-verbose}'[sets the verbosity level (max. 4)  (default: 1)]'
  '-separate-module[create headers for <NAME> with original headers in]'
  '-help[this help]'
  '*:filename:_files'
)

_arguments -s $arguments
