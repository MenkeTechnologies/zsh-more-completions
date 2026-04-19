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

@test 'scripts/print-repo-stats.sh exists' {
    assert "$pluginDir/scripts/print-repo-stats.sh" is_file
}

@test 'scripts/print-repo-stats.sh is executable' {
    run test -x "$pluginDir/scripts/print-repo-stats.sh"
    assert $state equals 0
}

# ─── README structure ────────────────────────────────────────────────────────

@test 'README.md documents STATS section' {
    run grep -q '^## // STATS' "$pluginDir/README.md"
    assert $state equals 0
}

@test 'README.md documents TESTING section' {
    run grep -q '^## // TESTING' "$pluginDir/README.md"
    assert $state equals 0
}

@test 'README.md references print-repo-stats.sh' {
    run grep -q 'print-repo-stats.sh' "$pluginDir/README.md"
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
    n=$(find "$pluginDir/more_src" -maxdepth 1 -name '_*' -type f 2>/dev/null | wc -l | tr -d ' ')
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
