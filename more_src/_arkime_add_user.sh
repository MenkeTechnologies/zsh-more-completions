#compdef arkime_add_user.sh
# Documentation: https://raw.githubusercontent.com/arkime/arkime/main/viewer/addUser.js
# Arkime add-user helper: userid "name" password [flags]

local ret=1

_arguments -s -S \
  '(-c --config)'{-c,--config}'=[config file or url]:config:_files' \
  '-n=[node name section]:node:' \
  '--insecure[disable certificate verification]' \
  '--admin[grant admin privileges]' \
  '(--apionly --noweb)'{--apionly,--noweb}'[disable web ui access, api only]' \
  '--webauth[enable web auth header]' \
  '--webauthonly[web auth header only]' \
  '--email[allow email search]' \
  '--no-email[disallow email search]' \
  '--packetSearch[allow packet search]' \
  '--no-packetSearch[disallow packet search]' \
  '(--remove --removeEnabled)'{--remove,--removeEnabled}'[allow removing data]' \
  '--no-remove[disallow removing data]' \
  '--disablePcapDownload[disable pcap download]' \
  '--no-disablePcapDownload[allow pcap download]' \
  '--hideFiles[hide files tab]' \
  '--no-hideFiles[show files tab]' \
  '--hidePcap[hide pcap]' \
  '--no-hidePcap[show pcap]' \
  '--hideStats[hide stats tab]' \
  '--no-hideStats[show stats tab]' \
  '--expression=[forced query expression]:expr:' \
  '--roles=[comma separated roles]:roles:' \
  '--timeLimit=[query time limit in hours]:hours:' \
  '--createOnly[create user only, do not update]' \
  '1:userid:' \
  '2:name:' \
  '3:password:' \
  '*::arg:' && ret=0

return ret
