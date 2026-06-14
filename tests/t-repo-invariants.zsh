#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Repository-wide invariants (CI, blacklist, docs, layout)
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*" 2>/dev/null || true
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

# ─── Legal / metadata ───────────────────────────────────────────────────────

@test 'license.md exists' {
    assert "$pluginDir/license.md" is_file
}

@test 'license.md is non-empty' {
    run test -s "$pluginDir/license.md"
    assert $state equals 0
}

# ─── Blacklist (command names to skip when generating completions) ───────────

@test 'blacklist.txt exists' {
    assert "$pluginDir/blacklist.txt" is_file
}

@test 'blacklist.txt is non-empty' {
    run test -s "$pluginDir/blacklist.txt"
    assert $state equals 0
}

@test 'blacklist.txt has many entries' {
    local n
    n=$(wc -l < "$pluginDir/blacklist.txt" | tr -d ' ')
    assert $n is_greater_than 1000
}

@test 'blacklist.txt has no duplicate lines' {
    local total unique
    total=$(wc -l < "$pluginDir/blacklist.txt" | tr -d ' ')
    unique=$(sort -u "$pluginDir/blacklist.txt" | wc -l | tr -d ' ')
    assert $total equals $unique
}

@test 'blacklist.txt has no lines with leading whitespace' {
    local bad
    bad=$(grep '^[[:space:]]' "$pluginDir/blacklist.txt" 2>/dev/null | wc -l | tr -d ' ')
    assert $bad equals 0
}

# ─── GitHub Actions contract ─────────────────────────────────────────────────

@test '.github/workflows/ci.yml exists' {
    assert "$pluginDir/.github/workflows/ci.yml" is_file
}

@test 'CI workflow installs zsh and python3' {
    run grep -q 'zsh' "$pluginDir/.github/workflows/ci.yml"
    assert $state equals 0
    run grep -q 'python3' "$pluginDir/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'CI workflow runs zunit on tests' {
    run grep -q 'zunit' "$pluginDir/.github/workflows/ci.yml"
    assert $state equals 0
    run grep -Fq 'tests/*.zsh' "$pluginDir/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'CI workflow checks out repo into zsh-more-completions' {
    run grep -q 'path: zsh-more-completions' "$pluginDir/.github/workflows/ci.yml"
    assert $state equals 0
}

@test 'CI workflow cds into plugin dir before tests' {
    run grep -q 'cd zsh-more-completions' "$pluginDir/.github/workflows/ci.yml"
    assert $state equals 0
}

# ─── Helper scripts & regression tools ────────────────────────────────────────

@test 'scripts/print-repo-stats.zsh exists' {
    assert "$pluginDir/scripts/print-repo-stats.zsh" is_file
}

@test 'scripts/print-repo-stats.zsh is executable' {
    run test -x "$pluginDir/scripts/print-repo-stats.zsh"
    assert $state equals 0
}

# ─── README structure ────────────────────────────────────────────────────────

@test 'README.md documents STATS section' {
    # Allow the new `## [0xNN] // STATS` hex-prefixed form from the
    # strykelang doc template, as well as the legacy `## // STATS`.
    run grep -qE '^## (\[0x[0-9A-Fa-f]+\] )?// STATS' "$pluginDir/README.md"
    assert $state equals 0
}

@test 'README.md documents TESTING section' {
    run grep -qE '^## (\[0x[0-9A-Fa-f]+\] )?// TESTING' "$pluginDir/README.md"
    assert $state equals 0
}

@test 'README.md references print-repo-stats.zsh' {
    run grep -q 'print-repo-stats.zsh' "$pluginDir/README.md"
    assert $state equals 0
}

# ─── Completion source directories ──────────────────────────────────────────

@test 'src contains underscore completion files' {
    local n
    n=$(find "$pluginDir/src" -maxdepth 1 -name '_*' -type f 2>/dev/null | wc -l | tr -d ' ')
    assert $n is_greater_than 100
}

@test 'more_src contains underscore completion files' {
    local n
    n=$(find "$pluginDir/more_src" "$pluginDir/more_src2" "$pluginDir/more_src3" "$pluginDir/more_src4" "$pluginDir/more_src5" "$pluginDir/more_src6" -maxdepth 1 -name '_*' -type f 2>/dev/null | wc -l | tr -d ' ')
    assert $n is_greater_than 100
}

@test 'man_src contains underscore completion files' {
    local n
    n=$(find "$pluginDir/man_src" -maxdepth 1 -name '_*' -type f 2>/dev/null | wc -l | tr -d ' ')
    assert $n is_greater_than 100
}

@test 'architecture_src contains underscore completion files' {
    local n
    n=$(find "$pluginDir/architecture_src" -maxdepth 1 -name '_*' -type f 2>/dev/null | wc -l | tr -d ' ')
    assert $n is_greater_than 50
}

# ─── Tracked files: no compiled zwc in repo ───────────────────────────────────

@test 'git ls-files reports no .zwc completion artifacts' {
    local tracked
    tracked=$(git -C "$pluginDir" ls-files '*.zwc' 2>/dev/null | wc -l | tr -d ' ')
    assert $tracked equals 0
}

@test 'more_src and src do not ship _git-* files that shadow override_src/_git' {
    local f verb subdir shadows=0
    for subdir in more_src more_src2 more_src3 more_src4 more_src5 more_src6 src; do
        for f in "$pluginDir/$subdir"/_git-*(N); do
            verb=${${f:t}#_}
            verb=${verb%.sh}
            grep -qF "(( \$+functions[_git-${verb}] )) ||" "$pluginDir/override_src/_git" 2>/dev/null && (( shadows++ ))
        done
    done
    assert $shadows equals 0
}
