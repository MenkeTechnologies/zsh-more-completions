#compdef alsa-info

# Autogenerated from man page /usr/share/man/man1/alsa-info.sh.1.gz

local arguments

arguments=(
    '--upload[Upload contents to the server (www. alsa-project. org or pastebin. ca).]'
    '--no-upload[Do not upload contents to the remote server.]'
    '--stdout[Print information to standard output.]'
    '--output[Specify file for output in no-upload mode.]:FILE'
    '--debug[Run utility as normal, but will not delete file (usually /tmp/alsa-info. txt).]'
    '--with-aplay[Includes output from aplay -l.]'
    '--with-amixer[Includes output from amixer.]'
    '--with-alsactl[Includes output from alsactl.]'
    '--with-configs[Includes output from ~/. asoundrc and /etc/asound. conf if they exist.]'
    '--update[Check server for updates.]'
    '--about[Print information about authors.]'
    '*:filename:_files'
)
_arguments -s $arguments
