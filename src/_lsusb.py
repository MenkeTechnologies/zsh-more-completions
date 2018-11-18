#compdef lsusb.py

local arguments

arguments=(
  '-h[this help]'
  '-i[interface information]'
  '-I[interface information, even for hubs]'
  '-u[empty hubs]'
  '-U[all hubs]'
  '-c[colors]'
  '-w[warning if usb.ids is not sorted correctly]'
  '-f[override filename for /usr/share/usb.ids]'
  '*:filename:_files'
)

_arguments -s $arguments
