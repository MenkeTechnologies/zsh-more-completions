#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: Test coding conventions used across all completion files
#}}}***********************************************************

@setup {
    unset -m "ZPWR_*"
    0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
    0="${${(M)0:#/*}:-$PWD/$0}"
    pluginDir="${0:h:A}"
    src="$pluginDir/src"
    msrc="$pluginDir/man_src"
    osrc="$pluginDir/override_src"
    asrc="$pluginDir/architecture_src"
}

# ─── _files helper usage ──────────────────────────────────────────────────────

@test 'src completions use _files for filename arguments' {
    local count
    count=$(grep -rl '_files' "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 100
}

@test 'man_src completions use _files for filename arguments' {
    local count
    count=$(grep -rl '_files' "$msrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 100
}

@test 'override_src completions use _files or _directories' {
    local count
    count=$(grep -rlE '_files|_directories' "$osrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 4
}

# ─── option description format ────────────────────────────────────────────────

@test 'src completions use bracket description format' {
    local count
    count=$(grep -rl "'\[" "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 1000
}

@test 'man_src completions use bracket description format' {
    local count
    count=$(grep -rl "'\[" "$msrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 1000
}

@test '_make options have bracket descriptions' {
    run grep -cF "'[" "$src/_make"
    assert $state equals 0
}

@test '_grep options have bracket descriptions' {
    run grep -cF "'[" "$src/_grep"
    assert $state equals 0
}

@test '_rsync options have bracket descriptions' {
    run grep -cF "'[" "$src/_rsync"
    assert $state equals 0
}

# ─── combined short+long option format ────────────────────────────────────────

@test 'src completions use combined short+long options' {
    local count
    count=$(grep -rl '{-.,--' "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 500
}

@test 'man_src completions use combined short+long options' {
    local count
    count=$(grep -rl '{-.,--' "$msrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 100
}

@test '_grep uses combined short+long for -E/--extended-regexp' {
    run grep -c '{-E,--extended-regexp}' "$src/_grep"
    assert $state equals 0
}

@test '_rsync uses combined short+long for -v/--verbose' {
    run grep -cF '{-v,--verbose}' "$src/_rsync"
    assert $state equals 0
}

@test '_rsync uses combined short+long for -a/--archive' {
    run grep -cF '{-a,--archive}' "$src/_rsync"
    assert $state equals 0
}

@test '_make uses combined short+long for -j/--jobs' {
    run grep -cE '\{-j[+=]?,--jobs[+=]?\}' "$src/_make"
    assert $state equals 0
}

@test '_sed uses combined short+long for -n/--quiet/--silent' {
    run grep -cF '{-n,--quiet,--silent}' "$src/_sed"
    assert $state equals 0
}

@test '_cargo uses combined short+long for -V/--version' {
    run grep -cF '{-V,--version}' "$src/_cargo"
    assert $state equals 0
}

# ─── -s flag on _arguments ────────────────────────────────────────────────────

@test '_arguments -s used widely in src' {
    local count
    count=$(grep -rlF '_arguments -s' "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 1000
}

@test '_arguments -s used widely in man_src' {
    local count
    count=$(grep -rlF '_arguments -s' "$msrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 1000
}

@test '_arguments -s used in architecture_src' {
    local count
    count=$(grep -rlF '_arguments -s' "$asrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 100
}

# ─── no trailing whitespace on key lines ──────────────────────────────────────

@test '_claude has no trailing whitespace on compdef line' {
    run head -1 "$osrc/_claude"
    assert $output same_as '#compdef claude'
}

@test '_express has no trailing whitespace on compdef line' {
    run head -1 "$osrc/_express"
    assert $output same_as '#compdef express'
}

# ─── architecture_src conventions ────────────────────────────────────────────

@test 'architecture_src files use _arguments' {
    local bad=0
    local sample=0
    for f in "$asrc/"_*; do
        (( sample += 1 ))
        grep -qF '_arguments' "$f" || (( bad += 1 )) || true
        [[ $sample -ge 100 ]] && break
    done
    assert $bad equals 0
}

@test 'architecture_src files have #compdef header' {
    local bad=0
    local sample=0
    for f in "$asrc/"_*; do
        (( sample += 1 ))
        local firstline
        firstline=$(head -1 "$f")
        [[ "$firstline" = '#compdef'* ]] || (( bad += 1 )) || true
        [[ $sample -ge 200 ]] && break
    done
    assert $bad equals 0
}

@test 'architecture_src has aarch64 cross-compiler completions' {
    local count
    count=$(ls "$asrc/" | grep 'aarch64' | wc -l | tr -d ' ')
    assert $count is_greater_than 5
}

@test 'architecture_src has x86_64 cross-compiler completions' {
    local count
    count=$(ls "$asrc/" | grep 'x86_64' | wc -l | tr -d ' ')
    assert $count is_greater_than 5
}

# ─── help flag universality ───────────────────────────────────────────────────

@test 'src completions widely include help flag' {
    local count
    count=$(grep -rl 'help' "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 1000
}

@test 'man_src completions widely include help flag' {
    local count
    count=$(grep -rl 'help' "$msrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 500
}

# ─── version flag ─────────────────────────────────────────────────────────────

@test 'src completions widely include version flag' {
    local count
    count=$(grep -rl 'version' "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 500
}

# ─── verbose flag ─────────────────────────────────────────────────────────────

@test 'src completions widely include verbose flag' {
    local count
    count=$(grep -rl 'verbose' "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 100
}

# ─── local arguments array pattern ───────────────────────────────────────────

@test 'src files widely use local arguments array' {
    local count
    count=$(grep -rlE 'local (-a )?arguments' "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 5000
}

@test 'man_src files widely use local arguments array' {
    local count
    count=$(grep -rlF 'local arguments' "$msrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 2000
}

# ─── no bashisms (arrays without parens) ──────────────────────────────────────

@test 'src files rarely use bash-style array declare' {
    local count
    count=$(grep -rlF 'declare -a' "$src/" | wc -l | tr -d ' ')
    assert $count is_less_than 5
}

@test 'man_src files do not use bash-style array declare' {
    local count
    count=$(grep -rlF 'declare -a' "$msrc/" | wc -l | tr -d ' ')
    assert $count equals 0
}

# ─── _urls helper usage ───────────────────────────────────────────────────────

@test '_lftp uses _urls helper' {
    run grep -c '_urls' "$osrc/_lftp"
    assert $state equals 0
}

@test '_curl uses _urls helper' {
    run grep -c '_urls' "$osrc/_curl"
    assert $state equals 0
}

# ─── wildcard argument pattern ────────────────────────────────────────────────

@test 'src completions widely use wildcard filename argument' {
    local count
    count=$(grep -rlF "'*:filename:_files'" "$src/" | wc -l | tr -d ' ')
    assert $count is_greater_than 1000
}

@test 'man_src completions widely use wildcard filename argument' {
    local count
    count=$(grep -rlF "'*:filename:_files'" "$msrc/" | wc -l | tr -d ' ')
    assert $count is_greater_than 1000
}
