#compdef dpdk-devbind.py
# Documentation: https://doc.dpdk.org/guides/tools/devbind.html
# DPDK utility to bind and unbind devices from kernel drivers

local ret=1

_arguments -s -S \
  '(- *)'{--help,--usage}'[display usage information and quit]' \
  '(-s --status)'{-s,--status}'[display current device status]' \
  '(-b --bind)'{-b+,--bind=}'[select the driver to use or none to unbind]:driver:(none vfio-pci uio_pci_generic igb_uio mlx5_core)' \
  '(-u --unbind)'{-u,--unbind}'[unbind a device (equivalent to -b none)]' \
  '--force[override default protection of active Linux devices]' \
  '--uid=[set VFIO device user ownership]:uid' \
  '--gid=[set VFIO device group ownership]:gid' \
  '--noiommu-mode[enable unsafe no-IOMMU mode for vfio-pci]' \
  '*:device:_default' && ret=0

return ret
