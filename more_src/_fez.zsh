#compdef fez
# Documentation: https://github.com/dmac/fezzik/blob/master/completions/_fez.zsh
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: dmac/fezzik (completions/_fez.zsh)

if [[ "${words[-2]}" == "fez" ]] ; then
  compadd $(fez --destinations 2> /dev/null | GREP_OPTIONS='' grep -v '(in')
else
  compadd $(fez --task-names 2> /dev/null | GREP_OPTIONS='' grep -v '(in')
fi
