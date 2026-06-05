#compdef smart-sudo
# Documentation: https://github.com/ray-kast/zrc/blob/b765d536beb42adda1286582d57e3242f0312c2a/completion/_smart-sudo.zsh
# Reference accessed: 2026-05-21
# Verified: upstream source at the URL above (delegates to zsh's built-in _sudo).
# Source: https://github.com/ray-kast/zrc/blob/b765d536beb42adda1286582d57e3242f0312c2a/completion/_smart-sudo.zsh
# Repository: ray-kast/zrc (completion/_smart-sudo.zsh)

function _smart-sudo() {
  service="sudo"
  _sudo
}

_smart-sudo $@
