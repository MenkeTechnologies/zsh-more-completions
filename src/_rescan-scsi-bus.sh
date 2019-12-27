#compdef rescan-scsi-bus.sh

local arguments

arguments=(
  '-a[scan all targets, not just currently existing \[default: disabled\]]'
  '-d[enable debug \[default: 0\]]'
  '-l[activates scanning for LUNs 0--7 \[default: 0\]]'
  '-L[activates scanning for LUNs 0--NUM \[default: 0\]]'
  '-w[scan for target device IDs 0--15 \[default: 0--7\]]'
  '-c[enables scanning of channels 0 1 \[default: 0 / all detected ones\]]'
  '-m[update multipath devices \[default: disabled\]]'
  '-r[enables removing of devices \[default: disabled\]]'
  '-f[flush failed multipath devices \[default: disabled\]]'
  '-i[issue a FibreChannel LIP reset \[default: disabled\]]'
  '-u[look for existing disks that have been remapped]'
  '-s[look for resized disks and reload associated multipath devices, if applicable]'
  '--alltargets[same as -a]'
  '--remove[same as -r]'
  '--flush[same as -f]'
  '--issue-lip[same as -i]'
  '--wide[same as -w]'
  '--multipath[same as -m]'
  '--forceremove[Remove stale devices (DANGEROUS)]'
  '--forcerescan[Remove and readd existing devices (DANGEROUS)]'
  '--nooptscan[dont stop looking for LUNs if 0 is not found]'
  '--color[use coloured prefixes OLD/NEW/DEL]'
  '--hosts[scan only host(s) in LIST]'
  '--channels[scan only channel(s) in LIST]'
  '--ids[scan only target ID(s) in LIST]'
  '--luns[scan only lun(s) in LIST]'
  '--sync[/nosync: Issue a sync / no sync \[default: sync if remove\]]'
  '--attachpq3[Tell kernel to attach sg to LUN 0 that reports PQ=3]'
  '--reportlun2[Tell kernel to try REPORT_LUN even on SCSI2 devices]'
  '--largelun[Tell kernel to support LUNs > 7 even on SCSI2 devs]'
  '--sparselun[Tell kernel to support sparse LUN numbering]'
  '--update[same as -u]'
  '--resize[same as -s]'
  '*:filename:_files'
)

_arguments -s $arguments
