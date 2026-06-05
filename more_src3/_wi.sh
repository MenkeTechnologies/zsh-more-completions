#compdef wi
# Documentation: https://github.com/typebrook/helper/blob/main/zsh/_wi.sh
# Reference accessed: 2026-05-21
# Verified: upstream docs at the URL above.
# Source: https://github.com/typebrook/helper (zsh/_wi.sh)
# Personal log-note completion: completes .md filenames under ~/log,
# excluding logseq/ and ISO-date filenames.

function _wi() {
    compadd -S '' $(
      cd ~/log && \
      find -not -path "./logseq/*" -name '*.md' -printf "%f\n" | \
      sed -E '/^[0-9]{4}-[0-9]{2}-[0-9]{2}/d; s/.md$//'
    )
}

_wi
