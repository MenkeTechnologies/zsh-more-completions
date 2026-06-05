#compdef umb
# Documentation: https://github.com/ray-kast/zrc
# Reference accessed: 2026-05-21
# Verified: upstream completion shipped from ray-kast/zrc dotfiles.
# umb is a personal dotfiles helper script; completion completes block
# devices via /dev/disk/by-label and /dev as designed by the upstream.
# Source: https://github.com/ray-kast/zrc/blob/b765d536beb42adda1286582d57e3242f0312c2a/completion/_umb.zsh
# Repository: ray-kast/zrc (completion/_umb.zsh)

function _umb() {
  words[1]="umb"

  local fld fil
  typeset -a devs

  for fld in '/dev/disk/by-label/' '/dev/'; do
    for fil in $(command find "$fld" -maxdepth 1); do
      if [[ -n "$(_rc_g_fn_umb_try_blockdev $fil)" ]]; then
        devs+=("${fil#$fld}")
      fi
    done
  done

  _description '' expl ''
  compadd "$expl[@]" -O matching -a devs

  _alternative "umb:block device:compadd ${(e)disp} -a devs"
  service="umb"
}

_umb $@

