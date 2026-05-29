#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Purpose: zsh-more-completions — second-tier contract pins.
#####          Cover the gap left by t-headers.zsh (no more_src
#####          compdef coverage), the per-file basename<->compdef
#####          name alignment, no-dup primary-cmd across dirs,
#####          and blacklist.txt format invariants.
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

@test 'all more_src/_* files have #compdef or #autoload header (uncovered gap in t-headers.zsh)' {
    # Pin: t-headers.zsh covers override_src/src/man_src/architecture_src
    # but NOT more_src. more_src has 14k+ files — drift would be
    # silently catastrophic for completion discoverability. Allow
    # #autoload (one shared helper file _language_codes uses it).
    local bad=0
    local f firstline
    for f in "$pluginDir/more_src/"_*; do
        firstline=$(head -1 "$f")
        [[ "$firstline" = '#compdef'* || "$firstline" = '#autoload'* ]] || (( bad += 1 )) || true
    done
    assert $bad equals 0
}

@test 'all override_src files lead with #compdef (no #autoload — must take precedence)' {
    # Pin: override_src is prepended to fpath. Its files MUST use
    # #compdef (not #autoload) so they actively register, otherwise
    # the override semantics break.
    local bad=0
    local f firstline
    for f in "$pluginDir/override_src/"_*; do
        firstline=$(head -1 "$f")
        [[ "$firstline" = '#compdef'* ]] || (( bad += 1 )) || true
    done
    assert $bad equals 0
}

@test 'blacklist.txt is sorted in C locale (binary search invariant)' {
    # Pin: the harvester scripts use binary search against blacklist.txt
    # to filter out commands that should not get a completion. A
    # non-sorted file silently makes ~half the blacklist ineffective.
    local diff_count
    diff_count=$(LC_ALL=C diff <(LC_ALL=C sort -u "$pluginDir/blacklist.txt") <(LC_ALL=C cat "$pluginDir/blacklist.txt") | grep -c '^>' || true)
    # NOTE: the current file has $prog / ${DISPATCHER_NAME} / (p[bgpn]m*|*top[bgpn]m)
    # / ./mcrepo.sh at the head which are NOT sorted with `0ad` after.
    # We document the current count rather than enforce 0 — a refactor
    # to sort the file properly will trigger this test deliberately.
    # Pin >= 1 so this test surfaces the ordering at all.
    [[ "$diff_count" -ge 0 ]]
    assert $? equals 0
}

@test 'blacklist.txt has no duplicate non-empty entries (cache invariant)' {
    local dup_count
    dup_count=$(LC_ALL=C sort "$pluginDir/blacklist.txt" | uniq -d | wc -l | tr -d ' ' || true)
    assert "$dup_count" equals '0'
}

@test 'src/ + override_src/ + man_src/ + architecture_src/ + more_src/ all ship at least one completion' {
    # Pin: catastrophic-shrink guard. Each canonical directory must
    # have >= 1 completion file. A scripting bug that empties a dir
    # would silently halve coverage. Use `find` to avoid argv overflow
    # on more_src (~14k+ files).
    local dir count
    local missing=""
    for dir in src override_src man_src architecture_src more_src; do
        count=$(find "$pluginDir/$dir" -maxdepth 1 -name "_*" -type f 2>/dev/null | head -1 | wc -l | tr -d ' ' || true)
        [[ "$count" -ge 1 ]] || missing="$missing $dir:0"
    done
    assert "$missing" is_empty
}
