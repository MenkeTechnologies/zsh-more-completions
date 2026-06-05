#compdef s3
# Documentation: https://github.com/haskell-mafia/mismi
# Reference accessed: 2026-05-17
# Verified: upstream docs at the URL above.
# Source: https://github.com/haskell-mafia/mismi/blob/f6df07a52c6c8b1cf195b58d20ef109e390be014/mismi-cli/_s3.zsh
# Repository: haskell-mafia/mismi (mismi-cli/_s3.zsh)

if (($CURRENT == 2)); then
  local -a commands
  # We're completing the first word after "s3" -- the command.
  commands=("${(@f)$( s3 --help | sed '1,/^Available commands/d' | awk '{ printf "%s:",$1; for (i=2; i<=NF; i++) printf "%s ",$i; print "" }' )}")
  _describe -t commands 'commands' commands
else
  local cmdline

  index=$((CURRENT - 1))
  request=(--bash-completion-index $index)
  for arg in ${words[@]}; do
    request=(${request[@]} --bash-completion-word $arg)
  done

  completions=($( s3 "${request[@]}" ))

  for word in $completions; do
    local -a parts lines

    # just show the tail of the filter
    # in the completion list
    parts=(${(s,/,)word})

    if [[ $word[-1] == "/" ]]; then
      # for words ending in a slash treat the
      # it as a suffix which is overwritten when
      # the user types a character
      desc=($parts[-1]/)
      compadd -S \/ -q -d desc -- $word[0,-2]
    else
      desc=($parts[-1])
      compadd -d desc -- $word
    fi
  done
fi
