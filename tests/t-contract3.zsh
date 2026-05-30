#!/usr/bin/env zunit
#{{{                    MARK:Header
##### Purpose: zsh-more-completions — third-tier surface pins:
#####          - blacklist.txt is sorted under LC_ALL=C (deterministic ordering for diff)
#####          - blacklist.txt has no trailing whitespace on any line
#####          - BUG-PIN: src/_autopasswd + src/_expect_autopasswd contain CRLF line endings
#####          - architecture_src has at least one _gcc cross-compiler completion
#####          - no completion file in src/ is empty (zero-byte = silent broken completion)
#}}}***********************************************************

@setup {
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
}

@test 'blacklist.txt is sorted under LC_ALL=C (deterministic ordering for diff)' {
    # Pin: blacklist.txt is consumed line-by-line; sorted order under
    # LC_ALL=C (byte-wise) means diffs across commits stay minimal and
    # set-membership grep works O(log n) with sort | look. Locale-aware
    # sort drifts across machines.
    local rc
    LC_ALL=C sort -c "$pluginDir/blacklist.txt" 2>/dev/null
    rc=$?
    assert "$rc" same_as '0'
}

@test 'blacklist.txt has no trailing whitespace on any line' {
    # Pin: trailing whitespace on a blacklist entry would silently fail
    # exact-match comparisons (the entry `cmd ` doesn't equal `cmd`).
    local match
    match=$(grep -E '[[:space:]]+$' "$pluginDir/blacklist.txt" | head -1)
    assert "$match" is_empty
}

@test 'BUG-PIN: src/_autopasswd + src/_expect_autopasswd contain embedded carriage returns' {
    # BUG: these 2 files have stray \r bytes embedded inside the
    # `[description]'` strings (e.g., `account\r]'`). The CR character
    # corrupts the description text when zsh renders the completion
    # menu. Pin documents the current state so a real `tr -d '\r'`
    # sweep on src/_*passwd flips the test.
    local cr_files
    cr_files=$(perl -ne 'print "$ARGV\n" if /\r/' "$pluginDir/src"/_autopasswd "$pluginDir/src"/_expect_autopasswd 2>/dev/null | sort -u | wc -l | tr -d ' ')
    assert "$cr_files" same_as '2'
}

@test 'architecture_src ships at least one _gcc cross-compiler completion (arch-gcc)' {
    # Pin: the architecture_src tree is the cross-compiler completion
    # corpus. An empty arch_src would defeat the directory's purpose.
    # Confirm at least one `*-gcc` completion file exists.
    local count
    count=$(find "$pluginDir/architecture_src" -maxdepth 1 -type f -name "_*-gcc" 2>/dev/null | wc -l | tr -d ' ')
    [[ "$count" -ge 1 ]]
    assert $state equals 0
}

@test 'no completion file in src/ is empty (zero-byte = silently broken)' {
    # Pin: an empty `_foo` file in src/ silently breaks tab completion
    # for that command. compinit dispatches to it but finds no body.
    # Catch the empty file at lint time.
    local empty_count
    empty_count=$(find "$pluginDir/src" -maxdepth 1 -type f -name "_*" -empty 2>/dev/null | wc -l | tr -d ' ')
    assert "$empty_count" same_as '0'
}
