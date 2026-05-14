# Source: https://github.com/dmac/fezzik/blob/8b7b761f7e7d0fa5455ff593466586eef43636d7/completions/_fez.zsh
# Repository: dmac/fezzik (completions/_fez.zsh)
#compdef fez

if [[ "${words[-2]}" == "fez" ]] ; then
  compadd $(fez --destinations 2> /dev/null | GREP_OPTIONS='' grep -v '(in')
else
  compadd $(fez --task-names 2> /dev/null | GREP_OPTIONS='' grep -v '(in')
fi
