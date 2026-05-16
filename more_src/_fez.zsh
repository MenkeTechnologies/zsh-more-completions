#compdef fez
# Documentation: https://man.archlinux.org/search?q=fez
# Reference accessed: 2026-05-16
# Source: https://github.com/dmac/fezzik/blob/8b7b761f7e7d0fa5455ff593466586eef43636d7/completions/_fez.zsh
# Repository: dmac/fezzik (completions/_fez.zsh)

if [[ "${words[-2]}" == "fez" ]] ; then
  compadd $(fez --destinations 2> /dev/null | GREP_OPTIONS='' grep -v '(in')
else
  compadd $(fez --task-names 2> /dev/null | GREP_OPTIONS='' grep -v '(in')
fi
